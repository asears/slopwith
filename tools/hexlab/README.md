# hexlab

Minimal Rust CLI to start disassembly-oriented binary inspection for `Sopwith.exe`.

## Features
- DOS MZ header inspection (`--mz`)
- Configurable hexdump (`--offset`, `--length`, `--width`)
- ASCII strings extraction (`--strings <min_len>`)
- Signature scanning (`--scan-signatures`)
- Artifact bundle export (`--export-dir <path>`)
- Transpile-seed ASM image output (`--asm-db <path>`)
- Second-pass asset typing for palette/sprite/table candidates
- JSON + raw block export for decoded asset candidates
- Human-readable segment views (`.hex.txt`, `.strings.txt`) and image-friendly previews (`.ppm`, `.pgm`)
- Third-pass residual inventory (`decoded/remaining_items.json`) for pre-WASM cleanup

## Build
```powershell
cd tools/hexlab
cargo build
```

## Run
```powershell
cargo run -- --file ../../Sopwith.exe --mz --offset 0 --length 512 --strings 6

cargo run -- --file ../../Sopwith.exe --scan-signatures --export-dir ../../artifacts/disasm

cargo run -- --file ../../Sopwith.exe --asm-db ../../artifacts/disasm/transpile/sopwith_image.asm
```

## Next steps
- Verify candidate decoders against runtime traces and confirmed callsites.
- Promote stable candidate formats into strict typed schemas.
- Use third-pass `remaining_items` report to close WASM porting gaps.
