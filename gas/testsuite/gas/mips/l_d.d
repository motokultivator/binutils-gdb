#objdump: -dr --prefix-addresses
#as: -32 --defsym tl_d=1
#name: MIPS l.d
#source: ld.s

# Test the l.d macro.

.*: +file format .*mips.*

Disassembly of section \.text:
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(zero\)
[0-9a-f]+ <[^>]*> ldc1	\$f4,1\(zero\)
[0-9a-f]+ <[^>]*> lui	at,0x1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(zero\)
[0-9a-f]+ <[^>]*> lui	at,0x1
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(at\)
[0-9a-f]+ <[^>]*> lui	at,0x2
[0-9a-f]+ <[^>]*> ldc1	\$f4,-23131\(at\)
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(a1\)
[0-9a-f]+ <[^>]*> ldc1	\$f4,1\(a1\)
[0-9a-f]+ <[^>]*> lui	at,0x1
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(a1\)
[0-9a-f]+ <[^>]*> lui	at,0x1
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(at\)
[0-9a-f]+ <[^>]*> lui	at,0x2
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-23131\(at\)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> ldc1	\$f4,(0|4096)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> ldc1	\$f4,(0|8192)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> ldc1	\$f4,(0|-16384)\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	\.sbss
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> ldc1	\$f4,(1|4097)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> ldc1	\$f4,1\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> ldc1	\$f4,1\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> ldc1	\$f4,1\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> ldc1	\$f4,1\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> ldc1	\$f4,(1|8193)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> ldc1	\$f4,(1|-16383)\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	\.sbss
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(32768|28672)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_data_label
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_common
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(32768|24576)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(32768|28672)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(32768|28672)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_data_label
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_common
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(32768|24576)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(32768|28672)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> ldc1	\$f4,(0|4096)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_data_label
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_common
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> ldc1	\$f4,(0|8192)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> ldc1	\$f4,(0|4096)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(23131|19035)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> ldc1	\$f4,-23131\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_data_label
[0-9a-f]+ <[^>]*> ldc1	\$f4,-23131\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> ldc1	\$f4,-23131\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_common
[0-9a-f]+ <[^>]*> ldc1	\$f4,-23131\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(23131|14939)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(23131|19035)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,(0|4096)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,(0|8192)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> ldc1	\$f4,(0|-16384)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	\.sbss
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,(1|4097)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,1\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> ldc1	\$f4,1\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,1\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> ldc1	\$f4,1\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,(1|8193)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> ldc1	\$f4,(1|-16383)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	\.sbss
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(32768|28672)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(32768|24576)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(32768|28672)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(32768|28672)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(32768|24576)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(32768|28672)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,(0|4096)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,(0|8192)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,(0|4096)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(23131|19035)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-23131\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_data_label
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-23131\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-23131\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_common
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-23131\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(23131|14939)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> addu	at,at,a1
[0-9a-f]+ <[^>]*> ldc1	\$f4,-(23131|19035)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
	\.\.\.
