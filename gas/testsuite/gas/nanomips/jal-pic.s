# Source file used to test the jal macro with PIC code.

	.weak	weak_text_label
	.set 	pic1
	.ent	text_label
text_label:
	.cpsetup $25
	jal	$25
	jal	$4,$25
	jal	text_label
	jal	weak_text_label
	jal	external_text_label

# Test j as well.
	j	text_label
	.end	text_label
