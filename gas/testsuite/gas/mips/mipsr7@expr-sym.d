#name: Symbolic expression evaluation on r7
#PROG: readelf
#readelf: -Wr
#source: expr-sym.s

Relocation section '\.rela\.text' at offset 0x[0-9a-f]+ contains 28 entries:
 Offset     Info    Type                Sym\. Value  Symbol's Name \+ Addend
00000004  000007b6 R_MICROMIPS_HI20       00000000   foo \+ 0
00000008  00000b02 R_MIPS_32              00000008   \.L2 \+ 0
0000000c  00000844 R_MIPS_UNSIGNED_16     00000002   \.L3 \+ 0
0000000e  00000943 R_MIPS_UNSIGNED_8      00000004   \.L4 \+ 0
00000010  00000b02 R_MIPS_32              00000008   \.L2 \+ 2
00000014  00000844 R_MIPS_UNSIGNED_16     00000002   \.L3 - 3
00000016  00000943 R_MIPS_UNSIGNED_8      00000004   \.L4 - 6
00000018  00000b02 R_MIPS_32              00000008   \.L2 \+ 0
00000018  00000042 R_MIPS_ASHIFTR                    4
00000018  00000002 R_MIPS_32                         0
0000001c  00000802 R_MIPS_32              00000002   \.L3 - a
0000001c  00000042 R_MIPS_ASHIFTR                    2
0000001c  00000044 R_MIPS_UNSIGNED_16                0
0000001e  00000b02 R_MIPS_32              00000008   \.L2 \+ 0
0000001e  00000918 R_MIPS_SUB             00000004   \.L4 \+ 0
0000001e  00000042 R_MIPS_ASHIFTR                    1
0000001e  00000043 R_MIPS_UNSIGNED_8                 0
00000020  00000b02 R_MIPS_32              00000008   \.L2 \+ 0
00000020  00000818 R_MIPS_SUB             00000002   \.L3 \+ 0
00000020  00000002 R_MIPS_32                         0
00000024  00000b02 R_MIPS_32              00000008   \.L2 \+ 4
00000024  00000918 R_MIPS_SUB             00000004   \.L4 \+ 0
00000024  00000044 R_MIPS_UNSIGNED_16                0
00000026  00000802 R_MIPS_32              00000002   \.L3 - a
00000026  00000918 R_MIPS_SUB             00000004   \.L4 \+ 0
00000026  00000043 R_MIPS_UNSIGNED_8                 0
00000000  000007ba R_MICROMIPS_PC10_S1    00000000   foo - 2
00000002  000007ba R_MICROMIPS_PC10_S1    00000000   foo - 2
