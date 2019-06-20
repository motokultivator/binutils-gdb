#objdump: -dr --prefix-addresses
#as: --defsym tsw= -mpcrel -mlegacyregs
#name: nanoMIPS subset sw PC-relative
#source: ld.s

# Test PC-relative expansion of the sd macro on nanoMIPS subset

.*: +file format .*nanomips.*

Disassembly of section \.text:
[0-9a-f]+ <text_label> sw	a0,0\(zero\)
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,1\(zero\)
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,4092\(zero\)
[0-9a-f]+ <text_label\+0x[0-9a-f]+> li	at,-4092
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
[0-9a-f]+ <text_label\+0x[0-9a-f]+> li	at,4096
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
[0-9a-f]+ <text_label\+0x[0-9a-f]+> lui	at,%hi\(0x1a000\)
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,1445\(at\)
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(a1\)
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,1\(a1\)
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,4092\(a1\)
[0-9a-f]+ <text_label\+0x[0-9a-f]+> addiu	at,a1,-4092
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
[0-9a-f]+ <text_label\+0x[0-9a-f]+> addiu	at,a1,4096
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
[0-9a-f]+ <text_label\+0x[0-9a-f]+> lui	at,%hi\(0x1a000\)
[0-9a-f]+ <text_label\+0x[0-9a-f]+> addu	at,at,a1
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,1445\(at\)
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <data_label>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	data_label
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	\.data
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_external_data_label>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_external_data_label
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	big_external_data_label
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GPREL19_S2	small_external_data_label
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_external_common>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_external_common
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	big_external_common
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GPREL19_S2	small_external_common
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_local_common>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_local_common
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	\.bss
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GPREL19_S2	\.sbss
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <data_label\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	data_label\+0x1
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	\.data\+0x1
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_external_data_label\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_external_data_label\+0x1
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	big_external_data_label\+0x1
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GPREL19_S2	small_external_data_label\+0x1
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_external_common\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_external_common\+0x1
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	big_external_common\+0x1
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GPREL19_S2	small_external_common\+0x1
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_local_common\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_local_common\+0x1
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	\.bss\+0x1
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GPREL19_S2	\.sbss\+0x1
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <data_label\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	data_label\+0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	\.data\+0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_external_data_label\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_external_data_label\+0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	big_external_data_label\+0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GPREL19_S2	small_external_data_label\+0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_external_common\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_external_common\+0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	big_external_common\+0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GPREL19_S2	small_external_common\+0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_local_common\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_local_common\+0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	\.bss\+0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GPREL19_S2	\.sbss\+0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <data_label\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	data_label-0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	\.data-0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_external_data_label\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_external_data_label-0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	big_external_data_label-0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <small_external_data_label\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	small_external_data_label-0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	small_external_data_label-0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_external_common\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_external_common-0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	big_external_common-0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <small_external_common\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	small_external_common-0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	small_external_common-0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_local_common\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_local_common-0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	\.bss-0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <small_local_common\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	small_local_common-0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	\.sbss-0xffc
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <data_label\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	data_label\+0x1000
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	\.data\+0x1000
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_external_data_label\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_external_data_label\+0x1000
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	big_external_data_label\+0x1000
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GPREL19_S2	small_external_data_label\+0x1000
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_external_common\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_external_common\+0x1000
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	big_external_common\+0x1000
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GPREL19_S2	small_external_common\+0x1000
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_local_common\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_local_common\+0x1000
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	\.bss\+0x1000
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GPREL19_S2	\.sbss\+0x1000
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <data_label\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	data_label\+0x1a5a5
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	\.data\+0x1a5a5
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_external_data_label\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_external_data_label\+0x1a5a5
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	big_external_data_label\+0x1a5a5
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GPREL19_S2	small_external_data_label\+0x1a5a5
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_external_common\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_external_common\+0x1a5a5
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	big_external_common\+0x1a5a5
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GPREL19_S2	small_external_common\+0x1a5a5
[0-9a-f]+ <text_label\+0x[0-9a-f]+> aluipc	at,%pcrel_hi\([0-9a-f]+ <big_local_common\+0x[0-9a-f]+>\)
			[0-9a-f]+: R_NANOMIPS_PCHI20	big_local_common\+0x1a5a5
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(at\)
			[0-9a-f]+: R_NANOMIPS_LO12	\.bss\+0x1a5a5
[0-9a-f]+ <text_label\+0x[0-9a-f]+> sw	a0,0\(gp\)
			[0-9a-f]+: R_NANOMIPS_GPREL19_S2	\.sbss\+0x1a5a5
[0-9a-f]+ <text_label\+0x[0-9a-f]+> nop
#pass
