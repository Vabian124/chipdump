# Pack .\unpacked into chipdump.modified.bin (16 MB flash image)
#
# NOTE: stock dump_tool.exe pack uses hardcoded GPT offsets from a different
# F133 layout and also requires uart_debug_rx in sys_config.fex. This dump has
# a larger bootA / smaller UDISK and only uart_debug_tx, so we:
#   1) rebuild MinFS with dump_tool's companion logic via the already-extracted
#      tree using a small Python packer when available, OR reuse
#      2_ROOTFS.bin.repacked from a prior minfs pack
#   2) splice ROOTFS at THIS dump's real flash offset 0x190000
# boot0 / bootA / UDISK are left unchanged unless you edit them intentionally.

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

if (-not (Test-Path $Original)) { throw "chipdump.bin not found: $Original" }
if (-not (Test-Path $RootfsOut)) { throw "ROOTFS extract not found: $RootfsOut" }
if (-not (Test-Path $DumpTool)) { throw "dump_tool.exe not found: $DumpTool" }

# Rebuild MinFS by invoking dump_tool pack in dry fashion is not available.
# Use Python + the minfs crate is not exposed; call dump_tool through a
# helper that only runs minfs pack by temporarily... 
# Practical approach: use dump_tool pack and ignore failure after ROOTFS is written,
# OR ship a tiny python packer. The prebuilt dump_tool always packs MinFS first
# before failing on UART — so a failed pack still leaves 2_ROOTFS.bin.repacked.

Write-Host "Rebuilding MinFS from $RootfsOut"
Write-Host "(dump_tool may print a uart_debug_rx error on this dump — expected; MinFS still builds)"
$packLog = & $DumpTool pack $Unpacked (Join-Path $Root '_pack_tmp.bin') 2>&1
$packLog | ForEach-Object { Write-Host $_ }
if (-not (Test-Path $RootfsRepacked)) {
    throw "MinFS repack missing after dump_tool attempt: $RootfsRepacked"
}

Write-Host "Splicing ROOTFS into flash image at offset 0x$($RootfsFlash.ToString('X'))"
python -c @"
from pathlib import Path
ROOTFS_FLASH = $RootfsFlash
ROOTFS_SIZE = $RootfsSize
EXPECTED = $ExpectedSize
chip = bytearray(Path(r'$($Original.Replace('\','\\'))').read_bytes())
assert len(chip) == EXPECTED
repacked = Path(r'$($RootfsRepacked.Replace('\','\\'))').read_bytes()
assert repacked.startswith(b'MINFS'), 'bad MinFS magic'
assert len(repacked) <= ROOTFS_SIZE, len(repacked)
part = bytearray(ROOTFS_SIZE)
part[:len(repacked)] = repacked
chip[ROOTFS_FLASH:ROOTFS_FLASH+ROOTFS_SIZE] = part
assert len(chip) == EXPECTED
Path(r'$($Output.Replace('\','\\'))').write_bytes(chip)
Path(r'$($RootfsBin.Replace('\','\\'))').write_bytes(bytes(part))
print('Wrote', r'$($Output.Replace('\','\\'))', len(chip), 'bytes')
print('ROOTFS payload', len(repacked), 'padded to', ROOTFS_SIZE)
"@

Remove-Item (Join-Path $Root '_pack_tmp.bin') -ErrorAction SilentlyContinue

$size = (Get-Item $Output).Length
if ($size -ne $ExpectedSize) {
    throw "Expected $ExpectedSize bytes; got $size"
}
Write-Host "Size OK for XM25QH128C (16 MB). Flash: $Output"
