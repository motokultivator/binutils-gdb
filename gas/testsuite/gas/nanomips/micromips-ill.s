	.text
	lwm	$16-17,0($4)
	lwm	$17-$16,0($4)
	lwm	$16-$f17,0($4)
	lwm	$f16-$17,0($4)
	li.s	$4,foo
	li.s	$4,2.0e1000
	li.s	$4,$4
	li.s	1.0
