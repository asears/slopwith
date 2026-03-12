---
name: disasm
description: Skill guide for disassembling Sopwith.exe, extracting behavior, and preparing a clean-room WebAssembly port.
---

# Reverse Engineering Workflow Skill

## Objective
Extract gameplay behavior from `Sopwith.exe` and produce implementation-ready specs for a WASM rewrite.

## Inputs
- Binary path
- Target output trace folder
- Preferred static tool (`ghidra`, `ida`, `binja`)

## Procedure
1. Perform binary triage (format, entrypoint, relocation).
2. Identify main loop, input, update, render, collision, and scoring functions.
3. Capture deterministic runtime traces in DOSBox-X.
4. Decode resource formats and produce extraction notes.
5. Write behavioral specs with update order and edge cases.

## Outputs
- Function map markdown
- Global/state map markdown
- Trace JSON artifacts
- Behavioral spec markdown

## Definition of done
- Core systems identified and named.
- At least 3 deterministic traces captured.
- Simulation update order documented for porting.
