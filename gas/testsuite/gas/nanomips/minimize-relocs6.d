#objdump: -dr
#name: Minimize relocs special cases
#as: -mminimize-relocs

# Check reloc minimization special cases

.*: +file format .*nanomips.*

Disassembly of section \.text:

00000000 <main>:
   0:	9008      	nop

00000002 <\$L9>:
   2:	aa07 0000 	bnec	a3,s0,2a <\$L12>
			2: R_NANOMIPS_PC14_S1	\$L12
   6:	aa06 0000 	bnec	a2,s0,2 <\$L9>
			6: R_NANOMIPS_PC14_S1	\$L9
#pass