# Source file used to test the backward branches to globals in this file.

	.globl g1
	.globl g2
	.globl g3
	.globl g4
	.globl g5
	.globl g6

	.globl x1

	.text
g1:
	.space 20
g2:
	.space 20
g3:
	.space 20

x:
	bal	g1
	bal	g2
	bal	g3
	bal	g4
	bal	g5
	bal	g6

	.space 20
g4:
	.space 20
g5:
	.space 20
g6:

	b	x1
	b	x2
	b	.Ldata

	.data
.Ldata:
