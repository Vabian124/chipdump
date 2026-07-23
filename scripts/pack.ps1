# Pack .\unpacked into chipdump.modified.bin (16 MB flash image)
$ErrorActionPreference = 'Stop'
$Root = Split-Path -Parent $PSScriptRoot
if (-not $Root) { $Root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path }
$DumpTool = Join-Path $Root 'melis-tools\melis-tools-windows-x86_64\bin\dump_tool.exe'
$Input = Join-Path $Root 'unpacked'
$Output = Join-Path $Root 'chipdump.modified.bin'
$ExpectedSize = 16777216

if (-not (Test-Path $DumpTool)) { throw "dump_tool.exe not found: $DumpTool" }
if (-not (Test-Path $Input)) { throw "unpacked dir not found: $Input" }

Write-Host "Packing $Input -> $Output"
& $DumpTool pack $Input $Output
if ($LASTEXITCODE -ne 0) { throw "dump_tool pack failed ($LASTEXITCODE)" }

$size = (Get-Item $Output).Length
Write-Host "Wrote $Output ($size bytes)"
if ($size -ne $ExpectedSize) {
    Write-Warning "Expected $ExpectedSize bytes for XM25QH128C; got $size — double-check before flashing."
} else {
    Write-Host "Size OK for XM25QH128C (16 MB)."
}
