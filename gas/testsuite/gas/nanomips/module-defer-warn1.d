# name: .module deferred warnings
# source: module-defer-warn1.s
# objdump: -p
# as: -mgp64

.*:.*file format.*elf.*mips.*
private flags = b.......: .*\[nanomips32r6\].*

nanoMIPS ABI Flags Version: 0

ISA: nanoMIPS32.*
GPR size: 32
CPR1 size: 64
CPR2 size: 0
FP ABI: Hard float \(32-bit CPU, 64-bit FPU\)
ISA Extension: None
ASEs:
#...
FLAGS 1: 0000000.
FLAGS 2: 00000000
