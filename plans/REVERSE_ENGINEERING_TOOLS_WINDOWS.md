# Reverse Engineering Tools and Windows Setup

## Tool Links

- Ghidra (official): https://github.com/NationalSecurityAgency/ghidra/releases
- Ghidra docs: https://ghidra-sre.org/
- IDA Free (official): https://hex-rays.com/ida-free/
- Binary Ninja (official): https://binary.ninja/
- DOSBox-X (official): https://dosbox-x.com/

---

## 1) Ghidra Setup (Windows)

### Prerequisites
- 64-bit Windows.
- Java Runtime (JDK 17+ recommended for newer releases).

### Install
1. Download latest ZIP release from Ghidra releases page.
2. Extract to a stable folder, e.g. `C:\tools\ghidra`.
3. Launch `ghidraRun.bat`.

### First-use project setup for `Sopwith.exe`
1. Create a new non-shared project.
2. Import `Sopwith.exe`.
3. Confirm architecture/format detection (likely 16-bit DOS MZ).
4. Run auto-analysis with defaults, then refine options for DOS/16-bit code where needed.
5. Rename discovered functions and annotate global state early.

### Practical tips
- Maintain a naming convention: `sys_*`, `game_*`, `render_*`, `ai_*`.
- Save frequent snapshots/bookmarks during major refactorings of symbol names.

---

## 2) IDA Free Setup (Windows)

### Prerequisites
- 64-bit Windows.

### Install
1. Download installer from IDA Free page.
2. Run installer and complete setup.
3. Launch IDA and open `Sopwith.exe`.

### Recommended workflow
1. Let IDA auto-analyze the binary.
2. Verify processor mode and segmentation assumptions for DOS executable.
3. Use graph view to find the main loop and high-fanout functions.
4. Compare findings with Ghidra for confidence on control flow.

### Practical tips
- Keep a function map in markdown outside IDA so naming decisions are tool-agnostic.
- Use comments for uncertain branches and revisit after dynamic tracing.

---

## 3) Binary Ninja Setup (Windows)

### Prerequisites
- 64-bit Windows.
- Licensed Binary Ninja build.

### Install
1. Download installer from Binary Ninja website.
2. Install and activate license.
3. Open `Sopwith.exe` and run initial analysis.

### Recommended workflow
1. Use HLIL/MLIL views to cross-check decompilation assumptions.
2. Confirm indirect branch handling around game state dispatch logic.
3. Export notes for function signatures and state structures.

### Practical tips
- Treat BN as a second-opinion tool when Ghidra/IDA disagree.
- Keep behavior truth anchored in runtime traces, not decompiler aesthetics.

---

## 4) DOSBox-X Usage Notes

You already have DOSBox-X installed at:
- `C:\games\DOSBox-X\dosbox-x.exe`

### Useful CLI flags (common)
- `-conf <path>`: Use a specific config file.
- `-c "<command>"`: Execute startup command(s); repeat `-c` for multiple commands.
- `-fullscreen`: Start in fullscreen.
- `-windowresolution <WxH>`: Set window resolution.
- `-log`: Enable log output.
- `-help` or `-?`: Show command help.

### Example
```powershell
C:\games\DOSBox-X\dosbox-x.exe -c "mount c C:\projects\sopwith" -c "c:" -c "Sopwith.exe"
```

---

## 5) Suggested Analysis Routine

1. Static pass in Ghidra to identify candidate main/update/render functions.
2. Cross-check suspicious control flow in IDA Free/Binary Ninja.
3. Run the executable in DOSBox-X with scripted commands.
4. Capture observations and trace artifacts into `docs/reverse/` and `traces/reference/`.
5. Iterate until behavior spec is stable enough for WASM porting.
