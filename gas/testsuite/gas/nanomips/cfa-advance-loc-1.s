	.text
	.linkrelax
	.ent foo
foo:
	.cfi_startproc
	.reloc	1f,R_NANOMIPS_SAVERESTORE,foo
1:
	save	16,$ra,$gp
.L11:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -4
	.cfi_endproc
	.end foo
