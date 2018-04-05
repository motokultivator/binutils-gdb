#objdump: -dr --no-show-raw-insn
#as: --defsym tsd=1 --defsym forward=1
#name: nanoMIPS sd forward
#source: ld.s

dump.o:     file format .*nanomips.*

Disassembly of section \.text:

00000000 <text_label>:
       0:	swm	a0,0\(zero\),2
       4:	swm	a0,1\(zero\),2
       8:	li	at,4092
       c:	swm	a0,0\(at\),2
      10:	li	at,-4092
      14:	swm	a0,0\(at\),2
      18:	li	at,4096
      1c:	swm	a0,0\(at\),2
      20:	li	at,0x1a5a5
      26:	swm	a0,0\(at\),2
      2a:	swm	a0,0\(a1\),2
      2e:	swm	a0,1\(a1\),2
      32:	addiu	at,a1,4092
      36:	swm	a0,0\(at\),2
      3a:	addiu	at,a1,-4092
      3e:	swm	a0,0\(at\),2
      42:	addiu	at,a1,4096
      46:	swm	a0,0\(at\),2
      4a:	li	at,0x1a5a5
      50:	addu	at,a1,at
      54:	swm	a0,0\(at\),2
      58:	li	at,0x0
			5a: R_NANOMIPS_I32	\.data
      5e:	swm	a0,0\(at\),2
      62:	li	at,0x0
			64: R_NANOMIPS_I32	big_external_data_label
      68:	swm	a0,0\(at\),2
      6c:	sw	a0,0\(gp\)
			6c: R_NANOMIPS_GPREL19_S2	small_external_data_label
      70:	sw	a1,0\(gp\)
			70: R_NANOMIPS_GPREL19_S2	small_external_data_label\+0x4
      74:	li	at,0x0
			76: R_NANOMIPS_I32	big_external_common
      7a:	swm	a0,0\(at\),2
      7e:	sw	a0,0\(gp\)
			7e: R_NANOMIPS_GPREL19_S2	small_external_common
      82:	sw	a1,0\(gp\)
			82: R_NANOMIPS_GPREL19_S2	small_external_common\+0x4
      86:	li	at,0x0
			88: R_NANOMIPS_I32	\.bss
      8c:	swm	a0,0\(at\),2
      90:	sw	a0,0\(gp\)
			90: R_NANOMIPS_GPREL19_S2	\.sbss
      94:	sw	a1,0\(gp\)
			94: R_NANOMIPS_GPREL19_S2	\.sbss\+0x4
      98:	li	at,0x0
			9a: R_NANOMIPS_I32	\.data\+0x1
      9e:	swm	a0,0\(at\),2
      a2:	li	at,0x0
			a4: R_NANOMIPS_I32	big_external_data_label\+0x1
      a8:	swm	a0,0\(at\),2
      ac:	sw	a0,0\(gp\)
			ac: R_NANOMIPS_GPREL19_S2	small_external_data_label\+0x1
      b0:	sw	a1,0\(gp\)
			b0: R_NANOMIPS_GPREL19_S2	small_external_data_label\+0x5
      b4:	li	at,0x0
			b6: R_NANOMIPS_I32	big_external_common\+0x1
      ba:	swm	a0,0\(at\),2
      be:	sw	a0,0\(gp\)
			be: R_NANOMIPS_GPREL19_S2	small_external_common\+0x1
      c2:	sw	a1,0\(gp\)
			c2: R_NANOMIPS_GPREL19_S2	small_external_common\+0x5
      c6:	li	at,0x0
			c8: R_NANOMIPS_I32	\.bss\+0x1
      cc:	swm	a0,0\(at\),2
      d0:	sw	a0,0\(gp\)
			d0: R_NANOMIPS_GPREL19_S2	\.sbss\+0x1
      d4:	sw	a1,0\(gp\)
			d4: R_NANOMIPS_GPREL19_S2	\.sbss\+0x5
      d8:	li	at,0x0
			da: R_NANOMIPS_I32	\.data\+0xffc
      de:	swm	a0,0\(at\),2
      e2:	li	at,0x0
			e4: R_NANOMIPS_I32	big_external_data_label\+0xffc
      e8:	swm	a0,0\(at\),2
      ec:	sw	a0,0\(gp\)
			ec: R_NANOMIPS_GPREL19_S2	small_external_data_label\+0xffc
      f0:	sw	a1,0\(gp\)
			f0: R_NANOMIPS_GPREL19_S2	small_external_data_label\+0x1000
      f4:	li	at,0x0
			f6: R_NANOMIPS_I32	big_external_common\+0xffc
      fa:	swm	a0,0\(at\),2
      fe:	sw	a0,0\(gp\)
			fe: R_NANOMIPS_GPREL19_S2	small_external_common\+0xffc
     102:	sw	a1,0\(gp\)
			102: R_NANOMIPS_GPREL19_S2	small_external_common\+0x1000
     106:	li	at,0x0
			108: R_NANOMIPS_I32	\.bss\+0xffc
     10c:	swm	a0,0\(at\),2
     110:	sw	a0,0\(gp\)
			110: R_NANOMIPS_GPREL19_S2	\.sbss\+0xffc
     114:	sw	a1,0\(gp\)
			114: R_NANOMIPS_GPREL19_S2	\.sbss\+0x1000
     118:	li	at,0x0
			11a: R_NANOMIPS_I32	\.data-0xffc
     11e:	swm	a0,0\(at\),2
     122:	li	at,0x0
			124: R_NANOMIPS_I32	big_external_data_label-0xffc
     128:	swm	a0,0\(at\),2
     12c:	li	at,0x0
			12e: R_NANOMIPS_I32	small_external_data_label-0xffc
     132:	swm	a0,0\(at\),2
     136:	li	at,0x0
			138: R_NANOMIPS_I32	big_external_common-0xffc
     13c:	swm	a0,0\(at\),2
     140:	li	at,0x0
			142: R_NANOMIPS_I32	small_external_common-0xffc
     146:	swm	a0,0\(at\),2
     14a:	li	at,0x0
			14c: R_NANOMIPS_I32	\.bss-0xffc
     150:	swm	a0,0\(at\),2
     154:	li	at,0x0
			156: R_NANOMIPS_I32	\.sbss-0xffc
     15a:	swm	a0,0\(at\),2
     15e:	li	at,0x0
			160: R_NANOMIPS_I32	\.data\+0x1000
     164:	swm	a0,0\(at\),2
     168:	li	at,0x0
			16a: R_NANOMIPS_I32	big_external_data_label\+0x1000
     16e:	swm	a0,0\(at\),2
     172:	sw	a0,0\(gp\)
			172: R_NANOMIPS_GPREL19_S2	small_external_data_label\+0x1000
     176:	sw	a1,0\(gp\)
			176: R_NANOMIPS_GPREL19_S2	small_external_data_label\+0x1004
     17a:	li	at,0x0
			17c: R_NANOMIPS_I32	big_external_common\+0x1000
     180:	swm	a0,0\(at\),2
     184:	sw	a0,0\(gp\)
			184: R_NANOMIPS_GPREL19_S2	small_external_common\+0x1000
     188:	sw	a1,0\(gp\)
			188: R_NANOMIPS_GPREL19_S2	small_external_common\+0x1004
     18c:	li	at,0x0
			18e: R_NANOMIPS_I32	\.bss\+0x1000
     192:	swm	a0,0\(at\),2
     196:	sw	a0,0\(gp\)
			196: R_NANOMIPS_GPREL19_S2	\.sbss\+0x1000
     19a:	sw	a1,0\(gp\)
			19a: R_NANOMIPS_GPREL19_S2	\.sbss\+0x1004
     19e:	li	at,0x0
			1a0: R_NANOMIPS_I32	\.data\+0x1a5a5
     1a4:	swm	a0,0\(at\),2
     1a8:	li	at,0x0
			1aa: R_NANOMIPS_I32	big_external_data_label\+0x1a5a5
     1ae:	swm	a0,0\(at\),2
     1b2:	sw	a0,0\(gp\)
			1b2: R_NANOMIPS_GPREL19_S2	small_external_data_label\+0x1a5a5
     1b6:	sw	a1,0\(gp\)
			1b6: R_NANOMIPS_GPREL19_S2	small_external_data_label\+0x1a5a9
     1ba:	li	at,0x0
			1bc: R_NANOMIPS_I32	big_external_common\+0x1a5a5
     1c0:	swm	a0,0\(at\),2
     1c4:	sw	a0,0\(gp\)
			1c4: R_NANOMIPS_GPREL19_S2	small_external_common\+0x1a5a5
     1c8:	sw	a1,0\(gp\)
			1c8: R_NANOMIPS_GPREL19_S2	small_external_common\+0x1a5a9
     1cc:	li	at,0x0
			1ce: R_NANOMIPS_I32	\.bss\+0x1a5a5
     1d2:	swm	a0,0\(at\),2
     1d6:	sw	a0,0\(gp\)
			1d6: R_NANOMIPS_GPREL19_S2	\.sbss\+0x1a5a5
     1da:	sw	a1,0\(gp\)
			1da: R_NANOMIPS_GPREL19_S2	\.sbss\+0x1a5a9
#pass
