/* Bug-fix test-case:
	MOLY00690538 - test reloc minimization at boundary conditions.  */

	.linkrelax
	.module pcrel
	 .section	.rodata.str1.4,"aMS",@progbits,1
	.align  2
$LC0:
	.ascii  "0\000"
	.text
	.align  1
	.globl  main
	.ent    main
	.type   main, @function
main:
	.set    noreorder
	.set    nomacro
	nop
$L1:
	/* Forward conditional branch may be relaxed from 32 to 16 bits.  */
	bnec    $a3,$s0,$L2
	/* Backword conditional branch cannot be relaxed but offset is not
	fixed due to preceeding variable branch. This reference must remain
	relocable in object file.  */
	bnec    $s0,$a2,$L1
	.rept 5
	nop32
	.endr
	lapc  $a0,$LC0
	balc    __assert_func
$L2:
	/* Forward conditional branch that cannot be relaxed to 16-bit
	   or 32-bit by virtue of its possible range at the lower end not
	   fitting within a 5-bit offset.  */
	bnec    $a3,$s0,$L3
	/* Backword conditional branch cannot be relaxed and offset is
	fixed due to preceeding invariable branch. This reference will not be
	relocable in object file.  */
	bnec    $s0,$a2,$L2
	.rept 7
	nop32
	.endr
	lapc  $a0,$LC0
	balc    __assert_func
$L3:
	/* Check that the sink for lapc is correctly applied,  keeping this
	branch potentially relaxable at the lower range (offset <= 30).  */
	bnec    $a3,$s0,$L4
	/* This reference must be relocatable in object file.  */
	bnec    $s0,$a2,$L3
	nop32
	nop32
	nop
	.rept 8
	lapc  $a0,$LC0
	.endr
$L4:
	nop
	.set    macro
	.set    reorder
	.end    main
