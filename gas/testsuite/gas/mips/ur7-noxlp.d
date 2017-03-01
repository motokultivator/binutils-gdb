#objdump: -dr --show-raw-insn
#name: MIPSR7 XLP instructions expanded to macros
#as: -mno-xlp
#source: ur7-noxlp.s

# Check MIPSR7 instructions

.*: +file format .*mips.*

Disassembly of section .text:
00000000 <test>:
   0:	8043 c011 	sll	v0,v1,0x11
   4:	8042 c056 	srl	v0,v0,0x16
   8:	8043 c001 	sll	v0,v1,0x1
   c:	8042 c041 	srl	v0,v0,0x1
  10:	8042 c05f 	srl	v0,v0,0x1f
  14:	83ff c05f 	srl	ra,ra,0x1f
  18:	2042 115f 	align	v0,v0,v0,0x5
  1c:	2062 13df 	align	v0,v0,v1,0xf
  20:	2042 131f 	align	v0,v0,v0,0xc
  24:	2042 141f 	align	v0,v0,v0,0x10
  28:	2062 141f 	align	v0,v0,v1,0x10
  2c:	1043      	move	v0,v1
  2e:	2062 17df 	align	v0,v0,v1,0x1f
  32:	2042 105f 	align	v0,v0,v0,0x1
  36:	2042 17df 	align	v0,v0,v0,0x1f
  3a:	2062 105f 	align	v0,v0,v1,0x1
  3e:	2042 105f 	align	v0,v0,v0,0x1
  42:	2062 17df 	align	v0,v0,v1,0x1f
  46:	2063 095f 	align	at,v1,v1,0x5
  4a:	2061 1bdf 	align	v1,at,v1,0xf
  4e:	2063 1b1f 	align	v1,v1,v1,0xc
  52:	2063 0c1f 	align	at,v1,v1,0x10
  56:	2061 1c1f 	align	v1,at,v1,0x10
  5a:	9008      	nop
  5c:	9008      	nop
  5e:	2063 0fdf 	align	at,v1,v1,0x1f
  62:	2061 185f 	align	v1,at,v1,0x1
  66:	2063 085f 	align	at,v1,v1,0x1
  6a:	2061 1fdf 	align	v1,at,v1,0x1f
  6e:	9008      	nop
	\.\.\.
