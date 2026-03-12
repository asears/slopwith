# Sopwith.exe Triage (First Pass)

## Binary summary
- File: `Sopwith.exe`
- Size: `49,536` bytes
- SHA-256: `558894b0fffdd6829086561d204430ccf78341206d76158987efa00b100ed839`
- `MZ` signature at offset `0`: **not present**
- `PE/NE` signatures: **not found**

## Observations
- The image starts with plausible 16-bit x86 machine code bytes (`26 8B 1E ...`).
- Readable message/argument/help strings are concentrated in higher offsets (`~0x9B80` onward).
- This suggests either:
  - a raw loader/runtime image,
  - or a transformed executable payload not beginning with a standard DOS header.

## Signature anchors
- `Too many arguments` at `0x9B80`
- `S O P W I T H` at `0x9E45`
- `Compuscience` at `0x9E58`
- `Usage: sopwith` at `0xA2F7`

## Candidate split for analysis
- Code candidate: `0x0000` .. `0x8BFF` (35,840 bytes)
- Assets/data candidate: `0x8C00` .. EOF (13,696 bytes)

## Immediate implications for disassembly
- Treat the blob as segmented 16-bit code/data and use dynamic traces to recover entry/setup behavior.
- Build function naming from observed interrupts (`int 21h` appears early) and control-flow fanout.

## Next actions
1. In Ghidra, import as raw x86/16 and set origin base for segmented analysis.
2. Identify startup/init routine near offset `0x0000` and first DOS API sequence.
3. Use DOSBox-X to capture runtime trace snapshots for startup and argument parsing paths.
