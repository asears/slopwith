# Parity Gap Review (2026-03-11)

## What was confirmed
- The previous web preview was intentionally placeholder-level (`throttle` and `fire` stubs), so mismatch with original Sopwith visuals/behavior was expected.
- Core tables (`table_001`, `table_003`, `table_004`, `table_005`) are being loaded and can drive movement/terrain/projectile curves.
- `remaining_items` still contains unresolved low-entropy and mixed segments that likely include object/tile maps and additional gameplay state tables.

## What changed
- Implemented playable controls and combat loop in WASM core:
  - climb/dive + throttle effect
  - barrel roll trigger
  - pellet fire and bomb drop with cooldowns and trajectory updates
  - destructible world objects (cow/tank/building classes)
- Updated web renderer to CGA-style black/cyan/magenta/white presentation with mountainous terrain and target rendering.

## Open questions
- Exact sprite-to-entity mapping is still inferred; object visuals are symbolic until tile index map is recovered.
- Exact projectile physics constants and AI spawn cadence are approximations.
- Terrain profile composition likely uses additional unresolved segments beyond tables 003/005.

## Next 3 tasks
1. Decode unresolved runs in `artifacts/disasm/decoded/remaining_items.json` with a focus on entity/tile index tables.
2. Capture deterministic DOSBox-X traces for bombing/shooting collisions and compare hit timing against WASM frame logs.
3. Produce a subsystem spec update (`input`, `physics`, `collision`, `render`) with confidence per rule before final parity tuning.
