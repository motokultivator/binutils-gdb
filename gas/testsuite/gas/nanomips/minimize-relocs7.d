#objdump: -dr
#name: Minimize relocs special case - MOLY00694045
#as: -mminimize-relocs

# Check reloc minimization special cases

.*: +file format .*nanomips.*

Disassembly of section \.text:

00000000 <test>:
       0:	ba00      	bnezc	a0,8 <\$L3>
			0: R_NANOMIPS_PC7_S1	\$L3
       2:	88a0 0000 	beqzc	a1,4008 <\$L7>
			2: R_NANOMIPS_PC14_S1	\$L7
       6:	dbe0      	jrc	ra

00000008 <\$L3>:
#pass