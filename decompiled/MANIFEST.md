# Complete firmware manifest — every file in chipdump.bin

Full recursive listing of the `dump_tool extract` output for all partitions.
Columns: path, size (bytes), file type, sha256 (first 16 hex).

## boot0 (eGON.BT0 SPL)

| Path | Size | Type | SHA256 |
|--|--|--|--|
| `boot0.bin` | 49152 | data | f48eb2a954af4e2b… |

## bootA (1_bootA.bin.out)

| Path | Size | Type | SHA256 |
|--|--|--|--|
| `1_bootA.bin.out/epos.img` | 3360664 | data | 4c4fc3923b6b9e7f… |
| `1_bootA.bin.out/melis-config.bin` | 49152 | data | e31c6b6a29aef613… |
| `1_bootA.bin.out/melis-lzma.bin` | 1498400 | LZMA compressed data, streamed | ad730f7abcec5ae2… |
| `1_bootA.bin.out/melis-lzma.decompressed` | 3360664 | data | 4c4fc3923b6b9e7f… |
| `1_bootA.bin.out/pin_mappings.md` | 29698 | ASCII text | 5637b2dbbd3b7a86… |
| `1_bootA.bin.out/sys_config.fex` | 25557 | ASCII text | ed8c869efade24d0… |

## ROOTFS (2_ROOTFS.bin.out) — all files

| Path | Size | Type | SHA256 |
|--|--|--|--|
| `apps/AndroidAuto/AndroidAuto.exe` | 27 | ASCII text, with no line terminators | d242ccb688bdd14f… |
| `apps/CarLife/license.txt` | 88 | ASCII text, with no line terminators | 3585859a8d4398aa… |
| `apps/CarPlay/CarPlay.exe` | 27 | ASCII text, with no line terminators | d242ccb688bdd14f… |
| `apps/CarPlay/icon_120x120.png` | 7373 | PNG image data, 120 x 120, 8-bit/color RGB | b40a98ccee13ae21… |
| `apps/CarPlay/icon_180x180.png` | 9515 | PNG image data, 180 x 180, 8-bit/color RGB | 2f083366062382af… |
| `apps/CarPlay/icon_256x256.png` | 12318 | PNG image data, 256 x 256, 8-bit/color RGB | a690f662439dfe04… |
| `apps/Config.ini` | 5985 | Generic INItialization configuration [CONF | e0cbb66ef29c4dce… |
| `apps/Data/AirPlay.data` | 25482 | data | c3f534d2862c930a… |
| `apps/Data/AndroidAuto.data` | 5420 | data | e188576a55d3505e… |
| `apps/Data/AndroidWireless.data` | 12093 | data | 07d59fd209b26f2b… |
| `apps/Data/AuxIn2.data` | 36467 | data | 72cecdfb3cd1a0c5… |
| `apps/Data/AuxIn.data` | 4406 | data | 0097c1cfc2d58f3f… |
| `apps/Data/Back.data` | 4875 | data | 6a2bf356cba38141… |
| `apps/Data/Black.data` | 592 | data | 8412297602ff0dbd… |
| `apps/Data/BtBook.data` | 132470 | data | 8176d80d37d209e8… |
| `apps/Data/BtBookSearch.data` | 59872 | data | 1acbb8afc1632cfb… |
| `apps/Data/BtDial.data` | 66945 | data | 9251f1f7521638e5… |
| `apps/Data/BtHeadsetButton.data` | 1068 | data | 8fa3447379ffbc3b… |
| `apps/Data/BtHeadset.data` | 16968 | data | 8c403831e1445888… |
| `apps/Data/BtMusic.data` | 36391 | data | 4c2cee8510793736… |
| `apps/Data/BtRecord.data` | 42800 | data | 6bae2fd81d788d61… |
| `apps/Data/BtSetup.data` | 28393 | data | b36b24cdb6c10c0b… |
| `apps/Data/BtTalk.data` | 49585 | data | 1a1fd5712082e08d… |
| `apps/Data/Calculator.data` | 27961 | data | 768c9fcf2b544700… |
| `apps/Data/Calendar.data` | 23214 | data | 59d5883a243d39ce… |
| `apps/Data/CarComputer.data` | 48864 | data | 45f7d41690c5aff6… |
| `apps/Data/CarPlay.data` | 3671 | data | 3272b7cd8d5ef2ff… |
| `apps/Data/CarRecorder.data` | 60083 | DIY-Thermocam raw data (Lepton 2.x), scale | 3d78ff2af04a3d25… |
| `apps/Data/CarRecorderListButton.data` | 3269 | data | dc2b8437141c1795… |
| `apps/Data/CarRecorderList.data` | 14689 | data | defeba60e1e309cd… |
| `apps/Data/CarRecorderPlay.data` | 11012 | data | bc19cf038e2c2cfe… |
| `apps/Data/CarRecorderSetup.data` | 13709 | data | 84bf8c28109e066b… |
| `apps/Data/Ccd.data` | 1816 | data | 4fcd1c64ac959dee… |
| `apps/Data/Link.data` | 1544 | data | 9a7bc58cbfa5a31e… |
| `apps/Data/Login.data` | 14799 | data | 1015209545230fb1… |
| `apps/Data/MainApp.data` | 166006 | data | 58f1540d18adeb4f… |
| `apps/Data/Main.data` | 430955 | data | aff214abbee3fdb9… |
| `apps/Data/MainLinkAuto.data` | 3884 | data | 22c2c47f1a765266… |
| `apps/Data/MainLinkCarPlay.data` | 3416 | data | 27a3ba00e1b90bf3… |
| `apps/Data/MainLink.data` | 28387 | data | 07b3c08dd0de8cfc… |
| `apps/Data/MainLinkMirrorAndroid.data` | 12057 | data | faef960eb78623d8… |
| `apps/Data/MainLinkMirrorIphone.data` | 5424 | data | 8b1b1137f5063f6e… |
| `apps/Data/PlayerAudio.data` | 33750 | data | dd6a7127c8f82135… |
| `apps/Data/PlayerList.data` | 42186 | data | 03a9bab9496cf326… |
| `apps/Data/PlayerPhoto.data` | 16422 | data | fbe48860fcc464c1… |
| `apps/Data/PlayerSetupAudio.data` | 25727 | data | 4f5e5e5cc0fd53e0… |
| `apps/Data/PlayerSetupBalance.data` | 17942 | data | 8eacad07626fec50… |
| `apps/Data/PlayerVideo.data` | 25572 | data | e68ef30f205a7ee7… |
| `apps/Data/Power.data` | 1840 | data | f9def395259ee25b… |
| `apps/Data/ScreenOff.data` | 2112 | data | aaac23fb8920ef72… |
| `apps/Data/ScreenSaver.data` | 95597 | data | 6e5921d503144b91… |
| `apps/Data/SetupAudio.data` | 26084 | data | edf485e919cf6f26… |
| `apps/Data/SetupBalance.data` | 31970 | data | 2d8c51add7219017… |
| `apps/Data/SetupBasic.data` | 39877 | data | 1148fea83aa789e8… |
| `apps/Data/SetupConfig.data` | 49364 | data | a85e59ff064569c2… |
| `apps/Data/SetupDebug.data` | 11738 | data | e34807120f7e552c… |
| `apps/Data/SetupFactory.data` | 8652 | data | db92e569afdf790c… |
| `apps/Data/SetupGain.data` | 21377 | data | dce53035034bc8c8… |
| `apps/Data/SetupLanguage.data` | 23226 | data | 4f3bd48f67c8a776… |
| `apps/Data/SetupLogo.data` | 8128 | data | 30ffcac55de50871… |
| `apps/Data/SetupMainKey.data` | 9885 | data | 3cdd25b95d7a8782… |
| `apps/Data/SetupMenu.data` | 17428 | data | 2ae7c96a4014080f… |
| `apps/Data/SetupPassword.data` | 22294 | data | 375046aa15eb1bd9… |
| `apps/Data/SetupRadioArea.data` | 17247 | data | 53a5aca79d01b0a7… |
| `apps/Data/SetupScreenLearn.data` | 17170 | data | cb27b9160887ccf4… |
| `apps/Data/SetupScreenSaver.data` | 5765 | data | 9c51cace707fdb6d… |
| `apps/Data/SetupTime.data` | 41253 | data | 445d615f7737ef6d… |
| `apps/Data/SetupTouchCalib.data` | 18501 | data | c910567d4f5b7814… |
| `apps/Data/SetupUpdateApp.data` | 2066 | data | 869683a63ad24c08… |
| `apps/Data/SetupUpdate.data` | 7468 | data | 6d8482477fcfa947… |
| `apps/Data/SetupUpdateMcu.data` | 2066 | data | 8434cea41e4e466c… |
| `apps/Data/SetupVersion.data` | 7997 | data | b632a99c2784460f… |
| `apps/Data/SetupVideo.data` | 10041 | data | be11c9ca76c91293… |
| `apps/Data/SetupWallPaper.data` | 4903 | data | 78c497f8b3a841e9… |
| `apps/Data/SetupWheel.data` | 12040 | data | f0aefd7db7f6d321… |
| `apps/Data/SystemBar.data` | 33981 | data | 8b4c21400554898d… |
| `apps/Data/TipBox.data` | 5769 | data | e815bbe58d4f973c… |
| `apps/Data/Tv.data` | 23750 | data | d124933c1a24d72f… |
| `apps/Data/VolumeBar.data` | 17375 | data | 932506d84987839e… |
| `apps/Data/WallPaper.data` | 592 | data | c0e20565367b5fd1… |
| `apps/desktop/app_root.desktop` | 124 | ASCII text, with CRLF line terminators | dbf23306eb2fd003… |
| `apps/desktop.mod` | 27755 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 2ec73f39a2ada09f… |
| `apps/Font30_4Bit.vft` | 2258766 | data | befa79b1a1f3dc7f… |
| `apps/init.axf` | 2234015 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 39b84df47c93348c… |
| `apps/Language/Bt.txt` | 41624 | Unicode text, UTF-16, little-endian text,  | f42b85ae99cfca6e… |
| `apps/Language/Calculator.txt` | 4202 | Unicode text, UTF-16, little-endian text,  | 3dc6f4818a44ce71… |
| `apps/Language/Calendar.txt` | 17082 | Unicode text, UTF-16, little-endian text,  | 4c013e117f9c33c1… |
| `apps/Language/Can.txt` | 30754 | Unicode text, UTF-16, little-endian text,  | ea7867e8fdd6f5fe… |
| `apps/Language/CarRecorder.txt` | 16276 | Unicode text, UTF-16, little-endian text,  | cc219b219925cf65… |
| `apps/Language/Link.txt` | 108438 | Unicode text, UTF-16, little-endian text,  | 9ec4fbc81e646b46… |
| `apps/Language/Main.txt` | 65694 | Unicode text, UTF-16, little-endian text,  | 4ddb5423cd9ecc6f… |
| `apps/Language/Player.txt` | 35998 | Unicode text, UTF-16, little-endian text,  | af76cbe1fee4fa5a… |
| `apps/Language/Power.txt` | 3414 | Unicode text, UTF-16, little-endian text,  | cfcf06f3eb9c9d26… |
| `apps/Language/Radio.txt` | 6824 | Unicode text, UTF-16, little-endian text,  | d2e8a76290706901… |
| `apps/Language/Setup.txt` | 278178 | Unicode text, UTF-16, little-endian text,  | 628e3c4a70cc99d0… |
| `apps/Language/SystemBar.txt` | 51242 | Unicode text, UTF-16, little-endian text,  | 78f0b9ff01466a89… |
| `apps/Language/TipBox.txt` | 78146 | Unicode text, UTF-16, little-endian text,  | 5c85cf0ea1e23c46… |
| `apps/Language/Video.txt` | 26688 | Unicode text, UTF-16, little-endian text,  | e00dc3fed6f49433… |
| `apps/Logo/reset.jpg` | 6627 | JPEG image data, JFIF standard 1.01, aspec | 16b444ad6eb70689… |
| `apps/UI2/Data/Main.data` | 268273 | data | 2c5bcd0c3250fa32… |
| `apps/UI3/Data/Main.data` | 132677 | data | 90b4d0d7bd7315ba… |
| `apps/Version.txt` | 32 | ASCII text, with no line terminators | 8a3f84184e801cbb… |
| `apps/WallPaper/0.jpg` | 201343 | JPEG image data, Exif standard: [TIFF imag | 66fde444d6a59671… |
| `apps/WallPaper/1.jpg` | 157749 | JPEG image data, Exif standard: [TIFF imag | 73de78bc29b24f7b… |
| `apps/WallPaper/2.jpg` | 73617 | JPEG image data, Exif standard: [TIFF imag | 5ab808842ce846fa… |
| `apps/WallPaper/3.jpg` | 160800 | JPEG image data, Exif standard: [TIFF imag | 92a4ff49c0f8e894… |
| `etc/cedarx.conf` | 1532 | ASCII text | 704fe737076b9384… |
| `mod/auto.mod` | 920119 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 29f253d209bba7e6… |
| `mod/carlife.mod` | 96455 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 2e4096cc24781645… |
| `mod/carplay.mod` | 871827 | ELF 32-bit LSB executable, UCB RISC-V, RVC | d3b5e7bae101ff81… |
| `mod/cedar/adec_aac.drv` | 106711 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 46bc91f682fb207a… |
| `mod/cedar/adec_alac.drv` | 26703 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 44c80a44cf68fcbb… |
| `mod/cedar/adec_amr.drv` | 147079 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 5600d84df34c3a41… |
| `mod/cedar/adec_ape.drv` | 54927 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 4f56e9a450478538… |
| `mod/cedar/adec_atr.drv` | 34983 | ELF 32-bit LSB executable, UCB RISC-V, RVC | cad580505a7483a6… |
| `mod/cedar/adec_cok.drv` | 58823 | ELF 32-bit LSB executable, UCB RISC-V, RVC | c8bb8805a8184b04… |
| `mod/cedar/adec_com.plg` | 15775 | ELF 32-bit LSB executable, UCB RISC-V, RVC | bb06622603e05564… |
| `mod/cedar/adec_flc.drv` | 35015 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 970edf802d37c5cd… |
| `mod/cedar/adec_mp3.drv` | 66647 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 09b5cdca3f613e6f… |
| `mod/cedar/adec_ogg.drv` | 98799 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 74e892c1da3dade4… |
| `mod/cedar/adec_pcm.drv` | 53423 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 86b0d4eef6c761fa… |
| `mod/cedar/adec_spr.drv` | 45527 | ELF 32-bit LSB executable, UCB RISC-V, RVC | f8b15a9519875d39… |
| `mod/cedar/adec_wma.drv` | 205391 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 7cc9479802cf5823… |
| `mod/cedar/aenc_mp3.drv` | 74183 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 5b1a5c69fecc3d48… |
| `mod/cedar/aenc_pcm.drv` | 8559 | ELF 32-bit LSB executable, UCB RISC-V, RVC | dc8aa9042d3d907e… |
| `mod/cedar/aenc.plg` | 4647 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 495b7e12958c8290… |
| `mod/cedar/aply.plg` | 13087 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 6c685be214878823… |
| `mod/cedar/ardr_hw.plg` | 3279 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 5b5bb3c5fdaa3aa9… |
| `mod/cedar/ardr_sw.plg` | 85287 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 46f541f168aba803… |
| `mod/cedar/arec.plg` | 7111 | ELF 32-bit LSB executable, UCB RISC-V, RVC | acfd6ca6587690fe… |
| `mod/cedar/avs.drv` | 9039 | ELF 32-bit LSB executable, UCB RISC-V, RVC | c5961ef2b3e9b26a… |
| `mod/cedar/ldec_itx.plg` | 21407 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 167cf17bbb2a7a61… |
| `mod/cedar/ldec_lrc.plg` | 8271 | ELF 32-bit LSB executable, UCB RISC-V, RVC | da562b286dd8e0f6… |
| `mod/cedar/ldec_smi.plg` | 11807 | ELF 32-bit LSB executable, UCB RISC-V, RVC | ec2f783b4341a2a2… |
| `mod/cedar/ldec_srt.plg` | 7847 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 217c0ee5929ba4f4… |
| `mod/cedar/ldec_ssa.plg` | 9407 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 2b72012d64b1db7d… |
| `mod/cedar/ldec_sub.plg` | 17287 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 4af7e3d6526a89c1… |
| `mod/cedar/ldec_txt.plg` | 8431 | ELF 32-bit LSB executable, UCB RISC-V, RVC | a92f3ba2982217e2… |
| `mod/cedar.mod` | 65463 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 0282d4ae43cee3b3… |
| `mod/cedar/muxer.plg` | 11759 | ELF 32-bit LSB executable, UCB RISC-V, RVC | fb558d3d93aee2f7… |
| `mod/cedar/psr_audio.plg` | 58671 | ELF 32-bit LSB executable, UCB RISC-V, RVC | e4574f04b16a5c7a… |
| `mod/cedar/psr_video.plg` | 327703 | ELF 32-bit LSB executable, UCB RISC-V, RVC | e97c1de703c83572… |
| `mod/cedar/psr_vrxxx.plg` | 100119 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 62a882b6110beee6… |
| `mod/cedar/readme.txt` | 0 | empty | e3b0c44298fc1c14… |
| `mod/cedar/sply.plg` | 3975 | ELF 32-bit LSB executable, UCB RISC-V, RVC | fdd94d568f90d97b… |
| `mod/cedar/vdec_com.plg` | 11087 | ELF 32-bit LSB executable, UCB RISC-V, RVC | ae008a602c84372b… |
| `mod/cedar/vdecoder.drv` | 541735 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 9cb5f04d5420d1dd… |
| `mod/cedar/vply.plg` | 26895 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 6c0b77f9cf6c2a50… |
| `mod/charset.mod` | 224127 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 8e1190c657d1bde7… |
| `mod/display.mod` | 17559 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 9a79353fa28bd415… |
| `mod/eclink.mod` | 406787 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 18d87a18f2143eea… |
| `mod/ginkgo.mod` | 5007 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 75a3f074570168df… |
| `mod/miracast.mod` | 231055 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 8d23f2710f919d33… |
| `mod/mixture.mod` | 35843 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 7bc0183a08447f7b… |
| `mod/motolink.mod` | 2779 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 358ec27f744b2202… |
| `mod/oak.mod` | 856743 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 7ae044510eae256f… |
| `mod/sensor_play.mod` | 63643 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 5b180c999a34fcd0… |
| `mod/slib.mod` | 9759 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 27dfefc7510c9f75… |
| `mod/update.mod` | 19667 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 66e36c4db1e89f16… |
| `mod/vcoder.mod` | 6539 | ELF 32-bit LSB executable, UCB RISC-V, RVC | d1793b8a3845d7d7… |
| `mod/video_play.mod` | 62367 | ELF 32-bit LSB executable, UCB RISC-V, RVC | ca81098dbd9c333f… |
| `mod/willow/pdec_bmp.plg` | 3655 | ELF 32-bit LSB executable, UCB RISC-V, RVC | a48d7119babb3cf9… |
| `mod/willow/pdec_gif.plg` | 4959 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 52b8e27fd048ac12… |
| `mod/willow/pdec_jpeg_pro.plg` | 82795 | ELF 32-bit LSB executable, UCB RISC-V, RVC | bcba5b5ab8363389… |
| `mod/willow/pdec_jpg.plg` | 19247 | ELF 32-bit LSB executable, UCB RISC-V, RVC | be36f30e798bd2ed… |
| `mod/willow/pdec_png.plg` | 15007 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 9014faddcb53937c… |
| `mod/willow/pshow.plg` | 61915 | ELF 32-bit LSB executable, UCB RISC-V, RVC | dd5b780f5e9e751c… |
| `mod/willow/psr_bmp.plg` | 7627 | ELF 32-bit LSB executable, UCB RISC-V, RVC | fb3259903f173138… |
| `mod/willow/psr_gif.plg` | 8723 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 0b83e549a4036706… |
| `mod/willow/psr_jpeg_pro.plg` | 7371 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 4bd29dc0773dada4… |
| `mod/willow/psr_jpg.plg` | 15371 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 35f81b089f6e49eb… |
| `mod/willow/psr_png.plg` | 9819 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 4b15445ad04130c1… |
| `mod/willow/readme.txt` | 0 | empty | e3b0c44298fc1c14… |
| `mod/willow/willow.mod` | 4591 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 93939c18a2f954e8… |
| `mod/wireless.mod` | 2262799 | ELF 32-bit LSB executable, UCB RISC-V, RVC | 3f2ee28f638f6f32… |
| `res/disp_firmware` | 3063 | ASCII text | 7e034ecee1f71acc… |
| `res/stamovie.mp4` | 1396942 | ISO Media, MP4 Base Media v1 [ISO 14496-12 | 4b8ddc5eabc5d6f6… |
| `rootfs_ini.tmp` | 249 | Generic INItialization configuration [COMP | aa3d1d1735b4939b… |
| `startup.sh` | 204 | ASCII text, with CRLF line terminators | 3824453ac7e9b0d6… |

## UDISK (3_UDISK.bin.out) — all files

| Path | Size | Type | SHA256 |
|--|--|--|--|
| `config_checksum.bin` | 4 | data | 51f7bbb2dc84ffa0… |
| `Config.ini` | 6009 | Generic INItialization configuration [CONF | 831d5ab37c05d662… |
| `Save/boot.bin` | 10 | SVR2 executable (Amdahl-UTS) | 93c2952a9aa4b624… |
| `Save/ColorKey.bin` | 84 | data | 31233cee885479cc… |
| `Save/RadioSave.bin` | 108 | data | 7282efbf6c77f37e… |
| `Save/SystemSave.bin` | 13320 | data | 5650ed28f80d8cd4… |
