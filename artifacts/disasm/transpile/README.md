# Transpile Seed Assets

These files are intended to bootstrap translation/disassembly tooling.

## Files
- `sopwith_image.asm` - full binary image represented as NASM-style `db` rows.

## Suggested use
1. Use `segments/code_candidate.bin` as the primary input to 16-bit disassembly passes.
2. Use `sopwith_image.asm` for deterministic byte-addressed references during transpiler development.
3. Keep all reconstructed symbols and function mappings in `docs/reverse/`.

## Regeneration
Run:

```powershell
.\scripts\Extract-SopwithArtifacts.ps1 -Build
```
