#objdump: -r
#name: nanoMIPS cfa-advance-loc-3
#source: cfa-advance-loc-1.s

.*: +file format .*nanomips.*

RELOCATION RECORDS FOR \[\.text\]:
OFFSET   TYPE              VALUE 
00000000 R_NANOMIPS_SAVERESTORE  foo


RELOCATION RECORDS FOR \[\.eh_frame\]:
OFFSET   TYPE              VALUE 
0000001c R_NANOMIPS_PC32   L0
00000020 R_NANOMIPS_NEG    L0
00000020 R_NANOMIPS_32     L0
00000026 R_NANOMIPS_NEG    L0
00000026 R_NANOMIPS_32     L0
#pass