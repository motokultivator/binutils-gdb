#objdump: -sr
#name: Compact EH EB #6 with personality id, LSDA and large FDE data
#source: compact-eh-6.s
#as: -EB --linkrelax -minsn32

.*:     file format.*
#...
RELOCATION RECORDS FOR \[.eh_frame_entry\]:
OFFSET   TYPE              VALUE 
00000000 R_NANOMIPS_PC32   L0\+0x00000001
00000004 R_NANOMIPS_PC32   L0
#...
Contents of section .gnu_extab:
 0000 02044003 055f5f5c 020a0104 7f050404  .*
 0010 0005047f                             .*
Contents of section .eh_frame_entry:
 0000 00000001 00000000                    .*
Contents of section .gnu.attributes:
 0000 41000000 0f676e75 00010000 00070401  .*
