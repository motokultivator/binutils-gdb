#name: Relaxation code dump R6 big endian
#objdump: -sj.text
#source: linkrelax.s
#as: -EB

dump.o:     file format .*mips.*

Contents of section \.text:
 0000 30480004 00000000 97fffffe 00000000  .*
 0010 cfff0c00 6d320c00 97fffffe 00000000  .*
 0020 cfff0c00 00000000 0c000c00 00000000  .*
 0030 6d220a0a 0a0a0a0a 0c000000 00000000  .*
 0040 0000cdcd cdcdcdcd 00000000 abcdabcd  .*
 0050 00000000 abcd1234 6d320b0b 0b0b0b0b  .*
 0060 0c000c00 babababa babababa babababa  .*
 0070 00000000 dcbadcba dcbadcba dcbadcba  .*
 0080 00000000 4321dcba 4321dcba 4321dcba  .*
 0090 0c000c00 8000c000 8000c000 8000c000  .*
