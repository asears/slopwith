use serde_json::json;
use sha2::{Digest, Sha256};
use std::collections::{BTreeMap, BTreeSet};
use std::env;
use std::fs;
use std::path::{Path, PathBuf};

#[derive(Debug)]
struct Options {
    file: PathBuf,
    offset: usize,
    length: usize,
    width: usize,
    show_mz: bool,
    strings_min: Option<usize>,
    scan_signatures: bool,
    export_dir: Option<PathBuf>,
    asm_db: Option<PathBuf>,
}

#[derive(Clone, Copy, Debug)]
struct ByteRange {
    start: usize,
    end: usize,
}

#[derive(Debug)]
struct PaletteCandidate {
    id: usize,
    segment_offset: usize,
    global_offset: usize,
    length: usize,
    unique_color_count: usize,
    color_variance: f32,
    confidence: f32,
    colors: Vec<[u8; 3]>,
    raw: Vec<u8>,
}

#[derive(Debug)]
struct SpriteCandidate {
    id: usize,
    segment_offset: usize,
    global_offset: usize,
    length: usize,
    tile_count: usize,
    width_tiles: usize,
    height_tiles: usize,
    avg_set_bits: f32,
    row_transition_ratio: f32,
    confidence: f32,
    raw: Vec<u8>,
    tiles: Vec<[u8; 8]>,
}

#[derive(Debug)]
struct TableCandidate {
    id: usize,
    segment_offset: usize,
    global_offset: usize,
    length: usize,
    entry_count: usize,
    entry_width: usize,
    unique_count: usize,
    repeated_ratio: f32,
    pair_pattern_ratio: f32,
    monotonic_ratio: f32,
    confidence: f32,
    words: Vec<u16>,
    raw: Vec<u8>,
}

#[derive(Debug)]
struct RemainingRun {
    segment_offset: usize,
    global_offset: usize,
    length: usize,
    entropy_bits_per_byte: f32,
    printable_ratio: f32,
    hint: String,
}

#[derive(Debug)]
struct SecondPassReport {
    palettes: Vec<PaletteCandidate>,
    sprites: Vec<SpriteCandidate>,
    tables: Vec<TableCandidate>,
    remaining: Vec<RemainingRun>,
}

fn print_usage() {
    println!("hexlab - lightweight DOS binary inspection helper");
    println!();
    println!("Usage:");
    println!("  hexlab --file <path> [--offset <n>] [--length <n>] [--width <n>] [--mz]");
    println!("         [--strings <min_len>] [--scan-signatures] [--export-dir <path>] [--asm-db <path>]");
    println!();
    println!("Examples:");
    println!("  hexlab --file ../../Sopwith.exe --mz --offset 0 --length 512");
    println!("  hexlab --file ../../Sopwith.exe --strings 6");
    println!("  hexlab --file ../../Sopwith.exe --scan-signatures --export-dir ../../artifacts/disasm");
    println!("  hexlab --file ../../Sopwith.exe --asm-db ../../artifacts/disasm/transpile/sopwith_image.asm");
}

fn parse_usize(value: Option<String>, flag: &str) -> Result<usize, String> {
    let raw = value.ok_or_else(|| format!("missing value for {}", flag))?;
    raw.parse::<usize>()
        .map_err(|_| format!("invalid integer for {}: {}", flag, raw))
}

fn parse_args() -> Result<Options, String> {
    let mut args = env::args().skip(1);

    let mut file: Option<PathBuf> = None;
    let mut offset: usize = 0;
    let mut length: usize = 256;
    let mut width: usize = 16;
    let mut show_mz = false;
    let mut strings_min: Option<usize> = None;
    let mut scan_signatures = false;
    let mut export_dir: Option<PathBuf> = None;
    let mut asm_db: Option<PathBuf> = None;

    while let Some(arg) = args.next() {
        match arg.as_str() {
            "-h" | "--help" => {
                print_usage();
                std::process::exit(0);
            }
            "--file" => file = Some(PathBuf::from(args.next().ok_or("missing value for --file")?)),
            "--offset" => offset = parse_usize(args.next(), "--offset")?,
            "--length" => length = parse_usize(args.next(), "--length")?,
            "--width" => width = parse_usize(args.next(), "--width")?,
            "--mz" => show_mz = true,
            "--strings" => strings_min = Some(parse_usize(args.next(), "--strings")?),
            "--scan-signatures" => scan_signatures = true,
            "--export-dir" => {
                let value = args.next().ok_or("missing value for --export-dir")?;
                export_dir = Some(PathBuf::from(value));
            }
            "--asm-db" => {
                let value = args.next().ok_or("missing value for --asm-db")?;
                asm_db = Some(PathBuf::from(value));
            }
            other => return Err(format!("unknown argument: {}", other)),
        }
    }

    let file = file.ok_or("--file is required")?;

    if width == 0 {
        return Err("--width must be greater than 0".to_string());
    }

    Ok(Options {
        file,
        offset,
        length,
        width,
        show_mz,
        strings_min,
        scan_signatures,
        export_dir,
        asm_db,
    })
}

fn read_u16_le(bytes: &[u8], offset: usize) -> Option<u16> {
    if offset + 1 >= bytes.len() {
        return None;
    }
    Some(u16::from_le_bytes([bytes[offset], bytes[offset + 1]]))
}

fn print_mz_header(bytes: &[u8]) {
    if bytes.len() < 0x40 {
        println!("[mz] file too small for DOS MZ header");
        return;
    }

    let sig = &bytes[0..2];
    if sig != b"MZ" {
        println!("[mz] signature is not MZ: {:02X} {:02X}", sig[0], sig[1]);
        return;
    }

    let cblp = read_u16_le(bytes, 0x02).unwrap_or(0);
    let cp = read_u16_le(bytes, 0x04).unwrap_or(0);
    let crlc = read_u16_le(bytes, 0x06).unwrap_or(0);
    let cparhdr = read_u16_le(bytes, 0x08).unwrap_or(0);
    let minalloc = read_u16_le(bytes, 0x0A).unwrap_or(0);
    let maxalloc = read_u16_le(bytes, 0x0C).unwrap_or(0);
    let ss = read_u16_le(bytes, 0x0E).unwrap_or(0);
    let sp = read_u16_le(bytes, 0x10).unwrap_or(0);
    let ip = read_u16_le(bytes, 0x14).unwrap_or(0);
    let cs = read_u16_le(bytes, 0x16).unwrap_or(0);
    let lfarlc = read_u16_le(bytes, 0x18).unwrap_or(0);
    let lfanew = if bytes.len() >= 0x40 {
        u32::from_le_bytes([bytes[0x3C], bytes[0x3D], bytes[0x3E], bytes[0x3F]])
    } else {
        0
    };

    println!("[mz] DOS header");
    println!("  signature : MZ");
    println!("  cblp      : {}", cblp);
    println!("  cp        : {}", cp);
    println!("  crlc      : {}", crlc);
    println!("  cparhdr   : {} paragraphs", cparhdr);
    println!("  minalloc  : {}", minalloc);
    println!("  maxalloc  : {}", maxalloc);
    println!("  ss:sp     : {:04X}:{:04X}", ss, sp);
    println!("  cs:ip     : {:04X}:{:04X}", cs, ip);
    println!("  lfarlc    : 0x{:04X}", lfarlc);
    println!("  lfanew    : 0x{:08X}", lfanew);
}

fn find_all(bytes: &[u8], pattern: &[u8]) -> Vec<usize> {
    if pattern.is_empty() || bytes.len() < pattern.len() {
        return Vec::new();
    }

    let mut out = Vec::new();
    for idx in 0..=(bytes.len() - pattern.len()) {
        if &bytes[idx..idx + pattern.len()] == pattern {
            out.push(idx);
        }
    }
    out
}

fn scan_signatures(bytes: &[u8]) -> Vec<(String, Vec<usize>)> {
    let signatures: [(&str, &[u8]); 7] = [
        ("MZ", b"MZ"),
        ("PE\\0\\0", b"PE\0\0"),
        ("NE", b"NE"),
        ("SOPWITH", b"S O P W I T H"),
        ("Usage: sopwith", b"Usage: sopwith"),
        ("Too many arguments", b"Too many arguments"),
        ("Compuscience", b"Compuscience"),
    ];

    let mut results = Vec::new();
    for (name, bytes_pat) in signatures {
        results.push((name.to_string(), find_all(bytes, bytes_pat)));
    }
    results
}

fn pretty_scan_output(results: &[(String, Vec<usize>)]) {
    println!("[scan] signature offsets");
    for (name, offsets) in results {
        if offsets.is_empty() {
            println!("  {:20} none", name);
        } else {
            let mut rendered = String::new();
            for (idx, off) in offsets.iter().take(8).enumerate() {
                if idx > 0 {
                    rendered.push_str(", ");
                }
                rendered.push_str(&format!("0x{:X}", off));
            }
            if offsets.len() > 8 {
                rendered.push_str(", ...");
            }
            println!("  {:20} {}", name, rendered);
        }
    }
}

fn hexdump(bytes: &[u8], offset: usize, length: usize, width: usize) {
    let start = offset.min(bytes.len());
    let end = start.saturating_add(length).min(bytes.len());

    println!(
        "[hexdump] offset={} length={} width={}",
        start,
        end.saturating_sub(start),
        width
    );

    let mut i = start;
    while i < end {
        let line_end = (i + width).min(end);
        let chunk = &bytes[i..line_end];

        print!("{:08X}  ", i);
        for b in chunk {
            print!("{:02X} ", b);
        }
        for _ in chunk.len()..width {
            print!("   ");
        }

        print!(" |");
        for b in chunk {
            let c = *b as char;
            if c.is_ascii_graphic() || c == ' ' {
                print!("{}", c);
            } else {
                print!(".");
            }
        }
        println!("|");

        i += width;
    }
}

fn collect_strings(bytes: &[u8], min_len: usize) -> Vec<(usize, String)> {
    let mut out = Vec::new();

    let mut current = Vec::new();
    let mut start_idx = 0usize;

    for (idx, b) in bytes.iter().enumerate() {
        let c = *b as char;
        if c.is_ascii_graphic() || c == ' ' {
            if current.is_empty() {
                start_idx = idx;
            }
            current.push(*b);
        } else {
            if current.len() >= min_len {
                if let Ok(s) = String::from_utf8(current.clone()) {
                    out.push((start_idx, s));
                }
            }
            current.clear();
        }
    }

    if current.len() >= min_len {
        if let Ok(s) = String::from_utf8(current) {
            out.push((start_idx, s));
        }
    }

    out
}

fn print_strings(strings: &[(usize, String)], min_len: usize) {
    println!("[strings] min_len={}", min_len);
    for (offset, value) in strings {
        println!("  {:08X}: {}", offset, value);
    }
}

fn sha256_hex(bytes: &[u8]) -> String {
    let mut hasher = Sha256::new();
    hasher.update(bytes);
    let digest = hasher.finalize();
    format!("{:x}", digest)
}

fn detect_code_data_split(strings: &[(usize, String)], file_len: usize) -> usize {
    let mut best = file_len / 2;
    for window_start in (0..file_len).step_by(0x400) {
        let window_end = (window_start + 0x1000).min(file_len);
        let count = strings
            .iter()
            .filter(|(off, value)| *off >= window_start && *off < window_end && value.len() >= 12)
            .count();
        if count >= 4 {
            best = window_start;
            break;
        }
    }
    best
}

fn ensure_parent(path: &Path) -> std::io::Result<()> {
    if let Some(parent) = path.parent() {
        fs::create_dir_all(parent)?;
    }
    Ok(())
}

fn write_asm_db(path: &Path, bytes: &[u8]) -> std::io::Result<()> {
    ensure_parent(path)?;
    let mut out = String::new();
    out.push_str("; generated by hexlab\n");
    out.push_str("; transpile seed image for SOPWITH analysis\n\n");
    out.push_str("global sopwith_image\n");
    out.push_str("sopwith_image:\n");

    for (line_index, chunk) in bytes.chunks(16).enumerate() {
        out.push_str("    db ");
        for (idx, b) in chunk.iter().enumerate() {
            if idx > 0 {
                out.push_str(", ");
            }
            out.push_str(&format!("0x{:02X}", b));
        }
        out.push_str(&format!("    ; 0x{:08X}\n", line_index * 16));
    }

    fs::write(path, out)
}

fn write_hexdump_file(path: &Path, bytes: &[u8], width: usize, base_offset: usize) -> std::io::Result<()> {
    ensure_parent(path)?;
    let mut out = String::new();
    let mut i = 0usize;
    while i < bytes.len() {
        let line_end = (i + width).min(bytes.len());
        let chunk = &bytes[i..line_end];

        out.push_str(&format!("{:08X}  ", base_offset + i));
        for b in chunk {
            out.push_str(&format!("{:02X} ", b));
        }
        for _ in chunk.len()..width {
            out.push_str("   ");
        }

        out.push_str(" |");
        for b in chunk {
            let c = *b as char;
            if c.is_ascii_graphic() || c == ' ' {
                out.push(c);
            } else {
                out.push('.');
            }
        }
        out.push_str("|\n");

        i += width;
    }

    fs::write(path, out)
}

fn write_strings_file(path: &Path, bytes: &[u8], min_len: usize, base_offset: usize) -> std::io::Result<()> {
    ensure_parent(path)?;
    let strings = collect_strings(bytes, min_len);
    let mut out = String::new();
    for (offset, value) in strings {
        out.push_str(&format!("0x{:08X}\t{}\n", base_offset + offset, value));
    }
    fs::write(path, out)
}

fn range_overlaps_any(start: usize, end: usize, ranges: &[ByteRange]) -> bool {
    ranges.iter().any(|r| start < r.end && end > r.start)
}

fn mark_range_if_free(start: usize, end: usize, ranges: &mut Vec<ByteRange>) -> bool {
    if start >= end || range_overlaps_any(start, end, ranges) {
        return false;
    }
    ranges.push(ByteRange { start, end });
    true
}

fn is_vga_triplet(slice: &[u8], offset: usize) -> bool {
    if offset + 2 >= slice.len() {
        return false;
    }
    slice[offset] <= 63 && slice[offset + 1] <= 63 && slice[offset + 2] <= 63
}

fn palette_metrics(colors: &[[u8; 3]]) -> (usize, f32) {
    let unique = colors.iter().copied().collect::<BTreeSet<[u8; 3]>>().len();
    if colors.len() <= 1 {
        return (unique, 0.0);
    }

    let mut variance_acc = 0f32;
    for pair in colors.windows(2) {
        let lhs = pair[0];
        let rhs = pair[1];
        let dr = (lhs[0] as i32 - rhs[0] as i32).unsigned_abs() as f32;
        let dg = (lhs[1] as i32 - rhs[1] as i32).unsigned_abs() as f32;
        let db = (lhs[2] as i32 - rhs[2] as i32).unsigned_abs() as f32;
        variance_acc += (dr + dg + db) / 3.0;
    }

    (unique, variance_acc / (colors.len() - 1) as f32)
}

fn detect_palettes(assets: &[u8], base_offset: usize, claimed: &mut Vec<ByteRange>) -> Vec<PaletteCandidate> {
    let mut candidates: Vec<PaletteCandidate> = Vec::new();
    let mut i = 0usize;
    let common_palette_sizes = [16usize, 32, 64];

    while i + 48 <= assets.len() {
        if !is_vga_triplet(assets, i) {
            i += 1;
            continue;
        }

        let mut j = i;
        while j + 2 < assets.len() && is_vga_triplet(assets, j) {
            j += 3;
        }

        let run_len = j - i;
        let run_triplets = run_len / 3;
        if run_triplets >= 16 {
            for palette_size in common_palette_sizes {
                let block_len = palette_size * 3;
                if block_len > run_len {
                    continue;
                }

                let mut start = i;
                while start + block_len <= j {
                    let mut colors = Vec::with_capacity(palette_size);
                    for k in (start..(start + block_len)).step_by(3) {
                        colors.push([assets[k], assets[k + 1], assets[k + 2]]);
                    }

                    let (unique_color_count, color_variance) = palette_metrics(&colors);
                    let unique_ratio = unique_color_count as f32 / palette_size as f32;
                    let variance_norm = (color_variance / 18.0).min(1.0);
                    let confidence = (unique_ratio * 0.55 + variance_norm * 0.45).min(1.0);

                    if unique_color_count >= (palette_size / 2) && color_variance >= 3.5 && confidence >= 0.48 {
                        candidates.push(PaletteCandidate {
                            id: 0,
                            segment_offset: start,
                            global_offset: base_offset + start,
                            length: block_len,
                            unique_color_count,
                            color_variance,
                            confidence,
                            colors,
                            raw: assets[start..(start + block_len)].to_vec(),
                        });
                    }

                    start += 3;
                }
            }
            i = j;
        } else {
            i += 1;
        }
    }

    candidates.sort_by(|a, b| {
        b.confidence
            .total_cmp(&a.confidence)
            .then_with(|| b.length.cmp(&a.length))
            .then_with(|| a.segment_offset.cmp(&b.segment_offset))
    });

    let mut palettes = Vec::new();
    for mut candidate in candidates {
        if palettes.len() >= 12 {
            break;
        }

        if mark_range_if_free(
            candidate.segment_offset,
            candidate.segment_offset + candidate.length,
            claimed,
        ) {
            candidate.id = palettes.len() + 1;
            palettes.push(candidate);
        }
    }

    palettes
}

fn tile_looks_sprite(tile: &[u8; 8]) -> bool {
    let mut set_bits = 0u32;
    let mut unique = BTreeSet::new();
    for row in tile {
        set_bits += row.count_ones();
        unique.insert(*row);
    }

    if unique.len() <= 1 {
        return false;
    }

    (8..=52).contains(&set_bits)
}

fn sprite_metrics(tiles: &[[u8; 8]]) -> (f32, f32) {
    if tiles.is_empty() {
        return (0.0, 0.0);
    }

    let mut set_bits_total = 0u32;
    let mut transitions = 0u32;
    let mut opportunities = 0u32;

    for tile in tiles {
        for row in tile {
            set_bits_total += row.count_ones();
        }

        for pair in tile.windows(2) {
            if pair[0] != pair[1] {
                transitions += 1;
            }
            opportunities += 1;
        }
    }

    let avg_set_bits = set_bits_total as f32 / tiles.len() as f32;
    let row_transition_ratio = if opportunities == 0 {
        0.0
    } else {
        transitions as f32 / opportunities as f32
    };

    (avg_set_bits, row_transition_ratio)
}

fn detect_sprites(assets: &[u8], base_offset: usize, claimed: &mut Vec<ByteRange>) -> Vec<SpriteCandidate> {
    let mut sprites = Vec::new();
    let mut i = 0usize;

    while i + 8 <= assets.len() && sprites.len() < 24 {
        if range_overlaps_any(i, i + 8, claimed) {
            i += 8;
            continue;
        }

        let mut first = [0u8; 8];
        first.copy_from_slice(&assets[i..i + 8]);
        if !tile_looks_sprite(&first) {
            i += 8;
            continue;
        }

        let mut tiles: Vec<[u8; 8]> = Vec::new();
        let start = i;
        let mut j = i;

        while j + 8 <= assets.len() && tiles.len() < 256 {
            if range_overlaps_any(j, j + 8, claimed) {
                break;
            }

            let mut tile = [0u8; 8];
            tile.copy_from_slice(&assets[j..j + 8]);
            if !tile_looks_sprite(&tile) {
                break;
            }

            tiles.push(tile);
            j += 8;
        }

        let (avg_set_bits, row_transition_ratio) = sprite_metrics(&tiles);
        let density_norm = ((avg_set_bits - 8.0) / 24.0).clamp(0.0, 1.0);
        let size_norm = (tiles.len() as f32 / 96.0).min(1.0);
        let confidence = (density_norm * 0.4 + row_transition_ratio * 0.35 + size_norm * 0.25).min(1.0);

        if tiles.len() >= 12
            && avg_set_bits >= 10.0
            && avg_set_bits <= 42.0
            && row_transition_ratio >= 0.30
            && confidence >= 0.50
            && mark_range_if_free(start, j, claimed)
        {
            let width_tiles = tiles.len().min(16);
            let height_tiles = tiles.len().div_ceil(width_tiles);
            sprites.push(SpriteCandidate {
                id: sprites.len() + 1,
                segment_offset: start,
                global_offset: base_offset + start,
                length: j - start,
                tile_count: tiles.len(),
                width_tiles,
                height_tiles,
                avg_set_bits,
                row_transition_ratio,
                confidence,
                raw: assets[start..j].to_vec(),
                tiles,
            });
        }

        i = if j > i { j } else { i + 8 };
    }

    sprites
}

fn table_repetition_metrics(words: &[u16]) -> (usize, f32, f32) {
    if words.is_empty() {
        return (0, 0.0, 0.0);
    }

    let mut counts = BTreeMap::<u16, usize>::new();
    let mut pair_pattern = 0usize;
    for value in words {
        *counts.entry(*value).or_insert(0) += 1;
        let lo = (*value & 0x00FF) as i32;
        let hi = ((*value >> 8) & 0x00FF) as i32;
        if (lo - hi).abs() <= 1 {
            pair_pattern += 1;
        }
    }

    let unique_count = counts.len();
    let max_freq = counts.values().copied().max().unwrap_or(0);
    let repeated_ratio = max_freq as f32 / words.len() as f32;
    let pair_pattern_ratio = pair_pattern as f32 / words.len() as f32;

    (unique_count, repeated_ratio, pair_pattern_ratio)
}

fn detect_tables(assets: &[u8], base_offset: usize, claimed: &mut Vec<ByteRange>) -> Vec<TableCandidate> {
    let mut tables = Vec::new();
    let mut i = 0usize;

    while i + 32 <= assets.len() && tables.len() < 64 {
        if range_overlaps_any(i, i + 2, claimed) {
            i += 2;
            continue;
        }

        let mut words = Vec::new();
        let start = i;
        let mut j = i;

        while j + 1 < assets.len() {
            if range_overlaps_any(j, j + 2, claimed) {
                break;
            }

            let current = u16::from_le_bytes([assets[j], assets[j + 1]]);
            if let Some(prev) = words.last().copied() {
                let diff = current.abs_diff(prev);
                if diff > 0x400 && diff != 0 {
                    break;
                }
            }

            words.push(current);
            j += 2;
            if words.len() >= 1024 {
                break;
            }
        }

        if words.len() >= 24 {
            let mut monotonic_steps = 0usize;
            for pair in words.windows(2) {
                if pair[1] >= pair[0] {
                    monotonic_steps += 1;
                }
            }

            let monotonic_ratio = if words.len() <= 1 {
                0.0
            } else {
                monotonic_steps as f32 / (words.len() - 1) as f32
            };

            let (unique_count, repeated_ratio, pair_pattern_ratio) = table_repetition_metrics(&words);
            let entropy = shannon_entropy(&assets[start..j]);
            let confidence = ((1.0 - repeated_ratio) * 0.35
                + (1.0 - pair_pattern_ratio) * 0.25
                + monotonic_ratio.min(1.0) * 0.20
                + (entropy / 8.0).min(1.0) * 0.20)
                .clamp(0.0, 1.0);

            if unique_count >= 12
                && repeated_ratio <= 0.24
                && pair_pattern_ratio <= 0.35
                && monotonic_ratio >= 0.30
                && monotonic_ratio <= 0.95
                && entropy >= 2.2
                && confidence >= 0.50
                && mark_range_if_free(start, j, claimed)
            {
                tables.push(TableCandidate {
                    id: tables.len() + 1,
                    segment_offset: start,
                    global_offset: base_offset + start,
                    length: j - start,
                    entry_count: words.len(),
                    entry_width: 2,
                    unique_count,
                    repeated_ratio,
                    pair_pattern_ratio,
                    monotonic_ratio,
                    confidence,
                    words: words.clone(),
                    raw: assets[start..j].to_vec(),
                });
            }
        }

        i = if j > i { j } else { i + 2 };
    }

    tables
}

fn shannon_entropy(bytes: &[u8]) -> f32 {
    if bytes.is_empty() {
        return 0.0;
    }

    let mut counts = [0usize; 256];
    for b in bytes {
        counts[*b as usize] += 1;
    }

    let len = bytes.len() as f32;
    let mut entropy = 0.0f32;
    for count in counts {
        if count == 0 {
            continue;
        }
        let p = count as f32 / len;
        entropy -= p * p.log2();
    }
    entropy
}

fn printable_ratio(bytes: &[u8]) -> f32 {
    if bytes.is_empty() {
        return 0.0;
    }

    let printable = bytes
        .iter()
        .filter(|b| {
            let c = **b as char;
            c.is_ascii_graphic() || c == ' '
        })
        .count();

    printable as f32 / bytes.len() as f32
}

fn detect_remaining(assets: &[u8], base_offset: usize, claimed: &[ByteRange]) -> Vec<RemainingRun> {
    let mut mask = vec![false; assets.len()];
    for r in claimed {
        let start = r.start.min(mask.len());
        let end = r.end.min(mask.len());
        for flag in &mut mask[start..end] {
            *flag = true;
        }
    }

    let mut runs = Vec::new();
    let mut i = 0usize;
    while i < mask.len() {
        if mask[i] {
            i += 1;
            continue;
        }

        let start = i;
        while i < mask.len() && !mask[i] {
            i += 1;
        }
        let end = i;
        let length = end - start;
        if length < 24 {
            continue;
        }

        let slice = &assets[start..end];
        let entropy = shannon_entropy(slice);
        let ratio = printable_ratio(slice);
        let hint = if ratio > 0.70 {
            "text-like".to_string()
        } else if entropy < 3.0 {
            "low-entropy pattern".to_string()
        } else if entropy > 7.0 {
            "high-entropy or packed".to_string()
        } else {
            "mixed/unknown".to_string()
        };

        runs.push(RemainingRun {
            segment_offset: start,
            global_offset: base_offset + start,
            length,
            entropy_bits_per_byte: entropy,
            printable_ratio: ratio,
            hint,
        });
    }

    runs
}

fn write_ppm_palette(path: &Path, colors: &[[u8; 3]]) -> std::io::Result<()> {
    ensure_parent(path)?;
    let width = colors.len().min(16).max(1);
    let height = colors.len().div_ceil(width).max(1);

    let mut out = String::new();
    out.push_str("P3\n");
    out.push_str(&format!("{} {}\n255\n", width, height));

    for row in 0..height {
        for col in 0..width {
            let idx = row * width + col;
            let (r, g, b) = if idx < colors.len() {
                let c = colors[idx];
                (
                    (c[0] as u16 * 255 / 63) as u8,
                    (c[1] as u16 * 255 / 63) as u8,
                    (c[2] as u16 * 255 / 63) as u8,
                )
            } else {
                (0, 0, 0)
            };

            out.push_str(&format!("{} {} {} ", r, g, b));
        }
        out.push('\n');
    }

    fs::write(path, out)
}

fn write_pgm_sprite_sheet(path: &Path, tiles: &[[u8; 8]], width_tiles: usize) -> std::io::Result<()> {
    ensure_parent(path)?;
    let width_tiles = width_tiles.max(1);
    let height_tiles = tiles.len().div_ceil(width_tiles).max(1);

    let width = width_tiles * 8;
    let height = height_tiles * 8;

    let mut out = String::new();
    out.push_str("P2\n");
    out.push_str(&format!("{} {}\n255\n", width, height));

    for y in 0..height {
        let tile_row = y / 8;
        let row_in_tile = y % 8;

        for x in 0..width {
            let tile_col = x / 8;
            let bit_in_row = 7 - (x % 8);
            let tile_index = tile_row * width_tiles + tile_col;

            let pixel = if tile_index < tiles.len() {
                let row_byte = tiles[tile_index][row_in_tile];
                let bit = (row_byte >> bit_in_row) & 1;
                if bit == 1 { 255 } else { 0 }
            } else {
                0
            };

            out.push_str(&format!("{} ", pixel));
        }
        out.push('\n');
    }

    fs::write(path, out)
}

fn write_table_text(path: &Path, words: &[u16], base_offset: usize) -> std::io::Result<()> {
    ensure_parent(path)?;
    let mut out = String::new();
    out.push_str("index\toffset\thex\tdec\n");
    for (idx, value) in words.iter().enumerate() {
        out.push_str(&format!(
            "{}\t0x{:08X}\t0x{:04X}\t{}\n",
            idx,
            base_offset + (idx * 2),
            value,
            value
        ));
    }
    fs::write(path, out)
}

fn run_second_pass_decode(export_dir: &Path, assets: &[u8], assets_base: usize) -> std::io::Result<SecondPassReport> {
    let decoded_dir = export_dir.join("decoded");
    let palettes_dir = decoded_dir.join("palettes");
    let sprites_dir = decoded_dir.join("sprites");
    let tables_dir = decoded_dir.join("tables");

    fs::create_dir_all(&palettes_dir)?;
    fs::create_dir_all(&sprites_dir)?;
    fs::create_dir_all(&tables_dir)?;

    let mut claimed = Vec::<ByteRange>::new();

    let palettes = detect_palettes(assets, assets_base, &mut claimed);
    let tables = detect_tables(assets, assets_base, &mut claimed);
    let sprites = detect_sprites(assets, assets_base, &mut claimed);
    let remaining = detect_remaining(assets, assets_base, &claimed);

    for palette in &palettes {
        let stem = format!("palette_{:03}", palette.id);
        fs::write(palettes_dir.join(format!("{}.bin", stem)), &palette.raw)?;
        write_ppm_palette(&palettes_dir.join(format!("{}_swatch.ppm", stem)), &palette.colors)?;

        let palette_json = json!({
            "id": palette.id,
            "segment_offset": palette.segment_offset,
            "global_offset": palette.global_offset,
            "length": palette.length,
            "color_count": palette.colors.len(),
            "colors_vga6": palette.colors,
        });
        fs::write(
            palettes_dir.join(format!("{}.json", stem)),
            serde_json::to_string_pretty(&palette_json).unwrap_or_else(|_| "{}".to_string()),
        )?;
    }

    for sprite in &sprites {
        let stem = format!("sprite_{:03}", sprite.id);
        fs::write(sprites_dir.join(format!("{}.bin", stem)), &sprite.raw)?;
        write_pgm_sprite_sheet(
            &sprites_dir.join(format!("{}_sheet.pgm", stem)),
            &sprite.tiles,
            sprite.width_tiles,
        )?;

        let sprite_json = json!({
            "id": sprite.id,
            "segment_offset": sprite.segment_offset,
            "global_offset": sprite.global_offset,
            "length": sprite.length,
            "tile_count": sprite.tile_count,
            "sheet": {
                "width_tiles": sprite.width_tiles,
                "height_tiles": sprite.height_tiles,
                "tile_size": [8, 8],
                "format": "1bpp"
            }
        });
        fs::write(
            sprites_dir.join(format!("{}.json", stem)),
            serde_json::to_string_pretty(&sprite_json).unwrap_or_else(|_| "{}".to_string()),
        )?;
    }

    for table in &tables {
        let stem = format!("table_{:03}", table.id);
        fs::write(tables_dir.join(format!("{}.bin", stem)), &table.raw)?;
        write_table_text(
            &tables_dir.join(format!("{}_view.tsv", stem)),
            &table.words,
            table.global_offset,
        )?;

        let table_json = json!({
            "id": table.id,
            "segment_offset": table.segment_offset,
            "global_offset": table.global_offset,
            "length": table.length,
            "entry_count": table.entry_count,
            "entry_width": table.entry_width,
            "monotonic_ratio": table.monotonic_ratio,
            "entries_u16_le": table.words,
        });
        fs::write(
            tables_dir.join(format!("{}.json", stem)),
            serde_json::to_string_pretty(&table_json).unwrap_or_else(|_| "{}".to_string()),
        )?;
    }

    let index_json = json!({
        "base_segment": {
            "name": "assets_candidate.bin",
            "global_offset_start": assets_base,
            "length": assets.len()
        },
        "palette_count": palettes.len(),
        "sprite_count": sprites.len(),
        "table_count": tables.len(),
        "remaining_run_count": remaining.len(),
        "palettes": palettes.iter().map(|p| json!({
            "id": p.id,
            "global_offset": p.global_offset,
            "length": p.length,
            "color_count": p.colors.len(),
            "json": format!("decoded/palettes/palette_{:03}.json", p.id),
            "raw": format!("decoded/palettes/palette_{:03}.bin", p.id),
            "swatch_ppm": format!("decoded/palettes/palette_{:03}_swatch.ppm", p.id),
        })).collect::<Vec<_>>(),
        "sprites": sprites.iter().map(|s| json!({
            "id": s.id,
            "global_offset": s.global_offset,
            "length": s.length,
            "tile_count": s.tile_count,
            "json": format!("decoded/sprites/sprite_{:03}.json", s.id),
            "raw": format!("decoded/sprites/sprite_{:03}.bin", s.id),
            "sheet_pgm": format!("decoded/sprites/sprite_{:03}_sheet.pgm", s.id),
        })).collect::<Vec<_>>(),
        "tables": tables.iter().map(|t| json!({
            "id": t.id,
            "global_offset": t.global_offset,
            "length": t.length,
            "entry_count": t.entry_count,
            "json": format!("decoded/tables/table_{:03}.json", t.id),
            "raw": format!("decoded/tables/table_{:03}.bin", t.id),
            "view_tsv": format!("decoded/tables/table_{:03}_view.tsv", t.id),
        })).collect::<Vec<_>>(),
    });

    fs::write(
        decoded_dir.join("index.json"),
        serde_json::to_string_pretty(&index_json).unwrap_or_else(|_| "{}".to_string()),
    )?;

    let remaining_json = json!({
        "summary": {
            "run_count": remaining.len(),
            "total_remaining_bytes": remaining.iter().map(|r| r.length).sum::<usize>(),
        },
        "runs": remaining.iter().map(|r| json!({
            "segment_offset": r.segment_offset,
            "global_offset": r.global_offset,
            "length": r.length,
            "entropy_bits_per_byte": r.entropy_bits_per_byte,
            "printable_ratio": r.printable_ratio,
            "hint": r.hint,
        })).collect::<Vec<_>>(),
        "next_step_recommendation": [
            "Verify sprite blocks against runtime blit callsites",
            "Type remaining high-entropy runs for packed music/event streams",
            "Map table usage via xref from code_candidate disassembly"
        ]
    });

    fs::write(
        decoded_dir.join("remaining_items.json"),
        serde_json::to_string_pretty(&remaining_json).unwrap_or_else(|_| "{}".to_string()),
    )?;

    let mut remaining_txt = String::new();
    remaining_txt.push_str("# Remaining Items (Third Pass)\n\n");
    for (idx, run) in remaining.iter().enumerate() {
        remaining_txt.push_str(&format!(
            "- {}: global=0x{:08X} segment=0x{:08X} len={} entropy={:.3} printable={:.2} hint={}\n",
            idx + 1,
            run.global_offset,
            run.segment_offset,
            run.length,
            run.entropy_bits_per_byte,
            run.printable_ratio,
            run.hint
        ));
    }
    fs::write(decoded_dir.join("remaining_items.txt"), remaining_txt)?;

    Ok(SecondPassReport {
        palettes,
        sprites,
        tables,
        remaining,
    })
}

fn export_artifacts(
    export_dir: &Path,
    source_path: &Path,
    bytes: &[u8],
    strings: &[(usize, String)],
    signatures: &[(String, Vec<usize>)],
) -> std::io::Result<()> {
    fs::create_dir_all(export_dir)?;
    fs::create_dir_all(export_dir.join("segments"))?;
    fs::create_dir_all(export_dir.join("transpile"))?;

    let split = detect_code_data_split(strings, bytes.len());
    let split = split.min(bytes.len());
    let code = &bytes[0..split];
    let data = &bytes[split..];

    let code_bin = export_dir.join("segments").join("code_candidate.bin");
    let assets_bin = export_dir.join("segments").join("assets_candidate.bin");
    fs::write(&code_bin, code)?;
    fs::write(&assets_bin, data)?;

    write_hexdump_file(
        &export_dir.join("segments").join("code_candidate.hex.txt"),
        code,
        16,
        0,
    )?;
    write_hexdump_file(
        &export_dir.join("segments").join("assets_candidate.hex.txt"),
        data,
        16,
        split,
    )?;
    write_strings_file(
        &export_dir.join("segments").join("code_candidate.strings.txt"),
        code,
        4,
        0,
    )?;
    write_strings_file(
        &export_dir
            .join("segments")
            .join("assets_candidate.strings.txt"),
        data,
        4,
        split,
    )?;

    let mut strings_txt = String::new();
    for (off, value) in strings {
        strings_txt.push_str(&format!("0x{:08X}\t{}\n", off, value));
    }
    fs::write(export_dir.join("strings_min6.txt"), strings_txt)?;

    let mut sig_txt = String::new();
    for (name, offsets) in signatures {
        sig_txt.push_str(name);
        sig_txt.push(':');
        if offsets.is_empty() {
            sig_txt.push_str(" none\n");
        } else {
            sig_txt.push(' ');
            for (idx, off) in offsets.iter().enumerate() {
                if idx > 0 {
                    sig_txt.push_str(", ");
                }
                sig_txt.push_str(&format!("0x{:X}", off));
            }
            sig_txt.push('\n');
        }
    }
    fs::write(export_dir.join("signature_offsets.txt"), sig_txt)?;

    write_asm_db(&export_dir.join("transpile").join("sopwith_image.asm"), bytes)?;
    let second_pass = run_second_pass_decode(export_dir, data, split)?;

    let triage = json!({
        "source": source_path.display().to_string(),
        "size": bytes.len(),
        "sha256": sha256_hex(bytes),
        "mz_at_start": bytes.starts_with(b"MZ"),
        "code_data_split_offset": split,
        "code_candidate_size": code.len(),
        "assets_candidate_size": data.len(),
        "string_count_min6": strings.len(),
        "second_pass": {
            "palette_count": second_pass.palettes.len(),
            "sprite_count": second_pass.sprites.len(),
            "table_count": second_pass.tables.len(),
            "remaining_runs": second_pass.remaining.len(),
        },
        "artifacts": {
            "segments": ["segments/code_candidate.bin", "segments/assets_candidate.bin"],
            "segments_human_readable": [
                "segments/code_candidate.hex.txt",
                "segments/assets_candidate.hex.txt",
                "segments/code_candidate.strings.txt",
                "segments/assets_candidate.strings.txt"
            ],
            "strings": "strings_min6.txt",
            "signatures": "signature_offsets.txt",
            "asm_db": "transpile/sopwith_image.asm",
            "decoded_index": "decoded/index.json",
            "remaining_items": "decoded/remaining_items.json"
        }
    });

    fs::write(
        export_dir.join("triage.json"),
        serde_json::to_string_pretty(&triage).unwrap_or_else(|_| "{}".to_string()),
    )?;

    Ok(())
}

fn main() {
    let options = match parse_args() {
        Ok(opts) => opts,
        Err(err) => {
            eprintln!("error: {}", err);
            print_usage();
            std::process::exit(1);
        }
    };

    let bytes = match fs::read(&options.file) {
        Ok(data) => data,
        Err(err) => {
            eprintln!("error: failed to read {}: {}", options.file.display(), err);
            std::process::exit(1);
        }
    };

    println!("[file] {} ({} bytes)", options.file.display(), bytes.len());

    if options.show_mz {
        print_mz_header(&bytes);
    }

    hexdump(&bytes, options.offset, options.length, options.width);

    let min_len = options.strings_min.unwrap_or(6);
    let strings = collect_strings(&bytes, min_len);

    if options.strings_min.is_some() {
        print_strings(&strings, min_len);
    }

    let signatures = scan_signatures(&bytes);
    if options.scan_signatures {
        pretty_scan_output(&signatures);
    }

    if let Some(path) = options.asm_db {
        if let Err(err) = write_asm_db(&path, &bytes) {
            eprintln!("error: failed to write asm db {}: {}", path.display(), err);
            std::process::exit(1);
        }
        println!("[export] asm db written: {}", path.display());
    }

    if let Some(export_dir) = options.export_dir {
        if let Err(err) = export_artifacts(&export_dir, &options.file, &bytes, &strings, &signatures) {
            eprintln!(
                "error: failed to export artifacts to {}: {}",
                export_dir.display(),
                err
            );
            std::process::exit(1);
        }
        println!("[export] artifact bundle written: {}", export_dir.display());
    }
}
