# source file to test assembly of MIPS DSP ASE for MIPS32 instructions

	.set noreorder
	.set nomacro
	.set noat

	.text
text_label:

	addq.ph		$0,$1,$2
	addq_s.ph	$1,$2,$3
	addq_s.w	$2,$3,$4
	addu.qb		$3,$4,$5
	addu_s.qb	$4,$5,$6
	subq.ph		$5,$6,$7
	subq_s.ph	$6,$7,$8
	subq_s.w	$7,$8,$9
	subu.qb		$8,$9,$10
	subu_s.qb	$9,$10,$11
	addsc		$10,$11,$12
	addwc		$11,$12,$13
	modsub		$12,$13,$14
	raddu.w.qb	$13,$14
	absq_s.ph	$14,$15
	absq_s.w	$15,$16
	precrq.qb.ph	$16,$17,$18
	precrq.ph.w	$17,$18,$19
	precrq_rs.ph.w	$18,$19,$20
	precrqu_s.qb.ph	$19,$20,$21
	preceq.w.phl	$20,$21
	preceq.w.phr	$21,$22
	precequ.ph.qbl	$22,$23
	precequ.ph.qbr	$23,$24
	precequ.ph.qbla	$24,$25
	precequ.ph.qbra	$25,$26
	preceu.ph.qbl	$26,$27
	preceu.ph.qbr	$27,$28
	preceu.ph.qbla	$28,$29
	preceu.ph.qbra	$29,$30
	shll.qb		$30,$31,0
	shll.qb		$30,$31,7
	shllv.qb	$31,$0,$1
	shll.ph		$0,$1,0
	shll.ph		$0,$1,15
	shllv.ph	$1,$2,$3
	shll_s.ph	$2,$3,0
	shll_s.ph	$2,$3,15
	shllv_s.ph	$3,$4,$5
	shll_s.w	$4,$5,0
	shll_s.w	$4,$5,31
	shllv_s.w	$5,$6,$7
	shrl.qb		$6,$7,0
	shrl.qb		$6,$7,7
	shrlv.qb	$7,$8,$9
	shra.ph		$8,$9,0
	shra.ph		$8,$9,15
	shrav.ph	$9,$10,$11
	shra_r.ph	$10,$11,0
	shra_r.ph	$10,$11,15
	shrav_r.ph	$11,$12,$13
	shra_r.w	$12,$13,0
	shra_r.w	$12,$13,31
	shrav_r.w	$13,$14,$15
	muleu_s.ph.qbl	$14,$15,$16
	muleu_s.ph.qbr	$15,$16,$17
	mulq_rs.ph	$16,$17,$18
	muleq_s.w.phl	$17,$18,$19
	muleq_s.w.phr	$18,$19,$20
	dpau.h.qbl	$ac0,$19,$20
	dpau.h.qbr	$ac1,$20,$21
	dpsu.h.qbl	$ac2,$21,$22
	dpsu.h.qbr	$ac3,$22,$23
	dpaq_s.w.ph	$ac0,$23,$24
	dpsq_s.w.ph	$ac1,$24,$25
	mulsaq_s.w.ph	$ac2,$25,$26
	dpaq_sa.l.w	$ac3,$26,$27
	dpsq_sa.l.w	$ac0,$27,$28
	maq_s.w.phl	$ac1,$28,$29
	maq_s.w.phr	$ac2,$29,$30
	maq_sa.w.phl	$ac3,$30,$31
	maq_sa.w.phr	$ac0,$31,$0
	bitrev		$0,$1
	insv		$1,$2
	repl.qb		$2,0
	repl.qb		$2,255
	replv.qb	$3,$4
	repl.ph		$4,-512
	repl.ph		$4,511
	replv.ph	$5,$6
	cmpu.eq.qb	$6,$7
	cmpu.lt.qb	$7,$8
	cmpu.le.qb	$8,$9
	cmpgu.eq.qb	$9,$10,$11
	cmpgu.lt.qb	$10,$11,$12
	cmpgu.le.qb	$11,$12,$13
	cmp.eq.ph	$12,$13
	cmp.lt.ph	$13,$14
	cmp.le.ph	$14,$15
	pick.qb		$15,$16,$17
	pick.ph		$16,$17,$18
	packrl.ph	$17,$18,$19
	extr.w		$18,$ac1,0
	extr.w		$18,$ac1,31
	extr_r.w	$19,$ac2,0
	extr_r.w	$19,$ac2,31
	extr_rs.w	$20,$ac3,0
	extr_rs.w	$20,$ac3,31
	extr_s.h	$21,$ac0,0
	extr_s.h	$21,$ac0,31
	extrv_s.h	$22,$ac1,$23
	extrv.w		$23,$ac2,$24
	extrv_r.w	$24,$ac3,$25
	extrv_rs.w	$25,$ac0,$26
	extp		$26,$ac1,0
	extp		$26,$ac1,31
	extpv		$27,$ac2,$28
	extpdp		$28,$ac3,0
	extpdp		$28,$ac3,31
	extpdpv		$29,$ac0,$30
	shilo		$ac1,-32
	shilo		$ac1,31
	shilov		$ac2,$30
	mthlip		$31,$ac3
	mfhi		$0,$ac0
	mflo		$1,$ac1
	mthi		$2,$ac2
	mtlo		$3,$ac3
	wrdsp		$4,0
	wrdsp		$4,63
	wrdsp		$5
	rddsp		$6,0
	rddsp		$6,63
	rddsp		$7
	lbux		$8,$9($10)
	lhx		$9,$10($11)
	lwx		$10,$11($12)
	bposge32	text_label
	nop
	madd		$ac2,$11,$12
	maddu		$ac3,$12,$13
	msub		$ac0,$13,$14
	msubu		$ac1,$14,$15
	mult		$ac3,$21,$22
	multu		$ac0,$22,$23
