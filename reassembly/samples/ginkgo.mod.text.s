# Reassemblable disassembly of ginkgo.mod
# Instruction encodings are emitted as data so `as` reproduces exact bytes.
# Edit a line's mnemonic comment into a real instruction to change code.
.option norvc

.section .text,"ax",@progbits
    .4byte 0x00a5c7b3    # e4b00000: xor	a5,a1,a0
    .2byte 0x8b9d    # e4b00004: c.andi	a5,7
    .4byte 0x00c50333    # e4b00006: add	t1,a0,a2
    .2byte 0xe7b9    # e4b0000a: c.bnez	a5,0xe4b00058
    .2byte 0x471d    # e4b0000c: c.li	a4,7
    .4byte 0x04c77563    # e4b0000e: bgeu	a4,a2,0xe4b00058
    .4byte 0x00757693    # e4b00012: andi	a3,a0,7
    .2byte 0x872a    # e4b00016: c.mv	a4,a0
    .2byte 0xeea1    # e4b00018: c.bnez	a3,0xe4b00070
    .4byte 0xff837693    # e4b0001a: andi	a3,t1,-8
    .4byte 0xfc068613    # e4b0001e: addi	a2,a3,-64
    .4byte 0x06c76763    # e4b00022: bltu	a4,a2,0xe4b00090
    .4byte 0x02d77663    # e4b00026: bgeu	a4,a3,0xe4b00052
    .2byte 0x16fd    # e4b0002a: c.addi	a3,-1
    .2byte 0x8e99    # e4b0002c: c.sub	a3,a4
    .2byte 0x828d    # e4b0002e: c.srli	a3,0x3
    .4byte 0x00168893    # e4b00030: addi	a7,a3,1
    .2byte 0xa019    # e4b00034: c.j	0xe4b0003a
    .2byte 0x0001    # e4b00036: c.addi	zero,0
    .2byte 0x87c2    # e4b00038: c.mv	a5,a6
    .4byte 0x66f5c60b    # e4b0003a: .insn	4, 0x66f5c60b
    .4byte 0x00178813    # e4b0003e: addi	a6,a5,1
    .4byte 0x66f7560b    # e4b00042: .insn	4, 0x66f7560b
    .4byte 0xfed799e3    # e4b00046: bne	a5,a3,0xe4b00038
    .4byte 0x00389793    # e4b0004a: slli	a5,a7,0x3
    .2byte 0x973e    # e4b0004e: c.add	a4,a5
    .2byte 0x95be    # e4b00050: c.add	a1,a5
    .4byte 0x00676763    # e4b00052: bltu	a4,t1,0xe4b00060
    .2byte 0x8082    # e4b00056: c.jr	ra
    .2byte 0x872a    # e4b00058: c.mv	a4,a0
    .4byte 0xfe657ee3    # e4b0005a: bgeu	a0,t1,0xe4b00056
    .2byte 0x0001    # e4b0005e: c.addi	zero,0
    .4byte 0x9815c78b    # e4b00060: .insn	4, 0x9815c78b
    .4byte 0x1817578b    # e4b00064: .insn	4, 0x1817578b
    .4byte 0xfe676ce3    # e4b00068: bltu	a4,t1,0xe4b00060
    .2byte 0x8082    # e4b0006c: c.jr	ra
    .2byte 0x0001    # e4b0006e: c.addi	zero,0
    .4byte 0x9815c68b    # e4b00070: .insn	4, 0x9815c68b
    .4byte 0x1817568b    # e4b00074: .insn	4, 0x1817568b
    .4byte 0x00777693    # e4b00078: andi	a3,a4,7
    .2byte 0xded9    # e4b0007c: c.beqz	a3,0xe4b0001a
    .4byte 0x9815c68b    # e4b0007e: .insn	4, 0x9815c68b
    .4byte 0x1817568b    # e4b00082: .insn	4, 0x1817568b
    .4byte 0x00777693    # e4b00086: andi	a3,a4,7
    .2byte 0xf2fd    # e4b0008a: c.bnez	a3,0xe4b00070
    .2byte 0xb779    # e4b0008c: c.j	0xe4b0001a
    .2byte 0x0001    # e4b0008e: c.addi	zero,0
    .4byte 0xf875c80b    # e4b00090: .insn	4, 0xf875c80b
    .4byte 0xfbf5c28b    # e4b00094: .insn	4, 0xfbf5c28b
    .4byte 0xfdd5cf0b    # e4b00098: .insn	4, 0xfdd5cf0b
    .4byte 0xff15ce0b    # e4b0009c: .insn	4, 0xff15ce0b
    .4byte 0x04858593    # e4b000a0: addi	a1,a1,72
    .4byte 0x01073023    # e4b000a4: .insn	4, 0x01073023
    .4byte 0xff85b803    # e4b000a8: .insn	4, 0xff85b803
    .4byte 0x00773423    # e4b000ac: .insn	4, 0x00773423
    .4byte 0xfbf7528b    # e4b000b0: .insn	4, 0xfbf7528b
    .4byte 0xfdd75f0b    # e4b000b4: .insn	4, 0xfdd75f0b
    .4byte 0xff175e0b    # e4b000b8: .insn	4, 0xff175e0b
    .4byte 0x04870713    # e4b000bc: addi	a4,a4,72
    .4byte 0xff073c23    # e4b000c0: .insn	4, 0xff073c23
    .4byte 0xfcc766e3    # e4b000c4: bltu	a4,a2,0xe4b00090
    .2byte 0xbfb9    # e4b000c8: c.j	0xe4b00026
    .2byte 0x0000    # e4b000ca: c.unimp
    .2byte 0x0000    # e4b000cc: c.unimp
    .2byte 0x0000    # e4b000ce: c.unimp
    .2byte 0x433d    # e4b000d0: c.li	t1,15
    .2byte 0x872a    # e4b000d2: c.mv	a4,a0
    .4byte 0x02c37163    # e4b000d4: bgeu	t1,a2,0xe4b000f6
    .4byte 0x00f77793    # e4b000d8: andi	a5,a4,15
    .2byte 0xe3c1    # e4b000dc: c.bnez	a5,0xe4b0015c
    .2byte 0xe1bd    # e4b000de: c.bnez	a1,0xe4b00144
    .4byte 0xff067693    # e4b000e0: andi	a3,a2,-16
    .2byte 0x8a3d    # e4b000e4: c.andi	a2,15
    .2byte 0x96ba    # e4b000e6: c.add	a3,a4
    .2byte 0xe30c    # e4b000e8: c.fsw	fa1,0(a4)
    .2byte 0xe70c    # e4b000ea: c.fsw	fa1,8(a4)
    .2byte 0x0741    # e4b000ec: c.addi	a4,16
    .4byte 0xfed76de3    # e4b000ee: bltu	a4,a3,0xe4b000e8
    .2byte 0xe211    # e4b000f2: c.bnez	a2,0xe4b000f6
    .2byte 0x8082    # e4b000f4: c.jr	ra
    .4byte 0x40c306b3    # e4b000f6: sub	a3,t1,a2
    .2byte 0x068a    # e4b000fa: c.slli	a3,0x2
    .4byte 0x00000297    # e4b000fc: auipc	t0,0x0
    .2byte 0x9696    # e4b00100: c.add	a3,t0
    .4byte 0x00a68067    # e4b00102: jalr	zero,10(a3)
    .4byte 0x00b70723    # e4b00106: sb	a1,14(a4)
    .4byte 0x00b706a3    # e4b0010a: sb	a1,13(a4)
    .4byte 0x00b70623    # e4b0010e: sb	a1,12(a4)
    .4byte 0x00b705a3    # e4b00112: sb	a1,11(a4)
    .4byte 0x00b70523    # e4b00116: sb	a1,10(a4)
    .4byte 0x00b704a3    # e4b0011a: sb	a1,9(a4)
    .4byte 0x00b70423    # e4b0011e: sb	a1,8(a4)
    .4byte 0x00b703a3    # e4b00122: sb	a1,7(a4)
    .4byte 0x00b70323    # e4b00126: sb	a1,6(a4)
    .4byte 0x00b702a3    # e4b0012a: sb	a1,5(a4)
    .4byte 0x00b70223    # e4b0012e: sb	a1,4(a4)
    .4byte 0x00b701a3    # e4b00132: sb	a1,3(a4)
    .4byte 0x00b70123    # e4b00136: sb	a1,2(a4)
    .4byte 0x00b700a3    # e4b0013a: sb	a1,1(a4)
    .4byte 0x00b70023    # e4b0013e: sb	a1,0(a4)
    .2byte 0x8082    # e4b00142: c.jr	ra
    .4byte 0x0ff5f593    # e4b00144: andi	a1,a1,255
    .4byte 0x00859693    # e4b00148: slli	a3,a1,0x8
    .2byte 0x8dd5    # e4b0014c: c.or	a1,a3
    .4byte 0x01059693    # e4b0014e: slli	a3,a1,0x10
    .2byte 0x8dd5    # e4b00152: c.or	a1,a3
    .4byte 0x02059693    # e4b00154: slli	a3,a1,0x20
    .2byte 0x8dd5    # e4b00158: c.or	a1,a3
    .2byte 0xb759    # e4b0015a: c.j	0xe4b000e0
    .4byte 0x00279693    # e4b0015c: slli	a3,a5,0x2
    .4byte 0x00000297    # e4b00160: auipc	t0,0x0
    .2byte 0x9696    # e4b00164: c.add	a3,t0
    .2byte 0x8286    # e4b00166: c.mv	t0,ra
    .4byte 0xfa2680e7    # e4b00168: jalr	ra,-94(a3)
    .2byte 0x8096    # e4b0016c: c.mv	ra,t0
    .2byte 0x17c1    # e4b0016e: c.addi	a5,-16
    .2byte 0x8f1d    # e4b00170: c.sub	a4,a5
    .2byte 0x963e    # e4b00172: c.add	a2,a5
    .4byte 0xf8c371e3    # e4b00174: bgeu	t1,a2,0xe4b000f6
    .2byte 0xb79d    # e4b00178: c.j	0xe4b000de
    .2byte 0x0000    # e4b0017a: c.unimp
    .2byte 0x0000    # e4b0017c: c.unimp
    .2byte 0x0000    # e4b0017e: c.unimp
    .4byte 0x00a5e7b3    # e4b00180: or	a5,a1,a0
    .2byte 0x8b9d    # e4b00184: c.andi	a5,7
    .2byte 0xefad    # e4b00186: c.bnez	a5,0xe4b00200
    .2byte 0x479d    # e4b00188: c.li	a5,7
    .4byte 0x06c7fb63    # e4b0018a: bgeu	a5,a2,0xe4b00200
    .4byte 0x00001797    # e4b0018e: auipc	a5,0x1
    .4byte 0x00278793    # e4b00192: addi	a5,a5,2 # 0xe4b01190
    .4byte 0x0007b303    # e4b00196: .insn	4, 0x0007b303
    .4byte 0x00001797    # e4b0019a: auipc	a5,0x1
    .4byte 0xffe78793    # e4b0019e: addi	a5,a5,-2 # 0xe4b01198
    .4byte 0x0007b883    # e4b001a2: .insn	4, 0x0007b883
    .2byte 0x4e1d    # e4b001a6: c.li	t3,7
    .2byte 0x87aa    # e4b001a8: c.mv	a5,a0
    .2byte 0x0001    # e4b001aa: c.addi	zero,0
    .4byte 0x00000013    # e4b001ac: addi	zero,zero,0
    .2byte 0x6194    # e4b001b0: c.flw	fa3,0(a1)
    .4byte 0x00668733    # e4b001b2: add	a4,a3,t1
    .4byte 0xfff6c813    # e4b001b6: xori	a6,a3,-1
    .4byte 0x01077733    # e4b001ba: and	a4,a4,a6
    .4byte 0x01177733    # e4b001be: and	a4,a4,a7
    .2byte 0xeb01    # e4b001c2: c.bnez	a4,0xe4b001d2
    .4byte 0x7887d68b    # e4b001c4: .insn	4, 0x7887d68b
    .2byte 0x1661    # e4b001c8: c.addi	a2,-8
    .2byte 0x05a1    # e4b001ca: c.addi	a1,8
    .4byte 0xfece62e3    # e4b001cc: bltu	t3,a2,0xe4b001b0
    .2byte 0xc621    # e4b001d0: c.beqz	a2,0xe4b00218
    .4byte 0x0005c703    # e4b001d2: lbu	a4,0(a1)
    .2byte 0x167d    # e4b001d6: c.addi	a2,-1
    .2byte 0x86b2    # e4b001d8: c.mv	a3,a2
    .4byte 0x1817d70b    # e4b001da: .insn	4, 0x1817d70b
    .2byte 0xc31d    # e4b001de: c.beqz	a4,0xe4b00204
    .2byte 0x95b2    # e4b001e0: c.add	a1,a2
    .2byte 0x4805    # e4b001e2: c.li	a6,1
    .2byte 0xa811    # e4b001e4: c.j	0xe4b001f8
    .2byte 0x0001    # e4b001e6: c.addi	zero,0
    .4byte 0x80e5c70b    # e4b001e8: .insn	4, 0x80e5c70b
    .4byte 0xfff60693    # e4b001ec: addi	a3,a2,-1
    .2byte 0x8636    # e4b001f0: c.mv	a2,a3
    .4byte 0x1817d70b    # e4b001f2: .insn	4, 0x1817d70b
    .2byte 0xc719    # e4b001f6: c.beqz	a4,0xe4b00204
    .4byte 0x40c80733    # e4b001f8: sub	a4,a6,a2
    .2byte 0xf675    # e4b001fc: c.bnez	a2,0xe4b001e8
    .2byte 0x8082    # e4b001fe: c.jr	ra
    .2byte 0x87aa    # e4b00200: c.mv	a5,a0
    .2byte 0xb7f9    # e4b00202: c.j	0xe4b001d0
    .4byte 0x00d78733    # e4b00204: add	a4,a5,a3
    .2byte 0xca89    # e4b00208: c.beqz	a3,0xe4b0021a
    .2byte 0x0001    # e4b0020a: c.addi	zero,0
    .4byte 0x00000013    # e4b0020c: addi	zero,zero,0
    .4byte 0x1817d00b    # e4b00210: .insn	4, 0x1817d00b
    .4byte 0xfee79ee3    # e4b00214: bne	a5,a4,0xe4b00210
    .2byte 0x8082    # e4b00218: c.jr	ra
    .2byte 0x8082    # e4b0021a: c.jr	ra
    .2byte 0x0000    # e4b0021c
    .2byte 0x0000    # e4b0021e
    .2byte 0x0000    # e4b00220
    .2byte 0x0000    # e4b00222
    .2byte 0x0000    # e4b00224
    .2byte 0x0000    # e4b00226
    .2byte 0xc54d    # e4b00228: c.beqz	a0,0xe4b002d2
    .2byte 0x1101    # e4b0022a: c.addi	sp,-32
    .4byte 0xf891540b    # e4b0022c: .insn	4, 0xf891540b
    .2byte 0xec06    # e4b00230: c.fswsp	ft1,24(sp)
    .2byte 0xe84a    # e4b00232: c.fswsp	fs2,16(sp)
    .2byte 0x842a    # e4b00234: c.mv	s0,a0
    .4byte 0x1f053503    # e4b00236: .insn	4, 0x1f053503
    .2byte 0xc511    # e4b0023a: c.beqz	a0,0xe4b00246
    .2byte 0x4681    # e4b0023c: c.li	a3,0
    .2byte 0x4601    # e4b0023e: c.li	a2,0
    .2byte 0x4585    # e4b00240: c.li	a1,1
    .4byte 0x327000ef    # e4b00242: jal	ra,0xe4b00d68
    .4byte 0x1e843503    # e4b00246: .insn	4, 0x1e843503
    .2byte 0xc511    # e4b0024a: c.beqz	a0,0xe4b00256
    .2byte 0x4681    # e4b0024c: c.li	a3,0
    .2byte 0x4601    # e4b0024e: c.li	a2,0
    .2byte 0x4585    # e4b00250: c.li	a1,1
    .4byte 0x317000ef    # e4b00252: jal	ra,0xe4b00d68
    .4byte 0x1e043503    # e4b00256: .insn	4, 0x1e043503
    .2byte 0xc511    # e4b0025a: c.beqz	a0,0xe4b00266
    .2byte 0x4681    # e4b0025c: c.li	a3,0
    .2byte 0x4601    # e4b0025e: c.li	a2,0
    .2byte 0x4585    # e4b00260: c.li	a1,1
    .4byte 0x307000ef    # e4b00262: jal	ra,0xe4b00d68
    .4byte 0x1d843483    # e4b00266: .insn	4, 0x1d843483
    .2byte 0x4901    # e4b0026a: c.li	s2,0
    .2byte 0xc495    # e4b0026c: c.beqz	s1,0xe4b00298
    .2byte 0x4681    # e4b0026e: c.li	a3,0
    .2byte 0x4601    # e4b00270: c.li	a2,0
    .2byte 0x4585    # e4b00272: c.li	a1,1
    .2byte 0x8526    # e4b00274: c.mv	a0,s1
    .4byte 0x2f3000ef    # e4b00276: jal	ra,0xe4b00d68
    .2byte 0x6505    # e4b0027a: c.lui	a0,0x1
    .4byte 0x40d000ef    # e4b0027c: jal	ra,0xe4b00e88
    .2byte 0x84aa    # e4b00280: c.mv	s1,a0
    .2byte 0xc919    # e4b00282: c.beqz	a0,0xe4b00298
    .2byte 0x86aa    # e4b00284: c.mv	a3,a0
    .4byte 0x1d843503    # e4b00286: .insn	4, 0x1d843503
    .2byte 0x6605    # e4b0028a: c.lui	a2,0x1
    .4byte 0x02300593    # e4b0028c: addi	a1,zero,35
    .4byte 0x2d9000ef    # e4b00290: jal	ra,0xe4b00d68
    .4byte 0x0005091b    # e4b00294: .insn	4, 0x0005091b
    .4byte 0x1d043503    # e4b00298: .insn	4, 0x1d043503
    .2byte 0xc10d    # e4b0029c: c.beqz	a0,0xe4b002be
    .2byte 0xc889    # e4b0029e: c.beqz	s1,0xe4b002b0
    .4byte 0x00090863    # e4b002a0: beq	s2,zero,0xe4b002b0
    .2byte 0x86a6    # e4b002a4: c.mv	a3,s1
    .2byte 0x864a    # e4b002a6: c.mv	a2,s2
    .4byte 0x02500593    # e4b002a8: addi	a1,zero,37
    .4byte 0x2bd000ef    # e4b002ac: jal	ra,0xe4b00d68
    .4byte 0x1d043503    # e4b002b0: .insn	4, 0x1d043503
    .2byte 0x4681    # e4b002b4: c.li	a3,0
    .2byte 0x4601    # e4b002b6: c.li	a2,0
    .2byte 0x4585    # e4b002b8: c.li	a1,1
    .4byte 0x2af000ef    # e4b002ba: jal	ra,0xe4b00d68
    .2byte 0x8526    # e4b002be: c.mv	a0,s1
    .4byte 0x481000ef    # e4b002c0: jal	ra,0xe4b00f40
    .4byte 0xf891440b    # e4b002c4: .insn	4, 0xf891440b
    .2byte 0x60e2    # e4b002c8: c.flwsp	ft1,24(sp)
    .2byte 0x6942    # e4b002ca: c.flwsp	fs2,16(sp)
    .2byte 0x4501    # e4b002cc: c.li	a0,0
    .2byte 0x6105    # e4b002ce: c.addi16sp	sp,32
    .2byte 0x8082    # e4b002d0: c.jr	ra
    .2byte 0x4501    # e4b002d2: c.li	a0,0
    .2byte 0x8082    # e4b002d4: c.jr	ra
    .2byte 0x1141    # e4b002d6: c.addi	sp,-16
    .2byte 0xe022    # e4b002d8: c.fswsp	fs0,0(sp)
    .2byte 0xe406    # e4b002da: c.fswsp	ft1,8(sp)
    .2byte 0x842a    # e4b002dc: c.mv	s0,a0
    .4byte 0xf4bff0ef    # e4b002de: jal	ra,0xe4b00228
    .4byte 0x1f043503    # e4b002e2: .insn	4, 0x1f043503
    .2byte 0xc509    # e4b002e6: c.beqz	a0,0xe4b002f0
    .4byte 0x1e043823    # e4b002e8: .insn	4, 0x1e043823
    .4byte 0x24d000ef    # e4b002ec: jal	ra,0xe4b00d38
    .4byte 0x1e843503    # e4b002f0: .insn	4, 0x1e843503
    .2byte 0xc509    # e4b002f4: c.beqz	a0,0xe4b002fe
    .4byte 0x1e043423    # e4b002f6: .insn	4, 0x1e043423
    .4byte 0x23f000ef    # e4b002fa: jal	ra,0xe4b00d38
    .4byte 0x1e043503    # e4b002fe: .insn	4, 0x1e043503
    .2byte 0xc509    # e4b00302: c.beqz	a0,0xe4b0030c
    .4byte 0x1e043023    # e4b00304: .insn	4, 0x1e043023
    .4byte 0x231000ef    # e4b00308: jal	ra,0xe4b00d38
    .4byte 0x1d843503    # e4b0030c: .insn	4, 0x1d843503
    .2byte 0xc509    # e4b00310: c.beqz	a0,0xe4b0031a
    .4byte 0x1c043c23    # e4b00312: .insn	4, 0x1c043c23
    .4byte 0x223000ef    # e4b00316: jal	ra,0xe4b00d38
    .4byte 0x1d043503    # e4b0031a: .insn	4, 0x1d043503
    .2byte 0xc901    # e4b0031e: c.beqz	a0,0xe4b0032e
    .4byte 0x1c043823    # e4b00320: .insn	4, 0x1c043823
    .2byte 0x6402    # e4b00324: c.flwsp	fs0,0(sp)
    .2byte 0x60a2    # e4b00326: c.flwsp	ft1,8(sp)
    .2byte 0x0141    # e4b00328: c.addi	sp,16
    .4byte 0x20f0006f    # e4b0032a: jal	zero,0xe4b00d38
    .2byte 0x60a2    # e4b0032e: c.flwsp	ft1,8(sp)
    .2byte 0x6402    # e4b00330: c.flwsp	fs0,0(sp)
    .2byte 0x0141    # e4b00332: c.addi	sp,16
    .2byte 0x8082    # e4b00334: c.jr	ra
    .4byte 0x00001797    # e4b00336: auipc	a5,0x1
    .4byte 0xe607b523    # e4b0033a: .insn	4, 0xe607b523
    .2byte 0x4501    # e4b0033e: c.li	a0,0
    .2byte 0x8082    # e4b00340: c.jr	ra
    .2byte 0x7179    # e4b00342: c.addi16sp	sp,-48
    .2byte 0xe826    # e4b00344: c.fswsp	fs1,16(sp)
    .4byte 0x00001497    # e4b00346: auipc	s1,0x1
    .4byte 0xe5a48493    # e4b0034a: addi	s1,s1,-422 # 0xe4b011a0
    .2byte 0xe422    # e4b0034e: c.fswsp	fs0,8(sp)
    .2byte 0x6080    # e4b00350: c.flw	fs0,0(s1)
    .2byte 0xf406    # e4b00352: c.fswsp	ft1,40(sp)
    .2byte 0xec4a    # e4b00354: c.fswsp	fs2,24(sp)
    .2byte 0xf04e    # e4b00356: c.fswsp	fs3,32(sp)
    .2byte 0xe43d    # e4b00358: c.bnez	s0,0xe4b003c6
    .2byte 0x892a    # e4b0035a: c.mv	s2,a0
    .4byte 0x275000ef    # e4b0035c: jal	ra,0xe4b00dd0
    .4byte 0x28b000ef    # e4b00360: jal	ra,0xe4b00dea
    .4byte 0x20000513    # e4b00364: addi	a0,zero,512
    .4byte 0x321000ef    # e4b00368: jal	ra,0xe4b00e88
    .2byte 0xe088    # e4b0036c: c.fsw	fa0,0(s1)
    .2byte 0xc51d    # e4b0036e: c.beqz	a0,0xe4b0039c
    .4byte 0x20000613    # e4b00370: addi	a2,zero,512
    .2byte 0x4581    # e4b00374: c.li	a1,0
    .4byte 0xd5bff0ef    # e4b00376: jal	ra,0xe4b000d0
    .4byte 0x0004b983    # e4b0037a: .insn	4, 0x0004b983
    .2byte 0x4511    # e4b0037e: c.li	a0,4
    .4byte 0x0fd000ef    # e4b00380: jal	ra,0xe4b00c7c
    .4byte 0x1aa9b023    # e4b00384: .insn	4, 0x1aa9b023
    .2byte 0x6088    # e4b00388: c.flw	fa0,0(s1)
    .4byte 0x1a053783    # e4b0038a: .insn	4, 0x1a053783
    .2byte 0xef81    # e4b0038e: c.bnez	a5,0xe4b003a6
    .4byte 0x3b1000ef    # e4b00390: jal	ra,0xe4b00f40
    .4byte 0x00001797    # e4b00394: auipc	a5,0x1
    .4byte 0xe007b623    # e4b00398: .insn	4, 0xe007b623
    .4byte 0x269000ef    # e4b0039c: jal	ra,0xe4b00e04
    .4byte 0x2a7000ef    # e4b003a0: jal	ra,0xe4b00e46
    .2byte 0xa809    # e4b003a4: c.j	0xe4b003b6
    .4byte 0x01252023    # e4b003a6: sw	s2,0(a0) # 0x1000
    .4byte 0x05050793    # e4b003aa: addi	a5,a0,80
    .2byte 0x6080    # e4b003ae: c.flw	fs0,0(s1)
    .2byte 0xed1c    # e4b003b0: c.fsw	fa5,24(a0)
    .4byte 0x00040423    # e4b003b2: sb	zero,8(s0)
    .2byte 0x8522    # e4b003b6: c.mv	a0,s0
    .2byte 0x70a2    # e4b003b8: c.flwsp	ft1,40(sp)
    .2byte 0x6422    # e4b003ba: c.flwsp	fs0,8(sp)
    .2byte 0x64c2    # e4b003bc: c.flwsp	fs1,16(sp)
    .2byte 0x6962    # e4b003be: c.flwsp	fs2,24(sp)
    .2byte 0x7982    # e4b003c0: c.flwsp	fs3,32(sp)
    .2byte 0x6145    # e4b003c2: c.addi16sp	sp,48
    .2byte 0x8082    # e4b003c4: c.jr	ra
    .2byte 0x4401    # e4b003c6: c.li	s0,0
    .2byte 0xb7fd    # e4b003c8: c.j	0xe4b003b6
    .2byte 0x7179    # e4b003ca: c.addi16sp	sp,-48
    .2byte 0xf026    # e4b003cc: c.fswsp	fs1,32(sp)
    .4byte 0x00001497    # e4b003ce: auipc	s1,0x1
    .4byte 0xdd248493    # e4b003d2: addi	s1,s1,-558 # 0xe4b011a0
    .2byte 0x6098    # e4b003d6: c.flw	fa4,0(s1)
    .2byte 0xf406    # e4b003d8: c.fswsp	ft1,40(sp)
    .2byte 0xec22    # e4b003da: c.fswsp	fs0,24(sp)
    .2byte 0x57fd    # e4b003dc: c.li	a5,-1
    .4byte 0x08a71f63    # e4b003de: bne	a4,a0,0xe4b0047c
    .2byte 0xcf49    # e4b003e2: c.beqz	a4,0xe4b0047c
    .4byte 0xe45ff0ef    # e4b003e4: jal	ra,0xe4b00228
    .2byte 0x6080    # e4b003e8: c.flw	fs0,0(s1)
    .2byte 0xc02d    # e4b003ea: c.beqz	s0,0xe4b0044c
    .2byte 0x8522    # e4b003ec: c.mv	a0,s0
    .4byte 0xee9ff0ef    # e4b003ee: jal	ra,0xe4b002d6
    .4byte 0x1c442503    # e4b003f2: lw	a0,452(s0)
    .2byte 0xc519    # e4b003f6: c.beqz	a0,0xe4b00404
    .4byte 0x0ff57513    # e4b003f8: andi	a0,a0,255
    .4byte 0x19d000ef    # e4b003fc: jal	ra,0xe4b00d98
    .4byte 0x1c042223    # e4b00400: sw	zero,452(s0)
    .4byte 0x1c042503    # e4b00404: lw	a0,448(s0)
    .2byte 0xc519    # e4b00408: c.beqz	a0,0xe4b00416
    .4byte 0x0ff57513    # e4b0040a: andi	a0,a0,255
    .4byte 0x18b000ef    # e4b0040e: jal	ra,0xe4b00d98
    .4byte 0x1c042023    # e4b00412: sw	zero,448(s0)
    .4byte 0x1bc42503    # e4b00416: lw	a0,444(s0)
    .2byte 0xc519    # e4b0041a: c.beqz	a0,0xe4b00428
    .4byte 0x0ff57513    # e4b0041c: andi	a0,a0,255
    .4byte 0x179000ef    # e4b00420: jal	ra,0xe4b00d98
    .4byte 0x1a042e23    # e4b00424: sw	zero,444(s0)
    .4byte 0x1b842503    # e4b00428: lw	a0,440(s0)
    .2byte 0xc519    # e4b0042c: c.beqz	a0,0xe4b0043a
    .4byte 0x0ff57513    # e4b0042e: andi	a0,a0,255
    .4byte 0x167000ef    # e4b00432: jal	ra,0xe4b00d98
    .4byte 0x1a042c23    # e4b00436: sw	zero,440(s0)
    .4byte 0x1b442503    # e4b0043a: lw	a0,436(s0)
    .2byte 0xc519    # e4b0043e: c.beqz	a0,0xe4b0044c
    .4byte 0x0ff57513    # e4b00440: andi	a0,a0,255
    .4byte 0x155000ef    # e4b00444: jal	ra,0xe4b00d98
    .4byte 0x1a042a23    # e4b00448: sw	zero,436(s0)
    .2byte 0x609c    # e4b0044c: c.flw	fa5,0(s1)
    .4byte 0x1a07b503    # e4b0044e: .insn	4, 0x1a07b503
    .2byte 0xc909    # e4b00452: c.beqz	a0,0xe4b00464
    .4byte 0x00f10613    # e4b00454: addi	a2,sp,15
    .2byte 0x4581    # e4b00458: c.li	a1,0
    .4byte 0x039000ef    # e4b0045a: jal	ra,0xe4b00c92
    .2byte 0x609c    # e4b0045e: c.flw	fa5,0(s1)
    .4byte 0x1a07b023    # e4b00460: .insn	4, 0x1a07b023
    .2byte 0x6088    # e4b00464: c.flw	fa0,0(s1)
    .4byte 0x2db000ef    # e4b00466: jal	ra,0xe4b00f40
    .4byte 0x00001797    # e4b0046a: auipc	a5,0x1
    .4byte 0xd207bb23    # e4b0046e: .insn	4, 0xd207bb23
    .4byte 0x193000ef    # e4b00472: jal	ra,0xe4b00e04
    .4byte 0x1d1000ef    # e4b00476: jal	ra,0xe4b00e46
    .2byte 0x4781    # e4b0047a: c.li	a5,0
    .2byte 0x70a2    # e4b0047c: c.flwsp	ft1,40(sp)
    .2byte 0x6462    # e4b0047e: c.flwsp	fs0,24(sp)
    .2byte 0x7482    # e4b00480: c.flwsp	fs1,32(sp)
    .2byte 0x853e    # e4b00482: c.mv	a0,a5
    .2byte 0x6145    # e4b00484: c.addi16sp	sp,48
    .2byte 0x8082    # e4b00486: c.jr	ra
    .4byte 0x00001797    # e4b00488: auipc	a5,0x1
    .4byte 0xd1878793    # e4b0048c: addi	a5,a5,-744 # 0xe4b011a0
    .2byte 0x6388    # e4b00490: c.flw	fa0,0(a5)
    .2byte 0xcd09    # e4b00492: c.beqz	a0,0xe4b004ac
    .2byte 0x1141    # e4b00494: c.addi	sp,-16
    .2byte 0xe406    # e4b00496: c.fswsp	ft1,8(sp)
    .4byte 0xf33ff0ef    # e4b00498: jal	ra,0xe4b003ca
    .4byte 0x00001797    # e4b0049c: auipc	a5,0x1
    .4byte 0xd007b223    # e4b004a0: .insn	4, 0xd007b223
    .2byte 0x60a2    # e4b004a4: c.flwsp	ft1,8(sp)
    .2byte 0x4501    # e4b004a6: c.li	a0,0
    .2byte 0x0141    # e4b004a8: c.addi	sp,16
    .2byte 0x8082    # e4b004aa: c.jr	ra
    .2byte 0x4501    # e4b004ac: c.li	a0,0
    .2byte 0x8082    # e4b004ae: c.jr	ra
    .2byte 0x4501    # e4b004b0: c.li	a0,0
    .2byte 0x8082    # e4b004b2: c.jr	ra
    .2byte 0x4501    # e4b004b4: c.li	a0,0
    .2byte 0x8082    # e4b004b6: c.jr	ra
    .2byte 0x7179    # e4b004b8: c.addi16sp	sp,-48
    .2byte 0xe826    # e4b004ba: c.fswsp	fs1,16(sp)
    .4byte 0x00001497    # e4b004bc: auipc	s1,0x1
    .4byte 0xce448493    # e4b004c0: addi	s1,s1,-796 # 0xe4b011a0
    .2byte 0xf406    # e4b004c4: c.fswsp	ft1,40(sp)
    .2byte 0xe422    # e4b004c6: c.fswsp	fs0,8(sp)
    .2byte 0xec4a    # e4b004c8: c.fswsp	fs2,24(sp)
    .2byte 0xf04e    # e4b004ca: c.fswsp	fs3,32(sp)
    .2byte 0x609c    # e4b004cc: c.flw	fa5,0(s1)
    .4byte 0x00a78b63    # e4b004ce: beq	a5,a0,0xe4b004e4
    .2byte 0x54fd    # e4b004d2: c.li	s1,-1
    .2byte 0x70a2    # e4b004d4: c.flwsp	ft1,40(sp)
    .2byte 0x6422    # e4b004d6: c.flwsp	fs0,8(sp)
    .2byte 0x8526    # e4b004d8: c.mv	a0,s1
    .2byte 0x6962    # e4b004da: c.flwsp	fs2,24(sp)
    .2byte 0x64c2    # e4b004dc: c.flwsp	fs1,16(sp)
    .2byte 0x7982    # e4b004de: c.flwsp	fs3,32(sp)
    .2byte 0x6145    # e4b004e0: c.addi16sp	sp,48
    .2byte 0x8082    # e4b004e2: c.jr	ra
    .4byte 0x40300813    # e4b004e4: addi	a6,zero,1027
    .4byte 0x71058363    # e4b004e8: beq	a1,a6,0xe4b00bee
    .2byte 0x8926    # e4b004ec: c.mv	s2,s1
    .2byte 0x8436    # e4b004ee: c.mv	s0,a3
    .4byte 0x08b86d63    # e4b004f0: bltu	a6,a1,0xe4b0058a
    .4byte 0x20100713    # e4b004f4: addi	a4,zero,513
    .4byte 0x66e58e63    # e4b004f8: beq	a1,a4,0xe4b00b74
    .4byte 0x06b76663    # e4b004fc: bltu	a4,a1,0xe4b00568
    .4byte 0x10100713    # e4b00500: addi	a4,zero,257
    .4byte 0x10e58863    # e4b00504: beq	a1,a4,0xe4b00614
    .4byte 0x20000713    # e4b00508: addi	a4,zero,512
    .4byte 0x10e58763    # e4b0050c: beq	a1,a4,0xe4b0061a
    .4byte 0x10000713    # e4b00510: addi	a4,zero,256
    .4byte 0xfae59fe3    # e4b00514: bne	a1,a4,0xe4b004d2
    .2byte 0x4298    # e4b00518: c.lw	a4,0(a3)
    .2byte 0x6f88    # e4b0051a: c.flw	fa0,24(a5)
    .4byte 0x0c800613    # e4b0051c: addi	a2,zero,200
    .2byte 0xcb98    # e4b00520: c.sw	a4,16(a5)
    .2byte 0x668c    # e4b00522: c.flw	fa1,8(a3)
    .4byte 0xc5dff0ef    # e4b00524: jal	ra,0xe4b00180
    .2byte 0x4818    # e4b00528: c.lw	a4,16(s0)
    .2byte 0x609c    # e4b0052a: c.flw	fa5,0(s1)
    .2byte 0xd398    # e4b0052c: c.sw	a4,32(a5)
    .2byte 0x4858    # e4b0052e: c.lw	a4,20(s0)
    .2byte 0xd3d8    # e4b00530: c.sw	a4,36(a5)
    .2byte 0x4c18    # e4b00532: c.lw	a4,24(s0)
    .2byte 0xd798    # e4b00534: c.sw	a4,40(a5)
    .2byte 0x5018    # e4b00536: c.lw	a4,32(s0)
    .2byte 0xdb98    # e4b00538: c.sw	a4,48(a5)
    .2byte 0x4c58    # e4b0053a: c.lw	a4,28(s0)
    .2byte 0xd7d8    # e4b0053c: c.sw	a4,44(a5)
    .2byte 0x5058    # e4b0053e: c.lw	a4,36(s0)
    .2byte 0xdbd8    # e4b00540: c.sw	a4,52(a5)
    .2byte 0x5418    # e4b00542: c.lw	a4,40(s0)
    .2byte 0xdf98    # e4b00544: c.sw	a4,56(a5)
    .2byte 0x5458    # e4b00546: c.lw	a4,44(s0)
    .2byte 0xdfd8    # e4b00548: c.sw	a4,60(a5)
    .2byte 0x5818    # e4b0054a: c.lw	a4,48(s0)
    .2byte 0xc3b8    # e4b0054c: c.sw	a4,64(a5)
    .2byte 0x5858    # e4b0054e: c.lw	a4,52(s0)
    .2byte 0xc3f8    # e4b00550: c.sw	a4,68(a5)
    .2byte 0x5c18    # e4b00552: c.lw	a4,56(s0)
    .2byte 0xc7b8    # e4b00554: c.sw	a4,72(a5)
    .2byte 0x5c58    # e4b00556: c.lw	a4,60(s0)
    .4byte 0x14078823    # e4b00558: sb	zero,336(a5) # 0xe4b015ec
    .2byte 0xc7f8    # e4b0055c: c.sw	a4,76(a5)
    .2byte 0x4705    # e4b0055e: c.li	a4,1
    .4byte 0x00e784a3    # e4b00560: sb	a4,9(a5)
    .2byte 0x4481    # e4b00564: c.li	s1,0
    .2byte 0xb7bd    # e4b00566: c.j	0xe4b004d4
    .4byte 0x20300713    # e4b00568: addi	a4,zero,515
    .4byte 0x64e58f63    # e4b0056c: beq	a1,a4,0xe4b00bca
    .4byte 0x62e5e263    # e4b00570: bltu	a1,a4,0xe4b00b94
    .4byte 0x30000713    # e4b00574: addi	a4,zero,768
    .4byte 0x64e58c63    # e4b00578: beq	a1,a4,0xe4b00bd0
    .4byte 0x40100713    # e4b0057c: addi	a4,zero,1025
    .4byte 0xf4e599e3    # e4b00580: bne	a1,a4,0xe4b004d2
    .4byte 0x0207e483    # e4b00584: .insn	4, 0x0207e483
    .2byte 0xb7b1    # e4b00588: c.j	0xe4b004d4
    .4byte 0x40d00693    # e4b0058a: addi	a3,zero,1037
    .4byte 0x66d58c63    # e4b0058e: beq	a1,a3,0xe4b00c06
    .2byte 0x8732    # e4b00592: c.mv	a4,a2
    .4byte 0x02b6e963    # e4b00594: bltu	a3,a1,0xe4b005c6
    .4byte 0x40900693    # e4b00598: addi	a3,zero,1033
    .4byte 0x64d58d63    # e4b0059c: beq	a1,a3,0xe4b00bf6
    .4byte 0x00b6e963    # e4b005a0: bltu	a3,a1,0xe4b005b2
    .4byte 0x40500713    # e4b005a4: addi	a4,zero,1029
    .4byte 0xf2e595e3    # e4b005a8: bne	a1,a4,0xe4b004d2
    .4byte 0x0347e483    # e4b005ac: .insn	4, 0x0347e483
    .2byte 0xb715    # e4b005b0: c.j	0xe4b004d4
    .4byte 0x40b00693    # e4b005b2: addi	a3,zero,1035
    .4byte 0x64d58463    # e4b005b6: beq	a1,a3,0xe4b00bfe
    .4byte 0x40c00693    # e4b005ba: addi	a3,zero,1036
    .4byte 0xf0d59ae3    # e4b005be: bne	a1,a3,0xe4b004d2
    .2byte 0xdf90    # e4b005c2: c.sw	a2,56(a5)
    .2byte 0xb745    # e4b005c4: c.j	0xe4b00564
    .4byte 0x40f00693    # e4b005c6: addi	a3,zero,1039
    .4byte 0x64d58d63    # e4b005ca: beq	a1,a3,0xe4b00c24
    .4byte 0x64d5e063    # e4b005ce: bltu	a1,a3,0xe4b00c0e
    .4byte 0x41000693    # e4b005d2: addi	a3,zero,1040
    .4byte 0x66d58a63    # e4b005d6: beq	a1,a3,0xe4b00c4a
    .4byte 0x60000793    # e4b005da: addi	a5,zero,1536
    .4byte 0xeef59ae3    # e4b005de: bne	a1,a5,0xe4b004d2
    .4byte 0x6e0000ef    # e4b005e2: jal	ra,0xe4b00cc2
    .2byte 0xc01d    # e4b005e6: c.beqz	s0,0xe4b0060c
    .2byte 0x6084    # e4b005e8: c.flw	fs1,0(s1)
    .4byte 0x04800613    # e4b005ea: addi	a2,zero,72
    .2byte 0x85a2    # e4b005ee: c.mv	a1,s0
    .4byte 0x15848513    # e4b005f0: addi	a0,s1,344
    .4byte 0xa0dff0ef    # e4b005f4: jal	ra,0xe4b00000
    .2byte 0x6c9c    # e4b005f8: c.flw	fa5,24(s1)
    .2byte 0xc399    # e4b005fa: c.beqz	a5,0xe4b00600
    .4byte 0x16f4bc23    # e4b005fc: .insn	4, 0x16f4bc23
    .2byte 0x4785    # e4b00600: c.li	a5,1
    .4byte 0x14f48823    # e4b00602: sb	a5,336(s1)
    .4byte 0x6d2000ef    # e4b00606: jal	ra,0xe4b00cd8
    .2byte 0xbfa9    # e4b0060a: c.j	0xe4b00564
    .2byte 0x609c    # e4b0060c: c.flw	fa5,0(s1)
    .4byte 0x14078823    # e4b0060e: sb	zero,336(a5)
    .2byte 0xbfd5    # e4b00612: c.j	0xe4b00606
    .4byte 0x1a07b483    # e4b00614: .insn	4, 0x1a07b483
    .2byte 0xbd75    # e4b00618: c.j	0xe4b004d4
    .4byte 0x0087c703    # e4b0061a: lbu	a4,8(a5)
    .2byte 0xcf05    # e4b0061e: c.beqz	a4,0xe4b00656
    .2byte 0x4689    # e4b00620: c.li	a3,2
    .4byte 0xead718e3    # e4b00622: bne	a4,a3,0xe4b004d2
    .4byte 0x1e87b503    # e4b00626: .insn	4, 0x1e87b503
    .2byte 0xc511    # e4b0062a: c.beqz	a0,0xe4b00636
    .2byte 0x4681    # e4b0062c: c.li	a3,0
    .2byte 0x4601    # e4b0062e: c.li	a2,0
    .2byte 0x458d    # e4b00630: c.li	a1,3
    .4byte 0x736000ef    # e4b00632: jal	ra,0xe4b00d68
    .4byte 0x00093783    # e4b00636: .insn	4, 0x00093783
    .4byte 0x1f07b503    # e4b0063a: .insn	4, 0x1f07b503
    .2byte 0xc511    # e4b0063e: c.beqz	a0,0xe4b0064a
    .2byte 0x4681    # e4b00640: c.li	a3,0
    .2byte 0x4601    # e4b00642: c.li	a2,0
    .2byte 0x458d    # e4b00644: c.li	a1,3
    .4byte 0x722000ef    # e4b00646: jal	ra,0xe4b00d68
    .4byte 0x00093783    # e4b0064a: .insn	4, 0x00093783
    .2byte 0x4705    # e4b0064e: c.li	a4,1
    .4byte 0x00e78423    # e4b00650: sb	a4,8(a5)
    .2byte 0xbf01    # e4b00654: c.j	0xe4b00564
    .4byte 0x0097c703    # e4b00656: lbu	a4,9(a5)
    .4byte 0xe6070ce3    # e4b0065a: beq	a4,zero,0xe4b004d2
    .4byte 0x1a07b503    # e4b0065e: .insn	4, 0x1a07b503
    .2byte 0xc119    # e4b00662: c.beqz	a0,0xe4b00668
    .4byte 0x644000ef    # e4b00664: jal	ra,0xe4b00ca8
    .4byte 0x00093403    # e4b00668: .insn	4, 0x00093403
    .4byte 0x1b442503    # e4b0066c: lw	a0,436(s0)
    .2byte 0xc531    # e4b00670: c.beqz	a0,0xe4b006bc
    .4byte 0x1d043783    # e4b00672: .insn	4, 0x1d043783
    .2byte 0xeb81    # e4b00676: c.bnez	a5,0xe4b00686
    .2byte 0x4581    # e4b00678: c.li	a1,0
    .4byte 0x0ff57513    # e4b0067a: andi	a0,a0,255
    .4byte 0x704000ef    # e4b0067e: jal	ra,0xe4b00d82
    .4byte 0x1ca43823    # e4b00682: .insn	4, 0x1ca43823
    .4byte 0x1d043503    # e4b00686: .insn	4, 0x1d043503
    .2byte 0xe501    # e4b0068a: c.bnez	a0,0xe4b00692
    .4byte 0xfd800493    # e4b0068c: addi	s1,zero,-40
    .2byte 0xa8a5    # e4b00690: c.j	0xe4b00708
    .4byte 0x00093783    # e4b00692: .insn	4, 0x00093783
    .2byte 0x4681    # e4b00696: c.li	a3,0
    .4byte 0x02100593    # e4b00698: addi	a1,zero,33
    .2byte 0x4b90    # e4b0069c: c.lw	a2,16(a5)
    .4byte 0x6ca000ef    # e4b0069e: jal	ra,0xe4b00d68
    .2byte 0xe91d    # e4b006a2: c.bnez	a0,0xe4b006d8
    .4byte 0x1d043503    # e4b006a4: .insn	4, 0x1d043503
    .4byte 0x690000ef    # e4b006a8: jal	ra,0xe4b00d38
    .4byte 0x1b444503    # e4b006ac: lbu	a0,436(s0)
    .4byte 0x6e8000ef    # e4b006b0: jal	ra,0xe4b00d98
    .4byte 0x1c043823    # e4b006b4: .insn	4, 0x1c043823
    .4byte 0x1a042a23    # e4b006b8: sw	zero,436(s0)
    .4byte 0x00093783    # e4b006bc: .insn	4, 0x00093783
    .2byte 0x6705    # e4b006c0: c.lui	a4,0x1
    .2byte 0x4b9c    # e4b006c2: c.lw	a5,16(a5)
    .4byte 0x06e78563    # e4b006c4: beq	a5,a4,0xe4b0072e
    .4byte 0x5af76163    # e4b006c8: bltu	a4,a5,0xe4b00c6a
    .2byte 0x37fd    # e4b006cc: c.jal	0xe4b006ba
    .2byte 0x4705    # e4b006ce: c.li	a4,1
    .4byte 0x04f77263    # e4b006d0: bgeu	a4,a5,0xe4b00714
    .2byte 0x54b9    # e4b006d4: c.li	s1,-18
    .2byte 0xa80d    # e4b006d6: c.j	0xe4b00708
    .4byte 0x1b442783    # e4b006d8: lw	a5,436(s0)
    .2byte 0xd3e5    # e4b006dc: c.beqz	a5,0xe4b006bc
    .4byte 0x1d043783    # e4b006de: .insn	4, 0x1d043783
    .2byte 0xeb89    # e4b006e2: c.bnez	a5,0xe4b006f4
    .4byte 0x1b444503    # e4b006e4: lbu	a0,436(s0)
    .2byte 0x4581    # e4b006e8: c.li	a1,0
    .4byte 0x698000ef    # e4b006ea: jal	ra,0xe4b00d82
    .4byte 0x1ca43823    # e4b006ee: .insn	4, 0x1ca43823
    .2byte 0xdd49    # e4b006f2: c.beqz	a0,0xe4b0068c
    .2byte 0x4810    # e4b006f4: c.lw	a2,16(s0)
    .4byte 0x1d043503    # e4b006f6: .insn	4, 0x1d043503
    .2byte 0x4681    # e4b006fa: c.li	a3,0
    .4byte 0x04000593    # e4b006fc: addi	a1,zero,64
    .4byte 0x668000ef    # e4b00700: jal	ra,0xe4b00d68
    .2byte 0xc91d    # e4b00704: c.beqz	a0,0xe4b0073a
    .2byte 0x54b1    # e4b00706: c.li	s1,-20
    .4byte 0xdc0406e3    # e4b00708: beq	s0,zero,0xe4b004d4
    .2byte 0x8522    # e4b0070c: c.mv	a0,s0
    .4byte 0xbc9ff0ef    # e4b0070e: jal	ra,0xe4b002d6
    .2byte 0xb3c9    # e4b00712: c.j	0xe4b004d4
    .2byte 0x4581    # e4b00714: c.li	a1,0
    .4byte 0x00001517    # e4b00716: auipc	a0,0x1
    .4byte 0x91250513    # e4b0071a: addi	a0,a0,-1774 # 0xe4b01028
    .4byte 0x632000ef    # e4b0071e: jal	ra,0xe4b00d50
    .4byte 0x1aa42a23    # e4b00722: sw	a0,436(s0)
    .4byte 0x1b442783    # e4b00726: lw	a5,436(s0)
    .2byte 0xfbd5    # e4b0072a: c.bnez	a5,0xe4b006de
    .2byte 0xb785    # e4b0072c: c.j	0xe4b0068c
    .2byte 0x4581    # e4b0072e: c.li	a1,0
    .4byte 0x00001517    # e4b00730: auipc	a0,0x1
    .4byte 0x91050513    # e4b00734: addi	a0,a0,-1776 # 0xe4b01040
    .2byte 0xb7dd    # e4b00738: c.j	0xe4b0071e
    .4byte 0x15044783    # e4b0073a: lbu	a5,336(s0)
    .4byte 0x1d043503    # e4b0073e: .insn	4, 0x1d043503
    .4byte 0x15840693    # e4b00742: addi	a3,s0,344
    .2byte 0xe391    # e4b00746: c.bnez	a5,0xe4b0074a
    .2byte 0x4681    # e4b00748: c.li	a3,0
    .2byte 0x4601    # e4b0074a: c.li	a2,0
    .4byte 0x05000593    # e4b0074c: addi	a1,zero,80
    .4byte 0x618000ef    # e4b00750: jal	ra,0xe4b00d68
    .4byte 0x1d043503    # e4b00754: .insn	4, 0x1d043503
    .4byte 0x01040693    # e4b00758: addi	a3,s0,16
    .2byte 0x4601    # e4b0075c: c.li	a2,0
    .4byte 0x02000593    # e4b0075e: addi	a1,zero,32
    .4byte 0x606000ef    # e4b00762: jal	ra,0xe4b00d68
    .2byte 0xf145    # e4b00766: c.bnez	a0,0xe4b00706
    .4byte 0x1a043683    # e4b00768: .insn	4, 0x1a043683
    .4byte 0x1d043503    # e4b0076c: .insn	4, 0x1d043503
    .2byte 0x4601    # e4b00770: c.li	a2,0
    .4byte 0x02400593    # e4b00772: addi	a1,zero,36
    .4byte 0x5f2000ef    # e4b00776: jal	ra,0xe4b00d68
    .4byte 0xf00519e3    # e4b0077a: bne	a0,zero,0xe4b0068c
    .4byte 0x1d043503    # e4b0077e: .insn	4, 0x1d043503
    .2byte 0x4681    # e4b00782: c.li	a3,0
    .2byte 0x4601    # e4b00784: c.li	a2,0
    .2byte 0x4581    # e4b00786: c.li	a1,0
    .4byte 0x5e0000ef    # e4b00788: jal	ra,0xe4b00d68
    .2byte 0x84aa    # e4b0078c: c.mv	s1,a0
    .4byte 0xee051fe3    # e4b0078e: bne	a0,zero,0xe4b0068c
    .4byte 0x1b842503    # e4b00792: lw	a0,440(s0)
    .2byte 0xc521    # e4b00796: c.beqz	a0,0xe4b007de
    .4byte 0x1d843783    # e4b00798: .insn	4, 0x1d843783
    .2byte 0xeb81    # e4b0079c: c.bnez	a5,0xe4b007ac
    .2byte 0x4581    # e4b0079e: c.li	a1,0
    .4byte 0x0ff57513    # e4b007a0: andi	a0,a0,255
    .4byte 0x5de000ef    # e4b007a4: jal	ra,0xe4b00d82
    .4byte 0x1ca43c23    # e4b007a8: .insn	4, 0x1ca43c23
    .4byte 0x1d843503    # e4b007ac: .insn	4, 0x1d843503
    .4byte 0xec050ee3    # e4b007b0: beq	a0,zero,0xe4b0068c
    .4byte 0x00093783    # e4b007b4: .insn	4, 0x00093783
    .2byte 0x4681    # e4b007b8: c.li	a3,0
    .4byte 0x02200593    # e4b007ba: addi	a1,zero,34
    .2byte 0x5390    # e4b007be: c.lw	a2,32(a5)
    .4byte 0x5a8000ef    # e4b007c0: jal	ra,0xe4b00d68
    .2byte 0xe90d    # e4b007c4: c.bnez	a0,0xe4b007f6
    .4byte 0x1d843503    # e4b007c6: .insn	4, 0x1d843503
    .4byte 0x56e000ef    # e4b007ca: jal	ra,0xe4b00d38
    .4byte 0x1b844503    # e4b007ce: lbu	a0,440(s0)
    .4byte 0x5c6000ef    # e4b007d2: jal	ra,0xe4b00d98
    .4byte 0x1c043c23    # e4b007d6: .insn	4, 0x1c043c23
    .4byte 0x1a042c23    # e4b007da: sw	zero,440(s0)
    .4byte 0x00093783    # e4b007de: .insn	4, 0x00093783
    .2byte 0x4711    # e4b007e2: c.li	a4,4
    .2byte 0x539c    # e4b007e4: c.lw	a5,32(a5)
    .4byte 0x12e78063    # e4b007e6: beq	a5,a4,0xe4b00906
    .2byte 0x4729    # e4b007ea: c.li	a4,10
    .4byte 0x10e78d63    # e4b007ec: beq	a5,a4,0xe4b00906
    .4byte 0xe8079ee3    # e4b007f0: bne	a5,zero,0xe4b0068c
    .2byte 0xa07d    # e4b007f4: c.j	0xe4b008a2
    .4byte 0x1b842783    # e4b007f6: lw	a5,440(s0)
    .2byte 0xd3f5    # e4b007fa: c.beqz	a5,0xe4b007de
    .4byte 0x1d843783    # e4b007fc: .insn	4, 0x1d843783
    .2byte 0xeb91    # e4b00800: c.bnez	a5,0xe4b00814
    .4byte 0x1b844503    # e4b00802: lbu	a0,440(s0)
    .2byte 0x4581    # e4b00806: c.li	a1,0
    .4byte 0x57a000ef    # e4b00808: jal	ra,0xe4b00d82
    .4byte 0x1ca43c23    # e4b0080c: .insn	4, 0x1ca43c23
    .4byte 0xe6050ee3    # e4b00810: beq	a0,zero,0xe4b0068c
    .4byte 0x00093783    # e4b00814: .insn	4, 0x00093783
    .4byte 0x1d843503    # e4b00818: .insn	4, 0x1d843503
    .2byte 0x4681    # e4b0081c: c.li	a3,0
    .2byte 0x5390    # e4b0081e: c.lw	a2,32(a5)
    .4byte 0x06000593    # e4b00820: addi	a1,zero,96
    .4byte 0x544000ef    # e4b00824: jal	ra,0xe4b00d68
    .4byte 0xe60512e3    # e4b00828: bne	a0,zero,0xe4b0068c
    .4byte 0x00093783    # e4b0082c: .insn	4, 0x00093783
    .4byte 0x1d843503    # e4b00830: .insn	4, 0x1d843503
    .2byte 0x4681    # e4b00834: c.li	a3,0
    .2byte 0x5390    # e4b00836: c.lw	a2,32(a5)
    .4byte 0x06200593    # e4b00838: addi	a1,zero,98
    .4byte 0x52c000ef    # e4b0083c: jal	ra,0xe4b00d68
    .4byte 0xe40516e3    # e4b00840: bne	a0,zero,0xe4b0068c
    .4byte 0x1d043503    # e4b00844: .insn	4, 0x1d043503
    .2byte 0x4681    # e4b00848: c.li	a3,0
    .2byte 0x4601    # e4b0084a: c.li	a2,0
    .4byte 0x02200593    # e4b0084c: addi	a1,zero,34
    .4byte 0x518000ef    # e4b00850: jal	ra,0xe4b00d68
    .2byte 0x86aa    # e4b00854: c.mv	a3,a0
    .4byte 0x1d843503    # e4b00856: .insn	4, 0x1d843503
    .2byte 0x4601    # e4b0085a: c.li	a2,0
    .4byte 0x02000593    # e4b0085c: addi	a1,zero,32
    .4byte 0x508000ef    # e4b00860: jal	ra,0xe4b00d68
    .4byte 0x1d843503    # e4b00864: .insn	4, 0x1d843503
    .4byte 0x02040693    # e4b00868: addi	a3,s0,32
    .2byte 0x4601    # e4b0086c: c.li	a2,0
    .4byte 0x04100593    # e4b0086e: addi	a1,zero,65
    .4byte 0x4f6000ef    # e4b00872: jal	ra,0xe4b00d68
    .4byte 0xe0051be3    # e4b00876: bne	a0,zero,0xe4b0068c
    .4byte 0x1a043683    # e4b0087a: .insn	4, 0x1a043683
    .4byte 0x1d843503    # e4b0087e: .insn	4, 0x1d843503
    .2byte 0x4601    # e4b00882: c.li	a2,0
    .4byte 0x04200593    # e4b00884: addi	a1,zero,66
    .4byte 0x4e0000ef    # e4b00888: jal	ra,0xe4b00d68
    .4byte 0xe00510e3    # e4b0088c: bne	a0,zero,0xe4b0068c
    .4byte 0x1d843503    # e4b00890: .insn	4, 0x1d843503
    .2byte 0x4681    # e4b00894: c.li	a3,0
    .2byte 0x4601    # e4b00896: c.li	a2,0
    .2byte 0x4581    # e4b00898: c.li	a1,0
    .4byte 0x4ce000ef    # e4b0089a: jal	ra,0xe4b00d68
    .4byte 0xde0517e3    # e4b0089e: bne	a0,zero,0xe4b0068c
    .4byte 0x1bc42503    # e4b008a2: lw	a0,444(s0)
    .2byte 0xc521    # e4b008a6: c.beqz	a0,0xe4b008ee
    .4byte 0x1e043783    # e4b008a8: .insn	4, 0x1e043783
    .2byte 0xeb81    # e4b008ac: c.bnez	a5,0xe4b008bc
    .2byte 0x4581    # e4b008ae: c.li	a1,0
    .4byte 0x0ff57513    # e4b008b0: andi	a0,a0,255
    .4byte 0x4ce000ef    # e4b008b4: jal	ra,0xe4b00d82
    .4byte 0x1ea43023    # e4b008b8: .insn	4, 0x1ea43023
    .4byte 0x1e043503    # e4b008bc: .insn	4, 0x1e043503
    .4byte 0xdc0506e3    # e4b008c0: beq	a0,zero,0xe4b0068c
    .4byte 0x00093783    # e4b008c4: .insn	4, 0x00093783
    .2byte 0x4681    # e4b008c8: c.li	a3,0
    .4byte 0x02000593    # e4b008ca: addi	a1,zero,32
    .2byte 0x5fd0    # e4b008ce: c.lw	a2,60(a5)
    .4byte 0x498000ef    # e4b008d0: jal	ra,0xe4b00d68
    .2byte 0xe531    # e4b008d4: c.bnez	a0,0xe4b00920
    .4byte 0x1e043503    # e4b008d6: .insn	4, 0x1e043503
    .4byte 0x45e000ef    # e4b008da: jal	ra,0xe4b00d38
    .4byte 0x1bc44503    # e4b008de: lbu	a0,444(s0)
    .4byte 0x4b6000ef    # e4b008e2: jal	ra,0xe4b00d98
    .4byte 0x1e043023    # e4b008e6: .insn	4, 0x1e043023
    .4byte 0x1a042e23    # e4b008ea: sw	zero,444(s0)
    .4byte 0x00093783    # e4b008ee: .insn	4, 0x00093783
    .2byte 0x470d    # e4b008f2: c.li	a4,3
    .2byte 0x5fdc    # e4b008f4: c.lw	a5,60(a5)
    .4byte 0x10e78f63    # e4b008f6: beq	a5,a4,0xe4b00a14
    .2byte 0x4719    # e4b008fa: c.li	a4,6
    .4byte 0x0ee78e63    # e4b008fc: beq	a5,a4,0xe4b009f8
    .4byte 0xd80796e3    # e4b00900: bne	a5,zero,0xe4b0068c
    .2byte 0xa049    # e4b00904: c.j	0xe4b00986
    .2byte 0x4581    # e4b00906: c.li	a1,0
    .4byte 0x00000517    # e4b00908: auipc	a0,0x0
    .4byte 0x77850513    # e4b0090c: addi	a0,a0,1912 # 0xe4b01080
    .4byte 0x440000ef    # e4b00910: jal	ra,0xe4b00d50
    .2byte 0x2501    # e4b00914: c.jal	0xe4b00f14
    .4byte 0x1aa42c23    # e4b00916: sw	a0,440(s0)
    .4byte 0xee0511e3    # e4b0091a: bne	a0,zero,0xe4b007fc
    .2byte 0xb3bd    # e4b0091e: c.j	0xe4b0068c
    .4byte 0x1bc42783    # e4b00920: lw	a5,444(s0)
    .2byte 0xd7e9    # e4b00924: c.beqz	a5,0xe4b008ee
    .4byte 0x1e043783    # e4b00926: .insn	4, 0x1e043783
    .2byte 0xeb91    # e4b0092a: c.bnez	a5,0xe4b0093e
    .4byte 0x1bc44503    # e4b0092c: lbu	a0,444(s0)
    .2byte 0x4581    # e4b00930: c.li	a1,0
    .4byte 0x450000ef    # e4b00932: jal	ra,0xe4b00d82
    .4byte 0x1ea43023    # e4b00936: .insn	4, 0x1ea43023
    .4byte 0xd40509e3    # e4b0093a: beq	a0,zero,0xe4b0068c
    .4byte 0x1d043503    # e4b0093e: .insn	4, 0x1d043503
    .2byte 0x4681    # e4b00942: c.li	a3,0
    .2byte 0x4601    # e4b00944: c.li	a2,0
    .4byte 0x02300593    # e4b00946: addi	a1,zero,35
    .4byte 0x41e000ef    # e4b0094a: jal	ra,0xe4b00d68
    .2byte 0x86aa    # e4b0094e: c.mv	a3,a0
    .4byte 0x1e043503    # e4b00950: .insn	4, 0x1e043503
    .2byte 0x4601    # e4b00954: c.li	a2,0
    .4byte 0x02100593    # e4b00956: addi	a1,zero,33
    .4byte 0x40e000ef    # e4b0095a: jal	ra,0xe4b00d68
    .4byte 0x1a043683    # e4b0095e: .insn	4, 0x1a043683
    .4byte 0x1e043503    # e4b00962: .insn	4, 0x1e043503
    .2byte 0x4601    # e4b00966: c.li	a2,0
    .4byte 0x02300593    # e4b00968: addi	a1,zero,35
    .4byte 0x3fc000ef    # e4b0096c: jal	ra,0xe4b00d68
    .4byte 0xd0051ee3    # e4b00970: bne	a0,zero,0xe4b0068c
    .4byte 0x1e043503    # e4b00974: .insn	4, 0x1e043503
    .2byte 0x4681    # e4b00978: c.li	a3,0
    .2byte 0x4601    # e4b0097a: c.li	a2,0
    .2byte 0x4581    # e4b0097c: c.li	a1,0
    .4byte 0x3ea000ef    # e4b0097e: jal	ra,0xe4b00d68
    .4byte 0xd00515e3    # e4b00982: bne	a0,zero,0xe4b0068c
    .4byte 0x00093983    # e4b00986: .insn	4, 0x00093983
    .4byte 0x1d89b783    # e4b0098a: .insn	4, 0x1d89b783
    .2byte 0xebc9    # e4b0098e: c.bnez	a5,0xe4b00a20
    .4byte 0x1e89b783    # e4b00990: .insn	4, 0x1e89b783
    .2byte 0xc799    # e4b00994: c.beqz	a5,0xe4b009a2
    .4byte 0x1e843503    # e4b00996: .insn	4, 0x1e843503
    .4byte 0x39e000ef    # e4b0099a: jal	ra,0xe4b00d38
    .4byte 0x1e043423    # e4b0099e: .insn	4, 0x1e043423
    .4byte 0x00093783    # e4b009a2: .insn	4, 0x00093783
    .4byte 0x1c07a783    # e4b009a6: lw	a5,448(a5)
    .2byte 0xc799    # e4b009aa: c.beqz	a5,0xe4b009b8
    .4byte 0x1c044503    # e4b009ac: lbu	a0,448(s0)
    .4byte 0x3e8000ef    # e4b009b0: jal	ra,0xe4b00d98
    .4byte 0x1c042023    # e4b009b4: sw	zero,448(s0)
    .4byte 0x00093983    # e4b009b8: .insn	4, 0x00093983
    .4byte 0x1e09b783    # e4b009bc: .insn	4, 0x1e09b783
    .4byte 0x12079363    # e4b009c0: bne	a5,zero,0xe4b00ae6
    .4byte 0x1f09b783    # e4b009c4: .insn	4, 0x1f09b783
    .2byte 0xc799    # e4b009c8: c.beqz	a5,0xe4b009d6
    .4byte 0x1f043503    # e4b009ca: .insn	4, 0x1f043503
    .4byte 0x36a000ef    # e4b009ce: jal	ra,0xe4b00d38
    .4byte 0x1e043823    # e4b009d2: .insn	4, 0x1e043823
    .4byte 0x00093783    # e4b009d6: .insn	4, 0x00093783
    .4byte 0x1c47a783    # e4b009da: lw	a5,452(a5)
    .2byte 0xc799    # e4b009de: c.beqz	a5,0xe4b009ec
    .4byte 0x1c444503    # e4b009e0: lbu	a0,452(s0)
    .4byte 0x3b4000ef    # e4b009e4: jal	ra,0xe4b00d98
    .4byte 0x1c042223    # e4b009e8: sw	zero,452(s0)
    .4byte 0x00093783    # e4b009ec: .insn	4, 0x00093783
    .2byte 0x4705    # e4b009f0: c.li	a4,1
    .4byte 0x00e78423    # e4b009f2: sb	a4,8(a5)
    .2byte 0xbcf9    # e4b009f6: c.j	0xe4b004d4
    .2byte 0x4581    # e4b009f8: c.li	a1,0
    .4byte 0x00000517    # e4b009fa: auipc	a0,0x0
    .4byte 0x69e50513    # e4b009fe: addi	a0,a0,1694 # 0xe4b01098
    .4byte 0x34e000ef    # e4b00a02: jal	ra,0xe4b00d50
    .4byte 0x1aa42e23    # e4b00a06: sw	a0,444(s0)
    .4byte 0x1bc42783    # e4b00a0a: lw	a5,444(s0)
    .4byte 0xf0079ce3    # e4b00a0e: bne	a5,zero,0xe4b00926
    .2byte 0xb9ad    # e4b00a12: c.j	0xe4b0068c
    .2byte 0x4581    # e4b00a14: c.li	a1,0
    .4byte 0x00000517    # e4b00a16: auipc	a0,0x0
    .4byte 0x6a250513    # e4b00a1a: addi	a0,a0,1698 # 0xe4b010b8
    .2byte 0xb7d5    # e4b00a1e: c.j	0xe4b00a02
    .4byte 0x1c09a783    # e4b00a20: lw	a5,448(s3)
    .2byte 0xc3d5    # e4b00a24: c.beqz	a5,0xe4b00ac8
    .4byte 0x00093983    # e4b00a26: .insn	4, 0x00093983
    .4byte 0x1e89b783    # e4b00a2a: .insn	4, 0x1e89b783
    .2byte 0xef81    # e4b00a2e: c.bnez	a5,0xe4b00a46
    .4byte 0x1c044503    # e4b00a30: lbu	a0,448(s0)
    .2byte 0x4581    # e4b00a34: c.li	a1,0
    .4byte 0x34c000ef    # e4b00a36: jal	ra,0xe4b00d82
    .4byte 0x1ea9b423    # e4b00a3a: .insn	4, 0x1ea9b423
    .4byte 0x1e843783    # e4b00a3e: .insn	4, 0x1e843783
    .4byte 0xc40785e3    # e4b00a42: beq	a5,zero,0xe4b0068c
    .4byte 0x1d843503    # e4b00a46: .insn	4, 0x1d843503
    .2byte 0x4681    # e4b00a4a: c.li	a3,0
    .2byte 0x4601    # e4b00a4c: c.li	a2,0
    .4byte 0x02100593    # e4b00a4e: addi	a1,zero,33
    .4byte 0x316000ef    # e4b00a52: jal	ra,0xe4b00d68
    .2byte 0x86aa    # e4b00a56: c.mv	a3,a0
    .4byte 0x1e843503    # e4b00a58: .insn	4, 0x1e843503
    .2byte 0x4601    # e4b00a5c: c.li	a2,0
    .2byte 0x4591    # e4b00a5e: c.li	a1,4
    .4byte 0x308000ef    # e4b00a60: jal	ra,0xe4b00d68
    .4byte 0x1e843503    # e4b00a64: .insn	4, 0x1e843503
    .4byte 0x02040693    # e4b00a68: addi	a3,s0,32
    .2byte 0x4601    # e4b00a6c: c.li	a2,0
    .2byte 0x4595    # e4b00a6e: c.li	a1,5
    .4byte 0x2f8000ef    # e4b00a70: jal	ra,0xe4b00d68
    .4byte 0xc0051ce3    # e4b00a74: bne	a0,zero,0xe4b0068c
    .4byte 0x1a043683    # e4b00a78: .insn	4, 0x1a043683
    .4byte 0x1e843503    # e4b00a7c: .insn	4, 0x1e843503
    .2byte 0x4601    # e4b00a80: c.li	a2,0
    .2byte 0x4599    # e4b00a82: c.li	a1,6
    .4byte 0x2e4000ef    # e4b00a84: jal	ra,0xe4b00d68
    .4byte 0xc00512e3    # e4b00a88: bne	a0,zero,0xe4b0068c
    .4byte 0x00093783    # e4b00a8c: .insn	4, 0x00093783
    .2byte 0x4681    # e4b00a90: c.li	a3,0
    .2byte 0x459d    # e4b00a92: c.li	a1,7
    .4byte 0x1ac7a603    # e4b00a94: lw	a2,428(a5)
    .4byte 0x1e87b503    # e4b00a98: .insn	4, 0x1e87b503
    .4byte 0x2cc000ef    # e4b00a9c: jal	ra,0xe4b00d68
    .4byte 0x00093783    # e4b00aa0: .insn	4, 0x00093783
    .2byte 0x4681    # e4b00aa4: c.li	a3,0
    .2byte 0x45a9    # e4b00aa6: c.li	a1,10
    .4byte 0x1b07a603    # e4b00aa8: lw	a2,432(a5)
    .4byte 0x1e87b503    # e4b00aac: .insn	4, 0x1e87b503
    .4byte 0x2b8000ef    # e4b00ab0: jal	ra,0xe4b00d68
    .4byte 0x1e843503    # e4b00ab4: .insn	4, 0x1e843503
    .2byte 0x4681    # e4b00ab8: c.li	a3,0
    .2byte 0x4601    # e4b00aba: c.li	a2,0
    .2byte 0x4581    # e4b00abc: c.li	a1,0
    .4byte 0x2aa000ef    # e4b00abe: jal	ra,0xe4b00d68
    .4byte 0xee050be3    # e4b00ac2: beq	a0,zero,0xe4b009b8
    .2byte 0xb6d9    # e4b00ac6: c.j	0xe4b0068c
    .2byte 0x4581    # e4b00ac8: c.li	a1,0
    .4byte 0x00000517    # e4b00aca: auipc	a0,0x0
    .4byte 0x60e50513    # e4b00ace: addi	a0,a0,1550 # 0xe4b010d8
    .4byte 0x27e000ef    # e4b00ad2: jal	ra,0xe4b00d50
    .4byte 0x1ca9a023    # e4b00ad6: sw	a0,448(s3)
    .4byte 0x00093783    # e4b00ada: .insn	4, 0x00093783
    .4byte 0x1c07a783    # e4b00ade: lw	a5,448(a5)
    .2byte 0xf3b1    # e4b00ae2: c.bnez	a5,0xe4b00a26
    .2byte 0xb665    # e4b00ae4: c.j	0xe4b0068c
    .4byte 0x1c49a783    # e4b00ae6: lw	a5,452(s3)
    .2byte 0xc7b5    # e4b00aea: c.beqz	a5,0xe4b00b56
    .4byte 0x00093983    # e4b00aec: .insn	4, 0x00093983
    .4byte 0x1f09b783    # e4b00af0: .insn	4, 0x1f09b783
    .2byte 0xef81    # e4b00af4: c.bnez	a5,0xe4b00b0c
    .4byte 0x1c444503    # e4b00af6: lbu	a0,452(s0)
    .2byte 0x4581    # e4b00afa: c.li	a1,0
    .4byte 0x286000ef    # e4b00afc: jal	ra,0xe4b00d82
    .4byte 0x1ea9b823    # e4b00b00: .insn	4, 0x1ea9b823
    .4byte 0x1f043783    # e4b00b04: .insn	4, 0x1f043783
    .4byte 0xb80782e3    # e4b00b08: beq	a5,zero,0xe4b0068c
    .4byte 0x1e043503    # e4b00b0c: .insn	4, 0x1e043503
    .2byte 0x4681    # e4b00b10: c.li	a3,0
    .2byte 0x4601    # e4b00b12: c.li	a2,0
    .4byte 0x02200593    # e4b00b14: addi	a1,zero,34
    .4byte 0x250000ef    # e4b00b18: jal	ra,0xe4b00d68
    .2byte 0x86aa    # e4b00b1c: c.mv	a3,a0
    .4byte 0x1f043503    # e4b00b1e: .insn	4, 0x1f043503
    .2byte 0x4601    # e4b00b22: c.li	a2,0
    .4byte 0x02000593    # e4b00b24: addi	a1,zero,32
    .4byte 0x240000ef    # e4b00b28: jal	ra,0xe4b00d68
    .4byte 0x1a043683    # e4b00b2c: .insn	4, 0x1a043683
    .4byte 0x1f043503    # e4b00b30: .insn	4, 0x1f043503
    .2byte 0x4601    # e4b00b34: c.li	a2,0
    .4byte 0x02100593    # e4b00b36: addi	a1,zero,33
    .4byte 0x22e000ef    # e4b00b3a: jal	ra,0xe4b00d68
    .4byte 0xb40517e3    # e4b00b3e: bne	a0,zero,0xe4b0068c
    .4byte 0x1f043503    # e4b00b42: .insn	4, 0x1f043503
    .2byte 0x4681    # e4b00b46: c.li	a3,0
    .2byte 0x4601    # e4b00b48: c.li	a2,0
    .2byte 0x4581    # e4b00b4a: c.li	a1,0
    .4byte 0x21c000ef    # e4b00b4c: jal	ra,0xe4b00d68
    .4byte 0xe8050ee3    # e4b00b50: beq	a0,zero,0xe4b009ec
    .2byte 0xbe25    # e4b00b54: c.j	0xe4b0068c
    .2byte 0x4581    # e4b00b56: c.li	a1,0
    .4byte 0x00000517    # e4b00b58: auipc	a0,0x0
    .4byte 0x59850513    # e4b00b5c: addi	a0,a0,1432 # 0xe4b010f0
    .4byte 0x1f0000ef    # e4b00b60: jal	ra,0xe4b00d50
    .4byte 0x1ca9a223    # e4b00b64: sw	a0,452(s3)
    .4byte 0x00093783    # e4b00b68: .insn	4, 0x00093783
    .4byte 0x1c47a783    # e4b00b6c: lw	a5,452(a5)
    .2byte 0xffb5    # e4b00b70: c.bnez	a5,0xe4b00aec
    .2byte 0xbe29    # e4b00b72: c.j	0xe4b0068c
    .4byte 0x0087c703    # e4b00b74: lbu	a4,8(a5)
    .2byte 0x4685    # e4b00b78: c.li	a3,1
    .2byte 0x377d    # e4b00b7a: c.jal	0xe4b00b28
    .4byte 0x0ff77713    # e4b00b7c: andi	a4,a4,255
    .4byte 0x94e6e9e3    # e4b00b80: bltu	a3,a4,0xe4b004d2
    .2byte 0xc399    # e4b00b84: c.beqz	a5,0xe4b00b8a
    .4byte 0xf50ff0ef    # e4b00b86: jal	ra,0xe4b002d6
    .4byte 0x00093783    # e4b00b8a: .insn	4, 0x00093783
    .4byte 0x00078423    # e4b00b8e: sb	zero,8(a5)
    .2byte 0xbac9    # e4b00b92: c.j	0xe4b00564
    .4byte 0x0087c683    # e4b00b94: lbu	a3,8(a5)
    .2byte 0x4705    # e4b00b98: c.li	a4,1
    .4byte 0x92e69ce3    # e4b00b9a: bne	a3,a4,0xe4b004d2
    .4byte 0x1e87b503    # e4b00b9e: .insn	4, 0x1e87b503
    .2byte 0xc511    # e4b00ba2: c.beqz	a0,0xe4b00bae
    .2byte 0x4681    # e4b00ba4: c.li	a3,0
    .2byte 0x4601    # e4b00ba6: c.li	a2,0
    .2byte 0x4589    # e4b00ba8: c.li	a1,2
    .4byte 0x1be000ef    # e4b00baa: jal	ra,0xe4b00d68
    .4byte 0x00093783    # e4b00bae: .insn	4, 0x00093783
    .4byte 0x1f07b503    # e4b00bb2: .insn	4, 0x1f07b503
    .2byte 0xc511    # e4b00bb6: c.beqz	a0,0xe4b00bc2
    .2byte 0x4681    # e4b00bb8: c.li	a3,0
    .2byte 0x4601    # e4b00bba: c.li	a2,0
    .2byte 0x4589    # e4b00bbc: c.li	a1,2
    .4byte 0x1aa000ef    # e4b00bbe: jal	ra,0xe4b00d68
    .4byte 0x00093783    # e4b00bc2: .insn	4, 0x00093783
    .2byte 0x4709    # e4b00bc6: c.li	a4,2
    .2byte 0xb461    # e4b00bc8: c.j	0xe4b00650
    .4byte 0x0087c483    # e4b00bca: lbu	s1,8(a5)
    .2byte 0xb219    # e4b00bce: c.j	0xe4b004d4
    .4byte 0x1e87b503    # e4b00bd0: .insn	4, 0x1e87b503
    .4byte 0x8e050fe3    # e4b00bd4: beq	a0,zero,0xe4b004d2
    .2byte 0x4681    # e4b00bd8: c.li	a3,0
    .2byte 0x4601    # e4b00bda: c.li	a2,0
    .2byte 0x45a5    # e4b00bdc: c.li	a1,9
    .2byte 0x6422    # e4b00bde: c.flwsp	fs0,8(sp)
    .2byte 0x70a2    # e4b00be0: c.flwsp	ft1,40(sp)
    .2byte 0x64c2    # e4b00be2: c.flwsp	fs1,16(sp)
    .2byte 0x6962    # e4b00be4: c.flwsp	fs2,24(sp)
    .2byte 0x7982    # e4b00be6: c.flwsp	fs3,32(sp)
    .2byte 0x6145    # e4b00be8: c.addi16sp	sp,48
    .4byte 0x17e0006f    # e4b00bea: jal	zero,0xe4b00d68
    .4byte 0x0307e483    # e4b00bee: .insn	4, 0x0307e483
    .4byte 0x8e3ff06f    # e4b00bf2: jal	zero,0xe4b004d4
    .4byte 0x0287e483    # e4b00bf6: .insn	4, 0x0287e483
    .4byte 0x8dbff06f    # e4b00bfa: jal	zero,0xe4b004d4
    .4byte 0x0247e483    # e4b00bfe: .insn	4, 0x0247e483
    .4byte 0x8d3ff06f    # e4b00c02: jal	zero,0xe4b004d4
    .4byte 0x0387e483    # e4b00c06: .insn	4, 0x0387e483
    .4byte 0x8cbff06f    # e4b00c0a: jal	zero,0xe4b004d4
    .4byte 0x1e87b503    # e4b00c0e: .insn	4, 0x1e87b503
    .4byte 0x1ac7a623    # e4b00c12: sw	a2,428(a5)
    .4byte 0x940507e3    # e4b00c16: beq	a0,zero,0xe4b00564
    .2byte 0x4681    # e4b00c1a: c.li	a3,0
    .2byte 0x459d    # e4b00c1c: c.li	a1,7
    .4byte 0x14a000ef    # e4b00c1e: jal	ra,0xe4b00d68
    .2byte 0xb289    # e4b00c22: c.j	0xe4b00564
    .4byte 0x04000613    # e4b00c24: addi	a2,zero,64
    .2byte 0x4581    # e4b00c28: c.li	a1,0
    .2byte 0x8522    # e4b00c2a: c.mv	a0,s0
    .4byte 0x198000ef    # e4b00c2c: jal	ra,0xe4b00dc4
    .2byte 0x609c    # e4b00c30: c.flw	fa5,0(s1)
    .4byte 0x1ac7a703    # e4b00c32: lw	a4,428(a5)
    .4byte 0x88070ee3    # e4b00c36: beq	a4,zero,0xe4b004d2
    .4byte 0x1e87b503    # e4b00c3a: .insn	4, 0x1e87b503
    .4byte 0x88050ae3    # e4b00c3e: beq	a0,zero,0xe4b004d2
    .2byte 0x86a2    # e4b00c42: c.mv	a3,s0
    .2byte 0x4601    # e4b00c44: c.li	a2,0
    .2byte 0x45a1    # e4b00c46: c.li	a1,8
    .2byte 0xbf59    # e4b00c48: c.j	0xe4b00bde
    .4byte 0x0146069b    # e4b00c4a: .insn	4, 0x0146069b
    .4byte 0x02800613    # e4b00c4e: addi	a2,zero,40
    .4byte 0x88d660e3    # e4b00c52: bltu	a2,a3,0xe4b004d2
    .4byte 0x1e87b503    # e4b00c56: .insn	4, 0x1e87b503
    .4byte 0x1ae7a823    # e4b00c5a: sw	a4,432(a5)
    .4byte 0x900503e3    # e4b00c5e: beq	a0,zero,0xe4b00564
    .2byte 0x4681    # e4b00c62: c.li	a3,0
    .2byte 0x863a    # e4b00c64: c.mv	a2,a4
    .2byte 0x45a9    # e4b00c66: c.li	a1,10
    .2byte 0xbf5d    # e4b00c68: c.j	0xe4b00c1e
    .2byte 0x0719    # e4b00c6a: c.addi	a4,6 # 0x1006
    .4byte 0xa6e794e3    # e4b00c6c: bne	a5,a4,0xe4b006d4
    .2byte 0x4581    # e4b00c70: c.li	a1,0
    .4byte 0x00000517    # e4b00c72: auipc	a0,0x0
    .4byte 0x3ee50513    # e4b00c76: addi	a0,a0,1006 # 0xe4b01060
    .2byte 0xb455    # e4b00c7a: c.j	0xe4b0071e
    .2byte 0x1141    # e4b00c7c: c.addi	sp,-16
    .4byte 0x100008b7    # e4b00c7e: lui	a7,0x10000
    .2byte 0xe406    # e4b00c82: c.fswsp	ft1,8(sp)
    .4byte 0x12688893    # e4b00c84: addi	a7,a7,294 # 0x10000126
    .4byte 0x00000073    # e4b00c88: ecall
    .2byte 0x60a2    # e4b00c8c: c.flwsp	ft1,8(sp)
    .2byte 0x0141    # e4b00c8e: c.addi	sp,16
    .2byte 0x8082    # e4b00c90: c.jr	ra
    .2byte 0x1141    # e4b00c92: c.addi	sp,-16
    .4byte 0x100008b7    # e4b00c94: lui	a7,0x10000
    .2byte 0xe406    # e4b00c98: c.fswsp	ft1,8(sp)
    .4byte 0x12788893    # e4b00c9a: addi	a7,a7,295 # 0x10000127
    .4byte 0x00000073    # e4b00c9e: ecall
    .2byte 0x60a2    # e4b00ca2: c.flwsp	ft1,8(sp)
    .2byte 0x0141    # e4b00ca4: c.addi	sp,16
    .2byte 0x8082    # e4b00ca6: c.jr	ra
    .2byte 0x1141    # e4b00ca8: c.addi	sp,-16
    .4byte 0x100008b7    # e4b00caa: lui	a7,0x10000
    .2byte 0xe406    # e4b00cae: c.fswsp	ft1,8(sp)
    .4byte 0x12888893    # e4b00cb0: addi	a7,a7,296 # 0x10000128
    .4byte 0x00000073    # e4b00cb4: ecall
    .2byte 0x60a2    # e4b00cb8: c.flwsp	ft1,8(sp)
    .4byte 0x0ff57513    # e4b00cba: andi	a0,a0,255
    .2byte 0x0141    # e4b00cbe: c.addi	sp,16
    .2byte 0x8082    # e4b00cc0: c.jr	ra
    .2byte 0x1141    # e4b00cc2: c.addi	sp,-16
    .4byte 0x100008b7    # e4b00cc4: lui	a7,0x10000
    .2byte 0xe406    # e4b00cc8: c.fswsp	ft1,8(sp)
    .4byte 0x13f88893    # e4b00cca: addi	a7,a7,319 # 0x1000013f
    .4byte 0x00000073    # e4b00cce: ecall
    .2byte 0x60a2    # e4b00cd2: c.flwsp	ft1,8(sp)
    .2byte 0x0141    # e4b00cd4: c.addi	sp,16
    .2byte 0x8082    # e4b00cd6: c.jr	ra
    .2byte 0x1141    # e4b00cd8: c.addi	sp,-16
    .4byte 0x100008b7    # e4b00cda: lui	a7,0x10000
    .2byte 0xe406    # e4b00cde: c.fswsp	ft1,8(sp)
    .4byte 0x14088893    # e4b00ce0: addi	a7,a7,320 # 0x10000140
    .4byte 0x00000073    # e4b00ce4: ecall
    .2byte 0x60a2    # e4b00ce8: c.flwsp	ft1,8(sp)
    .2byte 0x0141    # e4b00cea: c.addi	sp,16
    .2byte 0x8082    # e4b00cec: c.jr	ra
    .2byte 0x1141    # e4b00cee: c.addi	sp,-16
    .4byte 0x100008b7    # e4b00cf0: lui	a7,0x10000
    .2byte 0xe406    # e4b00cf4: c.fswsp	ft1,8(sp)
    .4byte 0x20788893    # e4b00cf6: addi	a7,a7,519 # 0x10000207
    .4byte 0x7c05b58b    # e4b00cfa: .insn	4, 0x7c05b58b
    .4byte 0x00000073    # e4b00cfe: ecall
    .2byte 0x60a2    # e4b00d02: c.flwsp	ft1,8(sp)
    .2byte 0x0141    # e4b00d04: c.addi	sp,16
    .2byte 0x8082    # e4b00d06: c.jr	ra
    .2byte 0x1141    # e4b00d08: c.addi	sp,-16
    .4byte 0x100008b7    # e4b00d0a: lui	a7,0x10000
    .2byte 0xe406    # e4b00d0e: c.fswsp	ft1,8(sp)
    .4byte 0x20888893    # e4b00d10: addi	a7,a7,520 # 0x10000208
    .4byte 0x00000073    # e4b00d14: ecall
    .2byte 0x60a2    # e4b00d18: c.flwsp	ft1,8(sp)
    .2byte 0x0141    # e4b00d1a: c.addi	sp,16
    .2byte 0x8082    # e4b00d1c: c.jr	ra
    .2byte 0x1141    # e4b00d1e: c.addi	sp,-16
    .4byte 0x100008b7    # e4b00d20: lui	a7,0x10000
    .2byte 0xe406    # e4b00d24: c.fswsp	ft1,8(sp)
    .4byte 0x20188893    # e4b00d26: addi	a7,a7,513 # 0x10000201
    .4byte 0x7c05b58b    # e4b00d2a: .insn	4, 0x7c05b58b
    .4byte 0x00000073    # e4b00d2e: ecall
    .2byte 0x60a2    # e4b00d32: c.flwsp	ft1,8(sp)
    .2byte 0x0141    # e4b00d34: c.addi	sp,16
    .2byte 0x8082    # e4b00d36: c.jr	ra
    .2byte 0x1141    # e4b00d38: c.addi	sp,-16
    .4byte 0x100008b7    # e4b00d3a: lui	a7,0x10000
    .2byte 0xe406    # e4b00d3e: c.fswsp	ft1,8(sp)
    .4byte 0x50388893    # e4b00d40: addi	a7,a7,1283 # 0x10000503
    .4byte 0x00000073    # e4b00d44: ecall
    .2byte 0x60a2    # e4b00d48: c.flwsp	ft1,8(sp)
    .2byte 0x2501    # e4b00d4a: c.jal	0xe4b0134a
    .2byte 0x0141    # e4b00d4c: c.addi	sp,16
    .2byte 0x8082    # e4b00d4e: c.jr	ra
    .2byte 0x1141    # e4b00d50: c.addi	sp,-16
    .4byte 0x100008b7    # e4b00d52: lui	a7,0x10000
    .2byte 0xe406    # e4b00d56: c.fswsp	ft1,8(sp)
    .4byte 0x50088893    # e4b00d58: addi	a7,a7,1280 # 0x10000500
    .4byte 0x00000073    # e4b00d5c: ecall
    .2byte 0x60a2    # e4b00d60: c.flwsp	ft1,8(sp)
    .2byte 0x2501    # e4b00d62: c.jal	0xe4b01362
    .2byte 0x0141    # e4b00d64: c.addi	sp,16
    .2byte 0x8082    # e4b00d66: c.jr	ra
    .2byte 0x1141    # e4b00d68: c.addi	sp,-16
    .4byte 0x100008b7    # e4b00d6a: lui	a7,0x10000
    .2byte 0xe406    # e4b00d6e: c.fswsp	ft1,8(sp)
    .4byte 0x50688893    # e4b00d70: addi	a7,a7,1286 # 0x10000506
    .4byte 0x7c05b58b    # e4b00d74: .insn	4, 0x7c05b58b
    .4byte 0x00000073    # e4b00d78: ecall
    .2byte 0x60a2    # e4b00d7c: c.flwsp	ft1,8(sp)
    .2byte 0x0141    # e4b00d7e: c.addi	sp,16
    .2byte 0x8082    # e4b00d80: c.jr	ra
    .2byte 0x1141    # e4b00d82: c.addi	sp,-16
    .4byte 0x100008b7    # e4b00d84: lui	a7,0x10000
    .2byte 0xe406    # e4b00d88: c.fswsp	ft1,8(sp)
    .4byte 0x50288893    # e4b00d8a: addi	a7,a7,1282 # 0x10000502
    .4byte 0x00000073    # e4b00d8e: ecall
    .2byte 0x60a2    # e4b00d92: c.flwsp	ft1,8(sp)
    .2byte 0x0141    # e4b00d94: c.addi	sp,16
    .2byte 0x8082    # e4b00d96: c.jr	ra
    .2byte 0x1141    # e4b00d98: c.addi	sp,-16
    .4byte 0x100008b7    # e4b00d9a: lui	a7,0x10000
    .2byte 0xe406    # e4b00d9e: c.fswsp	ft1,8(sp)
    .4byte 0x50188893    # e4b00da0: addi	a7,a7,1281 # 0x10000501
    .4byte 0x00000073    # e4b00da4: ecall
    .2byte 0x60a2    # e4b00da8: c.flwsp	ft1,8(sp)
    .2byte 0x2501    # e4b00daa: c.jal	0xe4b013aa
    .2byte 0x0141    # e4b00dac: c.addi	sp,16
    .2byte 0x8082    # e4b00dae: c.jr	ra
    .2byte 0x1141    # e4b00db0: c.addi	sp,-16
    .4byte 0x100008b7    # e4b00db2: lui	a7,0x10000
    .2byte 0xe406    # e4b00db6: c.fswsp	ft1,8(sp)
    .2byte 0x088d    # e4b00db8: c.addi	a7,3 # 0x10000003
    .4byte 0x00000073    # e4b00dba: ecall
    .2byte 0x60a2    # e4b00dbe: c.flwsp	ft1,8(sp)
    .2byte 0x0141    # e4b00dc0: c.addi	sp,16
    .2byte 0x8082    # e4b00dc2: c.jr	ra
    .4byte 0x00e877b7    # e4b00dc4: lui	a5,0xe87
    .2byte 0x07a2    # e4b00dc8: c.slli	a5,0x8
    .4byte 0x0a87b303    # e4b00dca: .insn	4, 0x0a87b303
    .2byte 0x8302    # e4b00dce: c.jr	t1
    .4byte 0x00000797    # e4b00dd0: auipc	a5,0x0
    .4byte 0x3d878793    # e4b00dd4: addi	a5,a5,984 # 0xe4b011a8
    .4byte 0x0007b023    # e4b00dd8: .insn	4, 0x0007b023
    .4byte 0x0007a423    # e4b00ddc: sw	zero,8(a5)
    .2byte 0xeb9c    # e4b00de0: c.fsw	fa5,16(a5)
    .4byte 0x0007bc23    # e4b00de2: .insn	4, 0x0007bc23
    .2byte 0x4501    # e4b00de6: c.li	a0,0
    .2byte 0x8082    # e4b00de8: c.jr	ra
    .4byte 0x00000797    # e4b00dea: auipc	a5,0x0
    .4byte 0x3de78793    # e4b00dee: addi	a5,a5,990 # 0xe4b011c8
    .4byte 0x0007b023    # e4b00df2: .insn	4, 0x0007b023
    .4byte 0x0007a423    # e4b00df6: sw	zero,8(a5)
    .2byte 0xeb9c    # e4b00dfa: c.fsw	fa5,16(a5)
    .4byte 0x0007bc23    # e4b00dfc: .insn	4, 0x0007bc23
    .2byte 0x4501    # e4b00e00: c.li	a0,0
    .2byte 0x8082    # e4b00e02: c.jr	ra
    .2byte 0x1101    # e4b00e04: c.addi	sp,-32
    .4byte 0xf891540b    # e4b00e06: .insn	4, 0xf891540b
    .4byte 0x00000797    # e4b00e0a: auipc	a5,0x0
    .4byte 0x39e78793    # e4b00e0e: addi	a5,a5,926 # 0xe4b011a8
    .2byte 0xec06    # e4b00e12: c.fswsp	ft1,24(sp)
    .2byte 0xe84a    # e4b00e14: c.fswsp	fs2,16(sp)
    .2byte 0x6f80    # e4b00e16: c.flw	fs0,24(a5)
    .2byte 0x84be    # e4b00e18: c.mv	s1,a5
    .2byte 0xe801    # e4b00e1a: c.bnez	s0,0xe4b00e2a
    .2byte 0x60e2    # e4b00e1c: c.flwsp	ft1,24(sp)
    .4byte 0xf891440b    # e4b00e1e: .insn	4, 0xf891440b
    .2byte 0x6942    # e4b00e22: c.flwsp	fs2,16(sp)
    .2byte 0x4501    # e4b00e24: c.li	a0,0
    .2byte 0x6105    # e4b00e26: c.addi16sp	sp,32
    .2byte 0x8082    # e4b00e28: c.jr	ra
    .2byte 0x600c    # e4b00e2a: c.flw	fa1,0(s0)
    .2byte 0x4501    # e4b00e2c: c.li	a0,0
    .4byte 0xedbff0ef    # e4b00e2e: jal	ra,0xe4b00d08
    .4byte 0x01843903    # e4b00e32: .insn	4, 0x01843903
    .2byte 0x85a2    # e4b00e36: c.mv	a1,s0
    .2byte 0x4501    # e4b00e38: c.li	a0,0
    .4byte 0x0124bc23    # e4b00e3a: .insn	4, 0x0124bc23
    .2byte 0x844a    # e4b00e3e: c.mv	s0,s2
    .4byte 0xec9ff0ef    # e4b00e40: jal	ra,0xe4b00d08
    .2byte 0xbfd9    # e4b00e44: c.j	0xe4b00e1a
    .2byte 0x1101    # e4b00e46: c.addi	sp,-32
    .4byte 0xf891540b    # e4b00e48: .insn	4, 0xf891540b
    .4byte 0x00000797    # e4b00e4c: auipc	a5,0x0
    .4byte 0x37c78793    # e4b00e50: addi	a5,a5,892 # 0xe4b011c8
    .2byte 0xec06    # e4b00e54: c.fswsp	ft1,24(sp)
    .2byte 0xe84a    # e4b00e56: c.fswsp	fs2,16(sp)
    .2byte 0x6f80    # e4b00e58: c.flw	fs0,24(a5)
    .2byte 0x84be    # e4b00e5a: c.mv	s1,a5
    .2byte 0xe801    # e4b00e5c: c.bnez	s0,0xe4b00e6c
    .2byte 0x60e2    # e4b00e5e: c.flwsp	ft1,24(sp)
    .4byte 0xf891440b    # e4b00e60: .insn	4, 0xf891440b
    .2byte 0x6942    # e4b00e64: c.flwsp	fs2,16(sp)
    .2byte 0x4501    # e4b00e66: c.li	a0,0
    .2byte 0x6105    # e4b00e68: c.addi16sp	sp,32
    .2byte 0x8082    # e4b00e6a: c.jr	ra
    .2byte 0x440c    # e4b00e6c: c.lw	a1,8(s0)
    .2byte 0x6008    # e4b00e6e: c.flw	fa0,0(s0)
    .4byte 0xeafff0ef    # e4b00e70: jal	ra,0xe4b00d1e
    .4byte 0x01843903    # e4b00e74: .insn	4, 0x01843903
    .2byte 0x85a2    # e4b00e78: c.mv	a1,s0
    .2byte 0x4501    # e4b00e7a: c.li	a0,0
    .4byte 0x0124bc23    # e4b00e7c: .insn	4, 0x0124bc23
    .2byte 0x844a    # e4b00e80: c.mv	s0,s2
    .4byte 0xe87ff0ef    # e4b00e82: jal	ra,0xe4b00d08
    .2byte 0xbfd9    # e4b00e86: c.j	0xe4b00e5c
    .2byte 0x7179    # e4b00e88: c.addi16sp	sp,-48
    .4byte 0xfa91540b    # e4b00e8a: .insn	4, 0xfa91540b
    .4byte 0x02000593    # e4b00e8e: addi	a1,zero,32
    .2byte 0x84aa    # e4b00e92: c.mv	s1,a0
    .2byte 0x4501    # e4b00e94: c.li	a0,0
    .2byte 0xf406    # e4b00e96: c.fswsp	ft1,40(sp)
    .2byte 0xf04a    # e4b00e98: c.fswsp	fs2,32(sp)
    .4byte 0xe55ff0ef    # e4b00e9a: jal	ra,0xe4b00cee
    .2byte 0x842a    # e4b00e9e: c.mv	s0,a0
    .2byte 0xc52d    # e4b00ea0: c.beqz	a0,0xe4b00f0a
    .4byte 0x0004891b    # e4b00ea2: .insn	4, 0x0004891b
    .4byte 0x00053023    # e4b00ea6: .insn	4, 0x00053023
    .4byte 0x00052423    # e4b00eaa: sw	zero,8(a0)
    .4byte 0x00053823    # e4b00eae: .insn	4, 0x00053823
    .4byte 0x00053c23    # e4b00eb2: .insn	4, 0x00053c23
    .2byte 0x85ca    # e4b00eb6: c.mv	a1,s2
    .2byte 0x4501    # e4b00eb8: c.li	a0,0
    .4byte 0xe35ff0ef    # e4b00eba: jal	ra,0xe4b00cee
    .2byte 0xe008    # e4b00ebe: c.fsw	fa0,0(s0)
    .2byte 0xed21    # e4b00ec0: c.bnez	a0,0xe4b00f18
    .4byte 0x00000697    # e4b00ec2: auipc	a3,0x0
    .4byte 0x26668693    # e4b00ec6: addi	a3,a3,614 # 0xe4b01128
    .4byte 0x00000897    # e4b00eca: auipc	a7,0x0
    .4byte 0x23e88893    # e4b00ece: addi	a7,a7,574 # 0xe4b01108
    .2byte 0x85c6    # e4b00ed2: c.mv	a1,a7
    .2byte 0xe436    # e4b00ed4: c.fswsp	fa3,8(sp)
    .4byte 0x00000817    # e4b00ed6: auipc	a6,0x0
    .4byte 0x24280813    # e4b00eda: addi	a6,a6,578 # 0xe4b01118
    .4byte 0x0e800793    # e4b00ede: addi	a5,zero,232
    .4byte 0x00000717    # e4b00ee2: auipc	a4,0x0
    .4byte 0x29e70713    # e4b00ee6: addi	a4,a4,670 # 0xe4b01180
    .4byte 0x00000617    # e4b00eea: auipc	a2,0x0
    .4byte 0x24660613    # e4b00eee: addi	a2,a2,582 # 0xe4b01130
    .2byte 0xe026    # e4b00ef2: c.fswsp	fs1,0(sp)
    .4byte 0x00000517    # e4b00ef4: auipc	a0,0x0
    .4byte 0x24450513    # e4b00ef8: addi	a0,a0,580 # 0xe4b01138
    .4byte 0x0e2000ef    # e4b00efc: jal	ra,0xe4b00fde
    .2byte 0x85a2    # e4b00f00: c.mv	a1,s0
    .2byte 0x4501    # e4b00f02: c.li	a0,0
    .4byte 0xe05ff0ef    # e4b00f04: jal	ra,0xe4b00d08
    .2byte 0x4401    # e4b00f08: c.li	s0,0
    .2byte 0x8522    # e4b00f0a: c.mv	a0,s0
    .2byte 0x70a2    # e4b00f0c: c.flwsp	ft1,40(sp)
    .4byte 0xfa91440b    # e4b00f0e: .insn	4, 0xfa91440b
    .2byte 0x7902    # e4b00f12: c.flwsp	fs2,32(sp)
    .2byte 0x6145    # e4b00f14: c.addi16sp	sp,48
    .2byte 0x8082    # e4b00f16: c.jr	ra
    .2byte 0x8626    # e4b00f18: c.mv	a2,s1
    .2byte 0x4581    # e4b00f1a: c.li	a1,0
    .4byte 0x9b4ff0ef    # e4b00f1c: jal	ra,0xe4b000d0
    .4byte 0x01242423    # e4b00f20: sw	s2,8(s0)
    .4byte 0xd9fff0ef    # e4b00f24: jal	ra,0xe4b00cc2
    .4byte 0x00000797    # e4b00f28: auipc	a5,0x0
    .4byte 0x28078793    # e4b00f2c: addi	a5,a5,640 # 0xe4b011a8
    .2byte 0x6b98    # e4b00f30: c.flw	fa4,16(a5)
    .2byte 0xe818    # e4b00f32: c.fsw	fa4,16(s0)
    .2byte 0xef00    # e4b00f34: c.fsw	fs0,24(a4)
    .2byte 0xeb80    # e4b00f36: c.fsw	fs0,16(a5)
    .4byte 0xda1ff0ef    # e4b00f38: jal	ra,0xe4b00cd8
    .2byte 0x6000    # e4b00f3c: c.flw	fs0,0(s0)
    .2byte 0xb7f1    # e4b00f3e: c.j	0xe4b00f0a
    .2byte 0x1101    # e4b00f40: c.addi	sp,-32
    .2byte 0xe822    # e4b00f42: c.fswsp	fs0,16(sp)
    .2byte 0xe42a    # e4b00f44: c.fswsp	fa0,8(sp)
    .2byte 0xec06    # e4b00f46: c.fswsp	ft1,24(sp)
    .4byte 0xd7bff0ef    # e4b00f48: jal	ra,0xe4b00cc2
    .4byte 0x00000797    # e4b00f4c: auipc	a5,0x0
    .4byte 0x25c78793    # e4b00f50: addi	a5,a5,604 # 0xe4b011a8
    .2byte 0x6f80    # e4b00f54: c.flw	fs0,24(a5)
    .2byte 0x6522    # e4b00f56: c.flwsp	fa0,8(sp)
    .2byte 0xe409    # e4b00f58: c.bnez	s0,0xe4b00f62
    .4byte 0xd7fff0ef    # e4b00f5a: jal	ra,0xe4b00cd8
    .2byte 0x557d    # e4b00f5e: c.li	a0,-1
    .2byte 0xa035    # e4b00f60: c.j	0xe4b00f8c
    .2byte 0x6014    # e4b00f62: c.flw	fa3,0(s0)
    .2byte 0x6c18    # e4b00f64: c.flw	fa4,24(s0)
    .4byte 0x02d51963    # e4b00f66: bne	a0,a3,0xe4b00f98
    .2byte 0x6814    # e4b00f6a: c.flw	fa3,16(s0)
    .2byte 0xee98    # e4b00f6c: c.fsw	fa4,24(a3)
    .2byte 0x6c14    # e4b00f6e: c.flw	fa3,24(s0)
    .2byte 0x6818    # e4b00f70: c.flw	fa4,16(s0)
    .2byte 0xc28d    # e4b00f72: c.beqz	a3,0xe4b00f94
    .2byte 0xea98    # e4b00f74: c.fsw	fa4,16(a3)
    .2byte 0x600c    # e4b00f76: c.flw	fa1,0(s0)
    .2byte 0x4501    # e4b00f78: c.li	a0,0
    .4byte 0xd8fff0ef    # e4b00f7a: jal	ra,0xe4b00d08
    .2byte 0x4501    # e4b00f7e: c.li	a0,0
    .2byte 0x85a2    # e4b00f80: c.mv	a1,s0
    .4byte 0xd87ff0ef    # e4b00f82: jal	ra,0xe4b00d08
    .4byte 0xd53ff0ef    # e4b00f86: jal	ra,0xe4b00cd8
    .2byte 0x4501    # e4b00f8a: c.li	a0,0
    .2byte 0x60e2    # e4b00f8c: c.flwsp	ft1,24(sp)
    .2byte 0x6442    # e4b00f8e: c.flwsp	fs0,16(sp)
    .2byte 0x6105    # e4b00f90: c.addi16sp	sp,32
    .2byte 0x8082    # e4b00f92: c.jr	ra
    .2byte 0xeb98    # e4b00f94: c.fsw	fa4,16(a5)
    .2byte 0xb7c5    # e4b00f96: c.j	0xe4b00f76
    .2byte 0x843a    # e4b00f98: c.mv	s0,a4
    .2byte 0xbf7d    # e4b00f9a: c.j	0xe4b00f58
    .2byte 0x7179    # e4b00f9c: c.addi16sp	sp,-48
    .2byte 0xec22    # e4b00f9e: c.fswsp	fs0,24(sp)
    .4byte 0x00000417    # e4b00fa0: auipc	s0,0x0
    .4byte 0x24840413    # e4b00fa4: addi	s0,s0,584 # 0xe4b011e8
    .2byte 0xf026    # e4b00fa8: c.fswsp	fs1,32(sp)
    .2byte 0xe42e    # e4b00faa: c.fswsp	fa1,8(sp)
    .2byte 0x84aa    # e4b00fac: c.mv	s1,a0
    .4byte 0x40000613    # e4b00fae: addi	a2,zero,1024
    .2byte 0x4581    # e4b00fb2: c.li	a1,0
    .2byte 0x8522    # e4b00fb4: c.mv	a0,s0
    .2byte 0xf406    # e4b00fb6: c.fswsp	ft1,40(sp)
    .4byte 0x918ff0ef    # e4b00fb8: jal	ra,0xe4b000d0
    .2byte 0x66a2    # e4b00fbc: c.flwsp	fa3,8(sp)
    .2byte 0x8626    # e4b00fbe: c.mv	a2,s1
    .4byte 0x40000593    # e4b00fc0: addi	a1,zero,1024
    .2byte 0x8522    # e4b00fc4: c.mv	a0,s0
    .4byte 0x044000ef    # e4b00fc6: jal	ra,0xe4b0100a
    .2byte 0x84aa    # e4b00fca: c.mv	s1,a0
    .2byte 0x8522    # e4b00fcc: c.mv	a0,s0
    .4byte 0xde3ff0ef    # e4b00fce: jal	ra,0xe4b00db0
    .2byte 0x6462    # e4b00fd2: c.flwsp	fs0,24(sp)
    .2byte 0x70a2    # e4b00fd4: c.flwsp	ft1,40(sp)
    .2byte 0x8526    # e4b00fd6: c.mv	a0,s1
    .2byte 0x7482    # e4b00fd8: c.flwsp	fs1,32(sp)
    .2byte 0x6145    # e4b00fda: c.addi16sp	sp,48
    .2byte 0x8082    # e4b00fdc: c.jr	ra
    .2byte 0x711d    # e4b00fde: c.addi16sp	sp,-96
    .2byte 0xf42e    # e4b00fe0: c.fswsp	fa1,40(sp)
    .2byte 0x102c    # e4b00fe2: c.addi4spn	a1,sp,40
    .2byte 0xec06    # e4b00fe4: c.fswsp	ft1,24(sp)
    .4byte 0xfed1560b    # e4b00fe6: .insn	4, 0xfed1560b
    .2byte 0xe0ba    # e4b00fea: c.fswsp	fa4,64(sp)
    .2byte 0xe4be    # e4b00fec: c.fswsp	fa5,72(sp)
    .2byte 0xe8c2    # e4b00fee: c.fswsp	fa6,80(sp)
    .2byte 0xecc6    # e4b00ff0: c.fswsp	fa7,88(sp)
    .2byte 0xe42e    # e4b00ff2: c.fswsp	fa1,8(sp)
    .4byte 0xfa9ff0ef    # e4b00ff4: jal	ra,0xe4b00f9c
    .2byte 0x60e2    # e4b00ff8: c.flwsp	ft1,24(sp)
    .2byte 0x6125    # e4b00ffa: c.addi16sp	sp,96
    .2byte 0x8082    # e4b00ffc: c.jr	ra
    .4byte 0x00e877b7    # e4b00ffe: lui	a5,0xe87
    .2byte 0x07a2    # e4b01002: c.slli	a5,0x8
    .4byte 0x0c07b303    # e4b01004: .insn	4, 0x0c07b303
    .2byte 0x8302    # e4b01008: c.jr	t1
    .2byte 0x1141    # e4b0100a: c.addi	sp,-16
    .2byte 0xe022    # e4b0100c: c.fswsp	fs0,0(sp)
    .2byte 0xe406    # e4b0100e: c.fswsp	ft1,8(sp)
    .2byte 0x842e    # e4b01010: c.mv	s0,a1
    .4byte 0xfedff0ef    # e4b01012: jal	ra,0xe4b00ffe
    .4byte 0x00856463    # e4b01016: bltu	a0,s0,0xe4b0101e
    .4byte 0xfff4051b    # e4b0101a: .insn	4, 0xfff4051b
    .2byte 0x60a2    # e4b0101e: c.flwsp	ft1,8(sp)
    .2byte 0x6402    # e4b01020: c.flwsp	fs0,0(sp)
    .2byte 0x0141    # e4b01022: c.addi	sp,16
    .2byte 0x8082    # e4b01024: c.jr	ra
    .2byte 0x0000    # e4b01026
