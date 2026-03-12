# Asset Formats and Viewers

Reference for working with the extracted Sopwith binary assets produced by `hexlab`
and stored under `artifacts/disasm/decoded/`.

---

## 1  File types produced by the extractor

| Extension | Description | Produced by |
|-----------|-------------|-------------|
| `.ppm` | Portable Pixmap (RGB colour swatch) | palette detection |
| `.pgm` | Portable Graymap (8×8 tile sheet) | sprite detection |
| `.bin` | Raw binary — packed bytes, exact copy of the in-binary run | all types |
| `.tsv` | Tab-separated view: `index / offset / hex / dec` columns | table detection |
| `.json` | Structured metadata: confidence, offsets, dimensions | all types |

---

## 2  Viewing assets in VS Code

Install extensions from the VS Code Marketplace (links open the Extensions pane):

| Extension | ID | Purpose |
|-----------|----|---------|
| PBM/PPM/PGM Viewer | https://marketplace.visualstudio.com/items?itemName=ngtystr.ppm-pgm-viewer-for-vscode | ppm viewer
| **Simple PPM Viewer** | [`martingrzzler.simple-ppm-viewer`](https://marketplace.visualstudio.com/items?itemName=martingrzzler.simple-ppm-viewer) | Open `.ppm` palette swatches directly in the editor tab |
| **Float and TIFF Visualizer** | [`kleinicke.tiff-visualizer`](https://marketplace.visualstudio.com/items?itemName=kleinicke.tiff-visualizer) | Handles `.pgm` sprite sheets and `.ppm` PPM files |
| **Hex Editor** | [`ms-vscode.hexeditor`](https://marketplace.visualstudio.com/items?itemName=ms-vscode.hexeditor) | Browse `.bin` files as a hex grid with value decode panel |
| **Excel Viewer** | [`grapecity.gc-excelviewer`](https://marketplace.visualstudio.com/items?itemName=grapecity.gc-excelviewer) | Renders `.tsv` table files with sortable columns |

Quick-install all four from a terminal:

```bash
code --install-extension martingrzzler.simple-ppm-viewer
code --install-extension kleinicke.tiff-visualizer
code --install-extension ms-vscode.hexeditor
code --install-extension grapecity.gc-excelviewer
```

After installing, right-click any `.ppm` / `.pgm` file → **Open With…** → select the viewer.
For `.bin` files, the Hex Editor is registered automatically on open.

---

## 3  Viewing assets on Windows (without VS Code)

| Tool | Files | Notes |
|------|-------|-------|
| **IrfanView** (free, irfanview.com) | `.ppm`, `.pgm` | File → Open; supports P3/P6 PPM and P2/P5 PGM natively |
| **GIMP** (free, gimp.org) | `.ppm`, `.pgm` | Import as raw image; use Image → Scale to zoom 8-px tiles |
| **HxD** (free, mh-nexus.de) | `.bin` | Column-aligned hex+ASCII pane, search, patch; fast on small files |
| **010 Editor** (commercial) | `.bin` | Binary templates; write a template to parse the asset-pack format |
| **Notepad++** | `.tsv`, `.json` | Language → TSV gives column highlighting; JSON plugin for pretty-print |
| **Microsoft Excel** | `.tsv` | File → Import, delimited by Tab; chart the `dec` column to visualise waves |

---

## 4  How these assets would have been managed in 1982

Sopwith was written in 1982–1984 by David Clark and Ian Bell at BMB Compuscience.
The IBM PC had no graphical IDE, no hex editor with a GUI, and no version control.
Asset management was entirely manual:

### Sprite and bitmap design
- Artists drew characters on **graph paper** (one square = one pixel).
- Each 8×8 tile was transcribed to an **octal or hex dump**: eight rows of one byte
  each, hand-written in a notebook.
- The byte values were assembled directly into `.asm` source files as `DB` directives,
  e.g. `DB 0x3C, 0x7E, 0xFF, 0xDB, 0xFF, 0x3C, 0x18, 0x00`.
- Checking a sprite meant running the program and looking at the screen — no preview.

### Colour palette
- CGA offered a fixed hardware palette of 16 foreground colours (plus a background).
- Pallette "design" meant picking one of the two fixed 4-colour palettes available
  in CGA medium-resolution mode; there was nothing to tune beyond that.
- The `INT 10h` BIOS call with `AH=0Bh` could adjust the background colour index only.

### Lookup tables
- Pre-computing sin/cos or terrain profiles was done with a **pocket calculator** or
  a separate short BASIC/Pascal program that printed the values to the terminal.
- The programmer copied the printed numbers by hand into assembler `DW` / `DB` lines.
- Tables were validated by visual inspection of the printed listing or by running the
  game and checking that projectile arcs looked correct on screen.
- No automated tests existed; the developer compared the physics to mental arithmetic
  or to the hand-calculated reference printout.

### Binary distribution
- The `.COM` or segmented `.EXE` file was the only deliverable.
- All assets were embedded in the executable — there were no separate resource files.
- Modifications required reassembly, relinking, and manual re-testing on hardware.

---

## 5  Lookup table contents — what the `.tsv` and `.bin` files contain

Every table `.bin` file is the **raw byte sequence** extracted from `Sopwith.exe` at
exactly the offset shown in the `offset` column of the matching `_view.tsv`.
The `.tsv` provides three views of each byte: file-relative hex offset, hex value,
and decimal value.  No transformation is applied — the bytes in `.bin` equal the
`dec` column in the `.tsv`.

### Interpreting the value range: coordinate system

All five tables contain values in the range **26–75**.
That is not coincidence: the original Sopwith display was **CGA 320×200** pixels.
The value `0x40` (64) appears as a recurring midpoint and likely maps to the
**screen vertical centre** of the playfield (the ground horizon):

```
Screen top      Y=0
                ...
Playfield top   Y≈26  (0x1A)   ← table minimum
Ground level    Y≈64  (0x40)   ← table midpoint / neutral baseline
Playfield bot   Y≈75  (0x4B)   ← table maximum
Screen bottom   Y=199
```

Values above 64 are below the horizon (approaching ground), values below 64 are
above it (climbing).  The encoder uses **inverted-Y notation** — larger Y = further
down the screen.

### Table-by-table analysis

#### `table_001` — Angle-to-Y-displacement lookup, wave 1
- **Location**: 0xA903 – 0xAB02 (global offset 43,267)
- **Size**: 512 bytes (u8 stride)
- **Pattern**: Sinusoidal cycle, min 41, max 75.  Starts at 64, rises to
  plateau 75 (indices 15–27), descends to trough 41 (indices 170–180),
  rises back toward 64 by entry 511.
- **Interpretation**: Pre-computed **cosine approximation** for angle indices
  0–511 (one full rotation mapped to the upper playfield half).  The game
  indexes this table with an object's current angle to obtain its Y velocity
  component, avoiding runtime floating-point calculation.

```
  Usage pattern (pseudo-code):
    y_delta = table_001[angle]   ; angle is an 8-bit or 9-bit counter
    object.y += y_delta - 0x40   ; subtract baseline to get signed offset
```

#### `table_002` — Horizontal baseline / cosine zero-phase
- **Location**: 0xAB03 – 0xAD02 (global offset 43,779)
- **Size**: 512 bytes (u8 stride)
- **Pattern**: All entries = 0x40 (64).  Entirely flat.
- **Interpretation**: Likely a **second angle-component table** covering the
  X-axis of motion, initialised to zero-delta for objects flying horizontally.
  Alternatively this is a zeroed working buffer that the engine fills at
  runtime, stored adjacent to table_001 in the data segment.

#### `table_003` — Terrain altitude profile, section A
- **Location**: 0xAD03 – 0xAE04 (global offset 44,291)
- **Size**: 290 bytes (u8 stride)
- **Pattern**: Starts at plateau 75 (indices 0–68), descends monotonically
  from 75 to 26 (indices 69–246), then remains flat at 26 (indices 247–285)
  before a short uptick to 27 (indices 286–289).
- **Interpretation**: A **pre-computed terrain height map** for one scrolling
  section of the game world.  Each byte is the Y-coordinate of the ground
  surface at that horizontal pixel column.  The engine reads ahead by the
  plane's X-scroll position to determine collision height.

```
  Usage pattern (pseudo-code):
    ground_y = table_003[scroll_x % 290]
    if plane.y >= ground_y: handle_collision()
```

#### `table_004` — Short trajectory / object path segment
- **Location**: 0xAE55 – 0xAEB8 (global offset 44,629)
- **Size**: 100 bytes (u8 stride)
- **Pattern**: Starts at 59, rises to plateau 75 (indices 10–77), then
  descends back to 64 by entry 99.  One mini-arc.
- **Interpretation**: A **compressed motion path** for a short-lived game
  object such as a bomb or bullet.  The 100-step length matches typical
  projectile lifetime at CGA frame rates (~15 fps × ~6 frames = ~100
  positions).  The arc peaks at 75 (ground level) and recovers — consistent
  with a bomb drop trajectory returning to the horizon.

#### `table_005` — Low-amplitude oscillation / fine-detail height
- **Location**: 0xAEE9 – 0xB070 (global offset 44,777)
- **Size**: 390 bytes (u8 stride)
- **Pattern**: Values oscillate in a narrow band 26–32 with gentle curves.
  Starts at 30, rises to 32, descends to 26, returns to ~29.
- **Interpretation**: A **secondary terrain layer** or **fine-detail
  displacement** added on top of the primary terrain (table_003) to produce
  rolling hills rather than a hard geometric profile.  The narrow amplitude
  (±3 pixels) produces subtle variation without exceeding screen bounds.

### `.bin` file layout

Each `.bin` contains the raw bytes in file order — identical to the `hex`
column of the `.tsv`.  No header, no padding.

```
table_001.bin layout (512 bytes):
  offset 0x000: 0x40  (index 0, value 64)
  offset 0x001: 0x41  (index 1, value 65)
  ...
  offset 0x1FF: 0x40  (index 511, value 64)
```

To load in JavaScript (for WASM integration):

```js
const resp = await fetch('decoded/tables/table_001.bin');
const buf  = await resp.arrayBuffer();
const tbl  = new Uint8Array(buf);   // tbl[angle] → Y displacement
```

To load in Rust:

```rust
let bytes = std::fs::read("decoded/tables/table_001.bin")?;
let y_delta = bytes[angle_index] as i16 - 0x40;  // signed offset from baseline
```

---

## 6  WASM asset pack

The extractor also writes a bundled asset pack for use by the WASM engine:

| File | Description |
|------|-------------|
| `decoded/wasm/assets_pack.bin` | All assets concatenated in byte order |
| `decoded/wasm/assets_pack.json` | Manifest: name, type, byte_offset, byte_length, confidence per entry |

Format tag: `sopwith.asset-pack.v1`, endianness: `little`.

See [wasm-transpile-backlog.md](../spec/wasm-transpile-backlog.md) for the
implementation roadmap.
