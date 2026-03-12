---
name: reverse-engineering-instructions
description: Operating instructions for repeatable disassembly sessions and handoff into a WASM implementation backlog.
---

# Session Instructions

## Before starting
- Confirm target binary path.
- Confirm output folders exist: `docs/reverse`, `traces/reference`.
- Confirm DOSBox-X launch script works.

## Session checklist
1. Pick one subsystem (input, physics, collision, AI, rendering, scoring).
2. Update static analysis notes for that subsystem.
3. Capture one dynamic trace focused on the subsystem.
4. Document state transitions and edge cases.
5. Convert findings into WASM backlog tasks.

## Evidence requirements
- Every rule in behavioral spec should link back to one of:
  - static function analysis, or
  - runtime trace observation.

## Handoff format
- `What was confirmed`
- `What changed`
- `Open questions`
- `Next 3 tasks`
