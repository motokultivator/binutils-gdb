/* Bug-fix test-case:
	Potential range of branch to $L12 extends from 32 to 40.
	Typo in assembler code was overestimating the lower end
	of the range by resetting relax_sink instead of aggregating
	it at the final step.  The overestimation was outside the
	relaxation range and the branch was assumed to be non-relaxable
	to assembler.  Subsequent backward branch to $L9 which spans this
	branch was then incorrectly assumed to be fixed which made its
	target incorrect when the preceeding branch was relaxed by the
	linker.
*/
        .linkrelax
        .module pcrel
         .section        .rodata.str1.4,"aMS",@progbits,1
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
$L9:
	/* Forward conditional branch which may be relaxed.  */
        bnec    $a3,$s0,$L12
	/* Backword conditional branch cannot be relaxed but offset is not
	fixed due to preceeding variable branch. This reference must remain
	relocable in object file.  */
        bnec    $s0,$a2,$L9
	nop32
	nop32
	nop32
	nop32
        lapc.b  $a2,$LC0
        lapc.b  $a0,$LC0
        balc    __assert_func
$L12:
	nop
        .set    macro
        .set    reorder
        .end    main
