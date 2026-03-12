<#
.SYNOPSIS
Runs a repeatable multi-pass disassembly extraction for Sopwith.exe using the custom Rust hexlab tool.

.DESCRIPTION
Builds (optional) and runs tools/hexlab against a target binary, producing a disassembly artifact bundle:
- triage metadata
- signature offsets
- extracted strings
- candidate code/assets segments
- human-readable segment views
- second-pass palette/sprite/table decodes (JSON + raw + previews)
- third-pass remaining-items inventory
- transpile seed assembly image

.PARAMETER BinaryPath
Path to the binary to analyze. Defaults to C:\projects\sopwith\Sopwith.exe.

.PARAMETER HexlabPath
Path to the hexlab Cargo project. Defaults to C:\projects\sopwith\tools\hexlab.

.PARAMETER OutputDir
Path where artifacts are written. Defaults to C:\projects\sopwith\artifacts\disasm.

.PARAMETER StringsMin
Minimum ASCII run length for strings extraction. Defaults to 6.

.PARAMETER Build
If set, runs `cargo build` before extraction.

.EXAMPLE
.\scripts\Extract-SopwithArtifacts.ps1 -Build

.EXAMPLE
.\scripts\Extract-SopwithArtifacts.ps1 -BinaryPath .\Sopwith.exe -OutputDir .\artifacts\disasm
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $false)]
    [string]$BinaryPath = 'C:\projects\sopwith\Sopwith.exe',

    [Parameter(Mandatory = $false)]
    [string]$HexlabPath = 'C:\projects\sopwith\tools\hexlab',

    [Parameter(Mandatory = $false)]
    [string]$OutputDir = 'C:\projects\sopwith\artifacts\disasm',

    [Parameter(Mandatory = $false)]
    [int]$StringsMin = 6,

    [Parameter(Mandatory = $false)]
    [switch]$Build
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$resolvedHexlab = (Resolve-Path $HexlabPath).Path
$resolvedBinary = (Resolve-Path $BinaryPath).Path

if (-not (Test-Path $OutputDir)) {
    New-Item -Path $OutputDir -ItemType Directory -Force | Out-Null
}
$resolvedOutput = (Resolve-Path $OutputDir).Path

Write-Host "[extract] hexlab: $resolvedHexlab"
Write-Host "[extract] binary: $resolvedBinary"
Write-Host "[extract] output: $resolvedOutput"

Push-Location $resolvedHexlab
try {
    if ($Build) {
        Write-Host '[extract] building hexlab...'
        cargo build
        if ($LASTEXITCODE -ne 0) { throw 'cargo build failed' }
    }

    Write-Host '[extract] running extraction...'
    cargo run -- --file $resolvedBinary --mz --scan-signatures --strings $StringsMin --export-dir $resolvedOutput --asm-db (Join-Path $resolvedOutput 'transpile\sopwith_image.asm')
    if ($LASTEXITCODE -ne 0) { throw 'hexlab extraction failed' }
}
finally {
    Pop-Location
}

Write-Host '[extract] complete.'
Write-Host ("[extract] triage: " + (Join-Path $resolvedOutput 'triage.json'))
Write-Host ("[extract] transpile asm: " + (Join-Path $resolvedOutput 'transpile\sopwith_image.asm'))
