#objdump: -dr
#name: Minimize relocs special cases
#as: -mminimize-relocs

# Check reloc minimization special cases

.*: +file format .*nanomips.*

Disassembly of section \.text:

00000000 <main>:
   0:	9008      	nop

00000002 <\$L1>:
   2:	aa07 0000 	bnec	a3,s0,26 <\$L2>
			2: R_NANOMIPS_PC14_S1	\$L2
   6:	aa06 0000 	bnec	a2,s0,2 <\$L1>
			6: R_NANOMIPS_PC14_S1	\$L1
#...
00000026 <\$L2>:
  26:	aa07 0000 	bnec	a3,s0,52 <\$L3>
			26: R_NANOMIPS_PC14_S1	\$L3
  2a:	aa06 3ff9 	bnec	a2,s0,26 <\$L2>
  2e:	8000 c000 	nop
#...
00000052 <\$L3>:
  52:	aa07 0000 	bnec	a3,s0,84 <\$L4>
			52: R_NANOMIPS_PC14_S1	\$L4
  56:	aa06 0000 	bnec	a2,s0,52 <\$L3>
			56: R_NANOMIPS_PC14_S1	\$L3
#pass