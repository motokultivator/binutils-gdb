#objdump: -dr --prefix-addresses --show-raw-insn
#name: nanoMIPS -mabi=32 \(SVR4 PIC\)
#source: mips-abi32-pic.s
#as: -mno-xlp -EB

.*: +file format.*

Disassembly of section .text\:
[0-9a-f]+ <func> e380 0002 	aluipc	gp,00000004 <_gp\+0x[0-9a-f]+>
			0: R_NANOMIPS_PCHI20	_gp-0x4
[0-9a-f]+ <func\+0x[0-9a-f]+> e094 5244 	lui	a0,%hi\(0x12345000\)
[0-9a-f]+ <func\+0x[0-9a-f]+> 8084 0678 	ori	a0,a0,1656
[0-9a-f]+ <func\+0x[0-9a-f]+> 4080 0002 	lw	a0,0\(gp\)
			c: R_NANOMIPS_GOT_DISP	\.sdata
[0-9a-f]+ <func\+0x[0-9a-f]+> 4080 0002 	lw	a0,0\(gp\)
			10: R_NANOMIPS_GOT_DISP	\.data
[0-9a-f]+ <func\+0x[0-9a-f]+> 4080 0002 	lw	a0,0\(gp\)
			14: R_NANOMIPS_GOT_DISP	end
[0-9a-f]+ <func\+0x[0-9a-f]+> 2800 0000 	bc	[0-9a-f]+ <end\+0x[0-9a-f]+>
			18: R_NANOMIPS_PC25_S1	end-0x4
[0-9a-f]+ <func\+0x[0-9a-f]+> 4320 0002 	lw	t9,0\(gp\)
			1c: R_NANOMIPS_GOT_DISP	end
[0-9a-f]+ <func\+0x[0-9a-f]+> db30      	jalrc	t9
[0-9a-f]+ <func\+0x[0-9a-f]+> 4080 0002 	lw	a0,0\(gp\)
			22: R_NANOMIPS_GOT_PAGE	\.sdata
[0-9a-f]+ <func\+0x[0-9a-f]+> 8484 8000 	lw	a0,0\(a0\)
			26: R_NANOMIPS_GOT_OFST	\.sdata
[0-9a-f]+ <func\+0x[0-9a-f]+> 4080 0002 	lw	a0,0\(gp\)
			2a: R_NANOMIPS_GOT_PAGE	\.data
[0-9a-f]+ <func\+0x[0-9a-f]+> 8484 8000 	lw	a0,0\(a0\)
			2e: R_NANOMIPS_GOT_OFST	\.data
[0-9a-f]+ <func\+0x[0-9a-f]+> 4080 0002 	lw	a0,0\(gp\)
			32: R_NANOMIPS_GOT_PAGE	end
[0-9a-f]+ <func\+0x[0-9a-f]+> 8484 8000 	lw	a0,0\(a0\)
			36: R_NANOMIPS_GOT_OFST	end
[0-9a-f]+ <func\+0x[0-9a-f]+> 4020 0002 	lw	at,0\(gp\)
			3a: R_NANOMIPS_GOT_PAGE	\.sdata
[0-9a-f]+ <func\+0x[0-9a-f]+> 8481 8000 	lw	a0,0\(at\)
			3e: R_NANOMIPS_GOT_OFST	\.sdata
[0-9a-f]+ <func\+0x[0-9a-f]+> 84a1 8000 	lw	a1,0\(at\)
			42: R_NANOMIPS_GOT_OFST	\.sdata\+0x[0-9a-f]+
[0-9a-f]+ <func\+0x[0-9a-f]+> 4020 0002 	lw	at,0\(gp\)
			46: R_NANOMIPS_GOT_PAGE	\.data
[0-9a-f]+ <func\+0x[0-9a-f]+> 8481 8000 	lw	a0,0\(at\)
			4a: R_NANOMIPS_GOT_OFST	\.data
[0-9a-f]+ <func\+0x[0-9a-f]+> 84a1 8000 	lw	a1,0\(at\)
			4e: R_NANOMIPS_GOT_OFST	\.data\+0x[0-9a-f]+
[0-9a-f]+ <func\+0x[0-9a-f]+> 4020 0002 	lw	at,0\(gp\)
			52: R_NANOMIPS_GOT_PAGE	end
[0-9a-f]+ <func\+0x[0-9a-f]+> 8481 8000 	lw	a0,0\(at\)
			56: R_NANOMIPS_GOT_OFST	end
[0-9a-f]+ <func\+0x[0-9a-f]+> 84a1 8000 	lw	a1,0\(at\)
			5a: R_NANOMIPS_GOT_OFST	end\+0x4
[0-9a-f]+ <func\+0x[0-9a-f]+> 4020 0002 	lw	at,0\(gp\)
			5e: R_NANOMIPS_GOT_PAGE	\.sdata
[0-9a-f]+ <func\+0x[0-9a-f]+> 8481 9000 	sw	a0,0\(at\)
			62: R_NANOMIPS_GOT_OFST	\.sdata
[0-9a-f]+ <func\+0x[0-9a-f]+> 4020 0002 	lw	at,0\(gp\)
			66: R_NANOMIPS_GOT_PAGE	\.data
[0-9a-f]+ <func\+0x[0-9a-f]+> 8481 9000 	sw	a0,0\(at\)
			6a: R_NANOMIPS_GOT_OFST	\.data
[0-9a-f]+ <func\+0x[0-9a-f]+> 4020 0002 	lw	at,0\(gp\)
			6e: R_NANOMIPS_GOT_PAGE	\.sdata
[0-9a-f]+ <func\+0x[0-9a-f]+> 8481 9000 	sw	a0,0\(at\)
			72: R_NANOMIPS_GOT_OFST	\.sdata
[0-9a-f]+ <func\+0x[0-9a-f]+> 84a1 9000 	sw	a1,0\(at\)
			76: R_NANOMIPS_GOT_OFST	\.sdata\+0x4
[0-9a-f]+ <func\+0x[0-9a-f]+> 4020 0002 	lw	at,0\(gp\)
			7a: R_NANOMIPS_GOT_PAGE	\.data
[0-9a-f]+ <func\+0x[0-9a-f]+> 8481 9000 	sw	a0,0\(at\)
			7e: R_NANOMIPS_GOT_OFST	\.data
[0-9a-f]+ <func\+0x[0-9a-f]+> 84a1 9000 	sw	a1,0\(at\)
			82: R_NANOMIPS_GOT_OFST	\.data\+0x4
[0-9a-f]+ <func\+0x[0-9a-f]+> 4020 0002 	lw	at,0\(gp\)
			86: R_NANOMIPS_GOT_PAGE	\.data
[0-9a-f]+ <func\+0x[0-9a-f]+> 8481 4000 	lh	a0,0\(at\)
			8a: R_NANOMIPS_GOT_OFST	\.data
[0-9a-f]+ <func\+0x[0-9a-f]+> 4020 0002 	lw	at,0\(gp\)
			8e: R_NANOMIPS_GOT_PAGE	\.data
[0-9a-f]+ <func\+0x[0-9a-f]+> 8481 5000 	sh	a0,0\(at\)
			92: R_NANOMIPS_GOT_OFST	\.data
[0-9a-f]+ <func\+0x[0-9a-f]+> 4020 0002 	lw	at,0\(gp\)
			96: R_NANOMIPS_GOT_PAGE	\.data
[0-9a-f]+ <func\+0x[0-9a-f]+> 8481 8000 	lw	a0,0\(at\)
			9a: R_NANOMIPS_GOT_OFST	\.data
[0-9a-f]+ <func\+0x[0-9a-f]+> 4020 0002 	lw	at,0\(gp\)
			9e: R_NANOMIPS_GOT_PAGE	\.data
[0-9a-f]+ <func\+0x[0-9a-f]+> 8481 9000 	sw	a0,0\(at\)
			a2: R_NANOMIPS_GOT_OFST	\.data
[0-9a-f]+ <func\+0x[0-9a-f]+> e090 07fc 	lui	a0,%hi\(0x3ff00000\)
[0-9a-f]+ <func\+0x[0-9a-f]+> 10a0      	move	a1,zero
[0-9a-f]+ <func\+0x[0-9a-f]+> 4020 0002 	lw	at,0\(gp\)
			ac: R_NANOMIPS_GOT_DISP	\.rodata
[0-9a-f]+ <func\+0x[0-9a-f]+> 8481 8000 	lw	a0,0\(at\)
[0-9a-f]+ <func\+0x[0-9a-f]+> 84a1 8004 	lw	a1,4\(at\)
[0-9a-f]+ <func\+0x[0-9a-f]+> e030 07fc 	lui	at,%hi\(0x3ff00000\)
[0-9a-f]+ <func\+0x[0-9a-f]+> a020 383b 	mthc1	at,\$f0
[0-9a-f]+ <func\+0x[0-9a-f]+> a000 283b 	mtc1	zero,\$f0
#[0-9a-f]+ <func\+0x[0-9a-f]+> 4020 0002 	lw	at,0\(gp\)
#			c4: R_NANOMIPS_GOT_DISP	\.rodata\+0x[0-9a-f]+
#[0-9a-f]+ <func\+0x[0-9a-f]+> 8401 e000 	ldc1	\$f0,0\(at\)
#			d0: R_NANOMIPS_GOT_OFST	\.rodata\+0x[0-9a-f]+
[0-9a-f]+ <func\+0x[0-9a-f]+> 0085 0064 	addiu	a0,a1,100
[0-9a-f]+ <func\+0x[0-9a-f]+> 8084 5001 	sltiu	a0,a0,1
[0-9a-f]+ <func\+0x[0-9a-f]+> 0085 0064 	addiu	a0,a1,100
[0-9a-f]+ <func\+0x[0-9a-f]+> 2080 2390 	sltu	a0,zero,a0
[0-9a-f]+ <func\+0x[0-9a-f]+> 1085      	move	a0,a1
	...
#pass
