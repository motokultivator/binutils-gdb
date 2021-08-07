	.linkrelax
	.section	.text.foo,"ax",@progbits
	.align	1
	.globl	foo
	.type	foo, @function
foo:
	jrc	$r31
	.size	foo, .-foo
	.section	.text.__start,"ax",@progbits
	.align	1
	.globl	__start
	.type	__start, @function
__start:
	beqzc	$r4,foo
	bnezc	$r4,foo
	.size	__start, .-__start
