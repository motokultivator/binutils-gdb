#objdump: -dr --no-show-raw-insn -Mshow-arch-insn
#name: nanoMIPS instructions with suffixes

.*: +file format .*nanomips.*

Disassembly of section \.text:

00000000 <test>:
   0:	addiu\[r1.sp\]	a0,sp,8
   2:	addiu\[r2\]	a0,a1,4
   4:	addiu\[rs5\]	t0,t0,3
   6:	addiu\[gp.b\]	a0,gp,0
			6: R_NANOMIPS_GPREL18	test
   a:	addiu\[gp.w\]	a0,gp,0
			a: R_NANOMIPS_GPREL18	test
   e:	addiu\[neg\]	a0,a1,-4
  12:	addiu\[32\]	a0,a1,64
  16:	addiu\[48\]	a0,a0,12
  1c:	addiu\[gp48\]	a0,gp,0
			1e: R_NANOMIPS_GPREL_I32	test
  22:	addiu\[r1.sp\]	a0,sp,8
  24:	addiu\[r2\]	a0,a1,4
  26:	addiu\[rs5\]	t0,t0,3
  28:	addiu\[gp.b\]	a0,gp,0
			28: R_NANOMIPS_GPREL18	test
  2c:	addiu\[gp.w\]	a0,gp,0
			2c: R_NANOMIPS_GPREL18	test
  30:	addiu\[neg\]	a0,a1,-4
  34:	addiu\[32\]	a0,a1,64
  38:	addiu\[48\]	a0,a0,12
  3e:	addiu\[gp48\]	a0,gp,0
			40: R_NANOMIPS_GPREL_I32	test
  44:	lw\[16\]	a0,8\(a1\)
  46:	lw\[4x4\]	a1,12\(a2\)
  48:	lw\[gp16\]	a3,24\(gp\)
  4a:	lw\[gp16\]	a3,0\(gp\)
			4a: R_NANOMIPS_GPREL7_S2	test
  4c:	lw\[sp\]	a3,20\(sp\)
  4e:	lw\[gp\]	a3,224\(gp\)
  52:	lw\[gp\]	a3,0\(gp\)
			52: R_NANOMIPS_GPREL19_S2	test
  56:	lw\[s9\]	a3,20\(s0\)
  5a:	lw\[u12\]	a3,20\(s1\)
  5e:	lwpc\[48\]	a3,0 <test>
			60: R_NANOMIPS_PC_I32	test
  64:	lw\[16\]	a0,8\(a1\)
  66:	lw\[4x4\]	a1,12\(a2\)
  68:	lw\[gp16\]	a3,24\(gp\)
  6a:	lw\[gp16\]	a3,0\(gp\)
			6a: R_NANOMIPS_GPREL7_S2	test
  6c:	lw\[sp\]	a3,20\(sp\)
  6e:	lw\[gp\]	a3,224\(gp\)
  72:	lw\[gp\]	a3,0\(gp\)
			72: R_NANOMIPS_GPREL19_S2	test
  76:	lw\[s9\]	a3,20\(s0\)
  7a:	lw\[u12\]	a3,20\(s1\)
  7e:	lwpc\[48\]	a3,0 <test>
			80: R_NANOMIPS_PC_I32	test
