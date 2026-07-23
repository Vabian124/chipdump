# Extract chipdump.bin into .\unpacked
$ErrorActionPreference = 'Stop'
$Root = Split-Path -Parent $PSScriptRoot
if (-not $Root) { $Root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path }
$DumpTool = Join-Path $Root 'melis-tools\melis-tools-windows-x86_64\bin\dump_tool.exe'
$Input = Join-Path $Root 'chipdump.bin'
$Output = Join-Path $Root 'unpacked'

if (-not (Test-Path $DumpTool)) { throw "dump_tool.exe not found: $DumpTool" }
if (-not (Test-Path $Input)) { throw "chipdump.bin not found: $Input" }

Write-Host "Extracting $Input -> $Output"
& $DumpTool extract $Input $Output
if ($LASTEXITCODE -ne 0) { throw "dump_tool extract failed ($LASTEXITCODE)" }
Write-Host "Done."
