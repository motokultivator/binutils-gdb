#as: -mcpu=archs
#objdump: -dr --prefix-addresses --show-raw-insn

.*: +file format .*arc.*

Disassembly of section .text:
0x[0-9a-f]+ 0000 0002           	bne	0
			0: ARC_S21H_PCREL	printf
0x[0-9a-f]+ 0800 0002           	blne	0x00000000
			4: ARC_S21W_PCREL	printf
0x[0-9a-f]+ 0001 0000           	b	0x00000000
			8: ARC_S25H_PCREL	printf
0x[0-9a-f]+ 0802 0000           	bl	0x00000000
			c: ARC_S25W_PCREL	printf
0x[0-9a-f]+ f800                	bl_s	0x00000000
			10: ARC_S13_PCREL	printf
