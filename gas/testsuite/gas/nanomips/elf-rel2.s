	.ent	foo
foo:
	lw	$4,%gprel(bar)($4)
	# Many of these do not make conceptual sense, but they shoulw
	# at least assemble.
	lw	$4,%call16(bar)($4)
	lw	$4,%got_call(bar)($4)
	lw	$4,%got_disp(bar)($4)
	lw	$4,%got_page(bar)($4)
	lw	$4,%got_ofst(bar)($4)
	aluipc	$4,%got_pcrel_hi(bar)
	lw	$4,%got_pcrel_lo(bar)($4)
	lw	$4,%got(bar)($4)
	lw	$4,%gprel(bar)($4)
	lw	$4,%tlsgd(bar)($gp)
	lw	$4,%tlsld(bar)($gp)
	lw	$4,%dtprel(bar)($4)
	lw	$4,%tprel(bar)($4)
	lw	$4,%gottprel(bar)($4)

	sw	$4,%call16(bar)($4)
	sw	$4,%got_call(bar)($4)
	sw	$4,%got_disp(bar)($4)
	sw	$4,%got_page(bar)($4)
	sw	$4,%got_ofst(bar)($4)
	aluipc	$4,%got_pcrel_hi(bar)
	sw	$4,%got_pcrel_lo(bar)($4)
	sw	$4,%got(bar)($4)
	sw	$4,%gp_rel(bar)($4)
	sw	$4,%tlsgd(bar)($gp)
	sw	$4,%tlsld(bar)($gp)
	sw	$4,%dtprel(bar)($4)
	sw	$4,%tprel(bar)($4)
	sw	$4,%gottprel(bar)($4)
	.end	foo

# Force at least 8 (non-delay-slot) zero bytes, to make 'objdump' print ...
	.align	2
	.space	8
