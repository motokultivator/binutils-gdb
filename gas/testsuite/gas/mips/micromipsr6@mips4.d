#objdump: -dr --prefix-addresses --show-raw-insn
#name: MIPS mips4 non-fp
#source: mips4.s

# Test mips4 *non-fp* instructions (microMIPS).

.*: +file format .*mips.*

Disassembly of section \.text:
[0-9a-f]+ <[^>]*> 6084 2000 	pref	0x4,0\(a0\)
	\.\.\.
