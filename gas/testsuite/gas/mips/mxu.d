#objdump: -dr --prefix-addresses --show-raw-insn -Mmxu
#name: MXU instructions
#as: -32 -mmxu

.*: +file format .*mips.*


Disassembly of section \.text:
[0-9a-f]+ <[^>]*> 44021002 	mfc1	v0,\$f2
[0-9a-f]+ <[^>]*> 44020802 	mfc1	v0,\$f1
[0-9a-f]+ <[^>]*> 44821002 	mtc1	v0,\$f2
[0-9a-f]+ <[^>]*> 44820802 	mtc1	v0,\$f1
[0-9a-f]+ <[^>]*> 44621002 	mfhc1	v0,\$f2
[0-9a-f]+ <[^>]*> 44621002 	mfhc1	v0,\$f2
[0-9a-f]+ <[^>]*> 44e21002 	mthc1	v0,\$f2
[0-9a-f]+ <[^>]*> 44e21002 	mthc1	v0,\$f2
[0-9a-f]+ <[^>]*> 7010c84a 	d16mac	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7050c84a 	d16mac	xr1,xr2,xr3,xr4,AA,LW
[0-9a-f]+ <[^>]*> 7090c84a 	d16mac	xr1,xr2,xr3,xr4,AA,HW
[0-9a-f]+ <[^>]*> 70d0c84a 	d16mac	xr1,xr2,xr3,xr4,AA,XW
[0-9a-f]+ <[^>]*> 7010c84a 	d16mac	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7050c84a 	d16mac	xr1,xr2,xr3,xr4,AA,LW
[0-9a-f]+ <[^>]*> 7090c84a 	d16mac	xr1,xr2,xr3,xr4,AA,HW
[0-9a-f]+ <[^>]*> 70d0c84a 	d16mac	xr1,xr2,xr3,xr4,AA,XW
[0-9a-f]+ <[^>]*> 7110c84a 	d16mac	xr1,xr2,xr3,xr4,AS,WW
[0-9a-f]+ <[^>]*> 7150c84a 	d16mac	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7190c84a 	d16mac	xr1,xr2,xr3,xr4,AS,HW
[0-9a-f]+ <[^>]*> 71d0c84a 	d16mac	xr1,xr2,xr3,xr4,AS,XW
[0-9a-f]+ <[^>]*> 7110c84a 	d16mac	xr1,xr2,xr3,xr4,AS,WW
[0-9a-f]+ <[^>]*> 7150c84a 	d16mac	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7190c84a 	d16mac	xr1,xr2,xr3,xr4,AS,HW
[0-9a-f]+ <[^>]*> 71d0c84a 	d16mac	xr1,xr2,xr3,xr4,AS,XW
[0-9a-f]+ <[^>]*> 7210c84a 	d16mac	xr1,xr2,xr3,xr4,SA,WW
[0-9a-f]+ <[^>]*> 7250c84a 	d16mac	xr1,xr2,xr3,xr4,SA,LW
[0-9a-f]+ <[^>]*> 7290c84a 	d16mac	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 72d0c84a 	d16mac	xr1,xr2,xr3,xr4,SA,XW
[0-9a-f]+ <[^>]*> 7210c84a 	d16mac	xr1,xr2,xr3,xr4,SA,WW
[0-9a-f]+ <[^>]*> 7250c84a 	d16mac	xr1,xr2,xr3,xr4,SA,LW
[0-9a-f]+ <[^>]*> 7290c84a 	d16mac	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 72d0c84a 	d16mac	xr1,xr2,xr3,xr4,SA,XW
[0-9a-f]+ <[^>]*> 7310c84a 	d16mac	xr1,xr2,xr3,xr4,SS,WW
[0-9a-f]+ <[^>]*> 7350c84a 	d16mac	xr1,xr2,xr3,xr4,SS,LW
[0-9a-f]+ <[^>]*> 7390c84a 	d16mac	xr1,xr2,xr3,xr4,SS,HW
[0-9a-f]+ <[^>]*> 73d0c84a 	d16mac	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7310c84a 	d16mac	xr1,xr2,xr3,xr4,SS,WW
[0-9a-f]+ <[^>]*> 7350c84a 	d16mac	xr1,xr2,xr3,xr4,SS,LW
[0-9a-f]+ <[^>]*> 7390c84a 	d16mac	xr1,xr2,xr3,xr4,SS,HW
[0-9a-f]+ <[^>]*> 73d0c84a 	d16mac	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7010c84a 	d16mac	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7150c84a 	d16mac	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7290c84a 	d16mac	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 73d0c84a 	d16mac	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7010c84a 	d16mac	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7150c84a 	d16mac	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7290c84a 	d16mac	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 73d0c84a 	d16mac	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7010c84b 	d16macf	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7050c84b 	d16macf	xr1,xr2,xr3,xr4,AA,LW
[0-9a-f]+ <[^>]*> 7090c84b 	d16macf	xr1,xr2,xr3,xr4,AA,HW
[0-9a-f]+ <[^>]*> 70d0c84b 	d16macf	xr1,xr2,xr3,xr4,AA,XW
[0-9a-f]+ <[^>]*> 7010c84b 	d16macf	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7050c84b 	d16macf	xr1,xr2,xr3,xr4,AA,LW
[0-9a-f]+ <[^>]*> 7090c84b 	d16macf	xr1,xr2,xr3,xr4,AA,HW
[0-9a-f]+ <[^>]*> 70d0c84b 	d16macf	xr1,xr2,xr3,xr4,AA,XW
[0-9a-f]+ <[^>]*> 7110c84b 	d16macf	xr1,xr2,xr3,xr4,AS,WW
[0-9a-f]+ <[^>]*> 7150c84b 	d16macf	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7190c84b 	d16macf	xr1,xr2,xr3,xr4,AS,HW
[0-9a-f]+ <[^>]*> 71d0c84b 	d16macf	xr1,xr2,xr3,xr4,AS,XW
[0-9a-f]+ <[^>]*> 7110c84b 	d16macf	xr1,xr2,xr3,xr4,AS,WW
[0-9a-f]+ <[^>]*> 7150c84b 	d16macf	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7190c84b 	d16macf	xr1,xr2,xr3,xr4,AS,HW
[0-9a-f]+ <[^>]*> 71d0c84b 	d16macf	xr1,xr2,xr3,xr4,AS,XW
[0-9a-f]+ <[^>]*> 7210c84b 	d16macf	xr1,xr2,xr3,xr4,SA,WW
[0-9a-f]+ <[^>]*> 7250c84b 	d16macf	xr1,xr2,xr3,xr4,SA,LW
[0-9a-f]+ <[^>]*> 7290c84b 	d16macf	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 72d0c84b 	d16macf	xr1,xr2,xr3,xr4,SA,XW
[0-9a-f]+ <[^>]*> 7210c84b 	d16macf	xr1,xr2,xr3,xr4,SA,WW
[0-9a-f]+ <[^>]*> 7250c84b 	d16macf	xr1,xr2,xr3,xr4,SA,LW
[0-9a-f]+ <[^>]*> 7290c84b 	d16macf	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 72d0c84b 	d16macf	xr1,xr2,xr3,xr4,SA,XW
[0-9a-f]+ <[^>]*> 7310c84b 	d16macf	xr1,xr2,xr3,xr4,SS,WW
[0-9a-f]+ <[^>]*> 7350c84b 	d16macf	xr1,xr2,xr3,xr4,SS,LW
[0-9a-f]+ <[^>]*> 7390c84b 	d16macf	xr1,xr2,xr3,xr4,SS,HW
[0-9a-f]+ <[^>]*> 73d0c84b 	d16macf	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7310c84b 	d16macf	xr1,xr2,xr3,xr4,SS,WW
[0-9a-f]+ <[^>]*> 7350c84b 	d16macf	xr1,xr2,xr3,xr4,SS,LW
[0-9a-f]+ <[^>]*> 7390c84b 	d16macf	xr1,xr2,xr3,xr4,SS,HW
[0-9a-f]+ <[^>]*> 73d0c84b 	d16macf	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7010c84b 	d16macf	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7150c84b 	d16macf	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7290c84b 	d16macf	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 73d0c84b 	d16macf	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7010c84b 	d16macf	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7150c84b 	d16macf	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7290c84b 	d16macf	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 73d0c84b 	d16macf	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7010c84c 	d16madl	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7050c84c 	d16madl	xr1,xr2,xr3,xr4,AA,LW
[0-9a-f]+ <[^>]*> 7090c84c 	d16madl	xr1,xr2,xr3,xr4,AA,HW
[0-9a-f]+ <[^>]*> 70d0c84c 	d16madl	xr1,xr2,xr3,xr4,AA,XW
[0-9a-f]+ <[^>]*> 7010c84c 	d16madl	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7050c84c 	d16madl	xr1,xr2,xr3,xr4,AA,LW
[0-9a-f]+ <[^>]*> 7090c84c 	d16madl	xr1,xr2,xr3,xr4,AA,HW
[0-9a-f]+ <[^>]*> 70d0c84c 	d16madl	xr1,xr2,xr3,xr4,AA,XW
[0-9a-f]+ <[^>]*> 7110c84c 	d16madl	xr1,xr2,xr3,xr4,AS,WW
[0-9a-f]+ <[^>]*> 7150c84c 	d16madl	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7190c84c 	d16madl	xr1,xr2,xr3,xr4,AS,HW
[0-9a-f]+ <[^>]*> 71d0c84c 	d16madl	xr1,xr2,xr3,xr4,AS,XW
[0-9a-f]+ <[^>]*> 7110c84c 	d16madl	xr1,xr2,xr3,xr4,AS,WW
[0-9a-f]+ <[^>]*> 7150c84c 	d16madl	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7190c84c 	d16madl	xr1,xr2,xr3,xr4,AS,HW
[0-9a-f]+ <[^>]*> 71d0c84c 	d16madl	xr1,xr2,xr3,xr4,AS,XW
[0-9a-f]+ <[^>]*> 7210c84c 	d16madl	xr1,xr2,xr3,xr4,SA,WW
[0-9a-f]+ <[^>]*> 7250c84c 	d16madl	xr1,xr2,xr3,xr4,SA,LW
[0-9a-f]+ <[^>]*> 7290c84c 	d16madl	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 72d0c84c 	d16madl	xr1,xr2,xr3,xr4,SA,XW
[0-9a-f]+ <[^>]*> 7210c84c 	d16madl	xr1,xr2,xr3,xr4,SA,WW
[0-9a-f]+ <[^>]*> 7250c84c 	d16madl	xr1,xr2,xr3,xr4,SA,LW
[0-9a-f]+ <[^>]*> 7290c84c 	d16madl	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 72d0c84c 	d16madl	xr1,xr2,xr3,xr4,SA,XW
[0-9a-f]+ <[^>]*> 7310c84c 	d16madl	xr1,xr2,xr3,xr4,SS,WW
[0-9a-f]+ <[^>]*> 7350c84c 	d16madl	xr1,xr2,xr3,xr4,SS,LW
[0-9a-f]+ <[^>]*> 7390c84c 	d16madl	xr1,xr2,xr3,xr4,SS,HW
[0-9a-f]+ <[^>]*> 73d0c84c 	d16madl	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7310c84c 	d16madl	xr1,xr2,xr3,xr4,SS,WW
[0-9a-f]+ <[^>]*> 7350c84c 	d16madl	xr1,xr2,xr3,xr4,SS,LW
[0-9a-f]+ <[^>]*> 7390c84c 	d16madl	xr1,xr2,xr3,xr4,SS,HW
[0-9a-f]+ <[^>]*> 73d0c84c 	d16madl	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7010c84c 	d16madl	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7150c84c 	d16madl	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7290c84c 	d16madl	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 73d0c84c 	d16madl	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7010c84c 	d16madl	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7150c84c 	d16madl	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7290c84c 	d16madl	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 73d0c84c 	d16madl	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7010c84e 	q16add	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7050c84e 	q16add	xr1,xr2,xr3,xr4,AA,LW
[0-9a-f]+ <[^>]*> 7090c84e 	q16add	xr1,xr2,xr3,xr4,AA,HW
[0-9a-f]+ <[^>]*> 70d0c84e 	q16add	xr1,xr2,xr3,xr4,AA,XW
[0-9a-f]+ <[^>]*> 7010c84e 	q16add	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7050c84e 	q16add	xr1,xr2,xr3,xr4,AA,LW
[0-9a-f]+ <[^>]*> 7090c84e 	q16add	xr1,xr2,xr3,xr4,AA,HW
[0-9a-f]+ <[^>]*> 70d0c84e 	q16add	xr1,xr2,xr3,xr4,AA,XW
[0-9a-f]+ <[^>]*> 7110c84e 	q16add	xr1,xr2,xr3,xr4,AS,WW
[0-9a-f]+ <[^>]*> 7150c84e 	q16add	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7190c84e 	q16add	xr1,xr2,xr3,xr4,AS,HW
[0-9a-f]+ <[^>]*> 71d0c84e 	q16add	xr1,xr2,xr3,xr4,AS,XW
[0-9a-f]+ <[^>]*> 7110c84e 	q16add	xr1,xr2,xr3,xr4,AS,WW
[0-9a-f]+ <[^>]*> 7150c84e 	q16add	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7190c84e 	q16add	xr1,xr2,xr3,xr4,AS,HW
[0-9a-f]+ <[^>]*> 71d0c84e 	q16add	xr1,xr2,xr3,xr4,AS,XW
[0-9a-f]+ <[^>]*> 7210c84e 	q16add	xr1,xr2,xr3,xr4,SA,WW
[0-9a-f]+ <[^>]*> 7250c84e 	q16add	xr1,xr2,xr3,xr4,SA,LW
[0-9a-f]+ <[^>]*> 7290c84e 	q16add	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 72d0c84e 	q16add	xr1,xr2,xr3,xr4,SA,XW
[0-9a-f]+ <[^>]*> 7210c84e 	q16add	xr1,xr2,xr3,xr4,SA,WW
[0-9a-f]+ <[^>]*> 7250c84e 	q16add	xr1,xr2,xr3,xr4,SA,LW
[0-9a-f]+ <[^>]*> 7290c84e 	q16add	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 72d0c84e 	q16add	xr1,xr2,xr3,xr4,SA,XW
[0-9a-f]+ <[^>]*> 7310c84e 	q16add	xr1,xr2,xr3,xr4,SS,WW
[0-9a-f]+ <[^>]*> 7350c84e 	q16add	xr1,xr2,xr3,xr4,SS,LW
[0-9a-f]+ <[^>]*> 7390c84e 	q16add	xr1,xr2,xr3,xr4,SS,HW
[0-9a-f]+ <[^>]*> 73d0c84e 	q16add	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7310c84e 	q16add	xr1,xr2,xr3,xr4,SS,WW
[0-9a-f]+ <[^>]*> 7350c84e 	q16add	xr1,xr2,xr3,xr4,SS,LW
[0-9a-f]+ <[^>]*> 7390c84e 	q16add	xr1,xr2,xr3,xr4,SS,HW
[0-9a-f]+ <[^>]*> 73d0c84e 	q16add	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7010c84e 	q16add	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7150c84e 	q16add	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7290c84e 	q16add	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 73d0c84e 	q16add	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7010c84e 	q16add	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7150c84e 	q16add	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7290c84e 	q16add	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 73d0c84e 	q16add	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7010c84f 	d16mace	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7050c84f 	d16mace	xr1,xr2,xr3,xr4,AA,LW
[0-9a-f]+ <[^>]*> 7090c84f 	d16mace	xr1,xr2,xr3,xr4,AA,HW
[0-9a-f]+ <[^>]*> 70d0c84f 	d16mace	xr1,xr2,xr3,xr4,AA,XW
[0-9a-f]+ <[^>]*> 7010c84f 	d16mace	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7050c84f 	d16mace	xr1,xr2,xr3,xr4,AA,LW
[0-9a-f]+ <[^>]*> 7090c84f 	d16mace	xr1,xr2,xr3,xr4,AA,HW
[0-9a-f]+ <[^>]*> 70d0c84f 	d16mace	xr1,xr2,xr3,xr4,AA,XW
[0-9a-f]+ <[^>]*> 7110c84f 	d16mace	xr1,xr2,xr3,xr4,AS,WW
[0-9a-f]+ <[^>]*> 7150c84f 	d16mace	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7190c84f 	d16mace	xr1,xr2,xr3,xr4,AS,HW
[0-9a-f]+ <[^>]*> 71d0c84f 	d16mace	xr1,xr2,xr3,xr4,AS,XW
[0-9a-f]+ <[^>]*> 7110c84f 	d16mace	xr1,xr2,xr3,xr4,AS,WW
[0-9a-f]+ <[^>]*> 7150c84f 	d16mace	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7190c84f 	d16mace	xr1,xr2,xr3,xr4,AS,HW
[0-9a-f]+ <[^>]*> 71d0c84f 	d16mace	xr1,xr2,xr3,xr4,AS,XW
[0-9a-f]+ <[^>]*> 7210c84f 	d16mace	xr1,xr2,xr3,xr4,SA,WW
[0-9a-f]+ <[^>]*> 7250c84f 	d16mace	xr1,xr2,xr3,xr4,SA,LW
[0-9a-f]+ <[^>]*> 7290c84f 	d16mace	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 72d0c84f 	d16mace	xr1,xr2,xr3,xr4,SA,XW
[0-9a-f]+ <[^>]*> 7210c84f 	d16mace	xr1,xr2,xr3,xr4,SA,WW
[0-9a-f]+ <[^>]*> 7250c84f 	d16mace	xr1,xr2,xr3,xr4,SA,LW
[0-9a-f]+ <[^>]*> 7290c84f 	d16mace	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 72d0c84f 	d16mace	xr1,xr2,xr3,xr4,SA,XW
[0-9a-f]+ <[^>]*> 7310c84f 	d16mace	xr1,xr2,xr3,xr4,SS,WW
[0-9a-f]+ <[^>]*> 7350c84f 	d16mace	xr1,xr2,xr3,xr4,SS,LW
[0-9a-f]+ <[^>]*> 7390c84f 	d16mace	xr1,xr2,xr3,xr4,SS,HW
[0-9a-f]+ <[^>]*> 73d0c84f 	d16mace	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7310c84f 	d16mace	xr1,xr2,xr3,xr4,SS,WW
[0-9a-f]+ <[^>]*> 7350c84f 	d16mace	xr1,xr2,xr3,xr4,SS,LW
[0-9a-f]+ <[^>]*> 7390c84f 	d16mace	xr1,xr2,xr3,xr4,SS,HW
[0-9a-f]+ <[^>]*> 73d0c84f 	d16mace	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7010c84f 	d16mace	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7150c84f 	d16mace	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7290c84f 	d16mace	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 73d0c84f 	d16mace	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7010c84f 	d16mace	xr1,xr2,xr3,xr4,AA,WW
[0-9a-f]+ <[^>]*> 7150c84f 	d16mace	xr1,xr2,xr3,xr4,AS,LW
[0-9a-f]+ <[^>]*> 7290c84f 	d16mace	xr1,xr2,xr3,xr4,SA,HW
[0-9a-f]+ <[^>]*> 73d0c84f 	d16mace	xr1,xr2,xr3,xr4,SS,XW
[0-9a-f]+ <[^>]*> 7010c848 	d16mul	xr1,xr2,xr3,xr4,WW
[0-9a-f]+ <[^>]*> 7050c848 	d16mul	xr1,xr2,xr3,xr4,LW
[0-9a-f]+ <[^>]*> 7090c848 	d16mul	xr1,xr2,xr3,xr4,HW
[0-9a-f]+ <[^>]*> 70d0c848 	d16mul	xr1,xr2,xr3,xr4,XW
[0-9a-f]+ <[^>]*> 7010c848 	d16mul	xr1,xr2,xr3,xr4,WW
[0-9a-f]+ <[^>]*> 7050c848 	d16mul	xr1,xr2,xr3,xr4,LW
[0-9a-f]+ <[^>]*> 7090c848 	d16mul	xr1,xr2,xr3,xr4,HW
[0-9a-f]+ <[^>]*> 70d0c848 	d16mul	xr1,xr2,xr3,xr4,XW
[0-9a-f]+ <[^>]*> 7000c849 	d16mulf	xr1,xr2,xr3,WW
[0-9a-f]+ <[^>]*> 7040c849 	d16mulf	xr1,xr2,xr3,LW
[0-9a-f]+ <[^>]*> 7080c849 	d16mulf	xr1,xr2,xr3,HW
[0-9a-f]+ <[^>]*> 70c0c849 	d16mulf	xr1,xr2,xr3,XW
[0-9a-f]+ <[^>]*> 7000c849 	d16mulf	xr1,xr2,xr3,WW
[0-9a-f]+ <[^>]*> 7040c849 	d16mulf	xr1,xr2,xr3,LW
[0-9a-f]+ <[^>]*> 7080c849 	d16mulf	xr1,xr2,xr3,HW
[0-9a-f]+ <[^>]*> 70c0c849 	d16mulf	xr1,xr2,xr3,XW
[0-9a-f]+ <[^>]*> 7110c849 	d16mule	xr1,xr2,xr3,xr4,WW
[0-9a-f]+ <[^>]*> 7150c849 	d16mule	xr1,xr2,xr3,xr4,LW
[0-9a-f]+ <[^>]*> 7190c849 	d16mule	xr1,xr2,xr3,xr4,HW
[0-9a-f]+ <[^>]*> 71d0c849 	d16mule	xr1,xr2,xr3,xr4,XW
[0-9a-f]+ <[^>]*> 7110c849 	d16mule	xr1,xr2,xr3,xr4,WW
[0-9a-f]+ <[^>]*> 7150c849 	d16mule	xr1,xr2,xr3,xr4,LW
[0-9a-f]+ <[^>]*> 7190c849 	d16mule	xr1,xr2,xr3,xr4,HW
[0-9a-f]+ <[^>]*> 71d0c849 	d16mule	xr1,xr2,xr3,xr4,XW
[0-9a-f]+ <[^>]*> 7010c84d 	s16mad	xr1,xr2,xr3,xr4,A,WW
[0-9a-f]+ <[^>]*> 7050c84d 	s16mad	xr1,xr2,xr3,xr4,A,LW
[0-9a-f]+ <[^>]*> 7090c84d 	s16mad	xr1,xr2,xr3,xr4,A,HW
[0-9a-f]+ <[^>]*> 70d0c84d 	s16mad	xr1,xr2,xr3,xr4,A,XW
[0-9a-f]+ <[^>]*> 7010c84d 	s16mad	xr1,xr2,xr3,xr4,A,WW
[0-9a-f]+ <[^>]*> 7050c84d 	s16mad	xr1,xr2,xr3,xr4,A,LW
[0-9a-f]+ <[^>]*> 7090c84d 	s16mad	xr1,xr2,xr3,xr4,A,HW
[0-9a-f]+ <[^>]*> 70d0c84d 	s16mad	xr1,xr2,xr3,xr4,A,XW
[0-9a-f]+ <[^>]*> 7110c84d 	s16mad	xr1,xr2,xr3,xr4,S,WW
[0-9a-f]+ <[^>]*> 7150c84d 	s16mad	xr1,xr2,xr3,xr4,S,LW
[0-9a-f]+ <[^>]*> 7190c84d 	s16mad	xr1,xr2,xr3,xr4,S,HW
[0-9a-f]+ <[^>]*> 71d0c84d 	s16mad	xr1,xr2,xr3,xr4,S,XW
[0-9a-f]+ <[^>]*> 7110c84d 	s16mad	xr1,xr2,xr3,xr4,S,WW
[0-9a-f]+ <[^>]*> 7150c84d 	s16mad	xr1,xr2,xr3,xr4,S,LW
[0-9a-f]+ <[^>]*> 7190c84d 	s16mad	xr1,xr2,xr3,xr4,S,HW
[0-9a-f]+ <[^>]*> 71d0c84d 	s16mad	xr1,xr2,xr3,xr4,S,XW
[0-9a-f]+ <[^>]*> 7010c84d 	s16mad	xr1,xr2,xr3,xr4,A,WW
[0-9a-f]+ <[^>]*> 7050c84d 	s16mad	xr1,xr2,xr3,xr4,A,LW
[0-9a-f]+ <[^>]*> 7190c84d 	s16mad	xr1,xr2,xr3,xr4,S,HW
[0-9a-f]+ <[^>]*> 71d0c84d 	s16mad	xr1,xr2,xr3,xr4,S,XW
[0-9a-f]+ <[^>]*> 7010c84d 	s16mad	xr1,xr2,xr3,xr4,A,WW
[0-9a-f]+ <[^>]*> 7050c84d 	s16mad	xr1,xr2,xr3,xr4,A,LW
[0-9a-f]+ <[^>]*> 7190c84d 	s16mad	xr1,xr2,xr3,xr4,S,HW
[0-9a-f]+ <[^>]*> 71d0c84d 	s16mad	xr1,xr2,xr3,xr4,S,XW
[0-9a-f]+ <[^>]*> 7010c878 	q8mul	xr1,xr2,xr3,xr4
[0-9a-f]+ <[^>]*> 7090c878 	q8mulsu	xr1,xr2,xr3,xr4
[0-9a-f]+ <[^>]*> 7000c879 	q8movz	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7004c879 	q8movn	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7008c879 	d16movz	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 700cc879 	d16movn	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7010c879 	s32movz	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7014c879 	s32movn	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7010c87a 	q8mac	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7210c87a 	q8mac	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7110c87a 	q8mac	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7310c87a 	q8mac	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7010c87a 	q8mac	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7110c87a 	q8mac	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7210c87a 	q8mac	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7310c87a 	q8mac	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7090c87a 	q8macsu	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7290c87a 	q8macsu	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7190c87a 	q8macsu	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7390c87a 	q8macsu	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7090c87a 	q8macsu	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7190c87a 	q8macsu	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7290c87a 	q8macsu	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7390c87a 	q8macsu	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7010c87b 	q16scop	xr1,xr2,xr3,xr4
[0-9a-f]+ <[^>]*> 7010c87c 	q8madl	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7210c87c 	q8madl	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7110c87c 	q8madl	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7310c87c 	q8madl	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7010c87c 	q8madl	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7110c87c 	q8madl	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7210c87c 	q8madl	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7310c87c 	q8madl	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7010c87d 	s32sfl	xr1,xr2,xr3,xr4,ptn0
[0-9a-f]+ <[^>]*> 7110c87d 	s32sfl	xr1,xr2,xr3,xr4,ptn1
[0-9a-f]+ <[^>]*> 7210c87d 	s32sfl	xr1,xr2,xr3,xr4,ptn2
[0-9a-f]+ <[^>]*> 7310c87d 	s32sfl	xr1,xr2,xr3,xr4,ptn3
[0-9a-f]+ <[^>]*> 7010c87d 	s32sfl	xr1,xr2,xr3,xr4,ptn0
[0-9a-f]+ <[^>]*> 7110c87d 	s32sfl	xr1,xr2,xr3,xr4,ptn1
[0-9a-f]+ <[^>]*> 7210c87d 	s32sfl	xr1,xr2,xr3,xr4,ptn2
[0-9a-f]+ <[^>]*> 7310c87d 	s32sfl	xr1,xr2,xr3,xr4,ptn3
[0-9a-f]+ <[^>]*> 7010c87e 	q8sad	xr1,xr2,xr3,xr4
[0-9a-f]+ <[^>]*> 7010c858 	d32add	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7210c858 	d32add	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7110c858 	d32add	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7310c858 	d32add	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7010c858 	d32add	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7110c858 	d32add	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7210c858 	d32add	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7310c858 	d32add	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7050c858 	d32addc	xr1,xr2,xr3,xr4
[0-9a-f]+ <[^>]*> 7010c859 	d32acc	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7210c859 	d32acc	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7110c859 	d32acc	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7310c859 	d32acc	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7010c859 	d32acc	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7110c859 	d32acc	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7210c859 	d32acc	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7310c859 	d32acc	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7050c859 	d32accm	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7250c859 	d32accm	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7150c859 	d32accm	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7350c859 	d32accm	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7050c859 	d32accm	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7150c859 	d32accm	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7250c859 	d32accm	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7350c859 	d32accm	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7090c859 	d32asum	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7290c859 	d32asum	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7190c859 	d32asum	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7390c859 	d32asum	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7090c859 	d32asum	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7190c859 	d32asum	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7290c859 	d32asum	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7390c859 	d32asum	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7010c85b 	q16acc	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7210c85b 	q16acc	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7110c85b 	q16acc	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7310c85b 	q16acc	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7010c85b 	q16acc	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7110c85b 	q16acc	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7210c85b 	q16acc	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7310c85b 	q16acc	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7050c85b 	q16accm	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7250c85b 	q16accm	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7150c85b 	q16accm	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7350c85b 	q16accm	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7050c85b 	q16accm	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7150c85b 	q16accm	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7250c85b 	q16accm	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7350c85b 	q16accm	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7090c85b 	d16asum	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7290c85b 	d16asum	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7190c85b 	d16asum	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7390c85b 	d16asum	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7090c85b 	d16asum	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7190c85b 	d16asum	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7290c85b 	d16asum	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7390c85b 	d16asum	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7010c85c 	q8adde	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7210c85c 	q8adde	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7110c85c 	q8adde	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7310c85c 	q8adde	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7010c85c 	q8adde	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7110c85c 	q8adde	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7210c85c 	q8adde	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7310c85c 	q8adde	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7040c85c 	d8sum	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7080c85c 	d8sumc	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7010c85d 	q8acce	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7210c85d 	q8acce	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7110c85d 	q8acce	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7310c85d 	q8acce	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7010c85d 	q8acce	xr1,xr2,xr3,xr4,AA
[0-9a-f]+ <[^>]*> 7110c85d 	q8acce	xr1,xr2,xr3,xr4,AS
[0-9a-f]+ <[^>]*> 7210c85d 	q8acce	xr1,xr2,xr3,xr4,SA
[0-9a-f]+ <[^>]*> 7310c85d 	q8acce	xr1,xr2,xr3,xr4,SS
[0-9a-f]+ <[^>]*> 7000c847 	s32cps	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7008c847 	d16cps	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7010c847 	q8abd	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7018c847 	q16sat	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7000c846 	s32slt	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7004c846 	d16slt	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7008c846 	d16avg	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 700cc846 	d16avgr	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7010c846 	q8avg	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7014c846 	q8avgr	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 701cc846 	q8add	xr1,xr2,xr3,AA
[0-9a-f]+ <[^>]*> 711cc846 	q8add	xr1,xr2,xr3,AS
[0-9a-f]+ <[^>]*> 721cc846 	q8add	xr1,xr2,xr3,SA
[0-9a-f]+ <[^>]*> 731cc846 	q8add	xr1,xr2,xr3,SS
[0-9a-f]+ <[^>]*> 701cc846 	q8add	xr1,xr2,xr3,AA
[0-9a-f]+ <[^>]*> 711cc846 	q8add	xr1,xr2,xr3,AS
[0-9a-f]+ <[^>]*> 721cc846 	q8add	xr1,xr2,xr3,SA
[0-9a-f]+ <[^>]*> 731cc846 	q8add	xr1,xr2,xr3,SS
[0-9a-f]+ <[^>]*> 7000c843 	s32max	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7004c843 	s32min	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7008c843 	d16max	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 700cc843 	d16min	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7010c843 	q8max	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7014c843 	q8min	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7018c843 	q8slt	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 701cc843 	q8sltu	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 73d0c830 	d32sll	xr0,xr2,xr3,xr4,15
[0-9a-f]+ <[^>]*> 73d0c871 	d32slr	xr1,xr2,xr3,xr4,15
[0-9a-f]+ <[^>]*> 73c0c872 	d32sarl	xr1,xr2,xr3,15
[0-9a-f]+ <[^>]*> 73d0c873 	d32sar	xr1,xr2,xr3,xr4,15
[0-9a-f]+ <[^>]*> 73d0c874 	q16sll	xr1,xr2,xr3,xr4,15
[0-9a-f]+ <[^>]*> 73d0c875 	q16slr	xr1,xr2,xr3,xr4,15
[0-9a-f]+ <[^>]*> 73d0c877 	q16sar	xr1,xr2,xr3,xr4,15
[0-9a-f]+ <[^>]*> 70008436 	d32sllv	xr1,xr2,zero
[0-9a-f]+ <[^>]*> 70048436 	d32slrv	xr1,xr2,zero
[0-9a-f]+ <[^>]*> 700c8436 	d32sarv	xr1,xr2,zero
[0-9a-f]+ <[^>]*> 70108436 	q16sllv	xr1,xr2,zero
[0-9a-f]+ <[^>]*> 70148436 	q16slrv	xr1,xr2,zero
[0-9a-f]+ <[^>]*> 701c8436 	q16sarv	xr1,xr2,zero
[0-9a-f]+ <[^>]*> 70028840 	s32madd	xr1,xr2,zero,v0
[0-9a-f]+ <[^>]*> 70028841 	s32maddu	xr1,xr2,zero,v0
[0-9a-f]+ <[^>]*> 70028844 	s32msub	xr1,xr2,zero,v0
[0-9a-f]+ <[^>]*> 70028845 	s32msubu	xr1,xr2,zero,v0
[0-9a-f]+ <[^>]*> 70020866 	s32mul	xr1,xr2,zero,v0
[0-9a-f]+ <[^>]*> 70024866 	s32mulu	xr1,xr2,zero,v0
[0-9a-f]+ <[^>]*> 7002c866 	s32extrv	xr1,xr2,zero,v0
[0-9a-f]+ <[^>]*> 701f8866 	s32extr	xr1,xr2,zero,31
[0-9a-f]+ <[^>]*> 7000c867 	d32sarw	xr1,xr2,xr3,zero
[0-9a-f]+ <[^>]*> 7004c867 	s32aln	xr1,xr2,xr3,zero
[0-9a-f]+ <[^>]*> 7008c867 	s32alni	xr1,xr2,xr3,ptn0
[0-9a-f]+ <[^>]*> 7088c867 	s32alni	xr1,xr2,xr3,ptn1
[0-9a-f]+ <[^>]*> 7108c867 	s32alni	xr1,xr2,xr3,ptn2
[0-9a-f]+ <[^>]*> 7188c867 	s32alni	xr1,xr2,xr3,ptn3
[0-9a-f]+ <[^>]*> 7208c867 	s32alni	xr1,xr2,xr3,ptn4
[0-9a-f]+ <[^>]*> 7008c867 	s32alni	xr1,xr2,xr3,ptn0
[0-9a-f]+ <[^>]*> 7088c867 	s32alni	xr1,xr2,xr3,ptn1
[0-9a-f]+ <[^>]*> 7108c867 	s32alni	xr1,xr2,xr3,ptn2
[0-9a-f]+ <[^>]*> 7188c867 	s32alni	xr1,xr2,xr3,ptn3
[0-9a-f]+ <[^>]*> 7208c867 	s32alni	xr1,xr2,xr3,ptn4
[0-9a-f]+ <[^>]*> 700dfc67 	s32lui	xr1,127,ptn0
[0-9a-f]+ <[^>]*> 708dfc67 	s32lui	xr1,127,ptn1
[0-9a-f]+ <[^>]*> 710dfc67 	s32lui	xr1,127,ptn2
[0-9a-f]+ <[^>]*> 718dfc67 	s32lui	xr1,127,ptn3
[0-9a-f]+ <[^>]*> 720dfc67 	s32lui	xr1,127,ptn4
[0-9a-f]+ <[^>]*> 728dfc67 	s32lui	xr1,127,ptn5
[0-9a-f]+ <[^>]*> 730dfc67 	s32lui	xr1,127,ptn6
[0-9a-f]+ <[^>]*> 738dfc67 	s32lui	xr1,127,ptn7
[0-9a-f]+ <[^>]*> 700e0067 	s32lui	xr1,-128,ptn0
[0-9a-f]+ <[^>]*> 708e0067 	s32lui	xr1,-128,ptn1
[0-9a-f]+ <[^>]*> 710e0067 	s32lui	xr1,-128,ptn2
[0-9a-f]+ <[^>]*> 718e0067 	s32lui	xr1,-128,ptn3
[0-9a-f]+ <[^>]*> 720e0067 	s32lui	xr1,-128,ptn4
[0-9a-f]+ <[^>]*> 728e0067 	s32lui	xr1,-128,ptn5
[0-9a-f]+ <[^>]*> 730e0067 	s32lui	xr1,-128,ptn6
[0-9a-f]+ <[^>]*> 738e0067 	s32lui	xr1,-128,ptn7
[0-9a-f]+ <[^>]*> 700ffc67 	s32lui	xr1,-1,ptn0
[0-9a-f]+ <[^>]*> 708ffc67 	s32lui	xr1,-1,ptn1
[0-9a-f]+ <[^>]*> 710ffc67 	s32lui	xr1,-1,ptn2
[0-9a-f]+ <[^>]*> 718ffc67 	s32lui	xr1,-1,ptn3
[0-9a-f]+ <[^>]*> 720ffc67 	s32lui	xr1,-1,ptn4
[0-9a-f]+ <[^>]*> 728ffc67 	s32lui	xr1,-1,ptn5
[0-9a-f]+ <[^>]*> 730ffc67 	s32lui	xr1,-1,ptn6
[0-9a-f]+ <[^>]*> 738ffc67 	s32lui	xr1,-1,ptn7
[0-9a-f]+ <[^>]*> 7010c867 	s32nor	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7014c867 	s32and	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 7018c867 	s32or	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 701cc867 	s32xor	xr1,xr2,xr3
[0-9a-f]+ <[^>]*> 70440428 	lxb	zero,v0,a0,2
[0-9a-f]+ <[^>]*> 70440528 	lxbu	zero,v0,a0,2
[0-9a-f]+ <[^>]*> 70440468 	lxh	zero,v0,a0,2
[0-9a-f]+ <[^>]*> 70440568 	lxhu	zero,v0,a0,2
[0-9a-f]+ <[^>]*> 704404e8 	lxw	zero,v0,a0,2
[0-9a-f]+ <[^>]*> 7043fc6b 	s16std	xr1,v0,510,ptn0
[0-9a-f]+ <[^>]*> 704bfc6b 	s16std	xr1,v0,510,ptn1
[0-9a-f]+ <[^>]*> 7044006b 	s16std	xr1,v0,-512,ptn0
[0-9a-f]+ <[^>]*> 704c006b 	s16std	xr1,v0,-512,ptn1
[0-9a-f]+ <[^>]*> 7043fc6d 	s16sdi	xr1,v0,510,ptn0
[0-9a-f]+ <[^>]*> 704bfc6d 	s16sdi	xr1,v0,510,ptn1
[0-9a-f]+ <[^>]*> 7044006d 	s16sdi	xr1,v0,-512,ptn0
[0-9a-f]+ <[^>]*> 704c006d 	s16sdi	xr1,v0,-512,ptn1
[0-9a-f]+ <[^>]*> 7043fc6a 	s16ldd	xr1,v0,510,ptn0
[0-9a-f]+ <[^>]*> 704bfc6a 	s16ldd	xr1,v0,510,ptn1
[0-9a-f]+ <[^>]*> 7053fc6a 	s16ldd	xr1,v0,510,ptn2
[0-9a-f]+ <[^>]*> 705bfc6a 	s16ldd	xr1,v0,510,ptn3
[0-9a-f]+ <[^>]*> 7044006a 	s16ldd	xr1,v0,-512,ptn0
[0-9a-f]+ <[^>]*> 704c006a 	s16ldd	xr1,v0,-512,ptn1
[0-9a-f]+ <[^>]*> 7054006a 	s16ldd	xr1,v0,-512,ptn2
[0-9a-f]+ <[^>]*> 705c006a 	s16ldd	xr1,v0,-512,ptn3
[0-9a-f]+ <[^>]*> 7043fc6a 	s16ldd	xr1,v0,510,ptn0
[0-9a-f]+ <[^>]*> 704bfc6a 	s16ldd	xr1,v0,510,ptn1
[0-9a-f]+ <[^>]*> 7054006a 	s16ldd	xr1,v0,-512,ptn2
[0-9a-f]+ <[^>]*> 705c006a 	s16ldd	xr1,v0,-512,ptn3
[0-9a-f]+ <[^>]*> 7043fc6c 	s16ldi	xr1,v0,510,ptn0
[0-9a-f]+ <[^>]*> 704bfc6c 	s16ldi	xr1,v0,510,ptn1
[0-9a-f]+ <[^>]*> 7053fc6c 	s16ldi	xr1,v0,510,ptn2
[0-9a-f]+ <[^>]*> 705bfc6c 	s16ldi	xr1,v0,510,ptn3
[0-9a-f]+ <[^>]*> 7044006c 	s16ldi	xr1,v0,-512,ptn0
[0-9a-f]+ <[^>]*> 704c006c 	s16ldi	xr1,v0,-512,ptn1
[0-9a-f]+ <[^>]*> 7054006c 	s16ldi	xr1,v0,-512,ptn2
[0-9a-f]+ <[^>]*> 705c006c 	s16ldi	xr1,v0,-512,ptn3
[0-9a-f]+ <[^>]*> 7043fc6c 	s16ldi	xr1,v0,510,ptn0
[0-9a-f]+ <[^>]*> 704bfc6c 	s16ldi	xr1,v0,510,ptn1
[0-9a-f]+ <[^>]*> 7054006c 	s16ldi	xr1,v0,-512,ptn2
[0-9a-f]+ <[^>]*> 705c006c 	s16ldi	xr1,v0,-512,ptn3
[0-9a-f]+ <[^>]*> 7004006e 	s32m2i	xr1,a0
[0-9a-f]+ <[^>]*> 7004006f 	s32i2m	xr1,a0
[0-9a-f]+ <[^>]*> 70028052 	s32lddv	xr1,zero,v0,2
[0-9a-f]+ <[^>]*> 70028452 	s32lddvr	xr1,zero,v0,2
[0-9a-f]+ <[^>]*> 70028053 	s32stdv	xr1,zero,v0,2
[0-9a-f]+ <[^>]*> 70028453 	s32stdvr	xr1,zero,v0,2
[0-9a-f]+ <[^>]*> 70028056 	s32ldiv	xr1,zero,v0,2
[0-9a-f]+ <[^>]*> 70028456 	s32ldivr	xr1,zero,v0,2
[0-9a-f]+ <[^>]*> 70028057 	s32sdiv	xr1,zero,v0,2
[0-9a-f]+ <[^>]*> 70028457 	s32sdivr	xr1,zero,v0,2
[0-9a-f]+ <[^>]*> 7007fc50 	s32ldd	xr1,zero,2044
[0-9a-f]+ <[^>]*> 70080050 	s32ldd	xr1,zero,-2048
[0-9a-f]+ <[^>]*> 7017fc50 	s32lddr	xr1,zero,2044
[0-9a-f]+ <[^>]*> 70180050 	s32lddr	xr1,zero,-2048
[0-9a-f]+ <[^>]*> 7007fc51 	s32std	xr1,zero,2044
[0-9a-f]+ <[^>]*> 70080051 	s32std	xr1,zero,-2048
[0-9a-f]+ <[^>]*> 7017fc51 	s32stdr	xr1,zero,2044
[0-9a-f]+ <[^>]*> 70180051 	s32stdr	xr1,zero,-2048
[0-9a-f]+ <[^>]*> 7007fc54 	s32ldi	xr1,zero,2044
[0-9a-f]+ <[^>]*> 70080054 	s32ldi	xr1,zero,-2048
[0-9a-f]+ <[^>]*> 7017fc54 	s32ldir	xr1,zero,2044
[0-9a-f]+ <[^>]*> 70180054 	s32ldir	xr1,zero,-2048
[0-9a-f]+ <[^>]*> 7007fc55 	s32sdi	xr1,zero,2044
[0-9a-f]+ <[^>]*> 70080055 	s32sdi	xr1,zero,-2048
[0-9a-f]+ <[^>]*> 7017fc55 	s32sdir	xr1,zero,2044
[0-9a-f]+ <[^>]*> 70180055 	s32sdir	xr1,zero,-2048
[0-9a-f]+ <[^>]*> 7041fc62 	s8ldd	xr1,v0,127,ptn0
[0-9a-f]+ <[^>]*> 7045fc62 	s8ldd	xr1,v0,127,ptn1
[0-9a-f]+ <[^>]*> 7049fc62 	s8ldd	xr1,v0,127,ptn2
[0-9a-f]+ <[^>]*> 704dfc62 	s8ldd	xr1,v0,127,ptn3
[0-9a-f]+ <[^>]*> 7051fc62 	s8ldd	xr1,v0,127,ptn4
[0-9a-f]+ <[^>]*> 7055fc62 	s8ldd	xr1,v0,127,ptn5
[0-9a-f]+ <[^>]*> 7059fc62 	s8ldd	xr1,v0,127,ptn6
[0-9a-f]+ <[^>]*> 705dfc62 	s8ldd	xr1,v0,127,ptn7
[0-9a-f]+ <[^>]*> 70420062 	s8ldd	xr1,v0,-128,ptn0
[0-9a-f]+ <[^>]*> 70460062 	s8ldd	xr1,v0,-128,ptn1
[0-9a-f]+ <[^>]*> 704a0062 	s8ldd	xr1,v0,-128,ptn2
[0-9a-f]+ <[^>]*> 704e0062 	s8ldd	xr1,v0,-128,ptn3
[0-9a-f]+ <[^>]*> 70520062 	s8ldd	xr1,v0,-128,ptn4
[0-9a-f]+ <[^>]*> 70560062 	s8ldd	xr1,v0,-128,ptn5
[0-9a-f]+ <[^>]*> 705a0062 	s8ldd	xr1,v0,-128,ptn6
[0-9a-f]+ <[^>]*> 705e0062 	s8ldd	xr1,v0,-128,ptn7
[0-9a-f]+ <[^>]*> 7041fc62 	s8ldd	xr1,v0,127,ptn0
[0-9a-f]+ <[^>]*> 7045fc62 	s8ldd	xr1,v0,127,ptn1
[0-9a-f]+ <[^>]*> 7049fc62 	s8ldd	xr1,v0,127,ptn2
[0-9a-f]+ <[^>]*> 704dfc62 	s8ldd	xr1,v0,127,ptn3
[0-9a-f]+ <[^>]*> 70520062 	s8ldd	xr1,v0,-128,ptn4
[0-9a-f]+ <[^>]*> 70560062 	s8ldd	xr1,v0,-128,ptn5
[0-9a-f]+ <[^>]*> 705a0062 	s8ldd	xr1,v0,-128,ptn6
[0-9a-f]+ <[^>]*> 705e0062 	s8ldd	xr1,v0,-128,ptn7
[0-9a-f]+ <[^>]*> 7041fc64 	s8ldi	xr1,v0,127,ptn0
[0-9a-f]+ <[^>]*> 7045fc64 	s8ldi	xr1,v0,127,ptn1
[0-9a-f]+ <[^>]*> 7049fc64 	s8ldi	xr1,v0,127,ptn2
[0-9a-f]+ <[^>]*> 704dfc64 	s8ldi	xr1,v0,127,ptn3
[0-9a-f]+ <[^>]*> 7051fc64 	s8ldi	xr1,v0,127,ptn4
[0-9a-f]+ <[^>]*> 7055fc64 	s8ldi	xr1,v0,127,ptn5
[0-9a-f]+ <[^>]*> 7059fc64 	s8ldi	xr1,v0,127,ptn6
[0-9a-f]+ <[^>]*> 705dfc64 	s8ldi	xr1,v0,127,ptn7
[0-9a-f]+ <[^>]*> 70420064 	s8ldi	xr1,v0,-128,ptn0
[0-9a-f]+ <[^>]*> 70460064 	s8ldi	xr1,v0,-128,ptn1
[0-9a-f]+ <[^>]*> 704a0064 	s8ldi	xr1,v0,-128,ptn2
[0-9a-f]+ <[^>]*> 704e0064 	s8ldi	xr1,v0,-128,ptn3
[0-9a-f]+ <[^>]*> 70520064 	s8ldi	xr1,v0,-128,ptn4
[0-9a-f]+ <[^>]*> 70560064 	s8ldi	xr1,v0,-128,ptn5
[0-9a-f]+ <[^>]*> 705a0064 	s8ldi	xr1,v0,-128,ptn6
[0-9a-f]+ <[^>]*> 705e0064 	s8ldi	xr1,v0,-128,ptn7
[0-9a-f]+ <[^>]*> 7041fc64 	s8ldi	xr1,v0,127,ptn0
[0-9a-f]+ <[^>]*> 7045fc64 	s8ldi	xr1,v0,127,ptn1
[0-9a-f]+ <[^>]*> 7049fc64 	s8ldi	xr1,v0,127,ptn2
[0-9a-f]+ <[^>]*> 704dfc64 	s8ldi	xr1,v0,127,ptn3
[0-9a-f]+ <[^>]*> 70520064 	s8ldi	xr1,v0,-128,ptn4
[0-9a-f]+ <[^>]*> 70560064 	s8ldi	xr1,v0,-128,ptn5
[0-9a-f]+ <[^>]*> 705a0064 	s8ldi	xr1,v0,-128,ptn6
[0-9a-f]+ <[^>]*> 705e0064 	s8ldi	xr1,v0,-128,ptn7
[0-9a-f]+ <[^>]*> 7041fc63 	s8std	xr1,v0,127,ptn0
[0-9a-f]+ <[^>]*> 7045fc63 	s8std	xr1,v0,127,ptn1
[0-9a-f]+ <[^>]*> 7049fc63 	s8std	xr1,v0,127,ptn2
[0-9a-f]+ <[^>]*> 704dfc63 	s8std	xr1,v0,127,ptn3
[0-9a-f]+ <[^>]*> 70420063 	s8std	xr1,v0,-128,ptn0
[0-9a-f]+ <[^>]*> 70460063 	s8std	xr1,v0,-128,ptn1
[0-9a-f]+ <[^>]*> 704a0063 	s8std	xr1,v0,-128,ptn2
[0-9a-f]+ <[^>]*> 704e0063 	s8std	xr1,v0,-128,ptn3
[0-9a-f]+ <[^>]*> 7041fc63 	s8std	xr1,v0,127,ptn0
[0-9a-f]+ <[^>]*> 7045fc63 	s8std	xr1,v0,127,ptn1
[0-9a-f]+ <[^>]*> 704a0063 	s8std	xr1,v0,-128,ptn2
[0-9a-f]+ <[^>]*> 704e0063 	s8std	xr1,v0,-128,ptn3
[0-9a-f]+ <[^>]*> 7041fc65 	s8sdi	xr1,v0,127,ptn0
[0-9a-f]+ <[^>]*> 7045fc65 	s8sdi	xr1,v0,127,ptn1
[0-9a-f]+ <[^>]*> 7049fc65 	s8sdi	xr1,v0,127,ptn2
[0-9a-f]+ <[^>]*> 704dfc65 	s8sdi	xr1,v0,127,ptn3
[0-9a-f]+ <[^>]*> 70420065 	s8sdi	xr1,v0,-128,ptn0
[0-9a-f]+ <[^>]*> 70460065 	s8sdi	xr1,v0,-128,ptn1
[0-9a-f]+ <[^>]*> 704a0065 	s8sdi	xr1,v0,-128,ptn2
[0-9a-f]+ <[^>]*> 704e0065 	s8sdi	xr1,v0,-128,ptn3
[0-9a-f]+ <[^>]*> 7041fc65 	s8sdi	xr1,v0,127,ptn0
[0-9a-f]+ <[^>]*> 7045fc65 	s8sdi	xr1,v0,127,ptn1
[0-9a-f]+ <[^>]*> 704a0065 	s8sdi	xr1,v0,-128,ptn2
[0-9a-f]+ <[^>]*> 704e0065 	s8sdi	xr1,v0,-128,ptn3
	\.\.\.
