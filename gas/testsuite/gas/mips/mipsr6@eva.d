#objdump: -dr -Mgpr-names=numeric --show-raw-insn
#name: MIPS EVA 
#source: eva.s
#as: -meva -32

# Test the EVA instructions

.*: +file format .*mips.*


Disassembly of section \.text:

[ 0-9a-f]+ <test_eva>:
[ 0-9a-f]+:	7c408028 	lbue	\$0,-256\(\$2\)
[ 0-9a-f]+:	7c038028 	lbue	\$3,-256\(\$0\)
[ 0-9a-f]+:	7ca47fa8 	lbue	\$4,255\(\$5\)
[ 0-9a-f]+:	7c067fa8 	lbue	\$6,255\(\$0\)
[ 0-9a-f]+:	2501feff 	addiu	\$1,\$8,-257
[ 0-9a-f]+:	7c270028 	lbue	\$7,0\(\$1\)
[ 0-9a-f]+:	2401feff 	li	\$1,-257
[ 0-9a-f]+:	7c290028 	lbue	\$9,0\(\$1\)
[ 0-9a-f]+:	25610100 	addiu	\$1,\$11,256
[ 0-9a-f]+:	7c2a0028 	lbue	\$10,0\(\$1\)
[ 0-9a-f]+:	24010100 	li	\$1,256
[ 0-9a-f]+:	7c2c0028 	lbue	\$12,0\(\$1\)
[ 0-9a-f]+:	25c1fe00 	addiu	\$1,\$14,-512
[ 0-9a-f]+:	7c2d0028 	lbue	\$13,0\(\$1\)
[ 0-9a-f]+:	2401fe00 	li	\$1,-512
[ 0-9a-f]+:	7c2f0028 	lbue	\$15,0\(\$1\)
[ 0-9a-f]+:	262101ff 	addiu	\$1,\$17,511
[ 0-9a-f]+:	7c300028 	lbue	\$16,0\(\$1\)
[ 0-9a-f]+:	240101ff 	li	\$1,511
[ 0-9a-f]+:	7c320028 	lbue	\$18,0\(\$1\)
[ 0-9a-f]+:	2681fc00 	addiu	\$1,\$20,-1024
[ 0-9a-f]+:	7c330028 	lbue	\$19,0\(\$1\)
[ 0-9a-f]+:	2401fc00 	li	\$1,-1024
[ 0-9a-f]+:	7c350028 	lbue	\$21,0\(\$1\)
[ 0-9a-f]+:	26e103ff 	addiu	\$1,\$23,1023
[ 0-9a-f]+:	7c360028 	lbue	\$22,0\(\$1\)
[ 0-9a-f]+:	240103ff 	li	\$1,1023
[ 0-9a-f]+:	7c380028 	lbue	\$24,0\(\$1\)
[ 0-9a-f]+:	2741f800 	addiu	\$1,\$26,-2048
[ 0-9a-f]+:	7c390028 	lbue	\$25,0\(\$1\)
[ 0-9a-f]+:	2401f800 	li	\$1,-2048
[ 0-9a-f]+:	7c3b0028 	lbue	\$27,0\(\$1\)
[ 0-9a-f]+:	27a107ff 	addiu	\$1,\$29,2047
[ 0-9a-f]+:	7c3c0028 	lbue	\$28,0\(\$1\)
[ 0-9a-f]+:	240107ff 	li	\$1,2047
[ 0-9a-f]+:	7c3e0028 	lbue	\$30,0\(\$1\)
[ 0-9a-f]+:	2401f000 	li	\$1,-4096
[ 0-9a-f]+:	7c3f0028 	lbue	\$31,0\(\$1\)
[ 0-9a-f]+:	2401f000 	li	\$1,-4096
[ 0-9a-f]+:	7c220028 	lbue	\$2,0\(\$1\)
[ 0-9a-f]+:	24810fff 	addiu	\$1,\$4,4095
[ 0-9a-f]+:	7c230028 	lbue	\$3,0\(\$1\)
[ 0-9a-f]+:	24010fff 	li	\$1,4095
[ 0-9a-f]+:	7c250028 	lbue	\$5,0\(\$1\)
[ 0-9a-f]+:	24e18000 	addiu	\$1,\$7,-32768
[ 0-9a-f]+:	7c260028 	lbue	\$6,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c280028 	lbue	\$8,0\(\$1\)
[ 0-9a-f]+:	25417fff 	addiu	\$1,\$10,32767
[ 0-9a-f]+:	7c290028 	lbue	\$9,0\(\$1\)
[ 0-9a-f]+:	24017fff 	li	\$1,32767
[ 0-9a-f]+:	7c2b0028 	lbue	\$11,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	002d0821 	addu	\$1,\$1,\$13
[ 0-9a-f]+:	7c2cffa8 	lbue	\$12,-1\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c2effa8 	lbue	\$14,-1\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	00300821 	addu	\$1,\$1,\$16
[ 0-9a-f]+:	7c2f0028 	lbue	\$15,0\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	7c310028 	lbue	\$17,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	00330821 	addu	\$1,\$1,\$19
[ 0-9a-f]+:	7c320028 	lbue	\$18,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c340028 	lbue	\$20,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	00360821 	addu	\$1,\$1,\$22
[ 0-9a-f]+:	7c35ffa8 	lbue	\$21,-1\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c37ffa8 	lbue	\$23,-1\(\$1\)
[ 0-9a-f]+:	7f380028 	lbue	\$24,0\(\$25\)
[ 0-9a-f]+:	3c010000 	lui	\$1,0x0
			[ 0-9a-f]+: R_MIPS_HI16	MYDATA
[ 0-9a-f]+:	24210000 	addiu	\$1,\$1,0
			[ 0-9a-f]+: R_MIPS_LO16	MYDATA
[ 0-9a-f]+:	7c3a0028 	lbue	\$26,0\(\$1\)
[ 0-9a-f]+:	7f9b8029 	lhue	\$27,-256\(\$28\)
[ 0-9a-f]+:	7c1d8029 	lhue	\$29,-256\(\$0\)
[ 0-9a-f]+:	7ffe7fa9 	lhue	\$30,255\(\$31\)
[ 0-9a-f]+:	7c007fa9 	lhue	\$0,255\(\$0\)
[ 0-9a-f]+:	2461feff 	addiu	\$1,\$3,-257
[ 0-9a-f]+:	7c220029 	lhue	\$2,0\(\$1\)
[ 0-9a-f]+:	2401feff 	li	\$1,-257
[ 0-9a-f]+:	7c240029 	lhue	\$4,0\(\$1\)
[ 0-9a-f]+:	24c10100 	addiu	\$1,\$6,256
[ 0-9a-f]+:	7c250029 	lhue	\$5,0\(\$1\)
[ 0-9a-f]+:	24010100 	li	\$1,256
[ 0-9a-f]+:	7c270029 	lhue	\$7,0\(\$1\)
[ 0-9a-f]+:	2521fe00 	addiu	\$1,\$9,-512
[ 0-9a-f]+:	7c280029 	lhue	\$8,0\(\$1\)
[ 0-9a-f]+:	2401fe00 	li	\$1,-512
[ 0-9a-f]+:	7c2a0029 	lhue	\$10,0\(\$1\)
[ 0-9a-f]+:	258101ff 	addiu	\$1,\$12,511
[ 0-9a-f]+:	7c2b0029 	lhue	\$11,0\(\$1\)
[ 0-9a-f]+:	240101ff 	li	\$1,511
[ 0-9a-f]+:	7c2d0029 	lhue	\$13,0\(\$1\)
[ 0-9a-f]+:	25e1fc00 	addiu	\$1,\$15,-1024
[ 0-9a-f]+:	7c2e0029 	lhue	\$14,0\(\$1\)
[ 0-9a-f]+:	2401fc00 	li	\$1,-1024
[ 0-9a-f]+:	7c300029 	lhue	\$16,0\(\$1\)
[ 0-9a-f]+:	264103ff 	addiu	\$1,\$18,1023
[ 0-9a-f]+:	7c310029 	lhue	\$17,0\(\$1\)
[ 0-9a-f]+:	240103ff 	li	\$1,1023
[ 0-9a-f]+:	7c330029 	lhue	\$19,0\(\$1\)
[ 0-9a-f]+:	26a1f800 	addiu	\$1,\$21,-2048
[ 0-9a-f]+:	7c340029 	lhue	\$20,0\(\$1\)
[ 0-9a-f]+:	2401f800 	li	\$1,-2048
[ 0-9a-f]+:	7c360029 	lhue	\$22,0\(\$1\)
[ 0-9a-f]+:	270107ff 	addiu	\$1,\$24,2047
[ 0-9a-f]+:	7c370029 	lhue	\$23,0\(\$1\)
[ 0-9a-f]+:	240107ff 	li	\$1,2047
[ 0-9a-f]+:	7c390029 	lhue	\$25,0\(\$1\)
[ 0-9a-f]+:	2761f000 	addiu	\$1,\$27,-4096
[ 0-9a-f]+:	7c3a0029 	lhue	\$26,0\(\$1\)
[ 0-9a-f]+:	2401f000 	li	\$1,-4096
[ 0-9a-f]+:	7c3c0029 	lhue	\$28,0\(\$1\)
[ 0-9a-f]+:	27c10fff 	addiu	\$1,\$30,4095
[ 0-9a-f]+:	7c3d0029 	lhue	\$29,0\(\$1\)
[ 0-9a-f]+:	24010fff 	li	\$1,4095
[ 0-9a-f]+:	7c3f0029 	lhue	\$31,0\(\$1\)
[ 0-9a-f]+:	24418000 	addiu	\$1,\$2,-32768
[ 0-9a-f]+:	7c200029 	lhue	\$0,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c230029 	lhue	\$3,0\(\$1\)
[ 0-9a-f]+:	24a17fff 	addiu	\$1,\$5,32767
[ 0-9a-f]+:	7c240029 	lhue	\$4,0\(\$1\)
[ 0-9a-f]+:	24017fff 	li	\$1,32767
[ 0-9a-f]+:	7c260029 	lhue	\$6,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	00280821 	addu	\$1,\$1,\$8
[ 0-9a-f]+:	7c27ffa9 	lhue	\$7,-1\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c29ffa9 	lhue	\$9,-1\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	002b0821 	addu	\$1,\$1,\$11
[ 0-9a-f]+:	7c2a0029 	lhue	\$10,0\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	7c2c0029 	lhue	\$12,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	002e0821 	addu	\$1,\$1,\$14
[ 0-9a-f]+:	7c2d0029 	lhue	\$13,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c2f0029 	lhue	\$15,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	00310821 	addu	\$1,\$1,\$17
[ 0-9a-f]+:	7c30ffa9 	lhue	\$16,-1\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c32ffa9 	lhue	\$18,-1\(\$1\)
[ 0-9a-f]+:	7e930029 	lhue	\$19,0\(\$20\)
[ 0-9a-f]+:	3c010000 	lui	\$1,0x0
			[ 0-9a-f]+: R_MIPS_HI16	MYDATA
[ 0-9a-f]+:	24210000 	addiu	\$1,\$1,0
			[ 0-9a-f]+: R_MIPS_LO16	MYDATA
[ 0-9a-f]+:	7c350029 	lhue	\$21,0\(\$1\)
[ 0-9a-f]+:	7ef6802c 	lbe	\$22,-256\(\$23\)
[ 0-9a-f]+:	7c18802c 	lbe	\$24,-256\(\$0\)
[ 0-9a-f]+:	7f597fac 	lbe	\$25,255\(\$26\)
[ 0-9a-f]+:	7c1b7fac 	lbe	\$27,255\(\$0\)
[ 0-9a-f]+:	27a1feff 	addiu	\$1,\$29,-257
[ 0-9a-f]+:	7c3c002c 	lbe	\$28,0\(\$1\)
[ 0-9a-f]+:	2401feff 	li	\$1,-257
[ 0-9a-f]+:	7c3e002c 	lbe	\$30,0\(\$1\)
[ 0-9a-f]+:	24010100 	li	\$1,256
[ 0-9a-f]+:	7c3f002c 	lbe	\$31,0\(\$1\)
[ 0-9a-f]+:	24010100 	li	\$1,256
[ 0-9a-f]+:	7c22002c 	lbe	\$2,0\(\$1\)
[ 0-9a-f]+:	2481fe00 	addiu	\$1,\$4,-512
[ 0-9a-f]+:	7c23002c 	lbe	\$3,0\(\$1\)
[ 0-9a-f]+:	2401fe00 	li	\$1,-512
[ 0-9a-f]+:	7c25002c 	lbe	\$5,0\(\$1\)
[ 0-9a-f]+:	24e101ff 	addiu	\$1,\$7,511
[ 0-9a-f]+:	7c26002c 	lbe	\$6,0\(\$1\)
[ 0-9a-f]+:	240101ff 	li	\$1,511
[ 0-9a-f]+:	7c28002c 	lbe	\$8,0\(\$1\)
[ 0-9a-f]+:	2541fc00 	addiu	\$1,\$10,-1024
[ 0-9a-f]+:	7c29002c 	lbe	\$9,0\(\$1\)
[ 0-9a-f]+:	2401fc00 	li	\$1,-1024
[ 0-9a-f]+:	7c2b002c 	lbe	\$11,0\(\$1\)
[ 0-9a-f]+:	25a103ff 	addiu	\$1,\$13,1023
[ 0-9a-f]+:	7c2c002c 	lbe	\$12,0\(\$1\)
[ 0-9a-f]+:	240103ff 	li	\$1,1023
[ 0-9a-f]+:	7c2e002c 	lbe	\$14,0\(\$1\)
[ 0-9a-f]+:	2601f800 	addiu	\$1,\$16,-2048
[ 0-9a-f]+:	7c2f002c 	lbe	\$15,0\(\$1\)
[ 0-9a-f]+:	2401f800 	li	\$1,-2048
[ 0-9a-f]+:	7c31002c 	lbe	\$17,0\(\$1\)
[ 0-9a-f]+:	266107ff 	addiu	\$1,\$19,2047
[ 0-9a-f]+:	7c32002c 	lbe	\$18,0\(\$1\)
[ 0-9a-f]+:	240107ff 	li	\$1,2047
[ 0-9a-f]+:	7c34002c 	lbe	\$20,0\(\$1\)
[ 0-9a-f]+:	26c1f000 	addiu	\$1,\$22,-4096
[ 0-9a-f]+:	7c35002c 	lbe	\$21,0\(\$1\)
[ 0-9a-f]+:	2401f000 	li	\$1,-4096
[ 0-9a-f]+:	7c37002c 	lbe	\$23,0\(\$1\)
[ 0-9a-f]+:	27210fff 	addiu	\$1,\$25,4095
[ 0-9a-f]+:	7c38002c 	lbe	\$24,0\(\$1\)
[ 0-9a-f]+:	24010fff 	li	\$1,4095
[ 0-9a-f]+:	7c3a002c 	lbe	\$26,0\(\$1\)
[ 0-9a-f]+:	27818000 	addiu	\$1,\$28,-32768
[ 0-9a-f]+:	7c3b002c 	lbe	\$27,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c3d002c 	lbe	\$29,0\(\$1\)
[ 0-9a-f]+:	27e17fff 	addiu	\$1,\$31,32767
[ 0-9a-f]+:	7c3e002c 	lbe	\$30,0\(\$1\)
[ 0-9a-f]+:	24017fff 	li	\$1,32767
[ 0-9a-f]+:	7c20002c 	lbe	\$0,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	00230821 	addu	\$1,\$1,\$3
[ 0-9a-f]+:	7c22ffac 	lbe	\$2,-1\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c24ffac 	lbe	\$4,-1\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	00260821 	addu	\$1,\$1,\$6
[ 0-9a-f]+:	7c25002c 	lbe	\$5,0\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	7c27002c 	lbe	\$7,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	00290821 	addu	\$1,\$1,\$9
[ 0-9a-f]+:	7c28002c 	lbe	\$8,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c2a002c 	lbe	\$10,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	002c0821 	addu	\$1,\$1,\$12
[ 0-9a-f]+:	7c2bffac 	lbe	\$11,-1\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c2dffac 	lbe	\$13,-1\(\$1\)
[ 0-9a-f]+:	7dee002c 	lbe	\$14,0\(\$15\)
[ 0-9a-f]+:	3c010000 	lui	\$1,0x0
			[ 0-9a-f]+: R_MIPS_HI16	MYDATA
[ 0-9a-f]+:	24210000 	addiu	\$1,\$1,0
			[ 0-9a-f]+: R_MIPS_LO16	MYDATA
[ 0-9a-f]+:	7c30002c 	lbe	\$16,0\(\$1\)
[ 0-9a-f]+:	7e51802d 	lhe	\$17,-256\(\$18\)
[ 0-9a-f]+:	7c13802d 	lhe	\$19,-256\(\$0\)
[ 0-9a-f]+:	7eb47fad 	lhe	\$20,255\(\$21\)
[ 0-9a-f]+:	7c167fad 	lhe	\$22,255\(\$0\)
[ 0-9a-f]+:	2701feff 	addiu	\$1,\$24,-257
[ 0-9a-f]+:	7c37002d 	lhe	\$23,0\(\$1\)
[ 0-9a-f]+:	2401feff 	li	\$1,-257
[ 0-9a-f]+:	7c39002d 	lhe	\$25,0\(\$1\)
[ 0-9a-f]+:	27610100 	addiu	\$1,\$27,256
[ 0-9a-f]+:	7c3a002d 	lhe	\$26,0\(\$1\)
[ 0-9a-f]+:	24010100 	li	\$1,256
[ 0-9a-f]+:	7c3c002d 	lhe	\$28,0\(\$1\)
[ 0-9a-f]+:	27c1fe00 	addiu	\$1,\$30,-512
[ 0-9a-f]+:	7c3d002d 	lhe	\$29,0\(\$1\)
[ 0-9a-f]+:	2401fe00 	li	\$1,-512
[ 0-9a-f]+:	7c3f002d 	lhe	\$31,0\(\$1\)
[ 0-9a-f]+:	244101ff 	addiu	\$1,\$2,511
[ 0-9a-f]+:	7c20002d 	lhe	\$0,0\(\$1\)
[ 0-9a-f]+:	240101ff 	li	\$1,511
[ 0-9a-f]+:	7c23002d 	lhe	\$3,0\(\$1\)
[ 0-9a-f]+:	24a1fc00 	addiu	\$1,\$5,-1024
[ 0-9a-f]+:	7c24002d 	lhe	\$4,0\(\$1\)
[ 0-9a-f]+:	2401fc00 	li	\$1,-1024
[ 0-9a-f]+:	7c26002d 	lhe	\$6,0\(\$1\)
[ 0-9a-f]+:	250103ff 	addiu	\$1,\$8,1023
[ 0-9a-f]+:	7c27002d 	lhe	\$7,0\(\$1\)
[ 0-9a-f]+:	240103ff 	li	\$1,1023
[ 0-9a-f]+:	7c29002d 	lhe	\$9,0\(\$1\)
[ 0-9a-f]+:	2561f800 	addiu	\$1,\$11,-2048
[ 0-9a-f]+:	7c2a002d 	lhe	\$10,0\(\$1\)
[ 0-9a-f]+:	2401f800 	li	\$1,-2048
[ 0-9a-f]+:	7c2c002d 	lhe	\$12,0\(\$1\)
[ 0-9a-f]+:	25c107ff 	addiu	\$1,\$14,2047
[ 0-9a-f]+:	7c2d002d 	lhe	\$13,0\(\$1\)
[ 0-9a-f]+:	240107ff 	li	\$1,2047
[ 0-9a-f]+:	7c2f002d 	lhe	\$15,0\(\$1\)
[ 0-9a-f]+:	2621f000 	addiu	\$1,\$17,-4096
[ 0-9a-f]+:	7c30002d 	lhe	\$16,0\(\$1\)
[ 0-9a-f]+:	2401f000 	li	\$1,-4096
[ 0-9a-f]+:	7c32002d 	lhe	\$18,0\(\$1\)
[ 0-9a-f]+:	26810fff 	addiu	\$1,\$20,4095
[ 0-9a-f]+:	7c33002d 	lhe	\$19,0\(\$1\)
[ 0-9a-f]+:	24010fff 	li	\$1,4095
[ 0-9a-f]+:	7c35002d 	lhe	\$21,0\(\$1\)
[ 0-9a-f]+:	26e18000 	addiu	\$1,\$23,-32768
[ 0-9a-f]+:	7c36002d 	lhe	\$22,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c38002d 	lhe	\$24,0\(\$1\)
[ 0-9a-f]+:	27417fff 	addiu	\$1,\$26,32767
[ 0-9a-f]+:	7c39002d 	lhe	\$25,0\(\$1\)
[ 0-9a-f]+:	24017fff 	li	\$1,32767
[ 0-9a-f]+:	7c3b002d 	lhe	\$27,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	003d0821 	addu	\$1,\$1,\$29
[ 0-9a-f]+:	7c3cffad 	lhe	\$28,-1\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c3effad 	lhe	\$30,-1\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	7c3f002d 	lhe	\$31,0\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	7c22002d 	lhe	\$2,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	00240821 	addu	\$1,\$1,\$4
[ 0-9a-f]+:	7c23002d 	lhe	\$3,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c25002d 	lhe	\$5,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	00270821 	addu	\$1,\$1,\$7
[ 0-9a-f]+:	7c26ffad 	lhe	\$6,-1\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c28ffad 	lhe	\$8,-1\(\$1\)
[ 0-9a-f]+:	7d49002d 	lhe	\$9,0\(\$10\)
[ 0-9a-f]+:	3c010000 	lui	\$1,0x0
			[ 0-9a-f]+: R_MIPS_HI16	MYDATA
[ 0-9a-f]+:	24210000 	addiu	\$1,\$1,0
			[ 0-9a-f]+: R_MIPS_LO16	MYDATA
[ 0-9a-f]+:	7c2b002d 	lhe	\$11,0\(\$1\)
[ 0-9a-f]+:	7dac802e 	lle	\$12,-256\(\$13\)
[ 0-9a-f]+:	7c0e802e 	lle	\$14,-256\(\$0\)
[ 0-9a-f]+:	7e0f7fae 	lle	\$15,255\(\$16\)
[ 0-9a-f]+:	7c117fae 	lle	\$17,255\(\$0\)
[ 0-9a-f]+:	2661feff 	addiu	\$1,\$19,-257
[ 0-9a-f]+:	7c32002e 	lle	\$18,0\(\$1\)
[ 0-9a-f]+:	2401feff 	li	\$1,-257
[ 0-9a-f]+:	7c34002e 	lle	\$20,0\(\$1\)
[ 0-9a-f]+:	26c10100 	addiu	\$1,\$22,256
[ 0-9a-f]+:	7c35002e 	lle	\$21,0\(\$1\)
[ 0-9a-f]+:	24010100 	li	\$1,256
[ 0-9a-f]+:	7c37002e 	lle	\$23,0\(\$1\)
[ 0-9a-f]+:	2721fe00 	addiu	\$1,\$25,-512
[ 0-9a-f]+:	7c38002e 	lle	\$24,0\(\$1\)
[ 0-9a-f]+:	2401fe00 	li	\$1,-512
[ 0-9a-f]+:	7c3a002e 	lle	\$26,0\(\$1\)
[ 0-9a-f]+:	278101ff 	addiu	\$1,\$28,511
[ 0-9a-f]+:	7c3b002e 	lle	\$27,0\(\$1\)
[ 0-9a-f]+:	240101ff 	li	\$1,511
[ 0-9a-f]+:	7c3d002e 	lle	\$29,0\(\$1\)
[ 0-9a-f]+:	27e1fc00 	addiu	\$1,\$31,-1024
[ 0-9a-f]+:	7c3e002e 	lle	\$30,0\(\$1\)
[ 0-9a-f]+:	2401fc00 	li	\$1,-1024
[ 0-9a-f]+:	7c20002e 	lle	\$0,0\(\$1\)
[ 0-9a-f]+:	246103ff 	addiu	\$1,\$3,1023
[ 0-9a-f]+:	7c22002e 	lle	\$2,0\(\$1\)
[ 0-9a-f]+:	240103ff 	li	\$1,1023
[ 0-9a-f]+:	7c24002e 	lle	\$4,0\(\$1\)
[ 0-9a-f]+:	24c1f800 	addiu	\$1,\$6,-2048
[ 0-9a-f]+:	7c25002e 	lle	\$5,0\(\$1\)
[ 0-9a-f]+:	2401f800 	li	\$1,-2048
[ 0-9a-f]+:	7c27002e 	lle	\$7,0\(\$1\)
[ 0-9a-f]+:	252107ff 	addiu	\$1,\$9,2047
[ 0-9a-f]+:	7c28002e 	lle	\$8,0\(\$1\)
[ 0-9a-f]+:	240107ff 	li	\$1,2047
[ 0-9a-f]+:	7c2a002e 	lle	\$10,0\(\$1\)
[ 0-9a-f]+:	2581f000 	addiu	\$1,\$12,-4096
[ 0-9a-f]+:	7c2b002e 	lle	\$11,0\(\$1\)
[ 0-9a-f]+:	2401f000 	li	\$1,-4096
[ 0-9a-f]+:	7c2d002e 	lle	\$13,0\(\$1\)
[ 0-9a-f]+:	25e10fff 	addiu	\$1,\$15,4095
[ 0-9a-f]+:	7c2e002e 	lle	\$14,0\(\$1\)
[ 0-9a-f]+:	24010fff 	li	\$1,4095
[ 0-9a-f]+:	7c30002e 	lle	\$16,0\(\$1\)
[ 0-9a-f]+:	26418000 	addiu	\$1,\$18,-32768
[ 0-9a-f]+:	7c31002e 	lle	\$17,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c33002e 	lle	\$19,0\(\$1\)
[ 0-9a-f]+:	26a17fff 	addiu	\$1,\$21,32767
[ 0-9a-f]+:	7c34002e 	lle	\$20,0\(\$1\)
[ 0-9a-f]+:	24017fff 	li	\$1,32767
[ 0-9a-f]+:	7c36002e 	lle	\$22,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	00380821 	addu	\$1,\$1,\$24
[ 0-9a-f]+:	7c37ffae 	lle	\$23,-1\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c39ffae 	lle	\$25,-1\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	003b0821 	addu	\$1,\$1,\$27
[ 0-9a-f]+:	7c3a002e 	lle	\$26,0\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	7c3c002e 	lle	\$28,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	003e0821 	addu	\$1,\$1,\$30
[ 0-9a-f]+:	7c3d002e 	lle	\$29,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c3f002e 	lle	\$31,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	00220821 	addu	\$1,\$1,\$2
[ 0-9a-f]+:	7c20ffae 	lle	\$0,-1\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c23ffae 	lle	\$3,-1\(\$1\)
[ 0-9a-f]+:	7ca4002e 	lle	\$4,0\(\$5\)
[ 0-9a-f]+:	3c010000 	lui	\$1,0x0
			[ 0-9a-f]+: R_MIPS_HI16	MYDATA
[ 0-9a-f]+:	24210000 	addiu	\$1,\$1,0
			[ 0-9a-f]+: R_MIPS_LO16	MYDATA
[ 0-9a-f]+:	7c26002e 	lle	\$6,0\(\$1\)
[ 0-9a-f]+:	7d07802f 	lwe	\$7,-256\(\$8\)
[ 0-9a-f]+:	7c09802f 	lwe	\$9,-256\(\$0\)
[ 0-9a-f]+:	7d6a7faf 	lwe	\$10,255\(\$11\)
[ 0-9a-f]+:	7c0c7faf 	lwe	\$12,255\(\$0\)
[ 0-9a-f]+:	25c1feff 	addiu	\$1,\$14,-257
[ 0-9a-f]+:	7c2d002f 	lwe	\$13,0\(\$1\)
[ 0-9a-f]+:	2401feff 	li	\$1,-257
[ 0-9a-f]+:	7c2f002f 	lwe	\$15,0\(\$1\)
[ 0-9a-f]+:	26210100 	addiu	\$1,\$17,256
[ 0-9a-f]+:	7c30002f 	lwe	\$16,0\(\$1\)
[ 0-9a-f]+:	24010100 	li	\$1,256
[ 0-9a-f]+:	7c32002f 	lwe	\$18,0\(\$1\)
[ 0-9a-f]+:	2681fe00 	addiu	\$1,\$20,-512
[ 0-9a-f]+:	7c33002f 	lwe	\$19,0\(\$1\)
[ 0-9a-f]+:	2401fe00 	li	\$1,-512
[ 0-9a-f]+:	7c35002f 	lwe	\$21,0\(\$1\)
[ 0-9a-f]+:	26e101ff 	addiu	\$1,\$23,511
[ 0-9a-f]+:	7c36002f 	lwe	\$22,0\(\$1\)
[ 0-9a-f]+:	240101ff 	li	\$1,511
[ 0-9a-f]+:	7c38002f 	lwe	\$24,0\(\$1\)
[ 0-9a-f]+:	2741fc00 	addiu	\$1,\$26,-1024
[ 0-9a-f]+:	7c39002f 	lwe	\$25,0\(\$1\)
[ 0-9a-f]+:	2401fc00 	li	\$1,-1024
[ 0-9a-f]+:	7c3b002f 	lwe	\$27,0\(\$1\)
[ 0-9a-f]+:	27a103ff 	addiu	\$1,\$29,1023
[ 0-9a-f]+:	7c3c002f 	lwe	\$28,0\(\$1\)
[ 0-9a-f]+:	240103ff 	li	\$1,1023
[ 0-9a-f]+:	7c3e002f 	lwe	\$30,0\(\$1\)
[ 0-9a-f]+:	2401f800 	li	\$1,-2048
[ 0-9a-f]+:	7c3f002f 	lwe	\$31,0\(\$1\)
[ 0-9a-f]+:	2401f800 	li	\$1,-2048
[ 0-9a-f]+:	7c22002f 	lwe	\$2,0\(\$1\)
[ 0-9a-f]+:	248107ff 	addiu	\$1,\$4,2047
[ 0-9a-f]+:	7c23002f 	lwe	\$3,0\(\$1\)
[ 0-9a-f]+:	240107ff 	li	\$1,2047
[ 0-9a-f]+:	7c25002f 	lwe	\$5,0\(\$1\)
[ 0-9a-f]+:	24e1f000 	addiu	\$1,\$7,-4096
[ 0-9a-f]+:	7c26002f 	lwe	\$6,0\(\$1\)
[ 0-9a-f]+:	2401f000 	li	\$1,-4096
[ 0-9a-f]+:	7c28002f 	lwe	\$8,0\(\$1\)
[ 0-9a-f]+:	25410fff 	addiu	\$1,\$10,4095
[ 0-9a-f]+:	7c29002f 	lwe	\$9,0\(\$1\)
[ 0-9a-f]+:	24010fff 	li	\$1,4095
[ 0-9a-f]+:	7c2b002f 	lwe	\$11,0\(\$1\)
[ 0-9a-f]+:	25a18000 	addiu	\$1,\$13,-32768
[ 0-9a-f]+:	7c2c002f 	lwe	\$12,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c2e002f 	lwe	\$14,0\(\$1\)
[ 0-9a-f]+:	26017fff 	addiu	\$1,\$16,32767
[ 0-9a-f]+:	7c2f002f 	lwe	\$15,0\(\$1\)
[ 0-9a-f]+:	24017fff 	li	\$1,32767
[ 0-9a-f]+:	7c31002f 	lwe	\$17,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	00330821 	addu	\$1,\$1,\$19
[ 0-9a-f]+:	7c32ffaf 	lwe	\$18,-1\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c34ffaf 	lwe	\$20,-1\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	00360821 	addu	\$1,\$1,\$22
[ 0-9a-f]+:	7c35002f 	lwe	\$21,0\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	7c37002f 	lwe	\$23,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	00390821 	addu	\$1,\$1,\$25
[ 0-9a-f]+:	7c38002f 	lwe	\$24,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c3a002f 	lwe	\$26,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	003c0821 	addu	\$1,\$1,\$28
[ 0-9a-f]+:	7c3bffaf 	lwe	\$27,-1\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c3dffaf 	lwe	\$29,-1\(\$1\)
[ 0-9a-f]+:	7ffe002f 	lwe	\$30,0\(\$31\)
[ 0-9a-f]+:	3c010000 	lui	\$1,0x0
			[ 0-9a-f]+: R_MIPS_HI16	MYDATA
[ 0-9a-f]+:	24210000 	addiu	\$1,\$1,0
			[ 0-9a-f]+: R_MIPS_LO16	MYDATA
[ 0-9a-f]+:	7c20002f 	lwe	\$0,0\(\$1\)
[ 0-9a-f]+:	7f17801c 	sbe	\$23,-256\(\$24\)
[ 0-9a-f]+:	7c19801c 	sbe	\$25,-256\(\$0\)
[ 0-9a-f]+:	7f7a7f9c 	sbe	\$26,255\(\$27\)
[ 0-9a-f]+:	7c1c7f9c 	sbe	\$28,255\(\$0\)
[ 0-9a-f]+:	27c1feff 	addiu	\$1,\$30,-257
[ 0-9a-f]+:	7c3d001c 	sbe	\$29,0\(\$1\)
[ 0-9a-f]+:	2401feff 	li	\$1,-257
[ 0-9a-f]+:	7c3f001c 	sbe	\$31,0\(\$1\)
[ 0-9a-f]+:	24410100 	addiu	\$1,\$2,256
[ 0-9a-f]+:	7c20001c 	sbe	\$0,0\(\$1\)
[ 0-9a-f]+:	24010100 	li	\$1,256
[ 0-9a-f]+:	7c23001c 	sbe	\$3,0\(\$1\)
[ 0-9a-f]+:	24a1fe00 	addiu	\$1,\$5,-512
[ 0-9a-f]+:	7c24001c 	sbe	\$4,0\(\$1\)
[ 0-9a-f]+:	2401fe00 	li	\$1,-512
[ 0-9a-f]+:	7c26001c 	sbe	\$6,0\(\$1\)
[ 0-9a-f]+:	250101ff 	addiu	\$1,\$8,511
[ 0-9a-f]+:	7c27001c 	sbe	\$7,0\(\$1\)
[ 0-9a-f]+:	240101ff 	li	\$1,511
[ 0-9a-f]+:	7c29001c 	sbe	\$9,0\(\$1\)
[ 0-9a-f]+:	2561fc00 	addiu	\$1,\$11,-1024
[ 0-9a-f]+:	7c2a001c 	sbe	\$10,0\(\$1\)
[ 0-9a-f]+:	2401fc00 	li	\$1,-1024
[ 0-9a-f]+:	7c2c001c 	sbe	\$12,0\(\$1\)
[ 0-9a-f]+:	25c103ff 	addiu	\$1,\$14,1023
[ 0-9a-f]+:	7c2d001c 	sbe	\$13,0\(\$1\)
[ 0-9a-f]+:	240103ff 	li	\$1,1023
[ 0-9a-f]+:	7c2f001c 	sbe	\$15,0\(\$1\)
[ 0-9a-f]+:	2621f800 	addiu	\$1,\$17,-2048
[ 0-9a-f]+:	7c30001c 	sbe	\$16,0\(\$1\)
[ 0-9a-f]+:	2401f800 	li	\$1,-2048
[ 0-9a-f]+:	7c32001c 	sbe	\$18,0\(\$1\)
[ 0-9a-f]+:	268107ff 	addiu	\$1,\$20,2047
[ 0-9a-f]+:	7c33001c 	sbe	\$19,0\(\$1\)
[ 0-9a-f]+:	240107ff 	li	\$1,2047
[ 0-9a-f]+:	7c35001c 	sbe	\$21,0\(\$1\)
[ 0-9a-f]+:	26e1f000 	addiu	\$1,\$23,-4096
[ 0-9a-f]+:	7c36001c 	sbe	\$22,0\(\$1\)
[ 0-9a-f]+:	2401f000 	li	\$1,-4096
[ 0-9a-f]+:	7c38001c 	sbe	\$24,0\(\$1\)
[ 0-9a-f]+:	27410fff 	addiu	\$1,\$26,4095
[ 0-9a-f]+:	7c39001c 	sbe	\$25,0\(\$1\)
[ 0-9a-f]+:	24010fff 	li	\$1,4095
[ 0-9a-f]+:	7c3b001c 	sbe	\$27,0\(\$1\)
[ 0-9a-f]+:	27a18000 	addiu	\$1,\$29,-32768
[ 0-9a-f]+:	7c3c001c 	sbe	\$28,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c3e001c 	sbe	\$30,0\(\$1\)
[ 0-9a-f]+:	24017fff 	li	\$1,32767
[ 0-9a-f]+:	7c3f001c 	sbe	\$31,0\(\$1\)
[ 0-9a-f]+:	24017fff 	li	\$1,32767
[ 0-9a-f]+:	7c22001c 	sbe	\$2,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	00240821 	addu	\$1,\$1,\$4
[ 0-9a-f]+:	7c23ff9c 	sbe	\$3,-1\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c25ff9c 	sbe	\$5,-1\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	00270821 	addu	\$1,\$1,\$7
[ 0-9a-f]+:	7c26001c 	sbe	\$6,0\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	7c28001c 	sbe	\$8,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	002a0821 	addu	\$1,\$1,\$10
[ 0-9a-f]+:	7c29001c 	sbe	\$9,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c2b001c 	sbe	\$11,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	002d0821 	addu	\$1,\$1,\$13
[ 0-9a-f]+:	7c2cff9c 	sbe	\$12,-1\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c2eff9c 	sbe	\$14,-1\(\$1\)
[ 0-9a-f]+:	7e0f001c 	sbe	\$15,0\(\$16\)
[ 0-9a-f]+:	3c010000 	lui	\$1,0x0
			[ 0-9a-f]+: R_MIPS_HI16	MYDATA
[ 0-9a-f]+:	24210000 	addiu	\$1,\$1,0
			[ 0-9a-f]+: R_MIPS_LO16	MYDATA
[ 0-9a-f]+:	7c31001c 	sbe	\$17,0\(\$1\)
[ 0-9a-f]+:	7e72801e 	sce	\$18,-256\(\$19\)
[ 0-9a-f]+:	7c14801e 	sce	\$20,-256\(\$0\)
[ 0-9a-f]+:	7ed57f9e 	sce	\$21,255\(\$22\)
[ 0-9a-f]+:	7c177f9e 	sce	\$23,255\(\$0\)
[ 0-9a-f]+:	2721feff 	addiu	\$1,\$25,-257
[ 0-9a-f]+:	7c38001e 	sce	\$24,0\(\$1\)
[ 0-9a-f]+:	2401feff 	li	\$1,-257
[ 0-9a-f]+:	7c3a001e 	sce	\$26,0\(\$1\)
[ 0-9a-f]+:	27810100 	addiu	\$1,\$28,256
[ 0-9a-f]+:	7c3b001e 	sce	\$27,0\(\$1\)
[ 0-9a-f]+:	24010100 	li	\$1,256
[ 0-9a-f]+:	7c3d001e 	sce	\$29,0\(\$1\)
[ 0-9a-f]+:	27e1fe00 	addiu	\$1,\$31,-512
[ 0-9a-f]+:	7c3e001e 	sce	\$30,0\(\$1\)
[ 0-9a-f]+:	2401fe00 	li	\$1,-512
[ 0-9a-f]+:	7c20001e 	sce	\$0,0\(\$1\)
[ 0-9a-f]+:	246101ff 	addiu	\$1,\$3,511
[ 0-9a-f]+:	7c22001e 	sce	\$2,0\(\$1\)
[ 0-9a-f]+:	240101ff 	li	\$1,511
[ 0-9a-f]+:	7c24001e 	sce	\$4,0\(\$1\)
[ 0-9a-f]+:	24c1fc00 	addiu	\$1,\$6,-1024
[ 0-9a-f]+:	7c25001e 	sce	\$5,0\(\$1\)
[ 0-9a-f]+:	2401fc00 	li	\$1,-1024
[ 0-9a-f]+:	7c27001e 	sce	\$7,0\(\$1\)
[ 0-9a-f]+:	252103ff 	addiu	\$1,\$9,1023
[ 0-9a-f]+:	7c28001e 	sce	\$8,0\(\$1\)
[ 0-9a-f]+:	240103ff 	li	\$1,1023
[ 0-9a-f]+:	7c2a001e 	sce	\$10,0\(\$1\)
[ 0-9a-f]+:	2581f800 	addiu	\$1,\$12,-2048
[ 0-9a-f]+:	7c2b001e 	sce	\$11,0\(\$1\)
[ 0-9a-f]+:	2401f800 	li	\$1,-2048
[ 0-9a-f]+:	7c2d001e 	sce	\$13,0\(\$1\)
[ 0-9a-f]+:	25e107ff 	addiu	\$1,\$15,2047
[ 0-9a-f]+:	7c2e001e 	sce	\$14,0\(\$1\)
[ 0-9a-f]+:	240107ff 	li	\$1,2047
[ 0-9a-f]+:	7c30001e 	sce	\$16,0\(\$1\)
[ 0-9a-f]+:	2641f000 	addiu	\$1,\$18,-4096
[ 0-9a-f]+:	7c31001e 	sce	\$17,0\(\$1\)
[ 0-9a-f]+:	2401f000 	li	\$1,-4096
[ 0-9a-f]+:	7c33001e 	sce	\$19,0\(\$1\)
[ 0-9a-f]+:	26a10fff 	addiu	\$1,\$21,4095
[ 0-9a-f]+:	7c34001e 	sce	\$20,0\(\$1\)
[ 0-9a-f]+:	24010fff 	li	\$1,4095
[ 0-9a-f]+:	7c36001e 	sce	\$22,0\(\$1\)
[ 0-9a-f]+:	27018000 	addiu	\$1,\$24,-32768
[ 0-9a-f]+:	7c37001e 	sce	\$23,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c39001e 	sce	\$25,0\(\$1\)
[ 0-9a-f]+:	27617fff 	addiu	\$1,\$27,32767
[ 0-9a-f]+:	7c3a001e 	sce	\$26,0\(\$1\)
[ 0-9a-f]+:	24017fff 	li	\$1,32767
[ 0-9a-f]+:	7c3c001e 	sce	\$28,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	003e0821 	addu	\$1,\$1,\$30
[ 0-9a-f]+:	7c3dff9e 	sce	\$29,-1\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c3fff9e 	sce	\$31,-1\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	00220821 	addu	\$1,\$1,\$2
[ 0-9a-f]+:	7c20001e 	sce	\$0,0\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	7c23001e 	sce	\$3,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	00250821 	addu	\$1,\$1,\$5
[ 0-9a-f]+:	7c24001e 	sce	\$4,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c26001e 	sce	\$6,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	00280821 	addu	\$1,\$1,\$8
[ 0-9a-f]+:	7c27ff9e 	sce	\$7,-1\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c29ff9e 	sce	\$9,-1\(\$1\)
[ 0-9a-f]+:	7d6a001e 	sce	\$10,0\(\$11\)
[ 0-9a-f]+:	3c010000 	lui	\$1,0x0
			[ 0-9a-f]+: R_MIPS_HI16	MYDATA
[ 0-9a-f]+:	24210000 	addiu	\$1,\$1,0
			[ 0-9a-f]+: R_MIPS_LO16	MYDATA
[ 0-9a-f]+:	7c2c001e 	sce	\$12,0\(\$1\)
[ 0-9a-f]+:	7dcd801d 	she	\$13,-256\(\$14\)
[ 0-9a-f]+:	7c0f801d 	she	\$15,-256\(\$0\)
[ 0-9a-f]+:	7e307f9d 	she	\$16,255\(\$17\)
[ 0-9a-f]+:	7c127f9d 	she	\$18,255\(\$0\)
[ 0-9a-f]+:	2681feff 	addiu	\$1,\$20,-257
[ 0-9a-f]+:	7c33001d 	she	\$19,0\(\$1\)
[ 0-9a-f]+:	2401feff 	li	\$1,-257
[ 0-9a-f]+:	7c35001d 	she	\$21,0\(\$1\)
[ 0-9a-f]+:	26e10100 	addiu	\$1,\$23,256
[ 0-9a-f]+:	7c36001d 	she	\$22,0\(\$1\)
[ 0-9a-f]+:	24010100 	li	\$1,256
[ 0-9a-f]+:	7c38001d 	she	\$24,0\(\$1\)
[ 0-9a-f]+:	2741fe00 	addiu	\$1,\$26,-512
[ 0-9a-f]+:	7c39001d 	she	\$25,0\(\$1\)
[ 0-9a-f]+:	2401fe00 	li	\$1,-512
[ 0-9a-f]+:	7c3b001d 	she	\$27,0\(\$1\)
[ 0-9a-f]+:	27a101ff 	addiu	\$1,\$29,511
[ 0-9a-f]+:	7c3c001d 	she	\$28,0\(\$1\)
[ 0-9a-f]+:	240101ff 	li	\$1,511
[ 0-9a-f]+:	7c3e001d 	she	\$30,0\(\$1\)
[ 0-9a-f]+:	2401fc00 	li	\$1,-1024
[ 0-9a-f]+:	7c3f001d 	she	\$31,0\(\$1\)
[ 0-9a-f]+:	2401fc00 	li	\$1,-1024
[ 0-9a-f]+:	7c22001d 	she	\$2,0\(\$1\)
[ 0-9a-f]+:	248103ff 	addiu	\$1,\$4,1023
[ 0-9a-f]+:	7c23001d 	she	\$3,0\(\$1\)
[ 0-9a-f]+:	240103ff 	li	\$1,1023
[ 0-9a-f]+:	7c25001d 	she	\$5,0\(\$1\)
[ 0-9a-f]+:	24e1f800 	addiu	\$1,\$7,-2048
[ 0-9a-f]+:	7c26001d 	she	\$6,0\(\$1\)
[ 0-9a-f]+:	2401f800 	li	\$1,-2048
[ 0-9a-f]+:	7c28001d 	she	\$8,0\(\$1\)
[ 0-9a-f]+:	254107ff 	addiu	\$1,\$10,2047
[ 0-9a-f]+:	7c29001d 	she	\$9,0\(\$1\)
[ 0-9a-f]+:	240107ff 	li	\$1,2047
[ 0-9a-f]+:	7c2b001d 	she	\$11,0\(\$1\)
[ 0-9a-f]+:	25a1f000 	addiu	\$1,\$13,-4096
[ 0-9a-f]+:	7c2c001d 	she	\$12,0\(\$1\)
[ 0-9a-f]+:	2401f000 	li	\$1,-4096
[ 0-9a-f]+:	7c2e001d 	she	\$14,0\(\$1\)
[ 0-9a-f]+:	26010fff 	addiu	\$1,\$16,4095
[ 0-9a-f]+:	7c2f001d 	she	\$15,0\(\$1\)
[ 0-9a-f]+:	24010fff 	li	\$1,4095
[ 0-9a-f]+:	7c31001d 	she	\$17,0\(\$1\)
[ 0-9a-f]+:	26618000 	addiu	\$1,\$19,-32768
[ 0-9a-f]+:	7c32001d 	she	\$18,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c34001d 	she	\$20,0\(\$1\)
[ 0-9a-f]+:	26c17fff 	addiu	\$1,\$22,32767
[ 0-9a-f]+:	7c35001d 	she	\$21,0\(\$1\)
[ 0-9a-f]+:	24017fff 	li	\$1,32767
[ 0-9a-f]+:	7c37001d 	she	\$23,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	00390821 	addu	\$1,\$1,\$25
[ 0-9a-f]+:	7c38ff9d 	she	\$24,-1\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c3aff9d 	she	\$26,-1\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	003c0821 	addu	\$1,\$1,\$28
[ 0-9a-f]+:	7c3b001d 	she	\$27,0\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	7c3d001d 	she	\$29,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	003f0821 	addu	\$1,\$1,\$31
[ 0-9a-f]+:	7c3e001d 	she	\$30,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c20001d 	she	\$0,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	00230821 	addu	\$1,\$1,\$3
[ 0-9a-f]+:	7c22ff9d 	she	\$2,-1\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c24ff9d 	she	\$4,-1\(\$1\)
[ 0-9a-f]+:	7cc5001d 	she	\$5,0\(\$6\)
[ 0-9a-f]+:	3c010000 	lui	\$1,0x0
			[ 0-9a-f]+: R_MIPS_HI16	MYDATA
[ 0-9a-f]+:	24210000 	addiu	\$1,\$1,0
			[ 0-9a-f]+: R_MIPS_LO16	MYDATA
[ 0-9a-f]+:	7c27001d 	she	\$7,0\(\$1\)
[ 0-9a-f]+:	7d28801f 	swe	\$8,-256\(\$9\)
[ 0-9a-f]+:	7c0a801f 	swe	\$10,-256\(\$0\)
[ 0-9a-f]+:	7d8b7f9f 	swe	\$11,255\(\$12\)
[ 0-9a-f]+:	7c0d7f9f 	swe	\$13,255\(\$0\)
[ 0-9a-f]+:	25e1feff 	addiu	\$1,\$15,-257
[ 0-9a-f]+:	7c2e001f 	swe	\$14,0\(\$1\)
[ 0-9a-f]+:	2401feff 	li	\$1,-257
[ 0-9a-f]+:	7c30001f 	swe	\$16,0\(\$1\)
[ 0-9a-f]+:	26410100 	addiu	\$1,\$18,256
[ 0-9a-f]+:	7c31001f 	swe	\$17,0\(\$1\)
[ 0-9a-f]+:	24010100 	li	\$1,256
[ 0-9a-f]+:	7c33001f 	swe	\$19,0\(\$1\)
[ 0-9a-f]+:	26a1fe00 	addiu	\$1,\$21,-512
[ 0-9a-f]+:	7c34001f 	swe	\$20,0\(\$1\)
[ 0-9a-f]+:	2401fe00 	li	\$1,-512
[ 0-9a-f]+:	7c36001f 	swe	\$22,0\(\$1\)
[ 0-9a-f]+:	270101ff 	addiu	\$1,\$24,511
[ 0-9a-f]+:	7c37001f 	swe	\$23,0\(\$1\)
[ 0-9a-f]+:	240101ff 	li	\$1,511
[ 0-9a-f]+:	7c39001f 	swe	\$25,0\(\$1\)
[ 0-9a-f]+:	2761fc00 	addiu	\$1,\$27,-1024
[ 0-9a-f]+:	7c3a001f 	swe	\$26,0\(\$1\)
[ 0-9a-f]+:	2401fc00 	li	\$1,-1024
[ 0-9a-f]+:	7c3c001f 	swe	\$28,0\(\$1\)
[ 0-9a-f]+:	27c103ff 	addiu	\$1,\$30,1023
[ 0-9a-f]+:	7c3d001f 	swe	\$29,0\(\$1\)
[ 0-9a-f]+:	240103ff 	li	\$1,1023
[ 0-9a-f]+:	7c3f001f 	swe	\$31,0\(\$1\)
[ 0-9a-f]+:	2441f800 	addiu	\$1,\$2,-2048
[ 0-9a-f]+:	7c20001f 	swe	\$0,0\(\$1\)
[ 0-9a-f]+:	2401f800 	li	\$1,-2048
[ 0-9a-f]+:	7c23001f 	swe	\$3,0\(\$1\)
[ 0-9a-f]+:	24a107ff 	addiu	\$1,\$5,2047
[ 0-9a-f]+:	7c24001f 	swe	\$4,0\(\$1\)
[ 0-9a-f]+:	240107ff 	li	\$1,2047
[ 0-9a-f]+:	7c26001f 	swe	\$6,0\(\$1\)
[ 0-9a-f]+:	2501f000 	addiu	\$1,\$8,-4096
[ 0-9a-f]+:	7c27001f 	swe	\$7,0\(\$1\)
[ 0-9a-f]+:	2401f000 	li	\$1,-4096
[ 0-9a-f]+:	7c29001f 	swe	\$9,0\(\$1\)
[ 0-9a-f]+:	25610fff 	addiu	\$1,\$11,4095
[ 0-9a-f]+:	7c2a001f 	swe	\$10,0\(\$1\)
[ 0-9a-f]+:	24010fff 	li	\$1,4095
[ 0-9a-f]+:	7c2c001f 	swe	\$12,0\(\$1\)
[ 0-9a-f]+:	25c18000 	addiu	\$1,\$14,-32768
[ 0-9a-f]+:	7c2d001f 	swe	\$13,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c2f001f 	swe	\$15,0\(\$1\)
[ 0-9a-f]+:	26217fff 	addiu	\$1,\$17,32767
[ 0-9a-f]+:	7c30001f 	swe	\$16,0\(\$1\)
[ 0-9a-f]+:	24017fff 	li	\$1,32767
[ 0-9a-f]+:	7c32001f 	swe	\$18,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	00340821 	addu	\$1,\$1,\$20
[ 0-9a-f]+:	7c33ff9f 	swe	\$19,-1\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c35ff9f 	swe	\$21,-1\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	00370821 	addu	\$1,\$1,\$23
[ 0-9a-f]+:	7c36001f 	swe	\$22,0\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	7c38001f 	swe	\$24,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	003a0821 	addu	\$1,\$1,\$26
[ 0-9a-f]+:	7c39001f 	swe	\$25,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c3b001f 	swe	\$27,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	003d0821 	addu	\$1,\$1,\$29
[ 0-9a-f]+:	7c3cff9f 	swe	\$28,-1\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c3eff9f 	swe	\$30,-1\(\$1\)
[ 0-9a-f]+:	7c1f001f 	swe	\$31,0\(\$0\)
[ 0-9a-f]+:	3c010000 	lui	\$1,0x0
			[ 0-9a-f]+: R_MIPS_HI16	MYDATA
[ 0-9a-f]+:	24210000 	addiu	\$1,\$1,0
			[ 0-9a-f]+: R_MIPS_LO16	MYDATA
[ 0-9a-f]+:	7c22001f 	swe	\$2,0\(\$1\)
[ 0-9a-f]+:	7f38801b 	cachee	0x18,-256\(\$25\)
[ 0-9a-f]+:	7c1a801b 	cachee	0x1a,-256\(\$0\)
[ 0-9a-f]+:	7f9b7f9b 	cachee	0x1b,255\(\$28\)
[ 0-9a-f]+:	7c1d7f9b 	cachee	0x1d,255\(\$0\)
[ 0-9a-f]+:	27e1feff 	addiu	\$1,\$31,-257
[ 0-9a-f]+:	7c3e001b 	cachee	0x1e,0\(\$1\)
[ 0-9a-f]+:	2401feff 	li	\$1,-257
[ 0-9a-f]+:	7c20001b 	cachee	0x0,0\(\$1\)
[ 0-9a-f]+:	24610100 	addiu	\$1,\$3,256
[ 0-9a-f]+:	7c22001b 	cachee	0x2,0\(\$1\)
[ 0-9a-f]+:	24010100 	li	\$1,256
[ 0-9a-f]+:	7c24001b 	cachee	0x4,0\(\$1\)
[ 0-9a-f]+:	24c1fe00 	addiu	\$1,\$6,-512
[ 0-9a-f]+:	7c25001b 	cachee	0x5,0\(\$1\)
[ 0-9a-f]+:	2401fe00 	li	\$1,-512
[ 0-9a-f]+:	7c27001b 	cachee	0x7,0\(\$1\)
[ 0-9a-f]+:	252101ff 	addiu	\$1,\$9,511
[ 0-9a-f]+:	7c28001b 	cachee	0x8,0\(\$1\)
[ 0-9a-f]+:	240101ff 	li	\$1,511
[ 0-9a-f]+:	7c2a001b 	cachee	0xa,0\(\$1\)
[ 0-9a-f]+:	2581fc00 	addiu	\$1,\$12,-1024
[ 0-9a-f]+:	7c2b001b 	cachee	0xb,0\(\$1\)
[ 0-9a-f]+:	2401fc00 	li	\$1,-1024
[ 0-9a-f]+:	7c2d001b 	cachee	0xd,0\(\$1\)
[ 0-9a-f]+:	25e103ff 	addiu	\$1,\$15,1023
[ 0-9a-f]+:	7c2e001b 	cachee	0xe,0\(\$1\)
[ 0-9a-f]+:	240103ff 	li	\$1,1023
[ 0-9a-f]+:	7c30001b 	cachee	0x10,0\(\$1\)
[ 0-9a-f]+:	2641f800 	addiu	\$1,\$18,-2048
[ 0-9a-f]+:	7c31001b 	cachee	0x11,0\(\$1\)
[ 0-9a-f]+:	2401f800 	li	\$1,-2048
[ 0-9a-f]+:	7c33001b 	cachee	0x13,0\(\$1\)
[ 0-9a-f]+:	26a107ff 	addiu	\$1,\$21,2047
[ 0-9a-f]+:	7c34001b 	cachee	0x14,0\(\$1\)
[ 0-9a-f]+:	240107ff 	li	\$1,2047
[ 0-9a-f]+:	7c36001b 	cachee	0x16,0\(\$1\)
[ 0-9a-f]+:	2701f000 	addiu	\$1,\$24,-4096
[ 0-9a-f]+:	7c37001b 	cachee	0x17,0\(\$1\)
[ 0-9a-f]+:	2401f000 	li	\$1,-4096
[ 0-9a-f]+:	7c39001b 	cachee	0x19,0\(\$1\)
[ 0-9a-f]+:	27610fff 	addiu	\$1,\$27,4095
[ 0-9a-f]+:	7c3a001b 	cachee	0x1a,0\(\$1\)
[ 0-9a-f]+:	24010fff 	li	\$1,4095
[ 0-9a-f]+:	7c3c001b 	cachee	0x1c,0\(\$1\)
[ 0-9a-f]+:	27c18000 	addiu	\$1,\$30,-32768
[ 0-9a-f]+:	7c3d001b 	cachee	0x1d,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c3f001b 	cachee	0x1f,0\(\$1\)
[ 0-9a-f]+:	24417fff 	addiu	\$1,\$2,32767
[ 0-9a-f]+:	7c20001b 	cachee	0x0,0\(\$1\)
[ 0-9a-f]+:	24017fff 	li	\$1,32767
[ 0-9a-f]+:	7c23001b 	cachee	0x3,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	00250821 	addu	\$1,\$1,\$5
[ 0-9a-f]+:	7c24ff9b 	cachee	0x4,-1\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c26ff9b 	cachee	0x6,-1\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	00280821 	addu	\$1,\$1,\$8
[ 0-9a-f]+:	7c27001b 	cachee	0x7,0\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	7c29001b 	cachee	0x9,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	002b0821 	addu	\$1,\$1,\$11
[ 0-9a-f]+:	7c2a001b 	cachee	0xa,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c2c001b 	cachee	0xc,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	002e0821 	addu	\$1,\$1,\$14
[ 0-9a-f]+:	7c2dff9b 	cachee	0xd,-1\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c2fff9b 	cachee	0xf,-1\(\$1\)
[ 0-9a-f]+:	7e30001b 	cachee	0x10,0\(\$17\)
[ 0-9a-f]+:	3c010000 	lui	\$1,0x0
			[ 0-9a-f]+: R_MIPS_HI16	MYDATA
[ 0-9a-f]+:	24210000 	addiu	\$1,\$1,0
			[ 0-9a-f]+: R_MIPS_LO16	MYDATA
[ 0-9a-f]+:	7c32001b 	cachee	0x12,0\(\$1\)
[ 0-9a-f]+:	7e938023 	prefe	0x13,-256\(\$20\)
[ 0-9a-f]+:	7c158023 	prefe	0x15,-256\(\$0\)
[ 0-9a-f]+:	7ef67fa3 	prefe	0x16,255\(\$23\)
[ 0-9a-f]+:	7c187fa3 	prefe	0x18,255\(\$0\)
[ 0-9a-f]+:	2741feff 	addiu	\$1,\$26,-257
[ 0-9a-f]+:	7c390023 	prefe	0x19,0\(\$1\)
[ 0-9a-f]+:	2401feff 	li	\$1,-257
[ 0-9a-f]+:	7c3b0023 	prefe	0x1b,0\(\$1\)
[ 0-9a-f]+:	27a10100 	addiu	\$1,\$29,256
[ 0-9a-f]+:	7c3c0023 	prefe	0x1c,0\(\$1\)
[ 0-9a-f]+:	24010100 	li	\$1,256
[ 0-9a-f]+:	7c3e0023 	prefe	0x1e,0\(\$1\)
[ 0-9a-f]+:	2401fe00 	li	\$1,-512
[ 0-9a-f]+:	7c3f0023 	prefe	0x1f,0\(\$1\)
[ 0-9a-f]+:	2401fe00 	li	\$1,-512
[ 0-9a-f]+:	7c220023 	prefe	0x2,0\(\$1\)
[ 0-9a-f]+:	248101ff 	addiu	\$1,\$4,511
[ 0-9a-f]+:	7c230023 	prefe	0x3,0\(\$1\)
[ 0-9a-f]+:	240101ff 	li	\$1,511
[ 0-9a-f]+:	7c250023 	prefe	0x5,0\(\$1\)
[ 0-9a-f]+:	24e1fc00 	addiu	\$1,\$7,-1024
[ 0-9a-f]+:	7c260023 	prefe	0x6,0\(\$1\)
[ 0-9a-f]+:	2401fc00 	li	\$1,-1024
[ 0-9a-f]+:	7c280023 	prefe	0x8,0\(\$1\)
[ 0-9a-f]+:	254103ff 	addiu	\$1,\$10,1023
[ 0-9a-f]+:	7c290023 	prefe	0x9,0\(\$1\)
[ 0-9a-f]+:	240103ff 	li	\$1,1023
[ 0-9a-f]+:	7c2b0023 	prefe	0xb,0\(\$1\)
[ 0-9a-f]+:	25a1f800 	addiu	\$1,\$13,-2048
[ 0-9a-f]+:	7c2c0023 	prefe	0xc,0\(\$1\)
[ 0-9a-f]+:	2401f800 	li	\$1,-2048
[ 0-9a-f]+:	7c2e0023 	prefe	0xe,0\(\$1\)
[ 0-9a-f]+:	260107ff 	addiu	\$1,\$16,2047
[ 0-9a-f]+:	7c2f0023 	prefe	0xf,0\(\$1\)
[ 0-9a-f]+:	240107ff 	li	\$1,2047
[ 0-9a-f]+:	7c310023 	prefe	0x11,0\(\$1\)
[ 0-9a-f]+:	2661f000 	addiu	\$1,\$19,-4096
[ 0-9a-f]+:	7c320023 	prefe	0x12,0\(\$1\)
[ 0-9a-f]+:	2401f000 	li	\$1,-4096
[ 0-9a-f]+:	7c340023 	prefe	0x14,0\(\$1\)
[ 0-9a-f]+:	26c10fff 	addiu	\$1,\$22,4095
[ 0-9a-f]+:	7c350023 	prefe	0x15,0\(\$1\)
[ 0-9a-f]+:	24010fff 	li	\$1,4095
[ 0-9a-f]+:	7c370023 	prefe	0x17,0\(\$1\)
[ 0-9a-f]+:	27218000 	addiu	\$1,\$25,-32768
[ 0-9a-f]+:	7c380023 	prefe	0x18,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c3a0023 	prefe	0x1a,0\(\$1\)
[ 0-9a-f]+:	27817fff 	addiu	\$1,\$28,32767
[ 0-9a-f]+:	7c3b0023 	prefe	0x1b,0\(\$1\)
[ 0-9a-f]+:	24017fff 	li	\$1,32767
[ 0-9a-f]+:	7c3d0023 	prefe	0x1d,0\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	003f0821 	addu	\$1,\$1,\$31
[ 0-9a-f]+:	7c3effa3 	prefe	0x1e,-1\(\$1\)
[ 0-9a-f]+:	24018000 	li	\$1,-32768
[ 0-9a-f]+:	7c20ffa3 	prefe	0x0,-1\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	00230821 	addu	\$1,\$1,\$3
[ 0-9a-f]+:	7c220023 	prefe	0x2,0\(\$1\)
[ 0-9a-f]+:	34018000 	li	\$1,0x8000
[ 0-9a-f]+:	7c240023 	prefe	0x4,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	00260821 	addu	\$1,\$1,\$6
[ 0-9a-f]+:	7c250023 	prefe	0x5,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c270023 	prefe	0x7,0\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	00290821 	addu	\$1,\$1,\$9
[ 0-9a-f]+:	7c28ffa3 	prefe	0x8,-1\(\$1\)
[ 0-9a-f]+:	3c018000 	lui	\$1,0x8000
[ 0-9a-f]+:	7c2affa3 	prefe	0xa,-1\(\$1\)
[ 0-9a-f]+:	7d8b0023 	prefe	0xb,0\(\$12\)
[ 0-9a-f]+:	3c010000 	lui	\$1,0x0
			[ 0-9a-f]+: R_MIPS_HI16	MYDATA
[ 0-9a-f]+:	24210000 	addiu	\$1,\$1,0
			[ 0-9a-f]+: R_MIPS_LO16	MYDATA
[ 0-9a-f]+:	7c2d0023 	prefe	0xd,0\(\$1\)
[ 0-9a-f]+:	24c10000 	addiu	\$1,\$6,0
			[ 0-9a-f]+: R_MIPS_LO16	foo
[ 0-9a-f]+:	7c250023 	prefe	0x5,0\(\$1\)
#pass
