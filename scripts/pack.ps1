# Pack unpacked/ → chipdump.modified.bin (16 MB)

# dump_tool pack alone is unsafe on this dump (wrong GPT constants + uart_debug_rx).
# We only use it to rebuild MinFS, then splice ROOTFS at flash 0x190000.

$ErrorActionPreference = 'Stop'
$Root = Split-Path -Parent $PSScriptRoot
if (-not $Root) { $Root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path }

$DumpTool = Join-Path $Root 'melis-tools\melis-tools-windows-x86_64\bin\dump_tool.exe'
$Original = Join-Path $Root 'chipdump.bin'
$Output = Join-Path $Root 'chipdump.modified.bin'
$Unpacked = Join-Path $Root 'unpacked'
$RootfsOut = Join-Path $Unpacked 'gpt.bin.out\2_ROOTFS.bin.out'
$RootfsRepacked = Join-Path $Unpacked 'gpt.bin.out\2_ROOTFS.bin.repacked'
$RootfsBin = Join-Path $Unpacked 'gpt.bin.out\2_ROOTFS.bin'
$ExpectedSize = 16777216
$RootfsFlash = 0x190000
$RootfsSize = 14614528

foreach ($p in @($Original, $RootfsOut, $DumpTool)) {
    if (-not (Test-Path $p)) { throw "Missing: $p" }
}

Write-Host "Rebuilding MinFS from $RootfsOut"
Write-Host "(A uart_debug_rx error from dump_tool is expected on this dump.)"
& $DumpTool pack $Unpacked (Join-Path $Root '_pack_tmp.bin') 2>&1 | ForEach-Object { Write-Host $_ }
if (-not (Test-Path $RootfsRepacked)) {
    throw "MinFS repack missing: $RootfsRepacked"
}

Write-Host "Splicing ROOTFS at 0x$($RootfsFlash.ToString('X'))"
$pyOriginal = $Original.Replace('\', '\\')
$pyRepacked = $RootfsRepacked.Replace('\', '\\')
$pyOutput = $Output.Replace('\', '\\')
$pyRootfsBin = $RootfsBin.Replace('\', '\\')
python -c @"
from pathlib import Path
ROOTFS_FLASH, ROOTFS_SIZE, EXPECTED = $RootfsFlash, $RootfsSize, $ExpectedSize
chip = bytearray(Path(r'$pyOriginal').read_bytes())
assert len(chip) == EXPECTED
repacked = Path(r'$pyRepacked').read_bytes()
assert repacked.startswith(b'MINFS') and len(repacked) <= ROOTFS_SIZE
part = bytearray(ROOTFS_SIZE)
part[:len(repacked)] = repacked
chip[ROOTFS_FLASH:ROOTFS_FLASH + ROOTFS_SIZE] = part
assert len(chip) == EXPECTED
Path(r'$pyOutput').write_bytes(chip)
Path(r'$pyRootfsBin').write_bytes(bytes(part))
print('Wrote', r'$pyOutput', len(chip), 'bytes; ROOTFS payload', len(repacked))
"@

Remove-Item (Join-Path $Root '_pack_tmp.bin') -ErrorAction SilentlyContinue
$size = (Get-Item $Output).Length
if ($size -ne $ExpectedSize) { throw "Expected $ExpectedSize bytes; got $size" }
Write-Host "OK — flash: $Output"
