#source: elf-rel27.s
#PROG: readelf
#readelf: -Wr
#name: MIPS R7 ELF reloc 27
#as: -32

Relocation section '\.rela\.text' at offset .* contains [4] entries:
 *Offset * Info * Type * Sym\. Value * Symbol's Name \+ Addend
0+0000  0+03b6 R_MICROMIPS_HI20       00000000   \.text \+ d
0+0008  0+03b7 R_MICROMIPS_LO12       00000000   \.text \+ d
0+000e  0+03b6 R_MICROMIPS_HI20       00000000   \.text \+ d
0+000c  0+07ba R_MICROMIPS_PC10_S1    0000000c   \.L0 - 2
#pass