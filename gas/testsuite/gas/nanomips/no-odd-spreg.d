#PROG: readelf
#source: empty.s
#as: -mno-odd-spreg
#readelf: -A
#name: -mno-odd-spreg test

Attribute Section: gnu
File Attributes
  Tag_GNU_NANOMIPS_ABI_FP: .*

nanoMIPS ABI Flags Version: 0

ISA: nanoMIPS.*
GPR size: .*
CPR1 size: .*
CPR2 size: 0
FP ABI: .*
ISA Extension: .*
ASEs:
#...
FLAGS 1: 00000000
FLAGS 2: 00000000
