<#
.SYNOPSIS
Launches DOSBox-X with a mounted folder and executes a target DOS executable for testing.

.DESCRIPTION
Wraps DOSBox-X startup so reverse-engineering test runs are repeatable.
Supports optional config file, fullscreen mode, extra startup commands,
and a help switch to display common DOSBox-X CLI flags.

.PARAMETER BinaryPath
Path to DOS executable to run inside DOSBox-X (for example: .\Sopwith.exe).

.PARAMETER DosboxPath
Path to dosbox-x.exe. Defaults to C:\games\DOSBox-X\dosbox-x.exe.

.PARAMETER MountPath
Host folder mounted as C: in DOSBox-X. Defaults to BinaryPath's parent folder.

.PARAMETER ConfigPath
Optional DOSBox-X configuration file path passed via -conf.

.PARAMETER Fullscreen
If provided, starts DOSBox-X in fullscreen mode.

.PARAMETER ExtraCommands
Optional array of additional DOSBox-X startup commands, each passed via -c.
Example: -ExtraCommands "set PATH=C:\\", "dir"

.PARAMETER ShowDosboxHelp
Prints common DOSBox-X CLI options and exits.

.EXAMPLE
.\scripts\Start-DosboxTest.ps1 -BinaryPath .\Sopwith.exe

.EXAMPLE
.\scripts\Start-DosboxTest.ps1 -BinaryPath .\Sopwith.exe -Fullscreen -ExtraCommands "dir"

.EXAMPLE
.\scripts\Start-DosboxTest.ps1 -ShowDosboxHelp
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $false)]
    [string]$BinaryPath,

    [Parameter(Mandatory = $false)]
    [string]$DosboxPath = 'C:\games\DOSBox-X\dosbox-x.exe',

    [Parameter(Mandatory = $false)]
    [string]$MountPath,

    [Parameter(Mandatory = $false)]
    [string]$ConfigPath,

    [Parameter(Mandatory = $false)]
    [switch]$Fullscreen,

    [Parameter(Mandatory = $false)]
    [string[]]$ExtraCommands,

    [Parameter(Mandatory = $false)]
    [switch]$ShowDosboxHelp
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if ($ShowDosboxHelp) {
    Write-Host 'Common DOSBox-X CLI options:'
    Write-Host '  -help | -?                 Show help'
    Write-Host '  -conf <path>               Use a specific config file'
    Write-Host '  -c "<command>"             Execute startup command (repeatable)'
    Write-Host '  -fullscreen                Start in fullscreen'
    Write-Host '  -windowresolution WxH      Set window resolution'
    Write-Host '  -log                       Enable logging output'
    Write-Host ''
    Write-Host 'Example:'
    Write-Host '  C:\games\DOSBox-X\dosbox-x.exe -c "mount c C:\projects\sopwith" -c "c:" -c "Sopwith.exe"'
    return
}

if (-not $BinaryPath) {
    throw 'BinaryPath is required unless -ShowDosboxHelp is specified.'
}

$resolvedDosbox = (Resolve-Path -Path $DosboxPath).Path
$resolvedBinary = (Resolve-Path -Path $BinaryPath).Path

if (-not $MountPath) {
    $MountPath = Split-Path -Path $resolvedBinary -Parent
}
$resolvedMount = (Resolve-Path -Path $MountPath).Path

$binaryLeaf = Split-Path -Path $resolvedBinary -Leaf

$argsList = New-Object System.Collections.Generic.List[string]

if ($ConfigPath) {
    $resolvedConfig = (Resolve-Path -Path $ConfigPath).Path
    $argsList.Add('-conf')
    $argsList.Add($resolvedConfig)
}

if ($Fullscreen) {
    $argsList.Add('-fullscreen')
}

$argsList.Add('-c')
$argsList.Add("mount c $resolvedMount")
$argsList.Add('-c')
$argsList.Add('c:')

if ($ExtraCommands) {
    foreach ($cmd in $ExtraCommands) {
        $argsList.Add('-c')
        $argsList.Add($cmd)
    }
}

$argsList.Add('-c')
$argsList.Add($binaryLeaf)

Write-Host "Launching DOSBox-X: $resolvedDosbox"
Write-Host "Mounting: $resolvedMount as C:"
Write-Host "Running:  $binaryLeaf"

Start-Process -FilePath $resolvedDosbox -ArgumentList $argsList | Out-Null
