# Generated from C code - pr70460.c in gcc.torture.  This is the initial
# case that highlights the need for symbol-differences as relocations
# when doing linker relaxations.
	.text
	.linkrelax
	.ent foo
foo:
	addiu $5,$28,%gprel(.L5)
	lwxs	$5,$4($5)
	lui	$4,%hi(.L2)
	addiu	$4,$4,%lo(.L2)
	addu	$4,$4,$5
	jr	$4
.L3:
	lw	$4,%gprel(c)($28)
	addiu	$4,$4, .L2-(.L3)
	sw	$4,%gprel(c)($28)
.L4:
	lw	$4,%gprel(c)($28)
	addiu	$4,$4,1
	sw	$4,%gprel(c)($28)
.L2:
	jr	$31

.L5:
	.word	.L2-(.L3)
	.word	.L2-(.L4)
	.end foo

	.ent foo2
foo2:
	addiu $5,$28,%gprel(.L9)
	lwxs	$5,$4($5)
	lui	$4,%hi(.L6)
	addiu	$4,$4,%lo(.L6)
	addu	$4,$4,$5
	jr	$4
.L7:
	lw	$4,4($28)
	addiu	$4,$4, .L6-(.L7)
	sw	$4,0x100($28)
	.align 2 # Causes a frag to be generated
.L8:
	lw	$4,%gprel(foo)($28)
	addiu	$4,$4,1
.L6:
	jr	$31	
.L9:
	# No intervening relocations, but align directive creates new frag
	.word	.L7-(.L8)
	# No intervening relocations, difference is fixed.
	.word	.L6-(.L8)
	.end foo2
