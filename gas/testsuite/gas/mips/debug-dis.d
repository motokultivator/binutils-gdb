#objdump: -dr
#name: nanoMIPS disassembly with debug location info

.*:     file format .*

Disassembly of section \.text:

00000000 <foo>:
   0:	1800      	bc	2 <\.L4>
			0: R_NANOMIPS_PC10_S1	foo-0x2

00000002 <.L4>:
   2:	9008      	nop

00000004 <b>:
   4:	0000 0000 	.*
			4: R_NANOMIPS_32	\.L4
