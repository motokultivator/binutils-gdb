#objdump: -dr --prefix-addresses --show-raw-insn
#name: MIPS32R7 jal-svr4pic
#as: -32 -KPIC
#source: jal-svr4pic.s

# Test the jal macro with -KPIC for R7.

.*: +file format .*mips.*

Disassembly of section \.text:
0+0000 <text_label> e000 0002 	aluipc	gp,00000000 <_gp>
			0: R_MICROMIPS_PCHI20_M12	_gp
0+0004 <text_label\+0x4> db30      	jalrc	t9
0+0006 <text_label\+0x6> 4899 0000 	jalrc	a0,t9
0+000a <text_label\+0xa> 873c 8000 	lw	t9,0\(gp\)
			a: R_MICROMIPS_GOT_DISP	text_label
0+000e <text_label\+0xe> db30      	jalrc	t9
0+0010 <text_label\+0x10> 873c 8000 	lw	t9,0\(gp\)
			10: R_MICROMIPS_CALL	weak_text_label
0+0014 <text_label\+0x14> db30      	jalrc	t9
0+0016 <text_label\+0x16> 873c 8000 	lw	t9,0\(gp\)
			16: R_MICROMIPS_CALL	external_text_label
0+001a <text_label\+0x1a> db30      	jalrc	t9
0+001c <text_label\+0x1c> 2800 0000 	bc	00000020 <text_label\+0x20>
			1c: R_MICROMIPS_PC25_S1	text_label-0x4
	\.\.\.
