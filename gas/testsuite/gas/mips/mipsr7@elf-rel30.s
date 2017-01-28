	.set	nomips16
	.eqv	c1,0x12345678
	.ent	foo
foo:
	.ifndef r7
	lui	$4,%call_hi(c1)
	lui	$4,%call_hi(c2)
	lui	$4,%call_lo(c1)
	lui	$4,%call_lo(c2)
	.endif
	lui	$4,%call16(c1)
	lui	$4,%call16(c2)
	lui	$4,%got_page(c1)
	lui	$4,%got_page(c2)
	lui	$4,%got_disp(c1)
	lui	$4,%got_disp(c2)
	lui	$4,%got_ofst(c1)
	lui	$4,%got_ofst(c2)
	.ifndef r7
	lui	$4,%got_hi(c1)
	lui	$4,%got_hi(c2)
	lui	$4,%got_lo(c1)
	lui	$4,%got_lo(c2)
	.endif
	lui	$4,%got(c1)
	lui	$4,%got(c2)
	lui	$4,%gp_rel(c1)
	lui	$4,%gp_rel(c2)
	lui	$4,%got(c1)
	lui	$4,%got(c2)
	.ifndef r7_broken
	lui	$4,%tlsgd(c1)
	lui	$4,%tlsgd(c2)
	lui	$4,%tlsldm(c1)
	lui	$4,%tlsldm(c2)
	lui	$4,%dtprel_hi(c1)
	lui	$4,%dtprel_hi(c2)
	lui	$4,%dtprel_lo(c1)
	lui	$4,%dtprel_lo(c2)
	lui	$4,%tprel_hi(c1)
	lui	$4,%tprel_hi(c2)
	lui	$4,%tprel_lo(c1)
	lui	$4,%tprel_lo(c2)
	lui	$4,%gottprel(c1)
	lui	$4,%gottprel(c2)
	.endif
	.end	foo
	.eqv	c2,0x12345678
