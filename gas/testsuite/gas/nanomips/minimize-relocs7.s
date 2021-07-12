	.linkrelax
	.module	pcrel
	.module	softfloat
	.text
	.align	1
	.globl	test
	.ent	test
	.type	test, @function
test:
	bnezc	$a0,$L3
	beqzc   $a1,$L7
	jrc	$ra
$L3:
    nop16
	.rept (16*1024-6)/2
	nop16
	.endr
	lapc.h $a0, $LC0
$L7:
	jrc	$ra
	.end	test
	.size	test, .-test
    .data
    .align  2
	.fill 4*1024*1024
$LC0:
    .byte 0
