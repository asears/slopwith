---
name: wasm-porting-prompt
description: Prompt template for converting reverse-engineering findings into deterministic engine-core tasks for WebAssembly.
---

# Prompt Template: WASM Porting

Using the current behavioral specs and reverse-engineering notes, generate implementation tasks for `engine_core` and `platform_web`.

Requirements:
1. Break tasks into simulation, rendering, input, and audio.
2. Preserve fixed-step deterministic update ordering.
3. Identify constants to calibrate against traces.
4. Define acceptance checks per subsystem.
5. Output prioritized backlog with estimates.

Output sections:
- `Simulation tasks`
- `Platform tasks`
- `Validation tasks`
- `Risks and unknowns`
