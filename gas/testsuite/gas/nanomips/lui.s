# Source code used to test the LUI instruction with some expressions.

	.text
foo:
0:
	lui	$2, 0
	lui	$2, 65535
1:
	lui	$2, 1b - 0b
bar:
	.eqv	min, -1
	.eqv	max, 65536
