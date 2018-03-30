#objdump: -dr --no-show-raw-insn
#name: nanoMIPS ulh

# Test the ulh macro.

.*: +file format .*nanomips.*

Disassembly of section .text:

0+0000 <.text>:
   0:	lh	a0,0\(zero\)
   4:	lh	a0,1\(zero\)
   8:	li	at,32768
   c:	lh	a0,0\(at\)
  10:	lui	at,%hi\(0xffff8000\)
  14:	lh	a0,0\(at\)
  18:	lui	at,%hi\(0x10000\)
  1c:	lh	a0,0\(at\)
  20:	lui	at,%hi\(0x1a000\)
  24:	lh	a0,1445\(at\)
  28:	lh	a0,0\(a1\)
  2c:	lh	a0,1\(a1\)
  30:	lui	at,0x0
			30: R_NANOMIPS_HI20	\.data
  34:	lh	a0,0\(at\)
			34: R_NANOMIPS_LO12	\.data
  38:	lui	at,0x0
			38: R_NANOMIPS_HI20	big_external_data_label
  3c:	lh	a0,0\(at\)
			3c: R_NANOMIPS_LO12	big_external_data_label
  40:	lh	a0,0\(gp\)
			40: R_NANOMIPS_GPREL17_S1	small_external_data_label
  44:	lui	at,0x0
			44: R_NANOMIPS_HI20	big_external_common
  48:	lh	a0,0\(at\)
			48: R_NANOMIPS_LO12	big_external_common
  4c:	lh	a0,0\(gp\)
			4c: R_NANOMIPS_GPREL17_S1	small_external_common
  50:	lui	at,0x0
			50: R_NANOMIPS_HI20	\.bss
  54:	lh	a0,0\(at\)
			54: R_NANOMIPS_LO12	\.bss
  58:	lh	a0,0\(gp\)
			58: R_NANOMIPS_GPREL17_S1	\.sbss
  5c:	lui	at,0x0
			5c: R_NANOMIPS_HI20	\.data\+0x1
  60:	lh	a0,0\(at\)
			60: R_NANOMIPS_LO12	\.data\+0x1
  64:	lui	at,0x0
			64: R_NANOMIPS_HI20	big_external_data_label\+0x1
  68:	lh	a0,0\(at\)
			68: R_NANOMIPS_LO12	big_external_data_label\+0x1
  6c:	lh	a0,0\(gp\)
			6c: R_NANOMIPS_GPREL17_S1	small_external_data_label\+0x1
  70:	lui	at,0x0
			70: R_NANOMIPS_HI20	big_external_common\+0x1
  74:	lh	a0,0\(at\)
			74: R_NANOMIPS_LO12	big_external_common\+0x1
  78:	lh	a0,0\(gp\)
			78: R_NANOMIPS_GPREL17_S1	small_external_common\+0x1
  7c:	lui	at,0x0
			7c: R_NANOMIPS_HI20	\.bss\+0x1
  80:	lh	a0,0\(at\)
			80: R_NANOMIPS_LO12	\.bss\+0x1
  84:	lh	a0,0\(gp\)
			84: R_NANOMIPS_GPREL17_S1	\.sbss\+0x1
  88:	lui	at,0x0
			88: R_NANOMIPS_HI20	\.data\+0x8000
  8c:	lh	a0,0\(at\)
			8c: R_NANOMIPS_LO12	\.data\+0x8000
  90:	lui	at,0x0
			90: R_NANOMIPS_HI20	big_external_data_label\+0x8000
  94:	lh	a0,0\(at\)
			94: R_NANOMIPS_LO12	big_external_data_label\+0x8000
  98:	lh	a0,0\(gp\)
			98: R_NANOMIPS_GPREL17_S1	small_external_data_label\+0x8000
  9c:	lui	at,0x0
			9c: R_NANOMIPS_HI20	big_external_common\+0x8000
  a0:	lh	a0,0\(at\)
			a0: R_NANOMIPS_LO12	big_external_common\+0x8000
  a4:	lh	a0,0\(gp\)
			a4: R_NANOMIPS_GPREL17_S1	small_external_common\+0x8000
  a8:	lui	at,0x0
			a8: R_NANOMIPS_HI20	\.bss\+0x8000
  ac:	lh	a0,0\(at\)
			ac: R_NANOMIPS_LO12	\.bss\+0x8000
  b0:	lh	a0,0\(gp\)
			b0: R_NANOMIPS_GPREL17_S1	\.sbss\+0x8000
  b4:	lui	at,0x0
			b4: R_NANOMIPS_HI20	\.data-0x8000
  b8:	lh	a0,0\(at\)
			b8: R_NANOMIPS_LO12	\.data-0x8000
  bc:	lui	at,0x0
			bc: R_NANOMIPS_HI20	big_external_data_label-0x8000
  c0:	lh	a0,0\(at\)
			c0: R_NANOMIPS_LO12	big_external_data_label-0x8000
  c4:	lui	at,0x0
			c4: R_NANOMIPS_HI20	small_external_data_label-0x8000
  c8:	lh	a0,0\(at\)
			c8: R_NANOMIPS_LO12	small_external_data_label-0x8000
  cc:	lui	at,0x0
			cc: R_NANOMIPS_HI20	big_external_common-0x8000
  d0:	lh	a0,0\(at\)
			d0: R_NANOMIPS_LO12	big_external_common-0x8000
  d4:	lui	at,0x0
			d4: R_NANOMIPS_HI20	small_external_common-0x8000
  d8:	lh	a0,0\(at\)
			d8: R_NANOMIPS_LO12	small_external_common-0x8000
  dc:	lui	at,0x0
			dc: R_NANOMIPS_HI20	\.bss-0x8000
  e0:	lh	a0,0\(at\)
			e0: R_NANOMIPS_LO12	\.bss-0x8000
  e4:	lui	at,0x0
			e4: R_NANOMIPS_HI20	\.sbss-0x8000
  e8:	lh	a0,0\(at\)
			e8: R_NANOMIPS_LO12	\.sbss-0x8000
  ec:	lui	at,0x0
			ec: R_NANOMIPS_HI20	\.data\+0x10000
  f0:	lh	a0,0\(at\)
			f0: R_NANOMIPS_LO12	\.data\+0x10000
  f4:	lui	at,0x0
			f4: R_NANOMIPS_HI20	big_external_data_label\+0x10000
  f8:	lh	a0,0\(at\)
			f8: R_NANOMIPS_LO12	big_external_data_label\+0x10000
  fc:	lh	a0,0\(gp\)
			fc: R_NANOMIPS_GPREL17_S1	small_external_data_label\+0x10000
 100:	lui	at,0x0
			100: R_NANOMIPS_HI20	big_external_common\+0x10000
 104:	lh	a0,0\(at\)
			104: R_NANOMIPS_LO12	big_external_common\+0x10000
 108:	lh	a0,0\(gp\)
			108: R_NANOMIPS_GPREL17_S1	small_external_common\+0x10000
 10c:	lui	at,0x0
			10c: R_NANOMIPS_HI20	\.bss\+0x10000
 110:	lh	a0,0\(at\)
			110: R_NANOMIPS_LO12	\.bss\+0x10000
 114:	lh	a0,0\(gp\)
			114: R_NANOMIPS_GPREL17_S1	\.sbss\+0x10000
 118:	lui	at,0x0
			118: R_NANOMIPS_HI20	\.data\+0x1a5a5
 11c:	lh	a0,0\(at\)
			11c: R_NANOMIPS_LO12	\.data\+0x1a5a5
 120:	lui	at,0x0
			120: R_NANOMIPS_HI20	big_external_data_label\+0x1a5a5
 124:	lh	a0,0\(at\)
			124: R_NANOMIPS_LO12	big_external_data_label\+0x1a5a5
 128:	lh	a0,0\(gp\)
			128: R_NANOMIPS_GPREL17_S1	small_external_data_label\+0x1a5a5
 12c:	lui	at,0x0
			12c: R_NANOMIPS_HI20	big_external_common\+0x1a5a5
 130:	lh	a0,0\(at\)
			130: R_NANOMIPS_LO12	big_external_common\+0x1a5a5
 134:	lh	a0,0\(gp\)
			134: R_NANOMIPS_GPREL17_S1	small_external_common\+0x1a5a5
 138:	lui	at,0x0
			138: R_NANOMIPS_HI20	\.bss\+0x1a5a5
 13c:	lh	a0,0\(at\)
			13c: R_NANOMIPS_LO12	\.bss\+0x1a5a5
 140:	lh	a0,0\(gp\)
			140: R_NANOMIPS_GPREL17_S1	\.sbss\+0x1a5a5
 144:	lhu	a0,0\(zero\)
#pass
