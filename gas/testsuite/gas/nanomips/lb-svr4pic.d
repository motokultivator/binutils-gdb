#objdump: -dr --no-show-raw-insn
#name: nanoMIPS lb-svr4pic
#as: -32 -KPIC
#source: lb-pic.s

# Test the lb macro with -KPIC.

.*: +file format .*nanomips.*

Disassembly of section \.text:

0+0000 <text_label>:
   0:	lb	a0,0\(zero\)
   4:	lb	a0,1\(zero\)
   8:	li	a0,32768
   c:	lb	a0,0\(a0\)
  10:	lui	a0,%hi\(0xffff8000\)
  14:	lb	a0,0\(a0\)
  18:	lui	a0,%hi\(0x10000\)
  1c:	lb	a0,0\(a0\)
  20:	lui	a0,%hi\(0x1a000\)
  24:	lb	a0,1445\(a0\)
  28:	lb	a0,0\(a1\)
  2a:	lb	a0,1\(a1\)
  2c:	addiu	a0,a1,32768
  30:	lb	a0,0\(a0\)
  34:	lui	a0,%hi\(0xffff8000\)
  38:	addu	a0,a0,a1
  3c:	lb	a0,0\(a0\)
  40:	lui	a0,%hi\(0x10000\)
  44:	addu	a0,a0,a1
  48:	lb	a0,0\(a0\)
  4c:	lui	a0,%hi\(0x1a000\)
  50:	addu	a0,a0,a1
  54:	lb	a0,1445\(a0\)
  58:	lw	a0,0\(gp\)
			58: R_NANOMIPS_GOT_PAGE	\.data
  5c:	lb	a0,0\(a0\)
			5c: R_NANOMIPS_GOT_OFST	\.data
  60:	lw	a0,0\(gp\)
			60: R_NANOMIPS_GOT_DISP	big_external_data_label
  64:	lb	a0,0\(a0\)
  68:	lw	a0,0\(gp\)
			68: R_NANOMIPS_GOT_DISP	small_external_data_label
  6c:	lb	a0,0\(a0\)
  70:	lw	a0,0\(gp\)
			70: R_NANOMIPS_GOT_DISP	big_external_common
  74:	lb	a0,0\(a0\)
  78:	lw	a0,0\(gp\)
			78: R_NANOMIPS_GOT_DISP	small_external_common
  7c:	lb	a0,0\(a0\)
  80:	lw	a0,0\(gp\)
			80: R_NANOMIPS_GOT_PAGE	\.bss
  84:	lb	a0,0\(a0\)
			84: R_NANOMIPS_GOT_OFST	\.bss
  88:	lw	a0,0\(gp\)
			88: R_NANOMIPS_GOT_PAGE	\.bss\+0x3e8
  8c:	lb	a0,0\(a0\)
			8c: R_NANOMIPS_GOT_OFST	\.bss\+0x3e8
  90:	lw	a0,0\(gp\)
			90: R_NANOMIPS_GOT_PAGE	\.data\+0x1
  94:	lb	a0,0\(a0\)
			94: R_NANOMIPS_GOT_OFST	\.data\+0x1
  98:	lw	a0,0\(gp\)
			98: R_NANOMIPS_GOT_DISP	big_external_data_label\+0x1
  9c:	lb	a0,0\(a0\)
  a0:	lw	a0,0\(gp\)
			a0: R_NANOMIPS_GOT_DISP	small_external_data_label\+0x1
  a4:	lb	a0,0\(a0\)
  a8:	lw	a0,0\(gp\)
			a8: R_NANOMIPS_GOT_DISP	big_external_common\+0x1
  ac:	lb	a0,0\(a0\)
  b0:	lw	a0,0\(gp\)
			b0: R_NANOMIPS_GOT_DISP	small_external_common\+0x1
  b4:	lb	a0,0\(a0\)
  b8:	lw	a0,0\(gp\)
			b8: R_NANOMIPS_GOT_PAGE	\.bss\+0x1
  bc:	lb	a0,0\(a0\)
			bc: R_NANOMIPS_GOT_OFST	\.bss\+0x1
  c0:	lw	a0,0\(gp\)
			c0: R_NANOMIPS_GOT_PAGE	\.bss\+0x3e9
  c4:	lb	a0,0\(a0\)
			c4: R_NANOMIPS_GOT_OFST	\.bss\+0x3e9
  c8:	lw	a0,0\(gp\)
			c8: R_NANOMIPS_GOT_PAGE	\.data
  cc:	addu	a0,a0,a1
  d0:	lb	a0,0\(a0\)
			d0: R_NANOMIPS_GOT_OFST	\.data
  d4:	lw	a0,0\(gp\)
			d4: R_NANOMIPS_GOT_DISP	big_external_data_label
  d8:	addu	a0,a0,a1
  dc:	lb	a0,0\(a0\)
  e0:	lw	a0,0\(gp\)
			e0: R_NANOMIPS_GOT_DISP	small_external_data_label
  e4:	addu	a0,a0,a1
  e8:	lb	a0,0\(a0\)
  ec:	lw	a0,0\(gp\)
			ec: R_NANOMIPS_GOT_DISP	big_external_common
  f0:	addu	a0,a0,a1
  f4:	lb	a0,0\(a0\)
  f8:	lw	a0,0\(gp\)
			f8: R_NANOMIPS_GOT_DISP	small_external_common
  fc:	addu	a0,a0,a1
 100:	lb	a0,0\(a0\)
 104:	lw	a0,0\(gp\)
			104: R_NANOMIPS_GOT_PAGE	\.bss
 108:	addu	a0,a0,a1
 10c:	lb	a0,0\(a0\)
			10c: R_NANOMIPS_GOT_OFST	\.bss
 110:	lw	a0,0\(gp\)
			110: R_NANOMIPS_GOT_PAGE	\.bss\+0x3e8
 114:	addu	a0,a0,a1
 118:	lb	a0,0\(a0\)
			118: R_NANOMIPS_GOT_OFST	\.bss\+0x3e8
 11c:	lw	a0,0\(gp\)
			11c: R_NANOMIPS_GOT_PAGE	\.data\+0x1
 120:	addu	a0,a0,a1
 124:	lb	a0,0\(a0\)
			124: R_NANOMIPS_GOT_OFST	\.data\+0x1
 128:	lw	a0,0\(gp\)
			128: R_NANOMIPS_GOT_DISP	big_external_data_label\+0x1
 12c:	addu	a0,a0,a1
 130:	lb	a0,0\(a0\)
 134:	lw	a0,0\(gp\)
			134: R_NANOMIPS_GOT_DISP	small_external_data_label\+0x1
 138:	addu	a0,a0,a1
 13c:	lb	a0,0\(a0\)
 140:	lw	a0,0\(gp\)
			140: R_NANOMIPS_GOT_DISP	big_external_common\+0x1
 144:	addu	a0,a0,a1
 148:	lb	a0,0\(a0\)
 14c:	lw	a0,0\(gp\)
			14c: R_NANOMIPS_GOT_DISP	small_external_common\+0x1
 150:	addu	a0,a0,a1
 154:	lb	a0,0\(a0\)
 158:	lw	a0,0\(gp\)
			158: R_NANOMIPS_GOT_PAGE	\.bss\+0x1
 15c:	addu	a0,a0,a1
 160:	lb	a0,0\(a0\)
			160: R_NANOMIPS_GOT_OFST	\.bss\+0x1
 164:	lw	a0,0\(gp\)
			164: R_NANOMIPS_GOT_PAGE	\.bss\+0x3e9
 168:	addu	a0,a0,a1
 16c:	lb	a0,0\(a0\)
			16c: R_NANOMIPS_GOT_OFST	\.bss\+0x3e9
 170:	nop
 172:	nop
