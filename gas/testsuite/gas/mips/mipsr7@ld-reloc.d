#as: -p32 -mno-xlp
#objdump: -dr --prefix-addresses --show-raw-insn -Mgpr-names=numeric
#name: LD with relocation operators for R7
#source: ld-reloc.s

.*file format.*

Disassembly of section \.text:
[0-9a-f]+ <[^>]+> 84a4 8004 	lw	\$5,4\(\$4\)
[0-9a-f]+ <[^>]+> 8484 8000 	lw	\$4,0\(\$4\)
[0-9a-f]+ <[^>]+> 0024 7ffb 	addiu	\$1,\$4,32763
[0-9a-f]+ <[^>]+> 8481 8000 	lw	\$4,0\(\$1\)
[0-9a-f]+ <[^>]+> 84a1 8004 	lw	\$5,4\(\$1\)
[0-9a-f]+ <[^>]+> 0024 7ffc 	addiu	\$1,\$4,32764
[0-9a-f]+ <[^>]+> 8481 8000 	lw	\$4,0\(\$1\)
[0-9a-f]+ <[^>]+> 84a1 8004 	lw	\$5,4\(\$1\)
[0-9a-f]+ <[^>]+> 0024 7fff 	addiu	\$1,\$4,32767
[0-9a-f]+ <[^>]+> 8481 8000 	lw	\$4,0\(\$1\)
[0-9a-f]+ <[^>]+> 84a1 8004 	lw	\$5,4\(\$1\)
[0-9a-f]+ <[^>]+> 0024 8000 	addiu	\$1,\$4,32768
[0-9a-f]+ <[^>]+> 8481 8000 	lw	\$4,0\(\$1\)
[0-9a-f]+ <[^>]+> 84a1 8004 	lw	\$5,4\(\$1\)
[0-9a-f]+ <[^>]+> 8485 8000 	lw	\$4,0\(\$5\)
[0-9a-f]+ <[^>]+> 84a5 8004 	lw	\$5,4\(\$5\)
[0-9a-f]+ <[^>]+> 0025 7ffb 	addiu	\$1,\$5,32763
[0-9a-f]+ <[^>]+> 8481 8000 	lw	\$4,0\(\$1\)
[0-9a-f]+ <[^>]+> 84a1 8004 	lw	\$5,4\(\$1\)
[0-9a-f]+ <[^>]+> 0025 7ffc 	addiu	\$1,\$5,32764
[0-9a-f]+ <[^>]+> 8481 8000 	lw	\$4,0\(\$1\)
[0-9a-f]+ <[^>]+> 84a1 8004 	lw	\$5,4\(\$1\)
[0-9a-f]+ <[^>]+> 0025 7fff 	addiu	\$1,\$5,32767
[0-9a-f]+ <[^>]+> 8481 8000 	lw	\$4,0\(\$1\)
[0-9a-f]+ <[^>]+> 84a1 8004 	lw	\$5,4\(\$1\)
[0-9a-f]+ <[^>]+> 0025 8000 	addiu	\$1,\$5,32768
[0-9a-f]+ <[^>]+> 8481 8000 	lw	\$4,0\(\$1\)
[0-9a-f]+ <[^>]+> 84a1 8004 	lw	\$5,4\(\$1\)
[0-9a-f]+ <[^>]+> e023 7000 	lui	\$1,%hi\(0x37000\)
[0-9a-f]+ <[^>]+> 2025 0950 	addu	\$1,\$5,\$1
[0-9a-f]+ <[^>]+> 8481 8ffb 	lw	\$4,4091\(\$1\)
[0-9a-f]+ <[^>]+> 84a1 8fff 	lw	\$5,4095\(\$1\)
[0-9a-f]+ <[^>]+> e023 7000 	lui	\$1,%hi\(0x37000\)
[0-9a-f]+ <[^>]+> 8021 0ffc 	ori	\$1,\$1,4092
[0-9a-f]+ <[^>]+> 2025 0950 	addu	\$1,\$5,\$1
[0-9a-f]+ <[^>]+> 8481 8000 	lw	\$4,0\(\$1\)
[0-9a-f]+ <[^>]+> 84a1 8004 	lw	\$5,4\(\$1\)
[0-9a-f]+ <[^>]+> e023 7000 	lui	\$1,%hi\(0x37000\)
[0-9a-f]+ <[^>]+> 8021 0fff 	ori	\$1,\$1,4095
[0-9a-f]+ <[^>]+> 2025 0950 	addu	\$1,\$5,\$1
[0-9a-f]+ <[^>]+> 8481 8000 	lw	\$4,0\(\$1\)
[0-9a-f]+ <[^>]+> 84a1 8004 	lw	\$5,4\(\$1\)
[0-9a-f]+ <[^>]+> e023 8000 	lui	\$1,%hi\(0x38000\)
[0-9a-f]+ <[^>]+> 2025 0950 	addu	\$1,\$5,\$1
[0-9a-f]+ <[^>]+> 8481 8000 	lw	\$4,0\(\$1\)
[0-9a-f]+ <[^>]+> 84a1 8004 	lw	\$5,4\(\$1\)
[0-9a-f]+ <[^>]+> 8480 8000 	lw	\$4,0\(\$0\)
			[0-9a-f]+: R_MICROMIPS_LO12	foo
[0-9a-f]+ <[^>]+> 84a0 8000 	lw	\$5,0\(\$0\)
			[0-9a-f]+: R_MICROMIPS_LO12	foo\+0x4
#000000f4 <[^>]+> e020 0000 	lui	\$1,0x0
#			[0-9a-f]+: R_MICROMIPS_HI20	foo
#000000f8 <[^>]+> 8481 8000 	lw	\$4,0\(\$1\)
#			[0-9a-f]+: R_MICROMIPS_LO12	foo
#000000fc <[^>]+> 84a1 8000 	lw	\$5,0\(\$1\)
#			[0-9a-f]+: R_MICROMIPS_LO12	foo\+0x4
[0-9a-f]+ <[^>]+> 4080 0002 	lw	\$4,0\(\$28\)
			[0-9a-f]+: R_MICROMIPS_GPREL19_S2	foo
[0-9a-f]+ <[^>]+> 40a0 0002 	lw	\$5,0\(\$28\)
			[0-9a-f]+: R_MICROMIPS_GPREL19_S2	foo\+0x4
[0-9a-f]+ <[^>]+> 8480 8765 	lw	\$4,1893\(\$0\)
[0-9a-f]+ <[^>]+> 84a0 8769 	lw	\$5,1897\(\$0\)
#[0-9a-f]+ <[^>]+> e034 8244 	lui	\$1,%hi\(0x12348000\)
#[0-9a-f]+ <[^>]+> 8481 8765 	lw	\$4,1893\(\$1\)
#[0-9a-f]+ <[^>]+> 84a1 8769 	lw	\$5,1897\(\$1\)
[0-9a-f]+ <[^>]+> 84a4 8000 	lw	\$5,0\(\$4\)
			[0-9a-f]+: R_MICROMIPS_LO12	foo\+0x4
[0-9a-f]+ <[^>]+> 8484 8000 	lw	\$4,0\(\$4\)
			[0-9a-f]+: R_MICROMIPS_LO12	foo
#0000012c <[^>]+> e020 0000 	lui	\$1,0x0
#			[0-9a-f]+: R_MICROMIPS_HI20	foo
#00000130 <[^>]+> 2024 0950 	addu	\$1,\$4,\$1
#00000134 <[^>]+> 8481 8000 	lw	\$4,0\(\$1\)
#			[0-9a-f]+: R_MICROMIPS_LO12	foo
#00000138 <[^>]+> 84a1 8000 	lw	\$5,0\(\$1\)
#			[0-9a-f]+: R_MICROMIPS_LO12	foo\+0x4
[0-9a-f]+ <[^>]+> e020 0000 	lui	\$1,0x0
			[0-9a-f]+: R_MICROMIPS_HI20	foo
[0-9a-f]+ <[^>]+> 2024 0950 	addu	\$1,\$4,\$1
[0-9a-f]+ <[^>]+> 8481 8000 	lw	\$4,0\(\$1\)
			[0-9a-f]+: R_MICROMIPS_LO12	foo
[0-9a-f]+ <[^>]+> 84a1 8000 	lw	\$5,0\(\$1\)
			[0-9a-f]+: R_MICROMIPS_LO12	foo\+0x4
[0-9a-f]+ <[^>]+> 8485 8000 	lw	\$4,0\(\$5\)
			[0-9a-f]+: R_MICROMIPS_LO12	foo
[0-9a-f]+ <[^>]+> 84a5 8000 	lw	\$5,0\(\$5\)
			[0-9a-f]+: R_MICROMIPS_LO12	foo\+0x4
#00000158 <[^>]+> e020 0000 	lui	\$1,0x0
#			[0-9a-f]+: R_MICROMIPS_HI20	foo
#0000015c <[^>]+> 2025 0950 	addu	\$1,\$5,\$1
#00000160 <[^>]+> 8481 8000 	lw	\$4,0\(\$1\)
#			[0-9a-f]+: R_MICROMIPS_LO12	foo
#00000164 <[^>]+> 84a1 8000 	lw	\$5,0\(\$1\)
#			[0-9a-f]+: R_MICROMIPS_LO12	foo\+0x4
[0-9a-f]+ <[^>]+> e020 0000 	lui	\$1,0x0
			[0-9a-f]+: R_MICROMIPS_HI20	foo
[0-9a-f]+ <[^>]+> 2025 0950 	addu	\$1,\$5,\$1
[0-9a-f]+ <[^>]+> 8481 8000 	lw	\$4,0\(\$1\)
			[0-9a-f]+: R_MICROMIPS_LO12	foo
[0-9a-f]+ <[^>]+> 84a1 8000 	lw	\$5,0\(\$1\)
			[0-9a-f]+: R_MICROMIPS_LO12	foo\+0x4
[0-9a-f]+ <[^>]+> 8485 8765 	lw	\$4,1893\(\$5\)
[0-9a-f]+ <[^>]+> 84a5 8769 	lw	\$5,1897\(\$5\)
#[0-9a-f]+ <[^>]+> e034 8244 	lui	\$1%hi\(,0x12348000\)
#[0-9a-f]+ <[^>]+> 2025 0950 	addu	\$1,\$5,\$1
#[0-9a-f]+ <[^>]+> 8481 8765 	lw	\$4,1893\(\$1\)
#[0-9a-f]+ <[^>]+> 84a1 8769 	lw	\$5,1897\(\$1\)
[0-9a-f]+ <[^>]+> 8485 8000 	lw	\$4,0\(\$5\)
			[0-9a-f]+: R_MICROMIPS_LO12	foo\+0x12348765
[0-9a-f]+ <[^>]+> 84a5 8000 	lw	\$5,0\(\$5\)
			[0-9a-f]+: R_MICROMIPS_LO12	foo\+0x12348769
#000001a0 <[^>]+> e020 0000 	lui	\$1,0x0
#			[0-9a-f]+: R_MICROMIPS_HI20	foo\+0x12348765
#000001a4 <[^>]+> 2025 0950 	addu	\$1,\$5,\$1
#000001a8 <[^>]+> 8481 8000 	lw	\$4,0\(\$1\)
#			[0-9a-f]+: R_MICROMIPS_LO12	foo\+0x12348765
#000001ac <[^>]+> 84a1 8000 	lw	\$5,0\(\$1\)
#			[0-9a-f]+: R_MICROMIPS_LO12	foo\+0x12348769
