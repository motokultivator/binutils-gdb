#name: Symbol difference expression on r7
#PROG: readelf
#readelf: -Wr
#source: expr-diff.s

Relocation section '\.rela\.text' at offset 0x[0-9a-f]+ contains 19 entries:
 Offset     Info    Type                Sym\. Value  Symbol's Name \+ Addend
00000000  00000fc5 R_MICROMIPS_GPREL19_S2 0000002c   \.L5 \+ 0
00000006  00000ab6 R_MICROMIPS_HI20       00000028   \.L2 \+ 0
0000000a  00000ab7 R_MICROMIPS_LO12       00000028   \.L2 \+ 0
00000012  000015c5 R_MICROMIPS_GPREL19_S2 00000000   c \+ 0
0000001a  000015c5 R_MICROMIPS_GPREL19_S2 00000000   c \+ 0
0000001e  000015c5 R_MICROMIPS_GPREL19_S2 00000000   c \+ 0
00000024  000015c5 R_MICROMIPS_GPREL19_S2 00000000   c \+ 0
0000002c  00000a02 R_MIPS_32              00000028   \.L2 \+ 0
0000002c  00000818 R_MIPS_SUB             00000012   \.L3 \+ 0
0000002c  00000002 R_MIPS_32                         0
00000030  00000a02 R_MIPS_32              00000028   \.L2 \+ 0
00000030  00000918 R_MIPS_SUB             0000001e   \.L4 \+ 0
00000030  00000002 R_MIPS_32                         0
00000034  000010c5 R_MICROMIPS_GPREL19_S2 00000060   \.L9 \+ 0
0000003a  00000eb6 R_MICROMIPS_HI20       0000005e   \.L6 \+ 0
0000003e  00000eb7 R_MICROMIPS_LO12       0000005e   \.L6 \+ 0
00000060  00000c02 R_MIPS_32              00000046   \.L7 \+ 0
00000060  00000d18 R_MIPS_SUB             00000054   \.L8 \+ 0
00000060  00000002 R_MIPS_32                         0

Relocation section '\.rela\.pdr' at offset 0x[0-9a-f]+ contains 2 entries:
 Offset     Info    Type                Sym\. Value  Symbol's Name \+ Addend
00000000  00000702 R_MIPS_32              00000000   foo \+ 0
00000020  00000b02 R_MIPS_32              00000034   foo2 \+ 0
