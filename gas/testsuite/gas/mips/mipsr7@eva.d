#objdump: -dr -Mgpr-names=numeric --show-raw-insn
#name: nanoMIPS EVA
#as: -meva
#source: eva.s

.*: +file format .*mips.*

Disassembly of section \.text:

00000000 <test_eva>:
[ 0-9a-f]+:	a402 9200 	lbue	\$0,-256\(\$2\)
[ 0-9a-f]+:	a460 9200 	lbue	\$3,-256\(\$0\)
[ 0-9a-f]+:	a485 12ff 	lbue	\$4,255\(\$5\)
[ 0-9a-f]+:	a4c0 12ff 	lbue	\$6,255\(\$0\)
[ 0-9a-f]+:	8028 8101 	addiu	\$1,\$8,-257
[ 0-9a-f]+:	a4e1 1200 	lbue	\$7,0\(\$1\)
[ 0-9a-f]+:	8020 8101 	li	\$1,-257
[ 0-9a-f]+:	a521 1200 	lbue	\$9,0\(\$1\)
[ 0-9a-f]+:	002b 0100 	addiu	\$1,\$11,256
[ 0-9a-f]+:	a541 1200 	lbue	\$10,0\(\$1\)
[ 0-9a-f]+:	0020 0100 	li	\$1,256
[ 0-9a-f]+:	a581 1200 	lbue	\$12,0\(\$1\)
[ 0-9a-f]+:	802e 8200 	addiu	\$1,\$14,-512
[ 0-9a-f]+:	a5a1 1200 	lbue	\$13,0\(\$1\)
[ 0-9a-f]+:	8020 8200 	li	\$1,-512
[ 0-9a-f]+:	a5e1 1200 	lbue	\$15,0\(\$1\)
[ 0-9a-f]+:	0031 01ff 	addiu	\$1,\$17,511
[ 0-9a-f]+:	a601 1200 	lbue	\$16,0\(\$1\)
[ 0-9a-f]+:	0020 01ff 	li	\$1,511
[ 0-9a-f]+:	a641 1200 	lbue	\$18,0\(\$1\)
[ 0-9a-f]+:	8034 8400 	addiu	\$1,\$20,-1024
[ 0-9a-f]+:	a661 1200 	lbue	\$19,0\(\$1\)
[ 0-9a-f]+:	8020 8400 	li	\$1,-1024
[ 0-9a-f]+:	a6a1 1200 	lbue	\$21,0\(\$1\)
[ 0-9a-f]+:	0037 03ff 	addiu	\$1,\$23,1023
[ 0-9a-f]+:	a6c1 1200 	lbue	\$22,0\(\$1\)
[ 0-9a-f]+:	0020 03ff 	li	\$1,1023
[ 0-9a-f]+:	a701 1200 	lbue	\$24,0\(\$1\)
[ 0-9a-f]+:	803a 8800 	addiu	\$1,\$26,-2048
[ 0-9a-f]+:	a721 1200 	lbue	\$25,0\(\$1\)
[ 0-9a-f]+:	8020 8800 	li	\$1,-2048
[ 0-9a-f]+:	a761 1200 	lbue	\$27,0\(\$1\)
[ 0-9a-f]+:	003d 07ff 	addiu	\$1,\$29,2047
[ 0-9a-f]+:	a781 1200 	lbue	\$28,0\(\$1\)
[ 0-9a-f]+:	0020 07ff 	li	\$1,2047
[ 0-9a-f]+:	a7c1 1200 	lbue	\$30,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	a7e1 1200 	lbue	\$31,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	a441 1200 	lbue	\$2,0\(\$1\)
[ 0-9a-f]+:	0024 0fff 	addiu	\$1,\$4,4095
[ 0-9a-f]+:	a461 1200 	lbue	\$3,0\(\$1\)
[ 0-9a-f]+:	0020 0fff 	li	\$1,4095
[ 0-9a-f]+:	a4a1 1200 	lbue	\$5,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	20e1 0950 	addu	\$1,\$1,\$7
[ 0-9a-f]+:	a4c1 1200 	lbue	\$6,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a501 1200 	lbue	\$8,0\(\$1\)
[ 0-9a-f]+:	002a 7fff 	addiu	\$1,\$10,32767
[ 0-9a-f]+:	a521 1200 	lbue	\$9,0\(\$1\)
[ 0-9a-f]+:	0020 7fff 	li	\$1,32767
[ 0-9a-f]+:	a561 1200 	lbue	\$11,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	21a1 0950 	addu	\$1,\$1,\$13
[ 0-9a-f]+:	a581 92ff 	lbue	\$12,-1\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a5c1 92ff 	lbue	\$14,-1\(\$1\)
[ 0-9a-f]+:	0030 8000 	addiu	\$1,\$16,32768
[ 0-9a-f]+:	a5e1 1200 	lbue	\$15,0\(\$1\)
[ 0-9a-f]+:	0020 8000 	li	\$1,32768
[ 0-9a-f]+:	a621 1200 	lbue	\$17,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	2261 0950 	addu	\$1,\$1,\$19
[ 0-9a-f]+:	a641 1200 	lbue	\$18,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a681 1200 	lbue	\$20,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	22c1 0950 	addu	\$1,\$1,\$22
[ 0-9a-f]+:	a6a1 92ff 	lbue	\$21,-1\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a6e1 92ff 	lbue	\$23,-1\(\$1\)
[ 0-9a-f]+:	a719 1200 	lbue	\$24,0\(\$25\)
[ 0-9a-f]+:	6020 0000 	li	\$1,0x0
[ 0-9a-f]+:	0000 
			[0-9a-f]+: R_MICROMIPS_32	MYDATA
[ 0-9a-f]+:	a741 1200 	lbue	\$26,0\(\$1\)
[ 0-9a-f]+:	a77c b200 	lhue	\$27,-256\(\$28\)
[ 0-9a-f]+:	a7a0 b200 	lhue	\$29,-256\(\$0\)
[ 0-9a-f]+:	a7df 32ff 	lhue	\$30,255\(\$31\)
[ 0-9a-f]+:	a400 32ff 	lhue	\$0,255\(\$0\)
[ 0-9a-f]+:	8023 8101 	addiu	\$1,\$3,-257
[ 0-9a-f]+:	a441 3200 	lhue	\$2,0\(\$1\)
[ 0-9a-f]+:	8020 8101 	li	\$1,-257
[ 0-9a-f]+:	a481 3200 	lhue	\$4,0\(\$1\)
[ 0-9a-f]+:	0026 0100 	addiu	\$1,\$6,256
[ 0-9a-f]+:	a4a1 3200 	lhue	\$5,0\(\$1\)
[ 0-9a-f]+:	0020 0100 	li	\$1,256
[ 0-9a-f]+:	a4e1 3200 	lhue	\$7,0\(\$1\)
[ 0-9a-f]+:	8029 8200 	addiu	\$1,\$9,-512
[ 0-9a-f]+:	a501 3200 	lhue	\$8,0\(\$1\)
[ 0-9a-f]+:	8020 8200 	li	\$1,-512
[ 0-9a-f]+:	a541 3200 	lhue	\$10,0\(\$1\)
[ 0-9a-f]+:	002c 01ff 	addiu	\$1,\$12,511
[ 0-9a-f]+:	a561 3200 	lhue	\$11,0\(\$1\)
[ 0-9a-f]+:	0020 01ff 	li	\$1,511
[ 0-9a-f]+:	a5a1 3200 	lhue	\$13,0\(\$1\)
[ 0-9a-f]+:	802f 8400 	addiu	\$1,\$15,-1024
[ 0-9a-f]+:	a5c1 3200 	lhue	\$14,0\(\$1\)
[ 0-9a-f]+:	8020 8400 	li	\$1,-1024
[ 0-9a-f]+:	a601 3200 	lhue	\$16,0\(\$1\)
[ 0-9a-f]+:	0032 03ff 	addiu	\$1,\$18,1023
[ 0-9a-f]+:	a621 3200 	lhue	\$17,0\(\$1\)
[ 0-9a-f]+:	0020 03ff 	li	\$1,1023
[ 0-9a-f]+:	a661 3200 	lhue	\$19,0\(\$1\)
[ 0-9a-f]+:	8035 8800 	addiu	\$1,\$21,-2048
[ 0-9a-f]+:	a681 3200 	lhue	\$20,0\(\$1\)
[ 0-9a-f]+:	8020 8800 	li	\$1,-2048
[ 0-9a-f]+:	a6c1 3200 	lhue	\$22,0\(\$1\)
[ 0-9a-f]+:	0038 07ff 	addiu	\$1,\$24,2047
[ 0-9a-f]+:	a6e1 3200 	lhue	\$23,0\(\$1\)
[ 0-9a-f]+:	0020 07ff 	li	\$1,2047
[ 0-9a-f]+:	a721 3200 	lhue	\$25,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	2361 0950 	addu	\$1,\$1,\$27
[ 0-9a-f]+:	a741 3200 	lhue	\$26,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	a781 3200 	lhue	\$28,0\(\$1\)
[ 0-9a-f]+:	003e 0fff 	addiu	\$1,\$30,4095
[ 0-9a-f]+:	a7a1 3200 	lhue	\$29,0\(\$1\)
[ 0-9a-f]+:	0020 0fff 	li	\$1,4095
[ 0-9a-f]+:	a7e1 3200 	lhue	\$31,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	2041 0950 	addu	\$1,\$1,\$2
[ 0-9a-f]+:	a401 3200 	lhue	\$0,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a461 3200 	lhue	\$3,0\(\$1\)
[ 0-9a-f]+:	0025 7fff 	addiu	\$1,\$5,32767
[ 0-9a-f]+:	a481 3200 	lhue	\$4,0\(\$1\)
[ 0-9a-f]+:	0020 7fff 	li	\$1,32767
[ 0-9a-f]+:	a4c1 3200 	lhue	\$6,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	2101 0950 	addu	\$1,\$1,\$8
[ 0-9a-f]+:	a4e1 b2ff 	lhue	\$7,-1\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a521 b2ff 	lhue	\$9,-1\(\$1\)
[ 0-9a-f]+:	002b 8000 	addiu	\$1,\$11,32768
[ 0-9a-f]+:	a541 3200 	lhue	\$10,0\(\$1\)
[ 0-9a-f]+:	0020 8000 	li	\$1,32768
[ 0-9a-f]+:	a581 3200 	lhue	\$12,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	21c1 0950 	addu	\$1,\$1,\$14
[ 0-9a-f]+:	a5a1 3200 	lhue	\$13,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a5e1 3200 	lhue	\$15,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	2221 0950 	addu	\$1,\$1,\$17
[ 0-9a-f]+:	a601 b2ff 	lhue	\$16,-1\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a641 b2ff 	lhue	\$18,-1\(\$1\)
[ 0-9a-f]+:	a674 3200 	lhue	\$19,0\(\$20\)
[ 0-9a-f]+:	6020 0000 	li	\$1,0x0
[ 0-9a-f]+:	0000 
			[0-9a-f]+: R_MICROMIPS_32	MYDATA
[ 0-9a-f]+:	a6a1 3200 	lhue	\$21,0\(\$1\)
[ 0-9a-f]+:	a6d7 8200 	lbe	\$22,-256\(\$23\)
[ 0-9a-f]+:	a700 8200 	lbe	\$24,-256\(\$0\)
[ 0-9a-f]+:	a73a 02ff 	lbe	\$25,255\(\$26\)
[ 0-9a-f]+:	a760 02ff 	lbe	\$27,255\(\$0\)
[ 0-9a-f]+:	803d 8101 	addiu	\$1,\$29,-257
[ 0-9a-f]+:	a781 0200 	lbe	\$28,0\(\$1\)
[ 0-9a-f]+:	8020 8101 	li	\$1,-257
[ 0-9a-f]+:	a7c1 0200 	lbe	\$30,0\(\$1\)
[ 0-9a-f]+:	0020 0100 	li	\$1,256
[ 0-9a-f]+:	a7e1 0200 	lbe	\$31,0\(\$1\)
[ 0-9a-f]+:	0020 0100 	li	\$1,256
[ 0-9a-f]+:	a441 0200 	lbe	\$2,0\(\$1\)
[ 0-9a-f]+:	8024 8200 	addiu	\$1,\$4,-512
[ 0-9a-f]+:	a461 0200 	lbe	\$3,0\(\$1\)
[ 0-9a-f]+:	8020 8200 	li	\$1,-512
[ 0-9a-f]+:	a4a1 0200 	lbe	\$5,0\(\$1\)
[ 0-9a-f]+:	0027 01ff 	addiu	\$1,\$7,511
[ 0-9a-f]+:	a4c1 0200 	lbe	\$6,0\(\$1\)
[ 0-9a-f]+:	0020 01ff 	li	\$1,511
[ 0-9a-f]+:	a501 0200 	lbe	\$8,0\(\$1\)
[ 0-9a-f]+:	802a 8400 	addiu	\$1,\$10,-1024
[ 0-9a-f]+:	a521 0200 	lbe	\$9,0\(\$1\)
[ 0-9a-f]+:	8020 8400 	li	\$1,-1024
[ 0-9a-f]+:	a561 0200 	lbe	\$11,0\(\$1\)
[ 0-9a-f]+:	002d 03ff 	addiu	\$1,\$13,1023
[ 0-9a-f]+:	a581 0200 	lbe	\$12,0\(\$1\)
[ 0-9a-f]+:	0020 03ff 	li	\$1,1023
[ 0-9a-f]+:	a5c1 0200 	lbe	\$14,0\(\$1\)
[ 0-9a-f]+:	8030 8800 	addiu	\$1,\$16,-2048
[ 0-9a-f]+:	a5e1 0200 	lbe	\$15,0\(\$1\)
[ 0-9a-f]+:	8020 8800 	li	\$1,-2048
[ 0-9a-f]+:	a621 0200 	lbe	\$17,0\(\$1\)
[ 0-9a-f]+:	0033 07ff 	addiu	\$1,\$19,2047
[ 0-9a-f]+:	a641 0200 	lbe	\$18,0\(\$1\)
[ 0-9a-f]+:	0020 07ff 	li	\$1,2047
[ 0-9a-f]+:	a681 0200 	lbe	\$20,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	22c1 0950 	addu	\$1,\$1,\$22
[ 0-9a-f]+:	a6a1 0200 	lbe	\$21,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	a6e1 0200 	lbe	\$23,0\(\$1\)
[ 0-9a-f]+:	0039 0fff 	addiu	\$1,\$25,4095
[ 0-9a-f]+:	a701 0200 	lbe	\$24,0\(\$1\)
[ 0-9a-f]+:	0020 0fff 	li	\$1,4095
[ 0-9a-f]+:	a741 0200 	lbe	\$26,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	2381 0950 	addu	\$1,\$1,\$28
[ 0-9a-f]+:	a761 0200 	lbe	\$27,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a7a1 0200 	lbe	\$29,0\(\$1\)
[ 0-9a-f]+:	003f 7fff 	addiu	\$1,\$31,32767
[ 0-9a-f]+:	a7c1 0200 	lbe	\$30,0\(\$1\)
[ 0-9a-f]+:	0020 7fff 	li	\$1,32767
[ 0-9a-f]+:	a401 0200 	lbe	\$0,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	2061 0950 	addu	\$1,\$1,\$3
[ 0-9a-f]+:	a441 82ff 	lbe	\$2,-1\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a481 82ff 	lbe	\$4,-1\(\$1\)
[ 0-9a-f]+:	0026 8000 	addiu	\$1,\$6,32768
[ 0-9a-f]+:	a4a1 0200 	lbe	\$5,0\(\$1\)
[ 0-9a-f]+:	0020 8000 	li	\$1,32768
[ 0-9a-f]+:	a4e1 0200 	lbe	\$7,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	2121 0950 	addu	\$1,\$1,\$9
[ 0-9a-f]+:	a501 0200 	lbe	\$8,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a541 0200 	lbe	\$10,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	2181 0950 	addu	\$1,\$1,\$12
[ 0-9a-f]+:	a561 82ff 	lbe	\$11,-1\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a5a1 82ff 	lbe	\$13,-1\(\$1\)
[ 0-9a-f]+:	a5cf 0200 	lbe	\$14,0\(\$15\)
[ 0-9a-f]+:	6020 0000 	li	\$1,0x0
[ 0-9a-f]+:	0000 
			[0-9a-f]+: R_MICROMIPS_32	MYDATA
[ 0-9a-f]+:	a601 0200 	lbe	\$16,0\(\$1\)
[ 0-9a-f]+:	a632 a200 	lhe	\$17,-256\(\$18\)
[ 0-9a-f]+:	a660 a200 	lhe	\$19,-256\(\$0\)
[ 0-9a-f]+:	a695 22ff 	lhe	\$20,255\(\$21\)
[ 0-9a-f]+:	a6c0 22ff 	lhe	\$22,255\(\$0\)
[ 0-9a-f]+:	8038 8101 	addiu	\$1,\$24,-257
[ 0-9a-f]+:	a6e1 2200 	lhe	\$23,0\(\$1\)
[ 0-9a-f]+:	8020 8101 	li	\$1,-257
[ 0-9a-f]+:	a721 2200 	lhe	\$25,0\(\$1\)
[ 0-9a-f]+:	003b 0100 	addiu	\$1,\$27,256
[ 0-9a-f]+:	a741 2200 	lhe	\$26,0\(\$1\)
[ 0-9a-f]+:	0020 0100 	li	\$1,256
[ 0-9a-f]+:	a781 2200 	lhe	\$28,0\(\$1\)
[ 0-9a-f]+:	803e 8200 	addiu	\$1,\$30,-512
[ 0-9a-f]+:	a7a1 2200 	lhe	\$29,0\(\$1\)
[ 0-9a-f]+:	8020 8200 	li	\$1,-512
[ 0-9a-f]+:	a7e1 2200 	lhe	\$31,0\(\$1\)
[ 0-9a-f]+:	0022 01ff 	addiu	\$1,\$2,511
[ 0-9a-f]+:	a401 2200 	lhe	\$0,0\(\$1\)
[ 0-9a-f]+:	0020 01ff 	li	\$1,511
[ 0-9a-f]+:	a461 2200 	lhe	\$3,0\(\$1\)
[ 0-9a-f]+:	8025 8400 	addiu	\$1,\$5,-1024
[ 0-9a-f]+:	a481 2200 	lhe	\$4,0\(\$1\)
[ 0-9a-f]+:	8020 8400 	li	\$1,-1024
[ 0-9a-f]+:	a4c1 2200 	lhe	\$6,0\(\$1\)
[ 0-9a-f]+:	0028 03ff 	addiu	\$1,\$8,1023
[ 0-9a-f]+:	a4e1 2200 	lhe	\$7,0\(\$1\)
[ 0-9a-f]+:	0020 03ff 	li	\$1,1023
[ 0-9a-f]+:	a521 2200 	lhe	\$9,0\(\$1\)
[ 0-9a-f]+:	802b 8800 	addiu	\$1,\$11,-2048
[ 0-9a-f]+:	a541 2200 	lhe	\$10,0\(\$1\)
[ 0-9a-f]+:	8020 8800 	li	\$1,-2048
[ 0-9a-f]+:	a581 2200 	lhe	\$12,0\(\$1\)
[ 0-9a-f]+:	002e 07ff 	addiu	\$1,\$14,2047
[ 0-9a-f]+:	a5a1 2200 	lhe	\$13,0\(\$1\)
[ 0-9a-f]+:	0020 07ff 	li	\$1,2047
[ 0-9a-f]+:	a5e1 2200 	lhe	\$15,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	2221 0950 	addu	\$1,\$1,\$17
[ 0-9a-f]+:	a601 2200 	lhe	\$16,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	a641 2200 	lhe	\$18,0\(\$1\)
[ 0-9a-f]+:	0034 0fff 	addiu	\$1,\$20,4095
[ 0-9a-f]+:	a661 2200 	lhe	\$19,0\(\$1\)
[ 0-9a-f]+:	0020 0fff 	li	\$1,4095
[ 0-9a-f]+:	a6a1 2200 	lhe	\$21,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	22e1 0950 	addu	\$1,\$1,\$23
[ 0-9a-f]+:	a6c1 2200 	lhe	\$22,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a701 2200 	lhe	\$24,0\(\$1\)
[ 0-9a-f]+:	003a 7fff 	addiu	\$1,\$26,32767
[ 0-9a-f]+:	a721 2200 	lhe	\$25,0\(\$1\)
[ 0-9a-f]+:	0020 7fff 	li	\$1,32767
[ 0-9a-f]+:	a761 2200 	lhe	\$27,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	23a1 0950 	addu	\$1,\$1,\$29
[ 0-9a-f]+:	a781 a2ff 	lhe	\$28,-1\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a7c1 a2ff 	lhe	\$30,-1\(\$1\)
[ 0-9a-f]+:	0020 8000 	li	\$1,32768
[ 0-9a-f]+:	a7e1 2200 	lhe	\$31,0\(\$1\)
[ 0-9a-f]+:	0020 8000 	li	\$1,32768
[ 0-9a-f]+:	a441 2200 	lhe	\$2,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	2081 0950 	addu	\$1,\$1,\$4
[ 0-9a-f]+:	a461 2200 	lhe	\$3,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a4a1 2200 	lhe	\$5,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	20e1 0950 	addu	\$1,\$1,\$7
[ 0-9a-f]+:	a4c1 a2ff 	lhe	\$6,-1\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a501 a2ff 	lhe	\$8,-1\(\$1\)
[ 0-9a-f]+:	a52a 2200 	lhe	\$9,0\(\$10\)
[ 0-9a-f]+:	6020 0000 	li	\$1,0x0
[ 0-9a-f]+:	0000 
			[0-9a-f]+: R_MICROMIPS_32	MYDATA
[ 0-9a-f]+:	a561 2200 	lhe	\$11,0\(\$1\)
[ 0-9a-f]+:	a58d d200 	lle	\$12,-256\(\$13\)
[ 0-9a-f]+:	a5c0 d200 	lle	\$14,-256\(\$0\)
[ 0-9a-f]+:	a5f0 d2fc 	lle	\$15,-4\(\$16\)
[ 0-9a-f]+:	a620 d2fc 	lle	\$17,-4\(\$0\)
[ 0-9a-f]+:	8033 8101 	addiu	\$1,\$19,-257
[ 0-9a-f]+:	a641 5200 	lle	\$18,0\(\$1\)
[ 0-9a-f]+:	8020 8101 	li	\$1,-257
[ 0-9a-f]+:	a681 5200 	lle	\$20,0\(\$1\)
[ 0-9a-f]+:	0036 0100 	addiu	\$1,\$22,256
[ 0-9a-f]+:	a6a1 5200 	lle	\$21,0\(\$1\)
[ 0-9a-f]+:	0020 0100 	li	\$1,256
[ 0-9a-f]+:	a6e1 5200 	lle	\$23,0\(\$1\)
[ 0-9a-f]+:	8039 8200 	addiu	\$1,\$25,-512
[ 0-9a-f]+:	a701 5200 	lle	\$24,0\(\$1\)
[ 0-9a-f]+:	8020 8200 	li	\$1,-512
[ 0-9a-f]+:	a741 5200 	lle	\$26,0\(\$1\)
[ 0-9a-f]+:	003c 01ff 	addiu	\$1,\$28,511
[ 0-9a-f]+:	a761 5200 	lle	\$27,0\(\$1\)
[ 0-9a-f]+:	0020 01ff 	li	\$1,511
[ 0-9a-f]+:	a7a1 5200 	lle	\$29,0\(\$1\)
[ 0-9a-f]+:	803f 8400 	addiu	\$1,\$31,-1024
[ 0-9a-f]+:	a7c1 5200 	lle	\$30,0\(\$1\)
[ 0-9a-f]+:	8020 8400 	li	\$1,-1024
[ 0-9a-f]+:	a401 5200 	lle	\$0,0\(\$1\)
[ 0-9a-f]+:	0023 03ff 	addiu	\$1,\$3,1023
[ 0-9a-f]+:	a441 5200 	lle	\$2,0\(\$1\)
[ 0-9a-f]+:	0020 03ff 	li	\$1,1023
[ 0-9a-f]+:	a481 5200 	lle	\$4,0\(\$1\)
[ 0-9a-f]+:	8026 8800 	addiu	\$1,\$6,-2048
[ 0-9a-f]+:	a4a1 5200 	lle	\$5,0\(\$1\)
[ 0-9a-f]+:	8020 8800 	li	\$1,-2048
[ 0-9a-f]+:	a4e1 5200 	lle	\$7,0\(\$1\)
[ 0-9a-f]+:	0029 07ff 	addiu	\$1,\$9,2047
[ 0-9a-f]+:	a501 5200 	lle	\$8,0\(\$1\)
[ 0-9a-f]+:	0020 07ff 	li	\$1,2047
[ 0-9a-f]+:	a541 5200 	lle	\$10,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	2181 0950 	addu	\$1,\$1,\$12
[ 0-9a-f]+:	a561 5200 	lle	\$11,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	a5a1 5200 	lle	\$13,0\(\$1\)
[ 0-9a-f]+:	002f 0fff 	addiu	\$1,\$15,4095
[ 0-9a-f]+:	a5c1 5200 	lle	\$14,0\(\$1\)
[ 0-9a-f]+:	0020 0fff 	li	\$1,4095
[ 0-9a-f]+:	a601 5200 	lle	\$16,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	2241 0950 	addu	\$1,\$1,\$18
[ 0-9a-f]+:	a621 5200 	lle	\$17,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a661 5200 	lle	\$19,0\(\$1\)
[ 0-9a-f]+:	0035 7fff 	addiu	\$1,\$21,32767
[ 0-9a-f]+:	a681 5200 	lle	\$20,0\(\$1\)
[ 0-9a-f]+:	0020 7fff 	li	\$1,32767
[ 0-9a-f]+:	a6c1 5200 	lle	\$22,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	2301 0950 	addu	\$1,\$1,\$24
[ 0-9a-f]+:	a6e1 d2fc 	lle	\$23,-4\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a721 d2fc 	lle	\$25,-4\(\$1\)
[ 0-9a-f]+:	003b 8000 	addiu	\$1,\$27,32768
[ 0-9a-f]+:	a741 5200 	lle	\$26,0\(\$1\)
[ 0-9a-f]+:	0020 8000 	li	\$1,32768
[ 0-9a-f]+:	a781 5200 	lle	\$28,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	23c1 0950 	addu	\$1,\$1,\$30
[ 0-9a-f]+:	a7a1 5200 	lle	\$29,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a7e1 5200 	lle	\$31,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	2041 0950 	addu	\$1,\$1,\$2
[ 0-9a-f]+:	a401 d2fc 	lle	\$0,-4\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a461 d2fc 	lle	\$3,-4\(\$1\)
[ 0-9a-f]+:	a485 5200 	lle	\$4,0\(\$5\)
[ 0-9a-f]+:	6020 0000 	li	\$1,0x0
[ 0-9a-f]+:	0000 
			[0-9a-f]+: R_MICROMIPS_32	MYDATA
[ 0-9a-f]+:	a4c1 5200 	lle	\$6,0\(\$1\)
[ 0-9a-f]+:	a4e8 c200 	lwe	\$7,-256\(\$8\)
[ 0-9a-f]+:	a520 c200 	lwe	\$9,-256\(\$0\)
[ 0-9a-f]+:	a54b 42ff 	lwe	\$10,255\(\$11\)
[ 0-9a-f]+:	a580 42ff 	lwe	\$12,255\(\$0\)
[ 0-9a-f]+:	802e 8101 	addiu	\$1,\$14,-257
[ 0-9a-f]+:	a5a1 4200 	lwe	\$13,0\(\$1\)
[ 0-9a-f]+:	8020 8101 	li	\$1,-257
[ 0-9a-f]+:	a5e1 4200 	lwe	\$15,0\(\$1\)
[ 0-9a-f]+:	0031 0100 	addiu	\$1,\$17,256
[ 0-9a-f]+:	a601 4200 	lwe	\$16,0\(\$1\)
[ 0-9a-f]+:	0020 0100 	li	\$1,256
[ 0-9a-f]+:	a641 4200 	lwe	\$18,0\(\$1\)
[ 0-9a-f]+:	8034 8200 	addiu	\$1,\$20,-512
[ 0-9a-f]+:	a661 4200 	lwe	\$19,0\(\$1\)
[ 0-9a-f]+:	8020 8200 	li	\$1,-512
[ 0-9a-f]+:	a6a1 4200 	lwe	\$21,0\(\$1\)
[ 0-9a-f]+:	0037 01ff 	addiu	\$1,\$23,511
[ 0-9a-f]+:	a6c1 4200 	lwe	\$22,0\(\$1\)
[ 0-9a-f]+:	0020 01ff 	li	\$1,511
[ 0-9a-f]+:	a701 4200 	lwe	\$24,0\(\$1\)
[ 0-9a-f]+:	803a 8400 	addiu	\$1,\$26,-1024
[ 0-9a-f]+:	a721 4200 	lwe	\$25,0\(\$1\)
[ 0-9a-f]+:	8020 8400 	li	\$1,-1024
[ 0-9a-f]+:	a761 4200 	lwe	\$27,0\(\$1\)
[ 0-9a-f]+:	003d 03ff 	addiu	\$1,\$29,1023
[ 0-9a-f]+:	a781 4200 	lwe	\$28,0\(\$1\)
[ 0-9a-f]+:	0020 03ff 	li	\$1,1023
[ 0-9a-f]+:	a7c1 4200 	lwe	\$30,0\(\$1\)
[ 0-9a-f]+:	8020 8800 	li	\$1,-2048
[ 0-9a-f]+:	a7e1 4200 	lwe	\$31,0\(\$1\)
[ 0-9a-f]+:	8020 8800 	li	\$1,-2048
[ 0-9a-f]+:	a441 4200 	lwe	\$2,0\(\$1\)
[ 0-9a-f]+:	0024 07ff 	addiu	\$1,\$4,2047
[ 0-9a-f]+:	a461 4200 	lwe	\$3,0\(\$1\)
[ 0-9a-f]+:	0020 07ff 	li	\$1,2047
[ 0-9a-f]+:	a4a1 4200 	lwe	\$5,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	20e1 0950 	addu	\$1,\$1,\$7
[ 0-9a-f]+:	a4c1 4200 	lwe	\$6,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	a501 4200 	lwe	\$8,0\(\$1\)
[ 0-9a-f]+:	002a 0fff 	addiu	\$1,\$10,4095
[ 0-9a-f]+:	a521 4200 	lwe	\$9,0\(\$1\)
[ 0-9a-f]+:	0020 0fff 	li	\$1,4095
[ 0-9a-f]+:	a561 4200 	lwe	\$11,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	21a1 0950 	addu	\$1,\$1,\$13
[ 0-9a-f]+:	a581 4200 	lwe	\$12,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a5c1 4200 	lwe	\$14,0\(\$1\)
[ 0-9a-f]+:	0030 7fff 	addiu	\$1,\$16,32767
[ 0-9a-f]+:	a5e1 4200 	lwe	\$15,0\(\$1\)
[ 0-9a-f]+:	0020 7fff 	li	\$1,32767
[ 0-9a-f]+:	a621 4200 	lwe	\$17,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	2261 0950 	addu	\$1,\$1,\$19
[ 0-9a-f]+:	a641 c2ff 	lwe	\$18,-1\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a681 c2ff 	lwe	\$20,-1\(\$1\)
[ 0-9a-f]+:	0036 8000 	addiu	\$1,\$22,32768
[ 0-9a-f]+:	a6a1 4200 	lwe	\$21,0\(\$1\)
[ 0-9a-f]+:	0020 8000 	li	\$1,32768
[ 0-9a-f]+:	a6e1 4200 	lwe	\$23,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	2321 0950 	addu	\$1,\$1,\$25
[ 0-9a-f]+:	a701 4200 	lwe	\$24,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a741 4200 	lwe	\$26,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	2381 0950 	addu	\$1,\$1,\$28
[ 0-9a-f]+:	a761 c2ff 	lwe	\$27,-1\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a7a1 c2ff 	lwe	\$29,-1\(\$1\)
[ 0-9a-f]+:	a7df 4200 	lwe	\$30,0\(\$31\)
[ 0-9a-f]+:	6020 0000 	li	\$1,0x0
[ 0-9a-f]+:	0000 
			[0-9a-f]+: R_MICROMIPS_32	MYDATA
[ 0-9a-f]+:	a401 4200 	lwe	\$0,0\(\$1\)
[ 0-9a-f]+:	a6f8 8a00 	sbe	\$23,-256\(\$24\)
[ 0-9a-f]+:	a720 8a00 	sbe	\$25,-256\(\$0\)
[ 0-9a-f]+:	a75b 0aff 	sbe	\$26,255\(\$27\)
[ 0-9a-f]+:	a780 0aff 	sbe	\$28,255\(\$0\)
[ 0-9a-f]+:	803e 8101 	addiu	\$1,\$30,-257
[ 0-9a-f]+:	a7a1 0a00 	sbe	\$29,0\(\$1\)
[ 0-9a-f]+:	8020 8101 	li	\$1,-257
[ 0-9a-f]+:	a7e1 0a00 	sbe	\$31,0\(\$1\)
[ 0-9a-f]+:	0022 0100 	addiu	\$1,\$2,256
[ 0-9a-f]+:	a401 0a00 	sbe	\$0,0\(\$1\)
[ 0-9a-f]+:	0020 0100 	li	\$1,256
[ 0-9a-f]+:	a461 0a00 	sbe	\$3,0\(\$1\)
[ 0-9a-f]+:	8025 8200 	addiu	\$1,\$5,-512
[ 0-9a-f]+:	a481 0a00 	sbe	\$4,0\(\$1\)
[ 0-9a-f]+:	8020 8200 	li	\$1,-512
[ 0-9a-f]+:	a4c1 0a00 	sbe	\$6,0\(\$1\)
[ 0-9a-f]+:	0028 01ff 	addiu	\$1,\$8,511
[ 0-9a-f]+:	a4e1 0a00 	sbe	\$7,0\(\$1\)
[ 0-9a-f]+:	0020 01ff 	li	\$1,511
[ 0-9a-f]+:	a521 0a00 	sbe	\$9,0\(\$1\)
[ 0-9a-f]+:	802b 8400 	addiu	\$1,\$11,-1024
[ 0-9a-f]+:	a541 0a00 	sbe	\$10,0\(\$1\)
[ 0-9a-f]+:	8020 8400 	li	\$1,-1024
[ 0-9a-f]+:	a581 0a00 	sbe	\$12,0\(\$1\)
[ 0-9a-f]+:	002e 03ff 	addiu	\$1,\$14,1023
[ 0-9a-f]+:	a5a1 0a00 	sbe	\$13,0\(\$1\)
[ 0-9a-f]+:	0020 03ff 	li	\$1,1023
[ 0-9a-f]+:	a5e1 0a00 	sbe	\$15,0\(\$1\)
[ 0-9a-f]+:	8031 8800 	addiu	\$1,\$17,-2048
[ 0-9a-f]+:	a601 0a00 	sbe	\$16,0\(\$1\)
[ 0-9a-f]+:	8020 8800 	li	\$1,-2048
[ 0-9a-f]+:	a641 0a00 	sbe	\$18,0\(\$1\)
[ 0-9a-f]+:	0034 07ff 	addiu	\$1,\$20,2047
[ 0-9a-f]+:	a661 0a00 	sbe	\$19,0\(\$1\)
[ 0-9a-f]+:	0020 07ff 	li	\$1,2047
[ 0-9a-f]+:	a6a1 0a00 	sbe	\$21,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	22e1 0950 	addu	\$1,\$1,\$23
[ 0-9a-f]+:	a6c1 0a00 	sbe	\$22,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	a701 0a00 	sbe	\$24,0\(\$1\)
[ 0-9a-f]+:	003a 0fff 	addiu	\$1,\$26,4095
[ 0-9a-f]+:	a721 0a00 	sbe	\$25,0\(\$1\)
[ 0-9a-f]+:	0020 0fff 	li	\$1,4095
[ 0-9a-f]+:	a761 0a00 	sbe	\$27,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	23a1 0950 	addu	\$1,\$1,\$29
[ 0-9a-f]+:	a781 0a00 	sbe	\$28,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a7c1 0a00 	sbe	\$30,0\(\$1\)
[ 0-9a-f]+:	0020 7fff 	li	\$1,32767
[ 0-9a-f]+:	a7e1 0a00 	sbe	\$31,0\(\$1\)
[ 0-9a-f]+:	0020 7fff 	li	\$1,32767
[ 0-9a-f]+:	a441 0a00 	sbe	\$2,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	2081 0950 	addu	\$1,\$1,\$4
[ 0-9a-f]+:	a461 8aff 	sbe	\$3,-1\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a4a1 8aff 	sbe	\$5,-1\(\$1\)
[ 0-9a-f]+:	0027 8000 	addiu	\$1,\$7,32768
[ 0-9a-f]+:	a4c1 0a00 	sbe	\$6,0\(\$1\)
[ 0-9a-f]+:	0020 8000 	li	\$1,32768
[ 0-9a-f]+:	a501 0a00 	sbe	\$8,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	2141 0950 	addu	\$1,\$1,\$10
[ 0-9a-f]+:	a521 0a00 	sbe	\$9,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a561 0a00 	sbe	\$11,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	21a1 0950 	addu	\$1,\$1,\$13
[ 0-9a-f]+:	a581 8aff 	sbe	\$12,-1\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a5c1 8aff 	sbe	\$14,-1\(\$1\)
[ 0-9a-f]+:	a5f0 0a00 	sbe	\$15,0\(\$16\)
[ 0-9a-f]+:	6020 0000 	li	\$1,0x0
[ 0-9a-f]+:	0000 
			[0-9a-f]+: R_MICROMIPS_32	MYDATA
[ 0-9a-f]+:	a621 0a00 	sbe	\$17,0\(\$1\)
[ 0-9a-f]+:	a653 da00 	sce	\$18,-256\(\$19\)
[ 0-9a-f]+:	a680 da00 	sce	\$20,-256\(\$0\)
[ 0-9a-f]+:	a6b6 dafc 	sce	\$21,-4\(\$22\)
[ 0-9a-f]+:	a6e0 dafc 	sce	\$23,-4\(\$0\)
[ 0-9a-f]+:	8039 8101 	addiu	\$1,\$25,-257
[ 0-9a-f]+:	a701 5a00 	sce	\$24,0\(\$1\)
[ 0-9a-f]+:	8020 8101 	li	\$1,-257
[ 0-9a-f]+:	a741 5a00 	sce	\$26,0\(\$1\)
[ 0-9a-f]+:	003c 0100 	addiu	\$1,\$28,256
[ 0-9a-f]+:	a761 5a00 	sce	\$27,0\(\$1\)
[ 0-9a-f]+:	0020 0100 	li	\$1,256
[ 0-9a-f]+:	a7a1 5a00 	sce	\$29,0\(\$1\)
[ 0-9a-f]+:	803f 8200 	addiu	\$1,\$31,-512
[ 0-9a-f]+:	a7c1 5a00 	sce	\$30,0\(\$1\)
[ 0-9a-f]+:	8020 8200 	li	\$1,-512
[ 0-9a-f]+:	a401 5a00 	sce	\$0,0\(\$1\)
[ 0-9a-f]+:	0023 01ff 	addiu	\$1,\$3,511
[ 0-9a-f]+:	a441 5a00 	sce	\$2,0\(\$1\)
[ 0-9a-f]+:	0020 01ff 	li	\$1,511
[ 0-9a-f]+:	a481 5a00 	sce	\$4,0\(\$1\)
[ 0-9a-f]+:	8026 8400 	addiu	\$1,\$6,-1024
[ 0-9a-f]+:	a4a1 5a00 	sce	\$5,0\(\$1\)
[ 0-9a-f]+:	8020 8400 	li	\$1,-1024
[ 0-9a-f]+:	a4e1 5a00 	sce	\$7,0\(\$1\)
[ 0-9a-f]+:	0029 03ff 	addiu	\$1,\$9,1023
[ 0-9a-f]+:	a501 5a00 	sce	\$8,0\(\$1\)
[ 0-9a-f]+:	0020 03ff 	li	\$1,1023
[ 0-9a-f]+:	a541 5a00 	sce	\$10,0\(\$1\)
[ 0-9a-f]+:	802c 8800 	addiu	\$1,\$12,-2048
[ 0-9a-f]+:	a561 5a00 	sce	\$11,0\(\$1\)
[ 0-9a-f]+:	8020 8800 	li	\$1,-2048
[ 0-9a-f]+:	a5a1 5a00 	sce	\$13,0\(\$1\)
[ 0-9a-f]+:	002f 07ff 	addiu	\$1,\$15,2047
[ 0-9a-f]+:	a5c1 5a00 	sce	\$14,0\(\$1\)
[ 0-9a-f]+:	0020 07ff 	li	\$1,2047
[ 0-9a-f]+:	a601 5a00 	sce	\$16,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	2241 0950 	addu	\$1,\$1,\$18
[ 0-9a-f]+:	a621 5a00 	sce	\$17,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	a661 5a00 	sce	\$19,0\(\$1\)
[ 0-9a-f]+:	0035 0fff 	addiu	\$1,\$21,4095
[ 0-9a-f]+:	a681 5a00 	sce	\$20,0\(\$1\)
[ 0-9a-f]+:	0020 0fff 	li	\$1,4095
[ 0-9a-f]+:	a6c1 5a00 	sce	\$22,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	2301 0950 	addu	\$1,\$1,\$24
[ 0-9a-f]+:	a6e1 5a00 	sce	\$23,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a721 5a00 	sce	\$25,0\(\$1\)
[ 0-9a-f]+:	003b 7fff 	addiu	\$1,\$27,32767
[ 0-9a-f]+:	a741 5a00 	sce	\$26,0\(\$1\)
[ 0-9a-f]+:	0020 7fff 	li	\$1,32767
[ 0-9a-f]+:	a781 5a00 	sce	\$28,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	23c1 0950 	addu	\$1,\$1,\$30
[ 0-9a-f]+:	a7a1 dafc 	sce	\$29,-4\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a7e1 dafc 	sce	\$31,-4\(\$1\)
[ 0-9a-f]+:	0022 8000 	addiu	\$1,\$2,32768
[ 0-9a-f]+:	a401 5a00 	sce	\$0,0\(\$1\)
[ 0-9a-f]+:	0020 8000 	li	\$1,32768
[ 0-9a-f]+:	a461 5a00 	sce	\$3,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	20a1 0950 	addu	\$1,\$1,\$5
[ 0-9a-f]+:	a481 5a00 	sce	\$4,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a4c1 5a00 	sce	\$6,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	2101 0950 	addu	\$1,\$1,\$8
[ 0-9a-f]+:	a4e1 dafc 	sce	\$7,-4\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a521 dafc 	sce	\$9,-4\(\$1\)
[ 0-9a-f]+:	a54b 5a00 	sce	\$10,0\(\$11\)
[ 0-9a-f]+:	6020 0000 	li	\$1,0x0
[ 0-9a-f]+:	0000 
			[0-9a-f]+: R_MICROMIPS_32	MYDATA
[ 0-9a-f]+:	a581 5a00 	sce	\$12,0\(\$1\)
[ 0-9a-f]+:	a5ae aa00 	she	\$13,-256\(\$14\)
[ 0-9a-f]+:	a5e0 aa00 	she	\$15,-256\(\$0\)
[ 0-9a-f]+:	a611 2aff 	she	\$16,255\(\$17\)
[ 0-9a-f]+:	a640 2aff 	she	\$18,255\(\$0\)
[ 0-9a-f]+:	8034 8101 	addiu	\$1,\$20,-257
[ 0-9a-f]+:	a661 2a00 	she	\$19,0\(\$1\)
[ 0-9a-f]+:	8020 8101 	li	\$1,-257
[ 0-9a-f]+:	a6a1 2a00 	she	\$21,0\(\$1\)
[ 0-9a-f]+:	0037 0100 	addiu	\$1,\$23,256
[ 0-9a-f]+:	a6c1 2a00 	she	\$22,0\(\$1\)
[ 0-9a-f]+:	0020 0100 	li	\$1,256
[ 0-9a-f]+:	a701 2a00 	she	\$24,0\(\$1\)
[ 0-9a-f]+:	803a 8200 	addiu	\$1,\$26,-512
[ 0-9a-f]+:	a721 2a00 	she	\$25,0\(\$1\)
[ 0-9a-f]+:	8020 8200 	li	\$1,-512
[ 0-9a-f]+:	a761 2a00 	she	\$27,0\(\$1\)
[ 0-9a-f]+:	003d 01ff 	addiu	\$1,\$29,511
[ 0-9a-f]+:	a781 2a00 	she	\$28,0\(\$1\)
[ 0-9a-f]+:	0020 01ff 	li	\$1,511
[ 0-9a-f]+:	a7c1 2a00 	she	\$30,0\(\$1\)
[ 0-9a-f]+:	8020 8400 	li	\$1,-1024
[ 0-9a-f]+:	a7e1 2a00 	she	\$31,0\(\$1\)
[ 0-9a-f]+:	8020 8400 	li	\$1,-1024
[ 0-9a-f]+:	a441 2a00 	she	\$2,0\(\$1\)
[ 0-9a-f]+:	0024 03ff 	addiu	\$1,\$4,1023
[ 0-9a-f]+:	a461 2a00 	she	\$3,0\(\$1\)
[ 0-9a-f]+:	0020 03ff 	li	\$1,1023
[ 0-9a-f]+:	a4a1 2a00 	she	\$5,0\(\$1\)
[ 0-9a-f]+:	8027 8800 	addiu	\$1,\$7,-2048
[ 0-9a-f]+:	a4c1 2a00 	she	\$6,0\(\$1\)
[ 0-9a-f]+:	8020 8800 	li	\$1,-2048
[ 0-9a-f]+:	a501 2a00 	she	\$8,0\(\$1\)
[ 0-9a-f]+:	002a 07ff 	addiu	\$1,\$10,2047
[ 0-9a-f]+:	a521 2a00 	she	\$9,0\(\$1\)
[ 0-9a-f]+:	0020 07ff 	li	\$1,2047
[ 0-9a-f]+:	a561 2a00 	she	\$11,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	21a1 0950 	addu	\$1,\$1,\$13
[ 0-9a-f]+:	a581 2a00 	she	\$12,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	a5c1 2a00 	she	\$14,0\(\$1\)
[ 0-9a-f]+:	0030 0fff 	addiu	\$1,\$16,4095
[ 0-9a-f]+:	a5e1 2a00 	she	\$15,0\(\$1\)
[ 0-9a-f]+:	0020 0fff 	li	\$1,4095
[ 0-9a-f]+:	a621 2a00 	she	\$17,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	2261 0950 	addu	\$1,\$1,\$19
[ 0-9a-f]+:	a641 2a00 	she	\$18,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a681 2a00 	she	\$20,0\(\$1\)
[ 0-9a-f]+:	0036 7fff 	addiu	\$1,\$22,32767
[ 0-9a-f]+:	a6a1 2a00 	she	\$21,0\(\$1\)
[ 0-9a-f]+:	0020 7fff 	li	\$1,32767
[ 0-9a-f]+:	a6e1 2a00 	she	\$23,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	2321 0950 	addu	\$1,\$1,\$25
[ 0-9a-f]+:	a701 aaff 	she	\$24,-1\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a741 aaff 	she	\$26,-1\(\$1\)
[ 0-9a-f]+:	003c 8000 	addiu	\$1,\$28,32768
[ 0-9a-f]+:	a761 2a00 	she	\$27,0\(\$1\)
[ 0-9a-f]+:	0020 8000 	li	\$1,32768
[ 0-9a-f]+:	a7a1 2a00 	she	\$29,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	23e1 0950 	addu	\$1,\$1,\$31
[ 0-9a-f]+:	a7c1 2a00 	she	\$30,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a401 2a00 	she	\$0,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	2061 0950 	addu	\$1,\$1,\$3
[ 0-9a-f]+:	a441 aaff 	she	\$2,-1\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a481 aaff 	she	\$4,-1\(\$1\)
[ 0-9a-f]+:	a4a6 2a00 	she	\$5,0\(\$6\)
[ 0-9a-f]+:	6020 0000 	li	\$1,0x0
[ 0-9a-f]+:	0000 
			[0-9a-f]+: R_MICROMIPS_32	MYDATA
[ 0-9a-f]+:	a4e1 2a00 	she	\$7,0\(\$1\)
[ 0-9a-f]+:	a509 ca00 	swe	\$8,-256\(\$9\)
[ 0-9a-f]+:	a540 ca00 	swe	\$10,-256\(\$0\)
[ 0-9a-f]+:	a56c 4aff 	swe	\$11,255\(\$12\)
[ 0-9a-f]+:	a5a0 4aff 	swe	\$13,255\(\$0\)
[ 0-9a-f]+:	802f 8101 	addiu	\$1,\$15,-257
[ 0-9a-f]+:	a5c1 4a00 	swe	\$14,0\(\$1\)
[ 0-9a-f]+:	8020 8101 	li	\$1,-257
[ 0-9a-f]+:	a601 4a00 	swe	\$16,0\(\$1\)
[ 0-9a-f]+:	0032 0100 	addiu	\$1,\$18,256
[ 0-9a-f]+:	a621 4a00 	swe	\$17,0\(\$1\)
[ 0-9a-f]+:	0020 0100 	li	\$1,256
[ 0-9a-f]+:	a661 4a00 	swe	\$19,0\(\$1\)
[ 0-9a-f]+:	8035 8200 	addiu	\$1,\$21,-512
[ 0-9a-f]+:	a681 4a00 	swe	\$20,0\(\$1\)
[ 0-9a-f]+:	8020 8200 	li	\$1,-512
[ 0-9a-f]+:	a6c1 4a00 	swe	\$22,0\(\$1\)
[ 0-9a-f]+:	0038 01ff 	addiu	\$1,\$24,511
[ 0-9a-f]+:	a6e1 4a00 	swe	\$23,0\(\$1\)
[ 0-9a-f]+:	0020 01ff 	li	\$1,511
[ 0-9a-f]+:	a721 4a00 	swe	\$25,0\(\$1\)
[ 0-9a-f]+:	803b 8400 	addiu	\$1,\$27,-1024
[ 0-9a-f]+:	a741 4a00 	swe	\$26,0\(\$1\)
[ 0-9a-f]+:	8020 8400 	li	\$1,-1024
[ 0-9a-f]+:	a781 4a00 	swe	\$28,0\(\$1\)
[ 0-9a-f]+:	003e 03ff 	addiu	\$1,\$30,1023
[ 0-9a-f]+:	a7a1 4a00 	swe	\$29,0\(\$1\)
[ 0-9a-f]+:	0020 03ff 	li	\$1,1023
[ 0-9a-f]+:	a7e1 4a00 	swe	\$31,0\(\$1\)
[ 0-9a-f]+:	8022 8800 	addiu	\$1,\$2,-2048
[ 0-9a-f]+:	a401 4a00 	swe	\$0,0\(\$1\)
[ 0-9a-f]+:	8020 8800 	li	\$1,-2048
[ 0-9a-f]+:	a461 4a00 	swe	\$3,0\(\$1\)
[ 0-9a-f]+:	0025 07ff 	addiu	\$1,\$5,2047
[ 0-9a-f]+:	a481 4a00 	swe	\$4,0\(\$1\)
[ 0-9a-f]+:	0020 07ff 	li	\$1,2047
[ 0-9a-f]+:	a4c1 4a00 	swe	\$6,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	2101 0950 	addu	\$1,\$1,\$8
[ 0-9a-f]+:	a4e1 4a00 	swe	\$7,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	a521 4a00 	swe	\$9,0\(\$1\)
[ 0-9a-f]+:	002b 0fff 	addiu	\$1,\$11,4095
[ 0-9a-f]+:	a541 4a00 	swe	\$10,0\(\$1\)
[ 0-9a-f]+:	0020 0fff 	li	\$1,4095
[ 0-9a-f]+:	a581 4a00 	swe	\$12,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	21c1 0950 	addu	\$1,\$1,\$14
[ 0-9a-f]+:	a5a1 4a00 	swe	\$13,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a5e1 4a00 	swe	\$15,0\(\$1\)
[ 0-9a-f]+:	0031 7fff 	addiu	\$1,\$17,32767
[ 0-9a-f]+:	a601 4a00 	swe	\$16,0\(\$1\)
[ 0-9a-f]+:	0020 7fff 	li	\$1,32767
[ 0-9a-f]+:	a641 4a00 	swe	\$18,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	2281 0950 	addu	\$1,\$1,\$20
[ 0-9a-f]+:	a661 caff 	swe	\$19,-1\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a6a1 caff 	swe	\$21,-1\(\$1\)
[ 0-9a-f]+:	0037 8000 	addiu	\$1,\$23,32768
[ 0-9a-f]+:	a6c1 4a00 	swe	\$22,0\(\$1\)
[ 0-9a-f]+:	0020 8000 	li	\$1,32768
[ 0-9a-f]+:	a701 4a00 	swe	\$24,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	2341 0950 	addu	\$1,\$1,\$26
[ 0-9a-f]+:	a721 4a00 	swe	\$25,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a761 4a00 	swe	\$27,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	23a1 0950 	addu	\$1,\$1,\$29
[ 0-9a-f]+:	a781 caff 	swe	\$28,-1\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a7c1 caff 	swe	\$30,-1\(\$1\)
[ 0-9a-f]+:	a7e0 4a00 	swe	\$31,0\(\$0\)
[ 0-9a-f]+:	6020 0000 	li	\$1,0x0
[ 0-9a-f]+:	0000 
			[0-9a-f]+: R_MICROMIPS_32	MYDATA
[ 0-9a-f]+:	a441 4a00 	swe	\$2,0\(\$1\)
[ 0-9a-f]+:	a719 ba00 	cachee	0x18,-256\(\$25\)
[ 0-9a-f]+:	a740 ba00 	cachee	0x1a,-256\(\$0\)
[ 0-9a-f]+:	a77c 3aff 	cachee	0x1b,255\(\$28\)
[ 0-9a-f]+:	a7a0 3aff 	cachee	0x1d,255\(\$0\)
[ 0-9a-f]+:	803f 8101 	addiu	\$1,\$31,-257
[ 0-9a-f]+:	a7c1 3a00 	cachee	0x1e,0\(\$1\)
[ 0-9a-f]+:	8020 8101 	li	\$1,-257
[ 0-9a-f]+:	a401 3a00 	cachee	0x0,0\(\$1\)
[ 0-9a-f]+:	0023 0100 	addiu	\$1,\$3,256
[ 0-9a-f]+:	a441 3a00 	cachee	0x2,0\(\$1\)
[ 0-9a-f]+:	0020 0100 	li	\$1,256
[ 0-9a-f]+:	a481 3a00 	cachee	0x4,0\(\$1\)
[ 0-9a-f]+:	8026 8200 	addiu	\$1,\$6,-512
[ 0-9a-f]+:	a4a1 3a00 	cachee	0x5,0\(\$1\)
[ 0-9a-f]+:	8020 8200 	li	\$1,-512
[ 0-9a-f]+:	a4e1 3a00 	cachee	0x7,0\(\$1\)
[ 0-9a-f]+:	0029 01ff 	addiu	\$1,\$9,511
[ 0-9a-f]+:	a501 3a00 	cachee	0x8,0\(\$1\)
[ 0-9a-f]+:	0020 01ff 	li	\$1,511
[ 0-9a-f]+:	a541 3a00 	cachee	0xa,0\(\$1\)
[ 0-9a-f]+:	802c 8400 	addiu	\$1,\$12,-1024
[ 0-9a-f]+:	a561 3a00 	cachee	0xb,0\(\$1\)
[ 0-9a-f]+:	8020 8400 	li	\$1,-1024
[ 0-9a-f]+:	a5a1 3a00 	cachee	0xd,0\(\$1\)
[ 0-9a-f]+:	002f 03ff 	addiu	\$1,\$15,1023
[ 0-9a-f]+:	a5c1 3a00 	cachee	0xe,0\(\$1\)
[ 0-9a-f]+:	0020 03ff 	li	\$1,1023
[ 0-9a-f]+:	a601 3a00 	cachee	0x10,0\(\$1\)
[ 0-9a-f]+:	8032 8800 	addiu	\$1,\$18,-2048
[ 0-9a-f]+:	a621 3a00 	cachee	0x11,0\(\$1\)
[ 0-9a-f]+:	8020 8800 	li	\$1,-2048
[ 0-9a-f]+:	a661 3a00 	cachee	0x13,0\(\$1\)
[ 0-9a-f]+:	0035 07ff 	addiu	\$1,\$21,2047
[ 0-9a-f]+:	a681 3a00 	cachee	0x14,0\(\$1\)
[ 0-9a-f]+:	0020 07ff 	li	\$1,2047
[ 0-9a-f]+:	a6c1 3a00 	cachee	0x16,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	2301 0950 	addu	\$1,\$1,\$24
[ 0-9a-f]+:	a6e1 3a00 	cachee	0x17,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	a721 3a00 	cachee	0x19,0\(\$1\)
[ 0-9a-f]+:	003b 0fff 	addiu	\$1,\$27,4095
[ 0-9a-f]+:	a741 3a00 	cachee	0x1a,0\(\$1\)
[ 0-9a-f]+:	0020 0fff 	li	\$1,4095
[ 0-9a-f]+:	a781 3a00 	cachee	0x1c,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	23c1 0950 	addu	\$1,\$1,\$30
[ 0-9a-f]+:	a7a1 3a00 	cachee	0x1d,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a7e1 3a00 	cachee	0x1f,0\(\$1\)
[ 0-9a-f]+:	0022 7fff 	addiu	\$1,\$2,32767
[ 0-9a-f]+:	a401 3a00 	cachee	0x0,0\(\$1\)
[ 0-9a-f]+:	0020 7fff 	li	\$1,32767
[ 0-9a-f]+:	a461 3a00 	cachee	0x3,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	20a1 0950 	addu	\$1,\$1,\$5
[ 0-9a-f]+:	a481 baff 	cachee	0x4,-1\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a4c1 baff 	cachee	0x6,-1\(\$1\)
[ 0-9a-f]+:	0028 8000 	addiu	\$1,\$8,32768
[ 0-9a-f]+:	a4e1 3a00 	cachee	0x7,0\(\$1\)
[ 0-9a-f]+:	0020 8000 	li	\$1,32768
[ 0-9a-f]+:	a521 3a00 	cachee	0x9,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	2161 0950 	addu	\$1,\$1,\$11
[ 0-9a-f]+:	a541 3a00 	cachee	0xa,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a581 3a00 	cachee	0xc,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	21c1 0950 	addu	\$1,\$1,\$14
[ 0-9a-f]+:	a5a1 baff 	cachee	0xd,-1\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a5e1 baff 	cachee	0xf,-1\(\$1\)
[ 0-9a-f]+:	a611 3a00 	cachee	0x10,0\(\$17\)
[ 0-9a-f]+:	6020 0000 	li	\$1,0x0
[ 0-9a-f]+:	0000 
			[0-9a-f]+: R_MICROMIPS_32	MYDATA
[ 0-9a-f]+:	a641 3a00 	cachee	0x12,0\(\$1\)
[ 0-9a-f]+:	a674 9a00 	prefe	0x13,-256\(\$20\)
[ 0-9a-f]+:	a6a0 9a00 	prefe	0x15,-256\(\$0\)
[ 0-9a-f]+:	a6d7 1aff 	prefe	0x16,255\(\$23\)
[ 0-9a-f]+:	a700 1aff 	prefe	0x18,255\(\$0\)
[ 0-9a-f]+:	803a 8101 	addiu	\$1,\$26,-257
[ 0-9a-f]+:	a721 1a00 	prefe	0x19,0\(\$1\)
[ 0-9a-f]+:	8020 8101 	li	\$1,-257
[ 0-9a-f]+:	a761 1a00 	prefe	0x1b,0\(\$1\)
[ 0-9a-f]+:	003d 0100 	addiu	\$1,\$29,256
[ 0-9a-f]+:	a781 1a00 	prefe	0x1c,0\(\$1\)
[ 0-9a-f]+:	0020 0100 	li	\$1,256
[ 0-9a-f]+:	a7c1 1a00 	prefe	0x1e,0\(\$1\)
[ 0-9a-f]+:	8020 8200 	li	\$1,-512
[ 0-9a-f]+:	a7e1 1a00 	syncie	0\(\$1\)
[ 0-9a-f]+:	8020 8200 	li	\$1,-512
[ 0-9a-f]+:	a441 1a00 	prefe	0x2,0\(\$1\)
[ 0-9a-f]+:	0024 01ff 	addiu	\$1,\$4,511
[ 0-9a-f]+:	a461 1a00 	prefe	0x3,0\(\$1\)
[ 0-9a-f]+:	0020 01ff 	li	\$1,511
[ 0-9a-f]+:	a4a1 1a00 	prefe	0x5,0\(\$1\)
[ 0-9a-f]+:	8027 8400 	addiu	\$1,\$7,-1024
[ 0-9a-f]+:	a4c1 1a00 	prefe	0x6,0\(\$1\)
[ 0-9a-f]+:	8020 8400 	li	\$1,-1024
[ 0-9a-f]+:	a501 1a00 	prefe	0x8,0\(\$1\)
[ 0-9a-f]+:	002a 03ff 	addiu	\$1,\$10,1023
[ 0-9a-f]+:	a521 1a00 	prefe	0x9,0\(\$1\)
[ 0-9a-f]+:	0020 03ff 	li	\$1,1023
[ 0-9a-f]+:	a561 1a00 	prefe	0xb,0\(\$1\)
[ 0-9a-f]+:	802d 8800 	addiu	\$1,\$13,-2048
[ 0-9a-f]+:	a581 1a00 	prefe	0xc,0\(\$1\)
[ 0-9a-f]+:	8020 8800 	li	\$1,-2048
[ 0-9a-f]+:	a5c1 1a00 	prefe	0xe,0\(\$1\)
[ 0-9a-f]+:	0030 07ff 	addiu	\$1,\$16,2047
[ 0-9a-f]+:	a5e1 1a00 	prefe	0xf,0\(\$1\)
[ 0-9a-f]+:	0020 07ff 	li	\$1,2047
[ 0-9a-f]+:	a621 1a00 	prefe	0x11,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	2261 0950 	addu	\$1,\$1,\$19
[ 0-9a-f]+:	a641 1a00 	prefe	0x12,0\(\$1\)
[ 0-9a-f]+:	e03f fffd 	lui	\$1,%hi\(0xfffff000\)
[ 0-9a-f]+:	a681 1a00 	prefe	0x14,0\(\$1\)
[ 0-9a-f]+:	0036 0fff 	addiu	\$1,\$22,4095
[ 0-9a-f]+:	a6a1 1a00 	prefe	0x15,0\(\$1\)
[ 0-9a-f]+:	0020 0fff 	li	\$1,4095
[ 0-9a-f]+:	a6e1 1a00 	prefe	0x17,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	2321 0950 	addu	\$1,\$1,\$25
[ 0-9a-f]+:	a701 1a00 	prefe	0x18,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a741 1a00 	prefe	0x1a,0\(\$1\)
[ 0-9a-f]+:	003c 7fff 	addiu	\$1,\$28,32767
[ 0-9a-f]+:	a761 1a00 	prefe	0x1b,0\(\$1\)
[ 0-9a-f]+:	0020 7fff 	li	\$1,32767
[ 0-9a-f]+:	a7a1 1a00 	prefe	0x1d,0\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	23e1 0950 	addu	\$1,\$1,\$31
[ 0-9a-f]+:	a7c1 9aff 	prefe	0x1e,-1\(\$1\)
[ 0-9a-f]+:	e03f 8ffd 	lui	\$1,%hi\(0xffff8000\)
[ 0-9a-f]+:	a401 9aff 	prefe	0x0,-1\(\$1\)
[ 0-9a-f]+:	0023 8000 	addiu	\$1,\$3,32768
[ 0-9a-f]+:	a441 1a00 	prefe	0x2,0\(\$1\)
[ 0-9a-f]+:	0020 8000 	li	\$1,32768
[ 0-9a-f]+:	a481 1a00 	prefe	0x4,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	20c1 0950 	addu	\$1,\$1,\$6
[ 0-9a-f]+:	a4a1 1a00 	prefe	0x5,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a4e1 1a00 	prefe	0x7,0\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	2121 0950 	addu	\$1,\$1,\$9
[ 0-9a-f]+:	a501 9aff 	prefe	0x8,-1\(\$1\)
[ 0-9a-f]+:	e020 0001 	lui	\$1,%hi\(0x80000000\)
[ 0-9a-f]+:	a541 9aff 	prefe	0xa,-1\(\$1\)
[ 0-9a-f]+:	a56c 1a00 	prefe	0xb,0\(\$12\)
[ 0-9a-f]+:	6020 0000 	li	\$1,0x0
[ 0-9a-f]+:	0000 
			[0-9a-f]+: R_MICROMIPS_32	MYDATA
[ 0-9a-f]+:	a5a1 1a00 	prefe	0xd,0\(\$1\)
[ 0-9a-f]+:	0026 0000 	addiu	\$1,\$6,0
			[0-9a-f]+: R_MICROMIPS_LO12	foo
[ 0-9a-f]+:	a4a1 1a00 	prefe	0x5,0\(\$1\)
