<#
.SYNOPSIS
    Build the Sopwith WASM engine and stage assets for the web preview.

.DESCRIPTION
    1. Compiles engine_core to wasm32-unknown-unknown.
    2. Copies the .wasm file to platform_web/www/.
    3. Generates a minimal wasm-bindgen-like JS shim so main.js can import it.
    4. Copies the hexlab asset pack (bin + json) to platform_web/www/.

.EXAMPLE
    .\scripts\Build-WasmPreview.ps1
#>

param(
    [switch]$Release
)

$Root      = Split-Path -Parent $PSScriptRoot
$CoreDir   = Join-Path $Root 'engine_core'
$WwwDir    = Join-Path $Root 'platform_web\www'
$ArtDir    = Join-Path $Root 'artifacts\disasm\decoded\wasm'

$profile   = if ($Release) { 'release' } else { 'debug' }
$targetDir = if ($Release) {
    Join-Path $CoreDir "target\wasm32-unknown-unknown\release"
} else {
    Join-Path $CoreDir "target\wasm32-unknown-unknown\debug"
}

# Ensure output directory exists
if (-not (Test-Path $WwwDir)) { New-Item -ItemType Directory -Path $WwwDir | Out-Null }

# ---------------------------------------------------------------------------
# Step 1 — compile
# ---------------------------------------------------------------------------
Write-Host "Building engine_core ($profile)…" -ForegroundColor Cyan

$cargoArgs = @('build', '--target', 'wasm32-unknown-unknown')
if ($Release) { $cargoArgs += '--release' }

Push-Location $CoreDir
try {
    cargo @cargoArgs
    if ($LASTEXITCODE -ne 0) {
        Write-Error "cargo build failed (exit $LASTEXITCODE)"
        exit $LASTEXITCODE
    }
} finally {
    Pop-Location
}

# ---------------------------------------------------------------------------
# Step 2 — copy .wasm
# ---------------------------------------------------------------------------
$wasmSrc = Join-Path $targetDir 'engine_core.wasm'
if (-not (Test-Path $wasmSrc)) {
    Write-Error "Expected WASM output not found: $wasmSrc"
    exit 1
}

$wasmDst = Join-Path $WwwDir 'engine_core.wasm'
Copy-Item -Path $wasmSrc -Destination $wasmDst -Force
Write-Host "Copied: $wasmDst"

# ---------------------------------------------------------------------------
# Step 3 — generate minimal JS glue
#
# wasm-pack is not installed; write a hand-rolled ESM shim that:
#   - instantiates the .wasm via WebAssembly.instantiateStreaming
#   - re-exports every exported function so main.js can import them directly
# ---------------------------------------------------------------------------
$jsGlue = @'
/**
 * engine_core.js — minimal WASM loader shim
 *
 * Compatible with the import in main.js:
 *   const mod = await import('./engine_core.js');
 *   await mod.default();   // initialise
 *
 * All exported functions are forwarded so callers can use:
 *   mod.init(), mod.tick(), mod.plane_x(), etc.
 */

let wasm;

/** Fetch, compile and instantiate engine_core.wasm. */
export default async function init() {
  const response = await fetch('engine_core.wasm');
  const result   = await WebAssembly.instantiateStreaming(response, {});
  wasm           = result.instance.exports;

  // Expose every WASM export as a named export on this module.
  // (Browsers do not support live re-exports from WASM, so we copy them.)
  Object.assign(glueExports, wasm);
}

// Proxy object that main.js receives when it does:
//   const mod = await import('./engine_core.js')
// Usage:  mod.tick(flags)  →  forwards to wasm.tick(flags)
export const glueExports = {};

// Forward individual exports so tree-shaking and direct destructuring work.
export const init_engine     = (...a) => wasm.init(...a);
export const load_asset_pack = (...a) => wasm.load_asset_pack(...a);
export const register_table  = (...a) => wasm.register_table(...a);
export const tick            = (...a) => wasm.tick(...a);
export const plane_x         = ()     => wasm.plane_x();
export const plane_y         = ()     => wasm.plane_y();
export const plane_angle     = ()     => wasm.plane_angle();
export const scroll_x        = ()     => wasm.scroll_x();
export const frame_count     = ()     => wasm.frame_count();
export const terrain_y_at    = (...a) => wasm.terrain_y_at(...a);
export const trig_y_at       = (...a) => wasm.trig_y_at(...a);

// Allow main.js to call `wasm.init()` matching the wasm-bindgen pattern
export { init_engine as init };
'@

$jsGluePath = Join-Path $WwwDir 'engine_core.js'
Set-Content -Path $jsGluePath -Value $jsGlue -Encoding UTF8
Write-Host "Wrote JS glue: $jsGluePath"

# ---------------------------------------------------------------------------
# Step 4 — copy asset pack
# ---------------------------------------------------------------------------
$packBin  = Join-Path $ArtDir 'assets_pack.bin'
$packJson = Join-Path $ArtDir 'assets_pack.json'

if (Test-Path $packBin) {
    Copy-Item -Path $packBin  -Destination (Join-Path $WwwDir 'assets_pack.bin')  -Force
    Write-Host "Copied: assets_pack.bin"
} else {
    Write-Warning "Asset pack not found at $packBin — run Extract-SopwithArtifacts.ps1 first."
}

if (Test-Path $packJson) {
    Copy-Item -Path $packJson -Destination (Join-Path $WwwDir 'assets_pack.json') -Force
    Write-Host "Copied: assets_pack.json"
}

# ---------------------------------------------------------------------------
# Done
# ---------------------------------------------------------------------------
Write-Host ""
Write-Host "Build complete.  To serve:" -ForegroundColor Green
Write-Host "  python -m http.server 8080 --directory platform_web\www" -ForegroundColor Yellow
Write-Host "  Then open: http://localhost:8080" -ForegroundColor Yellow
