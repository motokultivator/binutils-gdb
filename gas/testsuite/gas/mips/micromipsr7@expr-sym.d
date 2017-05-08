#name: Symbolic expression evaluation on r7
#PROG: readelf
#readelf: -Wr
#source: expr-sym.s

Relocation section '\.rela\.text' at offset 0x[0-9a-f]+ contains [0-9]+ entries:
 Offset     Info    Type                Sym\. Value  Symbol's Name \+ Addend
00000004  [0-9a-f]+b6 R_MICROMIPS_HI20       00000000   foo \+ 0
00000010  [0-9a-f]+02 R_MIPS_32              00000010   \.L2 \+ 0
00000014  [0-9a-f]+02 R_MIPS_32              00000010   \.L2 \+ 0
00000018  [0-9a-f]+44 R_MIPS_UNSIGNED_16     00000002   \.L3 \+ 0
0000001a  [0-9a-f]+43 R_MIPS_UNSIGNED_8      00000004   \.L4 \+ 0
0000001c  [0-9a-f]+02 R_MIPS_32              00000010   \.L2 \+ 2
00000020  [0-9a-f]+44 R_MIPS_UNSIGNED_16     00000002   \.L3 - 3
00000022  [0-9a-f]+43 R_MIPS_UNSIGNED_8      00000004   \.L4 - 6
00000024  [0-9a-f]+42 R_MIPS_ASHIFTR_1       00000010   \.L2 \+ 0
00000024  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
00000024  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
00000024  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
00000024  [0-9a-f]+02 R_MIPS_32                         0
00000028  [0-9a-f]+42 R_MIPS_ASHIFTR_1       00000002   \.L3 - a
00000028  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
00000028  [0-9a-f]+44 R_MIPS_UNSIGNED_16                0
0000002a  [0-9a-f]+02 R_MIPS_32              00000004   \.L4 \+ 0
0000002a  [0-9a-f]+18 R_MIPS_SUB             00000010   \.L2 \+ 0
0000002a  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
0000002a  [0-9a-f]+43 R_MIPS_UNSIGNED_8                 0
0000002c  [0-9a-f]+02 R_MIPS_32              00000002   \.L3 \+ 0
0000002c  [0-9a-f]+18 R_MIPS_SUB             00000010   \.L2 \+ 0
0000002c  [0-9a-f]+02 R_MIPS_32                         0
00000030  [0-9a-f]+02 R_MIPS_32              00000004   \.L4 - 4
00000030  [0-9a-f]+18 R_MIPS_SUB             00000010   \.L2 \+ 0
00000030  [0-9a-f]+44 R_MIPS_UNSIGNED_16                0
00000032  [0-9a-f]+02 R_MIPS_32              00000004   \.L4 \+ a
00000032  [0-9a-f]+18 R_MIPS_SUB             00000002   \.L3 \+ 0
00000032  [0-9a-f]+43 R_MIPS_UNSIGNED_8                 0
00000034  [0-9a-f]+02 R_MIPS_32              00000010   \.L2 \+ 3
00000034  [0-9a-f]+18 R_MIPS_SUB             00000004   \.L4 \+ 0
00000034  [0-9a-f]+02 R_MIPS_32                         0
00000038  [0-9a-f]+02 R_MIPS_32              00000002   \.L3 \+ 5
00000038  [0-9a-f]+18 R_MIPS_SUB             00000004   \.L4 \+ 0
00000038  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
00000038  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
00000038  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
00000038  [0-9a-f]+02 R_MIPS_32                         0
0000003c  [0-9a-f]+42 R_MIPS_ASHIFTR_1       00000004   \.L4 \+ 6
0000003c  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
0000003c  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
0000003c  [0-9a-f]+18 R_MIPS_SUB             00000002   \.L3 \+ 0
0000003c  [0-9a-f]+44 R_MIPS_UNSIGNED_16                0
0000003e  [0-9a-f]+42 R_MIPS_ASHIFTR_1       00000010   \.L2 \+ 7
0000003e  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
0000003e  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
0000003e  [0-9a-f]+18 R_MIPS_SUB             00000002   \.L3 \+ 0
0000003e  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
0000003e  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
0000003e  [0-9a-f]+43 R_MIPS_UNSIGNED_8                 0
0000003f  [0-9a-f]+42 R_MIPS_ASHIFTR_1       00000010   \.L2 \+ 7
0000003f  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
0000003f  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
0000003f  [0-9a-f]+18 R_MIPS_SUB             00000002   \.L3 \+ 0
0000003f  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
0000003f  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
0000003f  [0-9a-f]+43 R_MIPS_UNSIGNED_8                 0
00000040  [0-9a-f]+42 R_MIPS_ASHIFTR_1       00000010   \.L2 \+ 7
00000040  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
00000040  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
00000040  [0-9a-f]+18 R_MIPS_SUB             00000002   \.L3 \+ 0
00000040  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
00000040  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
00000040  [0-9a-f]+43 R_MIPS_UNSIGNED_8                 0
00000042  [0-9a-f]+42 R_MIPS_ASHIFTR_1       00000004   \.L4 \+ 6
00000042  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
00000042  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
00000042  [0-9a-f]+46 R_MIPS_SIGNED_16                  0
00000044  [0-9a-f]+02 R_MIPS_32              00000010   \.L2 \+ 0
00000044  [0-9a-f]+18 R_MIPS_SUB             00000002   \.L3 \+ 0
00000044  [0-9a-f]+42 R_MIPS_ASHIFTR_1                  0
00000044  [0-9a-f]+45 R_MIPS_SIGNED_8                   0
#pass
