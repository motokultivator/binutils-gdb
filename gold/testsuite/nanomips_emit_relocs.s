	.linkrelax
	.section	.rodata.foo,"a",@progbits
	.align	2
	.globl	foo
	.type	foo, @object
foo:
	.word foo
	.size	foo, .-foo
	.section	.rodata.bar,"a",@progbits
	.align	2
	.globl	bar
	.type	bar, @object
bar:
	.word bar
	.size	bar, .-bar
	.section	.text.__start,"ax",@progbits
	.align	1
	.globl	__start
	.type	__start, @function
__start:
	lapc	$r4,bar
	.size	__start, .-__start
