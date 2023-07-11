.linkrelax
	.module	pcrel
	.module	pic1
	.module	softfloat
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	test
	.ent	test

test:
	save		32,$ra,$s0-$s3,$gp

	.reloc		1f,R_NANOMIPS_JALR32
1:
	balc[32]	subroutine

	nop

	.reloc		1f,R_NANOMIPS_JALR32
1:
	balc[32]	subroutine

	nop

	.reloc		1f,R_NANOMIPS_JALR32
1:
	balc[32]	subroutine

	nop

	.reloc		1f,R_NANOMIPS_JALR32
1:
	balc[32]	subroutine

	restore.jrc	32,$ra,$s0-$s3,$gp
	.end	test
	.size	test, .-test

subroutine:
	nop
	jrc	$ra
