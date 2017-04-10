#objdump: -dr --prefix-addresses
#name: nanoMIPS ld-svr4pic
#as: -KPIC --defsym KPIC=1
#source: ld-pic.s

# Test the ld macro with -KPIC.

.*: +file format .*mips.*

Disassembly of section \.text:
[0-9a-f]+ <[^>]+> lw	a0,0\(zero\)
[0-9a-f]+ <[^>]+> lw	a1,4\(zero\)
[0-9a-f]+ <[^>]+> lw	a0,1\(zero\)
[0-9a-f]+ <[^>]+> lw	a1,5\(zero\)
[0-9a-f]+ <[^>]+> lui	at,0x8
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lui	at,0xffff8
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lui	at,0x10
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lui	at,0x1a
[0-9a-f]+ <[^>]+> lw	a0,1445\(at\)
[0-9a-f]+ <[^>]+> lw	a1,1449\(at\)
[0-9a-f]+ <[^>]+> lw	a0,0\(a1\)
[0-9a-f]+ <[^>]+> lw	a1,4\(a1\)
[0-9a-f]+ <[^>]+> lw	a0,1\(a1\)
[0-9a-f]+ <[^>]+> lw	a1,5\(a1\)
[0-9a-f]+ <[^>]+> lui	at,0x8
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lui	at,0xffff8
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lui	at,0x10
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lui	at,0x1a
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,1445\(at\)
[0-9a-f]+ <[^>]+> lw	a1,1449\(at\)
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_PAGE	.data
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.data
[0-9a-f]+ <[^>]+> lw	a1,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.data\+0x4
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_DISP	big_external_data_label
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_DISP	small_external_data_label
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_DISP	big_external_common
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_DISP	small_external_common
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_PAGE	.bss
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.bss
[0-9a-f]+ <[^>]+> lw	a1,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.bss\+0x4
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_PAGE	.bss\+0x3e8
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.bss\+0x3e8
[0-9a-f]+ <[^>]+> lw	a1,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.bss\+0x3ec
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_PAGE	.data\+0x1
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.data\+0x1
[0-9a-f]+ <[^>]+> lw	a1,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.data\+0x5
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_DISP	big_external_data_label\+0x1
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_DISP	small_external_data_label\+0x1
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_DISP	big_external_common\+0x1
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_DISP	small_external_common\+0x1
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_PAGE	.bss\+0x1
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.bss\+0x1
[0-9a-f]+ <[^>]+> lw	a1,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.bss\+0x5
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_PAGE	.bss\+0x3e9
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.bss\+0x3e9
[0-9a-f]+ <[^>]+> lw	a1,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.bss\+0x3ed
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_PAGE	.data
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.data
[0-9a-f]+ <[^>]+> lw	a1,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.data\+0x4
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_DISP	big_external_data_label
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_DISP	small_external_data_label
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_DISP	big_external_common
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_DISP	small_external_common
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_PAGE	.bss
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.bss
[0-9a-f]+ <[^>]+> lw	a1,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.bss\+0x4
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_PAGE	.bss\+0x3e8
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.bss\+0x3e8
[0-9a-f]+ <[^>]+> lw	a1,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.bss\+0x3ec
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_PAGE	.data\+0x1
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.data\+0x1
[0-9a-f]+ <[^>]+> lw	a1,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.data\+0x5
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_DISP	big_external_data_label\+0x1
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_DISP	small_external_data_label\+0x1
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_DISP	big_external_common\+0x1
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_DISP	small_external_common\+0x1
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
[0-9a-f]+ <[^>]+> lw	a1,4\(at\)
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_PAGE	.bss\+0x1
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.bss\+0x1
[0-9a-f]+ <[^>]+> lw	a1,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.bss\+0x5
[0-9a-f]+ <[^>]+> lw	at,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GOT_PAGE	.bss\+0x3e9
[0-9a-f]+ <[^>]+> addu	at,a1,at
[0-9a-f]+ <[^>]+> lw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.bss\+0x3e9
[0-9a-f]+ <[^>]+> lw	a1,0\(at\)
			[0-9a-f]+: R_NANOMIPS_GOT_OFST	.bss\+0x3ed
[0-9a-f]+ <[^>]+> nop
[0-9a-f]+ <[^>]+> nop
