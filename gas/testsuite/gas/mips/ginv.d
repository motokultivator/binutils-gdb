#objdump: -d --show-raw-insn
#name: MIPS Global INValidate instructions
#as: -mginv

# Check MIPS Global INValidate instructions

.*: +file format .*mips.*

Disassembly of section \.text:
00000000 <test>:
   0:	7c40003d 	ginvi	v0
   4:	7c6000bd 	ginvt	v1,0x0
   8:	7c8001bd 	ginvt	a0,0x1
	\.\.\.
