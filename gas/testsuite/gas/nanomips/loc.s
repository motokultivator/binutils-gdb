# Source file to test DWARF-2 location information

	.file	1 "loc.s"
	.text
foo:
	.loc	1 7
	move	$4, $16
	.loc	1 9
	jrc	$4

	.loc	1 12
	move	$31, $16
	.loc	1 14
	jrc	$4

	.loc	1 17
	move	$4, $16
	.loc	1 19
	jrc	$31

	.loc	1 22
	move	$31, $16
	.loc	1 24
	jrc	$31

	.loc	1 27
	move	$4, $16
	.loc	1 29
	jalrc	$4

	.loc	1 32
	move	$31, $16
	.loc	1 34
	jalrc	$4

	.loc	1 37
	move	$4, $16
	.loc	1 39
	jal	bar

	.loc	1 42
	move	$31, $16
	.loc	1 44
	jal	bar
