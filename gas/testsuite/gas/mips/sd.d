#objdump: -dr --prefix-addresses
#as: -32 --defsym tsd=1
#name: MIPS sd
#source: ld.s

# Test the sd macro.

.*: +file format .*mips.*

Disassembly of section \.text:
[0-9a-f]+ <[^>]*> sw	a0,0\(zero\)
[0-9a-f]+ <[^>]*> sw	a1,4\(zero\)
[0-9a-f]+ <[^>]*> sw	a0,1\(zero\)
[0-9a-f]+ <[^>]*> sw	a1,5\(zero\)
[0-9a-f]+ <[^>]*> lui	at,0x1
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[0-9a-f]+ <[^>]*> sw	a0,-32768\(zero\)
[0-9a-f]+ <[^>]*> sw	a1,-32764\(zero\)
[0-9a-f]+ <[^>]*> lui	at,0x1
[0-9a-f]+ <[^>]*> sw	a0,0\(at\)
[0-9a-f]+ <[^>]*> sw	a1,4\(at\)
[0-9a-f]+ <[^>]*> lui	at,0x2
[0-9a-f]+ <[^>]*> sw	a0,-23131\(at\)
[0-9a-f]+ <[^>]*> sw	a1,-23127\(at\)
[0-9a-f]+ <[^>]*> sw	a0,0\(a1\)
[0-9a-f]+ <[^>]*> sw	a1,4\(a1\)
[0-9a-f]+ <[^>]*> sw	a0,1\(a1\)
[0-9a-f]+ <[^>]*> sw	a1,5\(a1\)
[0-9a-f]+ <[^>]*> lui	at,0x1
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[0-9a-f]+ <[^>]*> sw	a0,-32768\(a1\)
[0-9a-f]+ <[^>]*> sw	a1,-32764\(a1\)
[0-9a-f]+ <[^>]*> lui	at,0x1
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,0\(at\)
[0-9a-f]+ <[^>]*> sw	a1,4\(at\)
[0-9a-f]+ <[^>]*> lui	at,0x2
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-23131\(at\)
[0-9a-f]+ <[^>]*> sw	a1,-23127\(at\)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a0,(0|4096)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a1,(4|4100)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a0,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,4\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a0,0\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,4\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> sw	a0,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> sw	a1,4\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> sw	a0,0\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_common
[0-9a-f]+ <[^>]*> sw	a1,4\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a0,(0|8192)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a1,(4|8196)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a0,(0|-16384)\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	\.sbss
[0-9a-f]+ <[^>]*> sw	a1,(4|-16380)\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	\.sbss
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a0,(1|4097)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a1,(5|4101)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a0,1\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,5\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a0,1\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,5\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> sw	a0,1\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> sw	a1,5\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> sw	a0,1\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_common
[0-9a-f]+ <[^>]*> sw	a1,5\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a0,(1|8193)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a1,(5|8197)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a0,(1|-16383)\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	\.sbss
[0-9a-f]+ <[^>]*> sw	a1,(5|-16379)\(gp\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	\.sbss
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a0,-(32768|28672)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a1,-(32764|28668)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_data_label
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_common
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a0,-(32768|24576)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a1,-(32764|24572)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> sw	a0,-(32768|28672)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> sw	a1,-(32764|28668)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a0,-(32768|28672)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a1,-(32764|28668)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_data_label
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_common
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a0,-(32768|24576)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a1,-(32764|24572)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> sw	a0,-(32768|28672)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> sw	a1,-(32764|28668)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a0,(0|4096)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a1,(4|4100)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a0,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,4\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_data_label
[0-9a-f]+ <[^>]*> sw	a0,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,4\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> sw	a0,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> sw	a1,4\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_common
[0-9a-f]+ <[^>]*> sw	a0,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> sw	a1,4\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a0,(0|8192)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a1,(4|8196)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> sw	a0,(0|4096)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> sw	a1,(4|4100)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a0,-(23131|19035)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a1,-(23127|19031)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a0,-23131\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,-23127\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_data_label
[0-9a-f]+ <[^>]*> sw	a0,-23131\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,-23127\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> sw	a0,-23131\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> sw	a1,-23127\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_common
[0-9a-f]+ <[^>]*> sw	a0,-23131\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> sw	a1,-23127\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a0,-(23131|14939)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a1,-(23127|14935)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> sw	a0,-(23131|19035)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> sw	a1,-(23127|19031)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,(0|4096)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a1,(4|4100)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,4\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> sw	a0,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,4\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> sw	a1,4\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> sw	a0,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_common
[0-9a-f]+ <[^>]*> sw	a1,4\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,(0|8192)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a1,(4|8196)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> sw	a0,(0|-16384)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	\.sbss
[0-9a-f]+ <[^>]*> sw	a1,(4|-16380)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	\.sbss
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,(1|4097)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a1,(5|4101)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,1\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,5\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> sw	a0,1\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,5\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,1\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> sw	a1,5\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> sw	a0,1\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_common
[0-9a-f]+ <[^>]*> sw	a1,5\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,(1|8193)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a1,(5|8197)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> addu	at,a1,gp
[0-9a-f]+ <[^>]*> sw	a0,(1|-16383)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	\.sbss
[0-9a-f]+ <[^>]*> sw	a1,(5|-16379)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_GPREL16	\.sbss
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-(32768|28672)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a1,-(32764|28668)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_data_label
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_common
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-(32768|24576)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a1,-(32764|24572)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-(32768|28672)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> sw	a1,-(32764|28668)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-(32768|28672)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a1,-(32764|28668)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_data_label
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_common
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-32768\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> sw	a1,-32764\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-(32768|24576)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a1,-(32764|24572)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> lui	at,0x0
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-(32768|28672)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> sw	a1,-(32764|28668)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,(0|4096)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a1,(4|4100)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,4\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_data_label
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,4\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> sw	a1,4\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_common
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,0\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> sw	a1,4\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,(0|8192)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a1,(4|8196)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> lui	at,0x1
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,(0|4096)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> sw	a1,(4|4100)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(data_label|\.data)
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-(23131|19035)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> sw	a1,-(23127|19031)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(data_label|\.data)
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_data_label
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-23131\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,-23127\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_data_label
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-23131\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> sw	a1,-23127\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_data_label
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	big_external_common
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-23131\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> sw	a1,-23127\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	big_external_common
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	small_external_common
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-23131\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> sw	a1,-23127\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	small_external_common
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-(23131|14939)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> sw	a1,-(23127|14935)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(big_local_common|\.bss)
[0-9a-f]+ <[^>]*> lui	at,0x2
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_HI16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> addu	at,a1,at
[0-9a-f]+ <[^>]*> sw	a0,-(23131|19035)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
[0-9a-f]+ <[^>]*> sw	a1,-(23127|19031)\(at\)
[ 	]*[0-9a-f]+: R_(MICRO)?MIPS_LO16	(small_local_common|\.sbss)
	\.\.\.
