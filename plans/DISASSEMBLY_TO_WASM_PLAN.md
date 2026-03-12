# Sopwith.exe → WebAssembly Game: Reverse-Engineering and Port Plan

## 0) Scope, assumptions, and success criteria

### Assumptions
- You own the legal right to analyze and recreate behavior from `Sopwith.exe`.
- Target output is a browser-playable game compiled to WebAssembly, not a binary-to-binary transpilation.
- Goal is behaviorally equivalent gameplay, modernized rendering/input/audio where needed.

### Non-goals
- Perfect instruction-level emulation of the original executable.
- Preserving original machine code layout or DOS-specific runtime internals.

### Success criteria
- Browser build runs at stable frame pacing (target 60 FPS with fixed-step simulation).
- Core game loop, player controls, enemies, collisions, scoring, and level progression match reference behavior.
- Deterministic simulation for identical input sequences.
- Packaged CI build producing playable artifact.

---

## 1) High-level strategy

Use **clean-room behavioral reconstruction**:
1. Reverse engineer `Sopwith.exe` to extract game rules, data formats, timing model, and state transitions.
2. Re-implement systems in portable C/C++ (or Rust) with strict module boundaries.
3. Compile to WASM via Emscripten (or Rust wasm target), using HTML5 canvas/WebAudio glue.
4. Validate against captured traces from the original executable.

This avoids fragile machine-code lifting and gives maintainable source.

---

## 2) Toolchain setup

## Reverse engineering tools
- Ghidra (primary disassembler/decompiler).
- IDA Free or Binary Ninja (optional second opinion).
- DOSBox-X (runtime observation) with debugger support.
- x64dbg/WinDbg only if wrapper/launcher behavior needs inspection.

## Build/runtime tools for WASM port
- C/C++ route: LLVM + Emscripten SDK.
- Optional Rust route: rustup + wasm32-unknown-unknown + wasm-bindgen.
- SDL2 (optional) or direct canvas rendering bindings.
- Node/npm for local static host and test harness scripts.

## Project support tools
- Git with tagged milestones.
- Python scripts for trace conversion, data extraction, and diff checks.

---

## 3) Reverse-engineering workstreams

## 3.1 Binary triage and metadata
- Identify file format (likely DOS MZ executable), memory model, and relocation entries.
- Record entry point and startup sequence.
- Detect embedded resources (sprites, text, level data, lookup tables).

**Deliverable:** `docs/reverse/triage.md`

## 3.2 Static analysis in Ghidra
- Create project and configure processor mode correctly (16-bit x86 if DOS).
- Recover function boundaries and naming map:
  - Main/game loop
  - Input polling
  - Physics/movement update
  - Collision detection
  - AI behavior
  - Rendering path
  - Audio events
  - Score/lives/state machine
- Build call graph and annotate key global state structs.

**Deliverables:**
- `docs/reverse/callgraph.md`
- `docs/reverse/globals-and-structs.md`

## 3.3 Dynamic observation and trace capture
- Run in DOSBox-X debugger.
- Capture frame-by-frame snapshots for:
  - Player position/velocity
  - Enemy spawn timing
  - Projectile behavior
  - Collision outcomes
  - Score/life transitions
- Script deterministic input sequences for replayability.

**Deliverables:**
- `traces/reference/*.json`
- `docs/reverse/trace-protocol.md`

## 3.4 Data/resource decoding
- Locate and decode sprite/tile formats and palettes.
- Decode map/level format and object spawn tables.
- Verify against runtime memory to avoid misinterpretation.

**Deliverables:**
- `tools/extractors/*`
- `assets_decoded/*`
- `docs/reverse/formats.md`

## 3.5 Behavioral specification (authoritative)
- Write strict rules for each subsystem:
  - Fixed timestep and update order
  - Input semantics and edge cases
  - Movement/acceleration constraints
  - Collision priority and damage rules
  - AI state transitions
  - Scoring and game-over logic

**Deliverable:** `docs/spec/behavioral-spec.md`

---

## 4) WASM port architecture

## 4.1 Codebase layout
- `engine_core/` (pure simulation, no platform dependencies)
- `platform_web/` (canvas rendering, input, audio, persistence)
- `assets/` (decoded or recreated assets)
- `tests/` (determinism + regression)

## 4.2 Deterministic simulation core
- Fixed-step update (e.g., 1/60 s) with accumulator.
- Integer/fixed-point math if original behavior depends on quantization.
- Explicit update order matching behavioral spec.

## 4.3 Rendering and audio adaptation
- Preserve sprite composition and draw order from reference.
- Map legacy palette behavior to RGBA textures.
- Map original sound events to WebAudio samples/synth.

## 4.4 Input model
- Keyboard mapping with optional gamepad adapter.
- Input buffering rules aligned to original frame timing.

---

## 5) Migration phases and milestones

## Phase A: Reverse engineering foundation (1-2 weeks)
- Complete triage, initial call graph, and key system identification.
- Produce first behavioral spec draft.

**Exit criteria:** main loop and core systems confidently identified.

## Phase B: Core simulation reimplementation (2-4 weeks)
- Implement simulation modules: player, enemies, projectiles, collisions, scoring.
- Run headless deterministic tests.

**Exit criteria:** logic-only tests pass against captured traces.

## Phase C: Web platform integration (1-2 weeks)
- Canvas renderer + input + audio.
- Build and run via local web server.

**Exit criteria:** playable in browser with stable update/render pacing.

## Phase D: Accuracy tuning and polish (1-2 weeks)
- Differential gameplay checks versus reference traces/videos.
- Tune constants, timings, spawn windows, and collision thresholds.

**Exit criteria:** behavior parity reached for agreed scenarios.

## Phase E: Packaging and release (2-4 days)
- CI artifact generation, size optimization, and deployment docs.

**Exit criteria:** reproducible build and shareable web package.

---

## 6) Validation and QA plan

## Determinism tests
- Feed identical input stream, assert identical game state hashes per frame.
- Run cross-browser checks (Chromium/Firefox).

## Golden trace comparison
- Compare key variables frame-by-frame against reference traces.
- Define tolerances only where rendering interpolation differs.

## Gameplay acceptance checklist
- Takeoff/landing behavior.
- Shooting and bombing trajectories.
- Building destruction/collision interactions.
- Enemy AI and wave cadence.
- Score/lives/game-over flow.

---

## 7) Risk register and mitigations

- **Risk:** Decompiled control flow is ambiguous.
  - **Mitigation:** prioritize dynamic traces; triangulate with multiple tools.
- **Risk:** Timing differences in browser break gameplay feel.
  - **Mitigation:** strict fixed-step simulation, decoupled render loop.
- **Risk:** Asset format unclear or partially compressed.
  - **Mitigation:** memory-dump validation and iterative decoder tests.
- **Risk:** Legal uncertainty around redistribution of original assets.
  - **Mitigation:** use recreated assets if necessary; keep extractor tooling separate.

---

## 8) Suggested repository artifacts

- `docs/reverse/triage.md`
- `docs/reverse/callgraph.md`
- `docs/reverse/globals-and-structs.md`
- `docs/reverse/formats.md`
- `docs/reverse/trace-protocol.md`
- `docs/spec/behavioral-spec.md`
- `traces/reference/`
- `tools/extractors/`
- `engine_core/`
- `platform_web/`
- `tests/`

---

## 9) First 10 concrete tasks (execution starter)

1. Create Ghidra project and import `Sopwith.exe`.
2. Record executable metadata (format, entry point, sections, relocations).
3. Identify and name startup and main loop functions.
4. Set up DOSBox-X debugger session with scripted input replay.
5. Capture 2-3 short reference traces (start, combat, game over).
6. Draft initial global state map and update-order hypothesis.
7. Decode one sprite block and validate against rendered frame.
8. Write first behavioral spec section: frame timing + input semantics.
9. Scaffold `engine_core` with fixed-step loop and stub systems.
10. Add state-hash determinism test harness.

---

## 10) Optional implementation stack recommendation

For fastest path to a playable browser build:
- Language: C++17
- Build: CMake + Emscripten
- Platform: SDL2 (input/audio/window abstraction) targeting HTML5 canvas
- Tests: Catch2 or GoogleTest for simulation tests

Alternative (more modern, slightly steeper integration): Rust + wasm-bindgen + Web APIs.
