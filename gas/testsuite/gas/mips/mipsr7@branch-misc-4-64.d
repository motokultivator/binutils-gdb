#objdump: -dr --prefix-addresses --show-raw-insn
#name: MIPS branch-misc-4-64
#as: -p64
#source: branch-misc-4.s

# Verify PC-relative relocations do not overflow.

.*: +file format .*mips.*

Disassembly of section \.text:
	\.\.\.
[0-9a-f]+ <[^>]+> 2800 0000 	bc	[0-9a-f]+ <[^>]+>
			[0-9a-f]+: R_MICROMIPS_PC25_S1	bar-0x4
[0-9a-f]+ <[^>]+> 2800 0000 	bc	[0-9a-f]+ <[^>]+>
			[0-9a-f]+: R_MICROMIPS_PC25_S1	\.Lbar-0x4
	\.\.\.

Disassembly of section \.init:
[0-9a-f]+ <[^>]+> 2800 0000 	bc	[0-9a-f]+ <[^>]+>
			[0-9a-f]+: R_MICROMIPS_PC25_S1	foo-0x4
[0-9a-f]+ <[^>]+> 2800 0000 	bc	[0-9a-f]+ <[^>]+>
			[0-9a-f]+: R_MICROMIPS_PC25_S1	\.Lfoo-0x4
	\.\.\.
