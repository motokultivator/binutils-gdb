#objdump: -dr --prefix-addresses --show-raw-insn -M cp0-names=mips32
#name: MIPS MT ASE for MIPS32R7
#as: -mmt -mips32r7 -mmicromips -32
#source: mips32-mt.s

# Check MIPS MT ASE for MIPS32R7 Instruction Assembly

.*: +file format .*mips.*

Disassembly of section .text:
0+0000 <text_label> 2001 0b38 	dmt
0+0004 <text_label\+0x4> 23e1 0b38 	dmt	ra
0+0008 <text_label\+0x8> 2000 0b38 	dvpe
0+000c <text_label\+0xc> 2020 0b38 	dvpe	at
0+0010 <text_label\+0x10> 2001 0f38 	emt
0+0014 <text_label\+0x14> 2041 0f38 	emt	v0
0+0018 <text_label\+0x18> 2000 0f38 	evpe
0+001c <text_label\+0x1c> 2060 0f38 	evpe	v1
0+0020 <text_label\+0x20> 20c5 2228 	fork	a0,a1,a2
0+0024 <text_label\+0x24> 2005 0268 	yield	a1
0+0028 <text_label\+0x28> 20c7 0268 	yield	a2,a3
0+002c <text_label\+0x2c> 20e8 0378 	mftc0	a3,c0_badvaddr
0+0030 <text_label\+0x30> 2100 0378 	mftc0	t0,c0_index
0+0034 <text_label\+0x34> 2100 0b78 	mftc0	t0,\$0,1
0+0038 <text_label\+0x38> 2100 1378 	mftc0	t0,\$0,2
0+003c <text_label\+0x3c> 2100 1b78 	mftc0	t0,\$0,3
0+0040 <text_label\+0x40> 2100 2378 	mftc0	t0,\$0,4
0+0044 <text_label\+0x44> 2100 2b78 	mftc0	t0,\$0,5
0+0048 <text_label\+0x48> 2100 3378 	mftc0	t0,\$0,6
0+004c <text_label\+0x4c> 2100 3b78 	mftc0	t0,\$0,7
0+0050 <text_label\+0x50> 2101 0378 	mftc0	t0,c0_random
0+0054 <text_label\+0x54> 2101 0b78 	mftc0	t0,\$1,1
0+0058 <text_label\+0x58> 2101 1378 	mftc0	t0,\$1,2
0+005c <text_label\+0x5c> 2101 1b78 	mftc0	t0,\$1,3
0+0060 <text_label\+0x60> 2101 2378 	mftc0	t0,\$1,4
0+0064 <text_label\+0x64> 2101 2b78 	mftc0	t0,\$1,5
0+0068 <text_label\+0x68> 2101 3378 	mftc0	t0,\$1,6
0+006c <text_label\+0x6c> 2101 3b78 	mftc0	t0,\$1,7
0+0070 <text_label\+0x70> 2102 0378 	mftc0	t0,c0_entrylo0
0+0074 <text_label\+0x74> 2102 0b78 	mftc0	t0,\$2,1
0+0078 <text_label\+0x78> 2102 1378 	mftc0	t0,\$2,2
0+007c <text_label\+0x7c> 2102 1b78 	mftc0	t0,\$2,3
0+0080 <text_label\+0x80> 2102 2378 	mftc0	t0,\$2,4
0+0084 <text_label\+0x84> 2102 2b78 	mftc0	t0,\$2,5
0+0088 <text_label\+0x88> 2102 3378 	mftc0	t0,\$2,6
0+008c <text_label\+0x8c> 2102 3b78 	mftc0	t0,\$2,7
0+0090 <text_label\+0x90> 2103 0378 	mftc0	t0,c0_entrylo1
0+0094 <text_label\+0x94> 2103 0b78 	mftc0	t0,\$3,1
0+0098 <text_label\+0x98> 2103 1378 	mftc0	t0,\$3,2
0+009c <text_label\+0x9c> 2103 1b78 	mftc0	t0,\$3,3
0+00a0 <text_label\+0xa0> 2103 2378 	mftc0	t0,\$3,4
0+00a4 <text_label\+0xa4> 2103 2b78 	mftc0	t0,\$3,5
0+00a8 <text_label\+0xa8> 2103 3378 	mftc0	t0,\$3,6
0+00ac <text_label\+0xac> 2103 3b78 	mftc0	t0,\$3,7
0+00b0 <text_label\+0xb0> 2104 0378 	mftc0	t0,c0_context
0+00b4 <text_label\+0xb4> 2104 0b78 	mftc0	t0,\$4,1
0+00b8 <text_label\+0xb8> 2104 1378 	mftc0	t0,\$4,2
0+00bc <text_label\+0xbc> 2104 1b78 	mftc0	t0,\$4,3
0+00c0 <text_label\+0xc0> 2104 2378 	mftc0	t0,\$4,4
0+00c4 <text_label\+0xc4> 2104 2b78 	mftc0	t0,\$4,5
0+00c8 <text_label\+0xc8> 2104 3378 	mftc0	t0,\$4,6
0+00cc <text_label\+0xcc> 2104 3b78 	mftc0	t0,\$4,7
0+00d0 <text_label\+0xd0> 2105 0378 	mftc0	t0,c0_pagemask
0+00d4 <text_label\+0xd4> 2105 0b78 	mftc0	t0,\$5,1
0+00d8 <text_label\+0xd8> 2105 1378 	mftc0	t0,\$5,2
0+00dc <text_label\+0xdc> 2105 1b78 	mftc0	t0,\$5,3
0+00e0 <text_label\+0xe0> 2105 2378 	mftc0	t0,\$5,4
0+00e4 <text_label\+0xe4> 2105 2b78 	mftc0	t0,\$5,5
0+00e8 <text_label\+0xe8> 2105 3378 	mftc0	t0,\$5,6
0+00ec <text_label\+0xec> 2105 3b78 	mftc0	t0,\$5,7
0+00f0 <text_label\+0xf0> 2106 0378 	mftc0	t0,c0_wired
0+00f4 <text_label\+0xf4> 2106 0b78 	mftc0	t0,\$6,1
0+00f8 <text_label\+0xf8> 2106 1378 	mftc0	t0,\$6,2
0+00fc <text_label\+0xfc> 2106 1b78 	mftc0	t0,\$6,3
0+0100 <text_label\+0x100> 2106 2378 	mftc0	t0,\$6,4
0+0104 <text_label\+0x104> 2106 2b78 	mftc0	t0,\$6,5
0+0108 <text_label\+0x108> 2106 3378 	mftc0	t0,\$6,6
0+010c <text_label\+0x10c> 2106 3b78 	mftc0	t0,\$6,7
0+0110 <text_label\+0x110> 2107 0378 	mftc0	t0,\$7
0+0114 <text_label\+0x114> 2107 0b78 	mftc0	t0,\$7,1
0+0118 <text_label\+0x118> 2107 1378 	mftc0	t0,\$7,2
0+011c <text_label\+0x11c> 2107 1b78 	mftc0	t0,\$7,3
0+0120 <text_label\+0x120> 2107 2378 	mftc0	t0,\$7,4
0+0124 <text_label\+0x124> 2107 2b78 	mftc0	t0,\$7,5
0+0128 <text_label\+0x128> 2107 3378 	mftc0	t0,\$7,6
0+012c <text_label\+0x12c> 2107 3b78 	mftc0	t0,\$7,7
0+0130 <text_label\+0x130> 2108 0378 	mftc0	t0,c0_badvaddr
0+0134 <text_label\+0x134> 2108 0b78 	mftc0	t0,\$8,1
0+0138 <text_label\+0x138> 2108 1378 	mftc0	t0,\$8,2
0+013c <text_label\+0x13c> 2108 1b78 	mftc0	t0,\$8,3
0+0140 <text_label\+0x140> 2108 2378 	mftc0	t0,\$8,4
0+0144 <text_label\+0x144> 2108 2b78 	mftc0	t0,\$8,5
0+0148 <text_label\+0x148> 2108 3378 	mftc0	t0,\$8,6
0+014c <text_label\+0x14c> 2108 3b78 	mftc0	t0,\$8,7
0+0150 <text_label\+0x150> 2109 0378 	mftc0	t0,c0_count
0+0154 <text_label\+0x154> 2109 0b78 	mftc0	t0,\$9,1
0+0158 <text_label\+0x158> 2109 1378 	mftc0	t0,\$9,2
0+015c <text_label\+0x15c> 2109 1b78 	mftc0	t0,\$9,3
0+0160 <text_label\+0x160> 2109 2378 	mftc0	t0,\$9,4
0+0164 <text_label\+0x164> 2109 2b78 	mftc0	t0,\$9,5
0+0168 <text_label\+0x168> 2109 3378 	mftc0	t0,\$9,6
0+016c <text_label\+0x16c> 2109 3b78 	mftc0	t0,\$9,7
0+0170 <text_label\+0x170> 210a 0378 	mftc0	t0,c0_entryhi
0+0174 <text_label\+0x174> 210a 0b78 	mftc0	t0,\$10,1
0+0178 <text_label\+0x178> 210a 1378 	mftc0	t0,\$10,2
0+017c <text_label\+0x17c> 210a 1b78 	mftc0	t0,\$10,3
0+0180 <text_label\+0x180> 210a 2378 	mftc0	t0,\$10,4
0+0184 <text_label\+0x184> 210a 2b78 	mftc0	t0,\$10,5
0+0188 <text_label\+0x188> 210a 3378 	mftc0	t0,\$10,6
0+018c <text_label\+0x18c> 210a 3b78 	mftc0	t0,\$10,7
0+0190 <text_label\+0x190> 210b 0378 	mftc0	t0,c0_compare
0+0194 <text_label\+0x194> 210b 0b78 	mftc0	t0,\$11,1
0+0198 <text_label\+0x198> 210b 1378 	mftc0	t0,\$11,2
0+019c <text_label\+0x19c> 210b 1b78 	mftc0	t0,\$11,3
0+01a0 <text_label\+0x1a0> 210b 2378 	mftc0	t0,\$11,4
0+01a4 <text_label\+0x1a4> 210b 2b78 	mftc0	t0,\$11,5
0+01a8 <text_label\+0x1a8> 210b 3378 	mftc0	t0,\$11,6
0+01ac <text_label\+0x1ac> 210b 3b78 	mftc0	t0,\$11,7
0+01b0 <text_label\+0x1b0> 210c 0378 	mftc0	t0,c0_status
0+01b4 <text_label\+0x1b4> 210c 0b78 	mftc0	t0,\$12,1
0+01b8 <text_label\+0x1b8> 210c 1378 	mftc0	t0,\$12,2
0+01bc <text_label\+0x1bc> 210c 1b78 	mftc0	t0,\$12,3
0+01c0 <text_label\+0x1c0> 210c 2378 	mftc0	t0,\$12,4
0+01c4 <text_label\+0x1c4> 210c 2b78 	mftc0	t0,\$12,5
0+01c8 <text_label\+0x1c8> 210c 3378 	mftc0	t0,\$12,6
0+01cc <text_label\+0x1cc> 210c 3b78 	mftc0	t0,\$12,7
0+01d0 <text_label\+0x1d0> 210d 0378 	mftc0	t0,c0_cause
0+01d4 <text_label\+0x1d4> 210d 0b78 	mftc0	t0,\$13,1
0+01d8 <text_label\+0x1d8> 210d 1378 	mftc0	t0,\$13,2
0+01dc <text_label\+0x1dc> 210d 1b78 	mftc0	t0,\$13,3
0+01e0 <text_label\+0x1e0> 210d 2378 	mftc0	t0,\$13,4
0+01e4 <text_label\+0x1e4> 210d 2b78 	mftc0	t0,\$13,5
0+01e8 <text_label\+0x1e8> 210d 3378 	mftc0	t0,\$13,6
0+01ec <text_label\+0x1ec> 210d 3b78 	mftc0	t0,\$13,7
0+01f0 <text_label\+0x1f0> 210e 0378 	mftc0	t0,c0_epc
0+01f4 <text_label\+0x1f4> 210e 0b78 	mftc0	t0,\$14,1
0+01f8 <text_label\+0x1f8> 210e 1378 	mftc0	t0,\$14,2
0+01fc <text_label\+0x1fc> 210e 1b78 	mftc0	t0,\$14,3
0+0200 <text_label\+0x200> 210e 2378 	mftc0	t0,\$14,4
0+0204 <text_label\+0x204> 210e 2b78 	mftc0	t0,\$14,5
0+0208 <text_label\+0x208> 210e 3378 	mftc0	t0,\$14,6
0+020c <text_label\+0x20c> 210e 3b78 	mftc0	t0,\$14,7
0+0210 <text_label\+0x210> 210f 0378 	mftc0	t0,c0_prid
0+0214 <text_label\+0x214> 210f 0b78 	mftc0	t0,\$15,1
0+0218 <text_label\+0x218> 210f 1378 	mftc0	t0,\$15,2
0+021c <text_label\+0x21c> 210f 1b78 	mftc0	t0,\$15,3
0+0220 <text_label\+0x220> 210f 2378 	mftc0	t0,\$15,4
0+0224 <text_label\+0x224> 210f 2b78 	mftc0	t0,\$15,5
0+0228 <text_label\+0x228> 210f 3378 	mftc0	t0,\$15,6
0+022c <text_label\+0x22c> 210f 3b78 	mftc0	t0,\$15,7
0+0230 <text_label\+0x230> 2110 0378 	mftc0	t0,c0_config
0+0234 <text_label\+0x234> 2110 0b78 	mftc0	t0,c0_config1
0+0238 <text_label\+0x238> 2110 1378 	mftc0	t0,c0_config2
0+023c <text_label\+0x23c> 2110 1b78 	mftc0	t0,c0_config3
0+0240 <text_label\+0x240> 2110 2378 	mftc0	t0,\$16,4
0+0244 <text_label\+0x244> 2110 2b78 	mftc0	t0,\$16,5
0+0248 <text_label\+0x248> 2110 3378 	mftc0	t0,\$16,6
0+024c <text_label\+0x24c> 2110 3b78 	mftc0	t0,\$16,7
0+0250 <text_label\+0x250> 2111 0378 	mftc0	t0,c0_lladdr
0+0254 <text_label\+0x254> 2111 0b78 	mftc0	t0,\$17,1
0+0258 <text_label\+0x258> 2111 1378 	mftc0	t0,\$17,2
0+025c <text_label\+0x25c> 2111 1b78 	mftc0	t0,\$17,3
0+0260 <text_label\+0x260> 2111 2378 	mftc0	t0,\$17,4
0+0264 <text_label\+0x264> 2111 2b78 	mftc0	t0,\$17,5
0+0268 <text_label\+0x268> 2111 3378 	mftc0	t0,\$17,6
0+026c <text_label\+0x26c> 2111 3b78 	mftc0	t0,\$17,7
0+0270 <text_label\+0x270> 2112 0378 	mftc0	t0,c0_watchlo
0+0274 <text_label\+0x274> 2112 0b78 	mftc0	t0,c0_watchlo,1
0+0278 <text_label\+0x278> 2112 1378 	mftc0	t0,c0_watchlo,2
0+027c <text_label\+0x27c> 2112 1b78 	mftc0	t0,c0_watchlo,3
0+0280 <text_label\+0x280> 2112 2378 	mftc0	t0,c0_watchlo,4
0+0284 <text_label\+0x284> 2112 2b78 	mftc0	t0,c0_watchlo,5
0+0288 <text_label\+0x288> 2112 3378 	mftc0	t0,c0_watchlo,6
0+028c <text_label\+0x28c> 2112 3b78 	mftc0	t0,c0_watchlo,7
0+0290 <text_label\+0x290> 2113 0378 	mftc0	t0,c0_watchhi
0+0294 <text_label\+0x294> 2113 0b78 	mftc0	t0,c0_watchhi,1
0+0298 <text_label\+0x298> 2113 1378 	mftc0	t0,c0_watchhi,2
0+029c <text_label\+0x29c> 2113 1b78 	mftc0	t0,c0_watchhi,3
0+02a0 <text_label\+0x2a0> 2113 2378 	mftc0	t0,c0_watchhi,4
0+02a4 <text_label\+0x2a4> 2113 2b78 	mftc0	t0,c0_watchhi,5
0+02a8 <text_label\+0x2a8> 2113 3378 	mftc0	t0,c0_watchhi,6
0+02ac <text_label\+0x2ac> 2113 3b78 	mftc0	t0,c0_watchhi,7
0+02b0 <text_label\+0x2b0> 2114 0378 	mftc0	t0,c0_xcontext
0+02b4 <text_label\+0x2b4> 2114 0b78 	mftc0	t0,\$20,1
0+02b8 <text_label\+0x2b8> 2114 1378 	mftc0	t0,\$20,2
0+02bc <text_label\+0x2bc> 2114 1b78 	mftc0	t0,\$20,3
0+02c0 <text_label\+0x2c0> 2114 2378 	mftc0	t0,\$20,4
0+02c4 <text_label\+0x2c4> 2114 2b78 	mftc0	t0,\$20,5
0+02c8 <text_label\+0x2c8> 2114 3378 	mftc0	t0,\$20,6
0+02cc <text_label\+0x2cc> 2114 3b78 	mftc0	t0,\$20,7
0+02d0 <text_label\+0x2d0> 2115 0378 	mftc0	t0,\$21
0+02d4 <text_label\+0x2d4> 2115 0b78 	mftc0	t0,\$21,1
0+02d8 <text_label\+0x2d8> 2115 1378 	mftc0	t0,\$21,2
0+02dc <text_label\+0x2dc> 2115 1b78 	mftc0	t0,\$21,3
0+02e0 <text_label\+0x2e0> 2115 2378 	mftc0	t0,\$21,4
0+02e4 <text_label\+0x2e4> 2115 2b78 	mftc0	t0,\$21,5
0+02e8 <text_label\+0x2e8> 2115 3378 	mftc0	t0,\$21,6
0+02ec <text_label\+0x2ec> 2115 3b78 	mftc0	t0,\$21,7
0+02f0 <text_label\+0x2f0> 2116 0378 	mftc0	t0,\$22
0+02f4 <text_label\+0x2f4> 2116 0b78 	mftc0	t0,\$22,1
0+02f8 <text_label\+0x2f8> 2116 1378 	mftc0	t0,\$22,2
0+02fc <text_label\+0x2fc> 2116 1b78 	mftc0	t0,\$22,3
0+0300 <text_label\+0x300> 2116 2378 	mftc0	t0,\$22,4
0+0304 <text_label\+0x304> 2116 2b78 	mftc0	t0,\$22,5
0+0308 <text_label\+0x308> 2116 3378 	mftc0	t0,\$22,6
0+030c <text_label\+0x30c> 2116 3b78 	mftc0	t0,\$22,7
0+0310 <text_label\+0x310> 2117 0378 	mftc0	t0,c0_debug
0+0314 <text_label\+0x314> 2117 0b78 	mftc0	t0,\$23,1
0+0318 <text_label\+0x318> 2117 1378 	mftc0	t0,\$23,2
0+031c <text_label\+0x31c> 2117 1b78 	mftc0	t0,\$23,3
0+0320 <text_label\+0x320> 2117 2378 	mftc0	t0,\$23,4
0+0324 <text_label\+0x324> 2117 2b78 	mftc0	t0,\$23,5
0+0328 <text_label\+0x328> 2117 3378 	mftc0	t0,\$23,6
0+032c <text_label\+0x32c> 2117 3b78 	mftc0	t0,\$23,7
0+0330 <text_label\+0x330> 2118 0378 	mftc0	t0,c0_depc
0+0334 <text_label\+0x334> 2118 0b78 	mftc0	t0,\$24,1
0+0338 <text_label\+0x338> 2118 1378 	mftc0	t0,\$24,2
0+033c <text_label\+0x33c> 2118 1b78 	mftc0	t0,\$24,3
0+0340 <text_label\+0x340> 2118 2378 	mftc0	t0,\$24,4
0+0344 <text_label\+0x344> 2118 2b78 	mftc0	t0,\$24,5
0+0348 <text_label\+0x348> 2118 3378 	mftc0	t0,\$24,6
0+034c <text_label\+0x34c> 2118 3b78 	mftc0	t0,\$24,7
0+0350 <text_label\+0x350> 2119 0378 	mftc0	t0,c0_perfcnt
0+0354 <text_label\+0x354> 2119 0b78 	mftc0	t0,c0_perfcnt,1
0+0358 <text_label\+0x358> 2119 1378 	mftc0	t0,c0_perfcnt,2
0+035c <text_label\+0x35c> 2119 1b78 	mftc0	t0,c0_perfcnt,3
0+0360 <text_label\+0x360> 2119 2378 	mftc0	t0,c0_perfcnt,4
0+0364 <text_label\+0x364> 2119 2b78 	mftc0	t0,c0_perfcnt,5
0+0368 <text_label\+0x368> 2119 3378 	mftc0	t0,c0_perfcnt,6
0+036c <text_label\+0x36c> 2119 3b78 	mftc0	t0,c0_perfcnt,7
0+0370 <text_label\+0x370> 211a 0378 	mftc0	t0,c0_errctl
0+0374 <text_label\+0x374> 211a 0b78 	mftc0	t0,\$26,1
0+0378 <text_label\+0x378> 211a 1378 	mftc0	t0,\$26,2
0+037c <text_label\+0x37c> 211a 1b78 	mftc0	t0,\$26,3
0+0380 <text_label\+0x380> 211a 2378 	mftc0	t0,\$26,4
0+0384 <text_label\+0x384> 211a 2b78 	mftc0	t0,\$26,5
0+0388 <text_label\+0x388> 211a 3378 	mftc0	t0,\$26,6
0+038c <text_label\+0x38c> 211a 3b78 	mftc0	t0,\$26,7
0+0390 <text_label\+0x390> 211b 0378 	mftc0	t0,c0_cacheerr
0+0394 <text_label\+0x394> 211b 0b78 	mftc0	t0,c0_cacheerr,1
0+0398 <text_label\+0x398> 211b 1378 	mftc0	t0,c0_cacheerr,2
0+039c <text_label\+0x39c> 211b 1b78 	mftc0	t0,c0_cacheerr,3
0+03a0 <text_label\+0x3a0> 211b 2378 	mftc0	t0,\$27,4
0+03a4 <text_label\+0x3a4> 211b 2b78 	mftc0	t0,\$27,5
0+03a8 <text_label\+0x3a8> 211b 3378 	mftc0	t0,\$27,6
0+03ac <text_label\+0x3ac> 211b 3b78 	mftc0	t0,\$27,7
0+03b0 <text_label\+0x3b0> 211c 0378 	mftc0	t0,c0_taglo
0+03b4 <text_label\+0x3b4> 211c 0b78 	mftc0	t0,c0_datalo
0+03b8 <text_label\+0x3b8> 211c 1378 	mftc0	t0,\$28,2
0+03bc <text_label\+0x3bc> 211c 1b78 	mftc0	t0,\$28,3
0+03c0 <text_label\+0x3c0> 211c 2378 	mftc0	t0,\$28,4
0+03c4 <text_label\+0x3c4> 211c 2b78 	mftc0	t0,\$28,5
0+03c8 <text_label\+0x3c8> 211c 3378 	mftc0	t0,\$28,6
0+03cc <text_label\+0x3cc> 211c 3b78 	mftc0	t0,\$28,7
0+03d0 <text_label\+0x3d0> 211d 0378 	mftc0	t0,c0_taghi
0+03d4 <text_label\+0x3d4> 211d 0b78 	mftc0	t0,c0_datahi
0+03d8 <text_label\+0x3d8> 211d 1378 	mftc0	t0,\$29,2
0+03dc <text_label\+0x3dc> 211d 1b78 	mftc0	t0,\$29,3
0+03e0 <text_label\+0x3e0> 211d 2378 	mftc0	t0,\$29,4
0+03e4 <text_label\+0x3e4> 211d 2b78 	mftc0	t0,\$29,5
0+03e8 <text_label\+0x3e8> 211d 3378 	mftc0	t0,\$29,6
0+03ec <text_label\+0x3ec> 211d 3b78 	mftc0	t0,\$29,7
0+03f0 <text_label\+0x3f0> 211e 0378 	mftc0	t0,c0_errorepc
0+03f4 <text_label\+0x3f4> 211e 0b78 	mftc0	t0,\$30,1
0+03f8 <text_label\+0x3f8> 211e 1378 	mftc0	t0,\$30,2
0+03fc <text_label\+0x3fc> 211e 1b78 	mftc0	t0,\$30,3
0+0400 <text_label\+0x400> 211e 2378 	mftc0	t0,\$30,4
0+0404 <text_label\+0x404> 211e 2b78 	mftc0	t0,\$30,5
0+0408 <text_label\+0x408> 211e 3378 	mftc0	t0,\$30,6
0+040c <text_label\+0x40c> 211e 3b78 	mftc0	t0,\$30,7
0+0410 <text_label\+0x410> 211f 0378 	mftc0	t0,c0_desave
0+0414 <text_label\+0x414> 211f 0b78 	mftc0	t0,\$31,1
0+0418 <text_label\+0x418> 211f 1378 	mftc0	t0,\$31,2
0+041c <text_label\+0x41c> 211f 1b78 	mftc0	t0,\$31,3
0+0420 <text_label\+0x420> 211f 2378 	mftc0	t0,\$31,4
0+0424 <text_label\+0x424> 211f 2b78 	mftc0	t0,\$31,5
0+0428 <text_label\+0x428> 211f 3378 	mftc0	t0,\$31,6
0+042c <text_label\+0x42c> 211f 3b78 	mftc0	t0,\$31,7
0+0430 <text_label\+0x430> 212a 8378 	mftgpr	t1,t2
0+0434 <text_label\+0x434> 2140 8b78 	mftlo	t2
0+0438 <text_label\+0x438> 2160 8b78 	mftlo	t3
0+043c <text_label\+0x43c> 2181 8b78 	mfthi	t4
0+0440 <text_label\+0x440> 21a5 8b78 	mfthi	t5,\$ac1
0+0444 <text_label\+0x444> 21c2 8b78 	mftacx	t6
0+0448 <text_label\+0x448> 21ea 8b78 	mftacx	t7,\$ac2
0+044c <text_label\+0x44c> 2210 8b78 	mftdsp	s0
0+0450 <text_label\+0x450> 2232 9378 	mftc1	s1,\$f18
0+0454 <text_label\+0x454> 2253 9378 	mftc1	s2,\$f19
0+0458 <text_label\+0x458> 2274 d378 	mfthc1	s3,\$f20
0+045c <text_label\+0x45c> 2296 d378 	mfthc1	s4,\$f22
0+0460 <text_label\+0x460> 22b6 9b78 	cftc1	s5,\$22
0+0464 <text_label\+0x464> 22d7 9b78 	cftc1	s6,\$23
0+0468 <text_label\+0x468> 22f8 a378 	mftc2	s7,\$24
0+046c <text_label\+0x46c> 2319 e378 	mfthc2	t8,\$25
0+0470 <text_label\+0x470> 233a ab78 	cftc2	t9,\$26
0+0474 <text_label\+0x474> 237a 0778 	mttc0	k0,c0_cacheerr
0+0478 <text_label\+0x478> 201b 0778 	mttc0	k1,c0_index
0+047c <text_label\+0x47c> 201b 0f78 	mttc0	k1,\$0,1
0+0480 <text_label\+0x480> 201b 1778 	mttc0	k1,\$0,2
0+0484 <text_label\+0x484> 201b 1f78 	mttc0	k1,\$0,3
0+0488 <text_label\+0x488> 201b 2778 	mttc0	k1,\$0,4
0+048c <text_label\+0x48c> 201b 2f78 	mttc0	k1,\$0,5
0+0490 <text_label\+0x490> 201b 3778 	mttc0	k1,\$0,6
0+0494 <text_label\+0x494> 201b 3f78 	mttc0	k1,\$0,7
0+0498 <text_label\+0x498> 203b 0778 	mttc0	k1,c0_random
0+049c <text_label\+0x49c> 203b 0f78 	mttc0	k1,\$1,1
0+04a0 <text_label\+0x4a0> 203b 1778 	mttc0	k1,\$1,2
0+04a4 <text_label\+0x4a4> 203b 1f78 	mttc0	k1,\$1,3
0+04a8 <text_label\+0x4a8> 203b 2778 	mttc0	k1,\$1,4
0+04ac <text_label\+0x4ac> 203b 2f78 	mttc0	k1,\$1,5
0+04b0 <text_label\+0x4b0> 203b 3778 	mttc0	k1,\$1,6
0+04b4 <text_label\+0x4b4> 203b 3f78 	mttc0	k1,\$1,7
0+04b8 <text_label\+0x4b8> 205b 0778 	mttc0	k1,c0_entrylo0
0+04bc <text_label\+0x4bc> 205b 0f78 	mttc0	k1,\$2,1
0+04c0 <text_label\+0x4c0> 205b 1778 	mttc0	k1,\$2,2
0+04c4 <text_label\+0x4c4> 205b 1f78 	mttc0	k1,\$2,3
0+04c8 <text_label\+0x4c8> 205b 2778 	mttc0	k1,\$2,4
0+04cc <text_label\+0x4cc> 205b 2f78 	mttc0	k1,\$2,5
0+04d0 <text_label\+0x4d0> 205b 3778 	mttc0	k1,\$2,6
0+04d4 <text_label\+0x4d4> 205b 3f78 	mttc0	k1,\$2,7
0+04d8 <text_label\+0x4d8> 207b 0778 	mttc0	k1,c0_entrylo1
0+04dc <text_label\+0x4dc> 207b 0f78 	mttc0	k1,\$3,1
0+04e0 <text_label\+0x4e0> 207b 1778 	mttc0	k1,\$3,2
0+04e4 <text_label\+0x4e4> 207b 1f78 	mttc0	k1,\$3,3
0+04e8 <text_label\+0x4e8> 207b 2778 	mttc0	k1,\$3,4
0+04ec <text_label\+0x4ec> 207b 2f78 	mttc0	k1,\$3,5
0+04f0 <text_label\+0x4f0> 207b 3778 	mttc0	k1,\$3,6
0+04f4 <text_label\+0x4f4> 207b 3f78 	mttc0	k1,\$3,7
0+04f8 <text_label\+0x4f8> 209b 0778 	mttc0	k1,c0_context
0+04fc <text_label\+0x4fc> 209b 0f78 	mttc0	k1,\$4,1
0+0500 <text_label\+0x500> 209b 1778 	mttc0	k1,\$4,2
0+0504 <text_label\+0x504> 209b 1f78 	mttc0	k1,\$4,3
0+0508 <text_label\+0x508> 209b 2778 	mttc0	k1,\$4,4
0+050c <text_label\+0x50c> 209b 2f78 	mttc0	k1,\$4,5
0+0510 <text_label\+0x510> 209b 3778 	mttc0	k1,\$4,6
0+0514 <text_label\+0x514> 209b 3f78 	mttc0	k1,\$4,7
0+0518 <text_label\+0x518> 20bb 0778 	mttc0	k1,c0_pagemask
0+051c <text_label\+0x51c> 20bb 0f78 	mttc0	k1,\$5,1
0+0520 <text_label\+0x520> 20bb 1778 	mttc0	k1,\$5,2
0+0524 <text_label\+0x524> 20bb 1f78 	mttc0	k1,\$5,3
0+0528 <text_label\+0x528> 20bb 2778 	mttc0	k1,\$5,4
0+052c <text_label\+0x52c> 20bb 2f78 	mttc0	k1,\$5,5
0+0530 <text_label\+0x530> 20bb 3778 	mttc0	k1,\$5,6
0+0534 <text_label\+0x534> 20bb 3f78 	mttc0	k1,\$5,7
0+0538 <text_label\+0x538> 20db 0778 	mttc0	k1,c0_wired
0+053c <text_label\+0x53c> 20db 0f78 	mttc0	k1,\$6,1
0+0540 <text_label\+0x540> 20db 1778 	mttc0	k1,\$6,2
0+0544 <text_label\+0x544> 20db 1f78 	mttc0	k1,\$6,3
0+0548 <text_label\+0x548> 20db 2778 	mttc0	k1,\$6,4
0+054c <text_label\+0x54c> 20db 2f78 	mttc0	k1,\$6,5
0+0550 <text_label\+0x550> 20db 3778 	mttc0	k1,\$6,6
0+0554 <text_label\+0x554> 20db 3f78 	mttc0	k1,\$6,7
0+0558 <text_label\+0x558> 20fb 0778 	mttc0	k1,\$7
0+055c <text_label\+0x55c> 20fb 0f78 	mttc0	k1,\$7,1
0+0560 <text_label\+0x560> 20fb 1778 	mttc0	k1,\$7,2
0+0564 <text_label\+0x564> 20fb 1f78 	mttc0	k1,\$7,3
0+0568 <text_label\+0x568> 20fb 2778 	mttc0	k1,\$7,4
0+056c <text_label\+0x56c> 20fb 2f78 	mttc0	k1,\$7,5
0+0570 <text_label\+0x570> 20fb 3778 	mttc0	k1,\$7,6
0+0574 <text_label\+0x574> 20fb 3f78 	mttc0	k1,\$7,7
0+0578 <text_label\+0x578> 211b 0778 	mttc0	k1,c0_badvaddr
0+057c <text_label\+0x57c> 211b 0f78 	mttc0	k1,\$8,1
0+0580 <text_label\+0x580> 211b 1778 	mttc0	k1,\$8,2
0+0584 <text_label\+0x584> 211b 1f78 	mttc0	k1,\$8,3
0+0588 <text_label\+0x588> 211b 2778 	mttc0	k1,\$8,4
0+058c <text_label\+0x58c> 211b 2f78 	mttc0	k1,\$8,5
0+0590 <text_label\+0x590> 211b 3778 	mttc0	k1,\$8,6
0+0594 <text_label\+0x594> 211b 3f78 	mttc0	k1,\$8,7
0+0598 <text_label\+0x598> 213b 0778 	mttc0	k1,c0_count
0+059c <text_label\+0x59c> 213b 0f78 	mttc0	k1,\$9,1
0+05a0 <text_label\+0x5a0> 213b 1778 	mttc0	k1,\$9,2
0+05a4 <text_label\+0x5a4> 213b 1f78 	mttc0	k1,\$9,3
0+05a8 <text_label\+0x5a8> 213b 2778 	mttc0	k1,\$9,4
0+05ac <text_label\+0x5ac> 213b 2f78 	mttc0	k1,\$9,5
0+05b0 <text_label\+0x5b0> 213b 3778 	mttc0	k1,\$9,6
0+05b4 <text_label\+0x5b4> 213b 3f78 	mttc0	k1,\$9,7
0+05b8 <text_label\+0x5b8> 215b 0778 	mttc0	k1,c0_entryhi
0+05bc <text_label\+0x5bc> 215b 0f78 	mttc0	k1,\$10,1
0+05c0 <text_label\+0x5c0> 215b 1778 	mttc0	k1,\$10,2
0+05c4 <text_label\+0x5c4> 215b 1f78 	mttc0	k1,\$10,3
0+05c8 <text_label\+0x5c8> 215b 2778 	mttc0	k1,\$10,4
0+05cc <text_label\+0x5cc> 215b 2f78 	mttc0	k1,\$10,5
0+05d0 <text_label\+0x5d0> 215b 3778 	mttc0	k1,\$10,6
0+05d4 <text_label\+0x5d4> 215b 3f78 	mttc0	k1,\$10,7
0+05d8 <text_label\+0x5d8> 217b 0778 	mttc0	k1,c0_compare
0+05dc <text_label\+0x5dc> 217b 0f78 	mttc0	k1,\$11,1
0+05e0 <text_label\+0x5e0> 217b 1778 	mttc0	k1,\$11,2
0+05e4 <text_label\+0x5e4> 217b 1f78 	mttc0	k1,\$11,3
0+05e8 <text_label\+0x5e8> 217b 2778 	mttc0	k1,\$11,4
0+05ec <text_label\+0x5ec> 217b 2f78 	mttc0	k1,\$11,5
0+05f0 <text_label\+0x5f0> 217b 3778 	mttc0	k1,\$11,6
0+05f4 <text_label\+0x5f4> 217b 3f78 	mttc0	k1,\$11,7
0+05f8 <text_label\+0x5f8> 219b 0778 	mttc0	k1,c0_status
0+05fc <text_label\+0x5fc> 219b 0f78 	mttc0	k1,\$12,1
0+0600 <text_label\+0x600> 219b 1778 	mttc0	k1,\$12,2
0+0604 <text_label\+0x604> 219b 1f78 	mttc0	k1,\$12,3
0+0608 <text_label\+0x608> 219b 2778 	mttc0	k1,\$12,4
0+060c <text_label\+0x60c> 219b 2f78 	mttc0	k1,\$12,5
0+0610 <text_label\+0x610> 219b 3778 	mttc0	k1,\$12,6
0+0614 <text_label\+0x614> 219b 3f78 	mttc0	k1,\$12,7
0+0618 <text_label\+0x618> 21bb 0778 	mttc0	k1,c0_cause
0+061c <text_label\+0x61c> 21bb 0f78 	mttc0	k1,\$13,1
0+0620 <text_label\+0x620> 21bb 1778 	mttc0	k1,\$13,2
0+0624 <text_label\+0x624> 21bb 1f78 	mttc0	k1,\$13,3
0+0628 <text_label\+0x628> 21bb 2778 	mttc0	k1,\$13,4
0+062c <text_label\+0x62c> 21bb 2f78 	mttc0	k1,\$13,5
0+0630 <text_label\+0x630> 21bb 3778 	mttc0	k1,\$13,6
0+0634 <text_label\+0x634> 21bb 3f78 	mttc0	k1,\$13,7
0+0638 <text_label\+0x638> 21db 0778 	mttc0	k1,c0_epc
0+063c <text_label\+0x63c> 21db 0f78 	mttc0	k1,\$14,1
0+0640 <text_label\+0x640> 21db 1778 	mttc0	k1,\$14,2
0+0644 <text_label\+0x644> 21db 1f78 	mttc0	k1,\$14,3
0+0648 <text_label\+0x648> 21db 2778 	mttc0	k1,\$14,4
0+064c <text_label\+0x64c> 21db 2f78 	mttc0	k1,\$14,5
0+0650 <text_label\+0x650> 21db 3778 	mttc0	k1,\$14,6
0+0654 <text_label\+0x654> 21db 3f78 	mttc0	k1,\$14,7
0+0658 <text_label\+0x658> 21fb 0778 	mttc0	k1,c0_prid
0+065c <text_label\+0x65c> 21fb 0f78 	mttc0	k1,\$15,1
0+0660 <text_label\+0x660> 21fb 1778 	mttc0	k1,\$15,2
0+0664 <text_label\+0x664> 21fb 1f78 	mttc0	k1,\$15,3
0+0668 <text_label\+0x668> 21fb 2778 	mttc0	k1,\$15,4
0+066c <text_label\+0x66c> 21fb 2f78 	mttc0	k1,\$15,5
0+0670 <text_label\+0x670> 21fb 3778 	mttc0	k1,\$15,6
0+0674 <text_label\+0x674> 21fb 3f78 	mttc0	k1,\$15,7
0+0678 <text_label\+0x678> 221b 0778 	mttc0	k1,c0_config
0+067c <text_label\+0x67c> 221b 0f78 	mttc0	k1,c0_config1
0+0680 <text_label\+0x680> 221b 1778 	mttc0	k1,c0_config2
0+0684 <text_label\+0x684> 221b 1f78 	mttc0	k1,c0_config3
0+0688 <text_label\+0x688> 221b 2778 	mttc0	k1,\$16,4
0+068c <text_label\+0x68c> 221b 2f78 	mttc0	k1,\$16,5
0+0690 <text_label\+0x690> 221b 3778 	mttc0	k1,\$16,6
0+0694 <text_label\+0x694> 221b 3f78 	mttc0	k1,\$16,7
0+0698 <text_label\+0x698> 223b 0778 	mttc0	k1,c0_lladdr
0+069c <text_label\+0x69c> 223b 0f78 	mttc0	k1,\$17,1
0+06a0 <text_label\+0x6a0> 223b 1778 	mttc0	k1,\$17,2
0+06a4 <text_label\+0x6a4> 223b 1f78 	mttc0	k1,\$17,3
0+06a8 <text_label\+0x6a8> 223b 2778 	mttc0	k1,\$17,4
0+06ac <text_label\+0x6ac> 223b 2f78 	mttc0	k1,\$17,5
0+06b0 <text_label\+0x6b0> 223b 3778 	mttc0	k1,\$17,6
0+06b4 <text_label\+0x6b4> 223b 3f78 	mttc0	k1,\$17,7
0+06b8 <text_label\+0x6b8> 225b 0778 	mttc0	k1,c0_watchlo
0+06bc <text_label\+0x6bc> 225b 0f78 	mttc0	k1,c0_watchlo,1
0+06c0 <text_label\+0x6c0> 225b 1778 	mttc0	k1,c0_watchlo,2
0+06c4 <text_label\+0x6c4> 225b 1f78 	mttc0	k1,c0_watchlo,3
0+06c8 <text_label\+0x6c8> 225b 2778 	mttc0	k1,c0_watchlo,4
0+06cc <text_label\+0x6cc> 225b 2f78 	mttc0	k1,c0_watchlo,5
0+06d0 <text_label\+0x6d0> 225b 3778 	mttc0	k1,c0_watchlo,6
0+06d4 <text_label\+0x6d4> 225b 3f78 	mttc0	k1,c0_watchlo,7
0+06d8 <text_label\+0x6d8> 227b 0778 	mttc0	k1,c0_watchhi
0+06dc <text_label\+0x6dc> 227b 0f78 	mttc0	k1,c0_watchhi,1
0+06e0 <text_label\+0x6e0> 227b 1778 	mttc0	k1,c0_watchhi,2
0+06e4 <text_label\+0x6e4> 227b 1f78 	mttc0	k1,c0_watchhi,3
0+06e8 <text_label\+0x6e8> 227b 2778 	mttc0	k1,c0_watchhi,4
0+06ec <text_label\+0x6ec> 227b 2f78 	mttc0	k1,c0_watchhi,5
0+06f0 <text_label\+0x6f0> 227b 3778 	mttc0	k1,c0_watchhi,6
0+06f4 <text_label\+0x6f4> 227b 3f78 	mttc0	k1,c0_watchhi,7
0+06f8 <text_label\+0x6f8> 229b 0778 	mttc0	k1,c0_xcontext
0+06fc <text_label\+0x6fc> 229b 0f78 	mttc0	k1,\$20,1
0+0700 <text_label\+0x700> 229b 1778 	mttc0	k1,\$20,2
0+0704 <text_label\+0x704> 229b 1f78 	mttc0	k1,\$20,3
0+0708 <text_label\+0x708> 229b 2778 	mttc0	k1,\$20,4
0+070c <text_label\+0x70c> 229b 2f78 	mttc0	k1,\$20,5
0+0710 <text_label\+0x710> 229b 3778 	mttc0	k1,\$20,6
0+0714 <text_label\+0x714> 229b 3f78 	mttc0	k1,\$20,7
0+0718 <text_label\+0x718> 22bb 0778 	mttc0	k1,\$21
0+071c <text_label\+0x71c> 22bb 0f78 	mttc0	k1,\$21,1
0+0720 <text_label\+0x720> 22bb 1778 	mttc0	k1,\$21,2
0+0724 <text_label\+0x724> 22bb 1f78 	mttc0	k1,\$21,3
0+0728 <text_label\+0x728> 22bb 2778 	mttc0	k1,\$21,4
0+072c <text_label\+0x72c> 22bb 2f78 	mttc0	k1,\$21,5
0+0730 <text_label\+0x730> 22bb 3778 	mttc0	k1,\$21,6
0+0734 <text_label\+0x734> 22bb 3f78 	mttc0	k1,\$21,7
0+0738 <text_label\+0x738> 22db 0778 	mttc0	k1,\$22
0+073c <text_label\+0x73c> 22db 0f78 	mttc0	k1,\$22,1
0+0740 <text_label\+0x740> 22db 1778 	mttc0	k1,\$22,2
0+0744 <text_label\+0x744> 22db 1f78 	mttc0	k1,\$22,3
0+0748 <text_label\+0x748> 22db 2778 	mttc0	k1,\$22,4
0+074c <text_label\+0x74c> 22db 2f78 	mttc0	k1,\$22,5
0+0750 <text_label\+0x750> 22db 3778 	mttc0	k1,\$22,6
0+0754 <text_label\+0x754> 22db 3f78 	mttc0	k1,\$22,7
0+0758 <text_label\+0x758> 22fb 0778 	mttc0	k1,c0_debug
0+075c <text_label\+0x75c> 22fb 0f78 	mttc0	k1,\$23,1
0+0760 <text_label\+0x760> 22fb 1778 	mttc0	k1,\$23,2
0+0764 <text_label\+0x764> 22fb 1f78 	mttc0	k1,\$23,3
0+0768 <text_label\+0x768> 22fb 2778 	mttc0	k1,\$23,4
0+076c <text_label\+0x76c> 22fb 2f78 	mttc0	k1,\$23,5
0+0770 <text_label\+0x770> 22fb 3778 	mttc0	k1,\$23,6
0+0774 <text_label\+0x774> 22fb 3f78 	mttc0	k1,\$23,7
0+0778 <text_label\+0x778> 231b 0778 	mttc0	k1,c0_depc
0+077c <text_label\+0x77c> 231b 0f78 	mttc0	k1,\$24,1
0+0780 <text_label\+0x780> 231b 1778 	mttc0	k1,\$24,2
0+0784 <text_label\+0x784> 231b 1f78 	mttc0	k1,\$24,3
0+0788 <text_label\+0x788> 231b 2778 	mttc0	k1,\$24,4
0+078c <text_label\+0x78c> 231b 2f78 	mttc0	k1,\$24,5
0+0790 <text_label\+0x790> 231b 3778 	mttc0	k1,\$24,6
0+0794 <text_label\+0x794> 231b 3f78 	mttc0	k1,\$24,7
0+0798 <text_label\+0x798> 233b 0778 	mttc0	k1,c0_perfcnt
0+079c <text_label\+0x79c> 233b 0f78 	mttc0	k1,c0_perfcnt,1
0+07a0 <text_label\+0x7a0> 233b 1778 	mttc0	k1,c0_perfcnt,2
0+07a4 <text_label\+0x7a4> 233b 1f78 	mttc0	k1,c0_perfcnt,3
0+07a8 <text_label\+0x7a8> 233b 2778 	mttc0	k1,c0_perfcnt,4
0+07ac <text_label\+0x7ac> 233b 2f78 	mttc0	k1,c0_perfcnt,5
0+07b0 <text_label\+0x7b0> 233b 3778 	mttc0	k1,c0_perfcnt,6
0+07b4 <text_label\+0x7b4> 233b 3f78 	mttc0	k1,c0_perfcnt,7
0+07b8 <text_label\+0x7b8> 235b 0778 	mttc0	k1,c0_errctl
0+07bc <text_label\+0x7bc> 235b 0f78 	mttc0	k1,\$26,1
0+07c0 <text_label\+0x7c0> 235b 1778 	mttc0	k1,\$26,2
0+07c4 <text_label\+0x7c4> 235b 1f78 	mttc0	k1,\$26,3
0+07c8 <text_label\+0x7c8> 235b 2778 	mttc0	k1,\$26,4
0+07cc <text_label\+0x7cc> 235b 2f78 	mttc0	k1,\$26,5
0+07d0 <text_label\+0x7d0> 235b 3778 	mttc0	k1,\$26,6
0+07d4 <text_label\+0x7d4> 235b 3f78 	mttc0	k1,\$26,7
0+07d8 <text_label\+0x7d8> 237b 0778 	mttc0	k1,c0_cacheerr
0+07dc <text_label\+0x7dc> 237b 0f78 	mttc0	k1,c0_cacheerr,1
0+07e0 <text_label\+0x7e0> 237b 1778 	mttc0	k1,c0_cacheerr,2
0+07e4 <text_label\+0x7e4> 237b 1f78 	mttc0	k1,c0_cacheerr,3
0+07e8 <text_label\+0x7e8> 237b 2778 	mttc0	k1,\$27,4
0+07ec <text_label\+0x7ec> 237b 2f78 	mttc0	k1,\$27,5
0+07f0 <text_label\+0x7f0> 237b 3778 	mttc0	k1,\$27,6
0+07f4 <text_label\+0x7f4> 237b 3f78 	mttc0	k1,\$27,7
0+07f8 <text_label\+0x7f8> 239b 0778 	mttc0	k1,c0_taglo
0+07fc <text_label\+0x7fc> 239b 0f78 	mttc0	k1,c0_datalo
0+0800 <text_label\+0x800> 239b 1778 	mttc0	k1,\$28,2
0+0804 <text_label\+0x804> 239b 1f78 	mttc0	k1,\$28,3
0+0808 <text_label\+0x808> 239b 2778 	mttc0	k1,\$28,4
0+080c <text_label\+0x80c> 239b 2f78 	mttc0	k1,\$28,5
0+0810 <text_label\+0x810> 239b 3778 	mttc0	k1,\$28,6
0+0814 <text_label\+0x814> 239b 3f78 	mttc0	k1,\$28,7
0+0818 <text_label\+0x818> 23bb 0778 	mttc0	k1,c0_taghi
0+081c <text_label\+0x81c> 23bb 0f78 	mttc0	k1,c0_datahi
0+0820 <text_label\+0x820> 23bb 1778 	mttc0	k1,\$29,2
0+0824 <text_label\+0x824> 23bb 1f78 	mttc0	k1,\$29,3
0+0828 <text_label\+0x828> 23bb 2778 	mttc0	k1,\$29,4
0+082c <text_label\+0x82c> 23bb 2f78 	mttc0	k1,\$29,5
0+0830 <text_label\+0x830> 23bb 3778 	mttc0	k1,\$29,6
0+0834 <text_label\+0x834> 23bb 3f78 	mttc0	k1,\$29,7
0+0838 <text_label\+0x838> 23db 0778 	mttc0	k1,c0_errorepc
0+083c <text_label\+0x83c> 23db 0f78 	mttc0	k1,\$30,1
0+0840 <text_label\+0x840> 23db 1778 	mttc0	k1,\$30,2
0+0844 <text_label\+0x844> 23db 1f78 	mttc0	k1,\$30,3
0+0848 <text_label\+0x848> 23db 2778 	mttc0	k1,\$30,4
0+084c <text_label\+0x84c> 23db 2f78 	mttc0	k1,\$30,5
0+0850 <text_label\+0x850> 23db 3778 	mttc0	k1,\$30,6
0+0854 <text_label\+0x854> 23db 3f78 	mttc0	k1,\$30,7
0+0858 <text_label\+0x858> 23fb 0778 	mttc0	k1,c0_desave
0+085c <text_label\+0x85c> 23fb 0f78 	mttc0	k1,\$31,1
0+0860 <text_label\+0x860> 23fb 1778 	mttc0	k1,\$31,2
0+0864 <text_label\+0x864> 23fb 1f78 	mttc0	k1,\$31,3
0+0868 <text_label\+0x868> 23fb 2778 	mttc0	k1,\$31,4
0+086c <text_label\+0x86c> 23fb 2f78 	mttc0	k1,\$31,5
0+0870 <text_label\+0x870> 23fb 3778 	mttc0	k1,\$31,6
0+0874 <text_label\+0x874> 23fb 3f78 	mttc0	k1,\$31,7
0+0878 <text_label\+0x878> 23bc 8778 	mttgpr	gp,sp
0+087c <text_label\+0x87c> 201d 8f78 	mttlo	sp
0+0880 <text_label\+0x880> 219e 8f78 	mttlo	s8,\$ac3
0+0884 <text_label\+0x884> 203f 8f78 	mtthi	ra
0+0888 <text_label\+0x888> 2020 8f78 	mtthi	zero
0+088c <text_label\+0x88c> 2041 8f78 	mttacx	at
0+0890 <text_label\+0x890> 20c2 8f78 	mttacx	v0,\$ac1
0+0894 <text_label\+0x894> 2203 8f78 	mttdsp	v1
0+0898 <text_label\+0x898> 20a4 9778 	mttc1	a0,\$f5
0+089c <text_label\+0x89c> 20c5 9778 	mttc1	a1,\$f6
0+08a0 <text_label\+0x8a0> 2106 d778 	mtthc1	a2,\$f8
0+08a4 <text_label\+0x8a4> 2147 d778 	mtthc1	a3,\$f10
0+08a8 <text_label\+0x8a8> 2128 9f78 	cttc1	t0,\$9
0+08ac <text_label\+0x8ac> 2149 9f78 	cttc1	t1,\$10
0+08b0 <text_label\+0x8b0> 216a a778 	mttc2	t2,\$11
0+08b4 <text_label\+0x8b4> 218b e778 	mtthc2	t3,\$12
0+08b8 <text_label\+0x8b8> 21ac af78 	cttc2	t4,\$13
0+08bc <text_label\+0x8bc> 21ae 0378 	mftc0	t5,c0_epc
0+08c0 <text_label\+0x8c0> 21ae 0b78 	mftc0	t5,\$14,1
0+08c4 <text_label\+0x8c4> 21ae 1378 	mftc0	t5,\$14,2
0+08c8 <text_label\+0x8c8> 21ae 1b78 	mftc0	t5,\$14,3
0+08cc <text_label\+0x8cc> 21ae 2378 	mftc0	t5,\$14,4
0+08d0 <text_label\+0x8d0> 21ae 2b78 	mftc0	t5,\$14,5
0+08d4 <text_label\+0x8d4> 21ae 3378 	mftc0	t5,\$14,6
0+08d8 <text_label\+0x8d8> 21ae 3b78 	mftc0	t5,\$14,7
0+08dc <text_label\+0x8dc> 21ae 4378 	mftr	t5,t6,0,0,1
0+08e0 <text_label\+0x8e0> 21ae 4b78 	mftr	t5,t6,0,1,1
0+08e4 <text_label\+0x8e4> 21ae 5378 	mftr	t5,t6,0,2,1
0+08e8 <text_label\+0x8e8> 21ae 5b78 	mftr	t5,t6,0,3,1
0+08ec <text_label\+0x8ec> 21ae 6378 	mftr	t5,t6,0,4,1
0+08f0 <text_label\+0x8f0> 21ae 6b78 	mftr	t5,t6,0,5,1
0+08f4 <text_label\+0x8f4> 21ae 7378 	mftr	t5,t6,0,6,1
0+08f8 <text_label\+0x8f8> 21ae 7b78 	mftr	t5,t6,0,7,1
0+08fc <text_label\+0x8fc> 21ae 8378 	mftgpr	t5,t6
0+0900 <text_label\+0x900> 21ae 8b78 	mftacx	t5,\$ac3
0+0904 <text_label\+0x904> 21ae 9378 	mftc1	t5,\$f14
0+0908 <text_label\+0x908> 21ae 9b78 	cftc1	t5,\$14
0+090c <text_label\+0x90c> 21ae a378 	mftc2	t5,\$14
0+0910 <text_label\+0x910> 21ae ab78 	cftc2	t5,\$14
0+0914 <text_label\+0x914> 21ae b378 	mftr	t5,t6,1,6,0
0+0918 <text_label\+0x918> 21ae bb78 	mftr	t5,t6,1,7,0
0+091c <text_label\+0x91c> 21ae c378 	mftr	t5,t6,1,0,1
0+0920 <text_label\+0x920> 21ae cb78 	mftr	t5,t6,1,1,1
0+0924 <text_label\+0x924> 21ae d378 	mfthc1	t5,\$f14
0+0928 <text_label\+0x928> 21ae db78 	mftr	t5,t6,1,3,1
0+092c <text_label\+0x92c> 21ae e378 	mfthc2	t5,\$14
0+0930 <text_label\+0x930> 21ae eb78 	mftr	t5,t6,1,5,1
0+0934 <text_label\+0x934> 21ae f378 	mftr	t5,t6,1,6,1
0+0938 <text_label\+0x938> 21ae fb78 	mftr	t5,t6,1,7,1
0+093c <text_label\+0x93c> 21cd 0778 	mttc0	t5,c0_epc
0+0940 <text_label\+0x940> 21cd 0f78 	mttc0	t5,\$14,1
0+0944 <text_label\+0x944> 21cd 1778 	mttc0	t5,\$14,2
0+0948 <text_label\+0x948> 21cd 1f78 	mttc0	t5,\$14,3
0+094c <text_label\+0x94c> 21cd 2778 	mttc0	t5,\$14,4
0+0950 <text_label\+0x950> 21cd 2f78 	mttc0	t5,\$14,5
0+0954 <text_label\+0x954> 21cd 3778 	mttc0	t5,\$14,6
0+0958 <text_label\+0x958> 21cd 3f78 	mttc0	t5,\$14,7
0+095c <text_label\+0x95c> 21cd 4778 	mttr	t5,t6,0,0,1
0+0960 <text_label\+0x960> 21cd 4f78 	mttr	t5,t6,0,1,1
0+0964 <text_label\+0x964> 21cd 5778 	mttr	t5,t6,0,2,1
0+0968 <text_label\+0x968> 21cd 5f78 	mttr	t5,t6,0,3,1
0+096c <text_label\+0x96c> 21cd 6778 	mttr	t5,t6,0,4,1
0+0970 <text_label\+0x970> 21cd 6f78 	mttr	t5,t6,0,5,1
0+0974 <text_label\+0x974> 21cd 7778 	mttr	t5,t6,0,6,1
0+0978 <text_label\+0x978> 21cd 7f78 	mttr	t5,t6,0,7,1
0+097c <text_label\+0x97c> 21cd 8778 	mttgpr	t5,t6
0+0980 <text_label\+0x980> 21cd 8f78 	mttacx	t5,\$ac3
0+0984 <text_label\+0x984> 21cd 9778 	mttc1	t5,\$f14
0+0988 <text_label\+0x988> 21cd 9f78 	cttc1	t5,\$14
0+098c <text_label\+0x98c> 21cd a778 	mttc2	t5,\$14
0+0990 <text_label\+0x990> 21cd af78 	cttc2	t5,\$14
0+0994 <text_label\+0x994> 21cd b778 	mttr	t5,t6,1,6,0
0+0998 <text_label\+0x998> 21cd bf78 	mttr	t5,t6,1,7,0
0+099c <text_label\+0x99c> 21cd c778 	mttr	t5,t6,1,0,1
0+09a0 <text_label\+0x9a0> 21cd cf78 	mttr	t5,t6,1,1,1
0+09a4 <text_label\+0x9a4> 21cd d778 	mtthc1	t5,\$f14
0+09a8 <text_label\+0x9a8> 21cd df78 	mttr	t5,t6,1,3,1
0+09ac <text_label\+0x9ac> 21cd e778 	mtthc2	t5,\$14
0+09b0 <text_label\+0x9b0> 21cd ef78 	mttr	t5,t6,1,5,1
0+09b4 <text_label\+0x9b4> 21cd f778 	mttr	t5,t6,1,6,1
0+09b8 <text_label\+0x9b8> 21cd ff78 	mttr	t5,t6,1,7,1
0+09bc <text_label\+0x9bc> 8000 c005 	pause
	...
