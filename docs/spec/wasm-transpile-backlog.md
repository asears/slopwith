# WASM Transpile Backlog (Seeded from First-Pass Disassembly)

## Ready now
- Full byte-addressed image for transpile tooling: `artifacts/disasm/transpile/sopwith_image.asm`
- First-pass assembly listing: `artifacts/disasm/disassembly/code_candidate.objdump.asm`
- Candidate code/data split for focused implementation planning.

## Backlog

### 1) Address model and symbolization
- Define canonical virtual address model for raw code blob in tooling.
- Add labels at known anchors (usage/help text and startup sequences).
- Produce a function index with confidence scores.

### 2) Control-flow recovery
- Segment disassembly into basic blocks and function candidates.
- Identify major loops and dispatch patterns.
- Map DOS interrupt usage (`int 21h`) to high-level operations.

### 3) Data/resource decoding
- Parse likely text table boundaries from `assets_candidate.bin`.
- Detect patterns for sprite/bitmap assets and lookup tables.
- Extract assets into typed JSON/binary manifests.

### 4) Behavioral extraction
- Derive subsystem rules: input, movement, collision, scoring, AI.
- Validate with DOSBox-X traces and deterministic replay scenarios.

### 5) Implementation handoff to WASM
- Convert confirmed behavior into `engine_core` tasks with acceptance checks.
- Keep platform rendering/input/audio adapters in `platform_web`.
- Track parity using frame-hash comparisons vs reference traces.
