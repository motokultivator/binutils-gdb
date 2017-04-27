# mips r6 nanoMIPS fpu test for FMADD/FMSUB etc.
# mach:  mips32r7
# as:    -mabi=eabi -mmicromips
# ld:    -N -Ttext=0x80010000
# output: *\\npass\\n

  .include "testutils.inc"
  .include "utils-r6-nanomips.inc"

  setup 4, 6

  .set noreorder

  .ent DIAG
DIAG:

  writemsg "[1] Test qNaN format is 754-2008", 4, 6
  li $4, 0x0
  li $5, 0x0
  li $6, 0x7fc00000
  mtc1 $4, $f2
  mtc1 $5, $f4
  div.s $f6, $f2, $f4
  mfc1 $8, $f6
  fp_assert $6, $8

  writemsg "[2] Test maddf.s", 4, 6
  nanomips_ck_3s maddf.s, 0x0, 0x0, 0x0, 0x0
  nanomips_ck_3s maddf.s, 0x3f800000, 0x3f800000, 0x3f800000, 0x40000000
  nanomips_ck_3s maddf.s, 0xc0b1f5c3, 0x40490fd0, 0x402df854, 0x403e9f5d

  writemsg "[3] Test maddf.d", 4, 6
  nanomips_ck_3d maddf.d, 0x0, 0x0, 0x0, 0x0
  nanomips_ck_3d maddf.d, 0x3ff0000000000000, 0x3ff0000000000000, 0x3ff0000000000000, 0x4000000000000000
  nanomips_ck_3d maddf.d, 0xc0163eb851eb851f, 0x400921f9f01b866e, 0x4005bf0a8b24919b,  0x4007d3ebc14f6cee

  writemsg "[4] Test msubf.s", 4, 6
  nanomips_ck_3s msubf.s, 0x0, 0x0, 0x0, 0x0
  nanomips_ck_3s msubf.s, 0x3f800000, 0x3f800000, 0x3f800000, 0x0
  nanomips_ck_3s msubf.s, 0xc0b1f5c3, 0x40490fd0, 0x402df854, 0xc1619d9a

  writemsg "[5] Test msubf.d", 4, 6
  nanomips_ck_3d msubf.d, 0x0, 0x0, 0x0, 0x0
  nanomips_ck_3d msubf.d, 0x3ff0000000000000, 0x3ff0000000000000, 0x3ff0000000000000, 0x0
  nanomips_ck_3d msubf.d, 0xc0163eb851eb851f, 0x400921f9f01b866e, 0x4005bf0a8b24919b,  0xc02c33b3423f605b

  writemsg "[6] Test CMP.af.s", 4, 6
  nanomips_ck_3s cmp.af.s, 0x0, 0x3f800000, 0x3f800000, 0x0
  nanomips_ck_3s cmp.af.s, 0x0, 0x00000000, 0x3f800000, 0x0

  writemsg "[7] Test CMP.af.d", 4, 6
  nanomips_ck_3d cmp.af.d, 0x0, 0x3ff0000000000000, 0x3ff0000000000000, 0x0
  nanomips_ck_3d cmp.af.d, 0x0, 0x0000000000000000, 0x3ff0000000000000, 0x0

  writemsg "[8] Test CMP.eq.s", 4, 6
  nanomips_ck_3s cmp.eq.s, 0x0, 0x3f800000, 0x3f800000, 0xffffffff
  nanomips_ck_3s cmp.eq.s, 0x0, 0x00000000, 0x3f800000, 0x0
  nanomips_ck_3s cmp.eq.s, 0x0, 0x80000000, 0x00000000, 0xffffffff
  nanomips_ck_3s cmp.eq.s, 0x0, 0x7fc00000, 0x7fc00000, 0x0
  nanomips_ck_3s cmp.eq.s, 0x0, 0x7fc00000, 0xffc00000, 0x0
  nanomips_ck_3s cmp.eq.s, 0x0, 0x7fa00000, 0x7fa00000, 0x0
  nanomips_ck_3s cmp.eq.s, 0x0, 0x7fa00000, 0x7fc00000, 0x0
  nanomips_ck_3s cmp.eq.s, 0x0, 0x7f800000, 0x7f800000, 0xffffffff
  nanomips_ck_3s cmp.eq.s, 0x0, 0xff800000, 0xff800000, 0xffffffff

  writemsg "[9] Test CMP.eq.d", 4, 6
  nanomips_ck_3d cmp.eq.d, 0x0, 0x3ff0000000000000, 0x3ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.eq.d, 0x0, 0x0000000000000000, 0x3ff0000000000000, 0x0
  nanomips_ck_3d cmp.eq.d, 0x0, 0x8000000000000000, 0x0000000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.eq.d, 0x0, 0x7ff8000000000000, 0x7ff8000000000000, 0x0
  nanomips_ck_3d cmp.eq.d, 0x0, 0x7ff8000000000000, 0xffc0000000000000, 0x0
  nanomips_ck_3d cmp.eq.d, 0x0, 0x7fa0000000000000, 0x7fa0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.eq.d, 0x0, 0x7fa0000000000000, 0x7ff8000000000000, 0x0
  nanomips_ck_3d cmp.eq.d, 0x0, 0x7ff0000000000000, 0x7ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.eq.d, 0x0, 0xfff0000000000000, 0xfff0000000000000, 0xffffffffffffffff

  writemsg "[10] Test CMP.ne.s", 4, 6
  nanomips_ck_3s cmp.ne.s, 0x0, 0x3f800000, 0x3f800000, 0x0
  nanomips_ck_3s cmp.ne.s, 0x0, 0x00000000, 0x3f800000, 0xffffffff
  nanomips_ck_3s cmp.ne.s, 0x0, 0x80000000, 0x00000000, 0x0
  nanomips_ck_3s cmp.ne.s, 0x0, 0x7fc00000, 0x7fc00000, 0x0
  nanomips_ck_3s cmp.ne.s, 0x0, 0x7fc00000, 0xffc00000, 0x0
  nanomips_ck_3s cmp.ne.s, 0x0, 0x7fa00000, 0x7fa00000, 0x0
  nanomips_ck_3s cmp.ne.s, 0x0, 0x7fa00000, 0x7fc00000, 0x0
  nanomips_ck_3s cmp.ne.s, 0x0, 0x7f800000, 0x7f800000, 0x0
  nanomips_ck_3s cmp.ne.s, 0x0, 0xff800000, 0xff800000, 0x0

  writemsg "[11] Test CMP.ne.d", 4, 6
  nanomips_ck_3d cmp.ne.d, 0x0, 0x3ff0000000000000, 0x3ff0000000000000, 0x0
  nanomips_ck_3d cmp.ne.d, 0x0, 0x0000000000000000, 0x3ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.ne.d, 0x0, 0x8000000000000000, 0x0000000000000000, 0x0
  nanomips_ck_3d cmp.ne.d, 0x0, 0x7ff8000000000000, 0x7ff8000000000000, 0x0
  nanomips_ck_3d cmp.ne.d, 0x0, 0x7ff8000000000000, 0xffc0000000000000, 0x0
  nanomips_ck_3d cmp.ne.d, 0x0, 0x7fa0000000000000, 0x7fa0000000000000, 0x0
  nanomips_ck_3d cmp.ne.d, 0x0, 0x7fa0000000000000, 0x7ff8000000000000, 0x0
  nanomips_ck_3d cmp.ne.d, 0x0, 0x7ff0000000000000, 0x7ff0000000000000, 0x0
  nanomips_ck_3d cmp.ne.d, 0x0, 0xfff0000000000000, 0xfff0000000000000, 0x0
  nanomips_ck_3d cmp.ne.d, 0x0, 0xab19546120965720, 0x92452014f194abc3, 0xffffffffffffffff

  writemsg "[12] Test CMP.lt.s", 4, 6
  nanomips_ck_3s cmp.lt.s, 0x0, 0x3f800000, 0x3f800000, 0x0
  nanomips_ck_3s cmp.lt.s, 0x0, 0x00000000, 0x3f800000, 0xffffffff
  nanomips_ck_3s cmp.lt.s, 0x0, 0xbf800000, 0x3f800000, 0xffffffff
  nanomips_ck_3s cmp.lt.s, 0x0, 0x3f800000, 0xbf800000, 0x0
  nanomips_ck_3s cmp.lt.s, 0x0, 0xff800000, 0xbf800000, 0xffffffff
  nanomips_ck_3s cmp.lt.s, 0x0, 0xbf800000, 0x7f800000, 0xffffffff
  nanomips_ck_3s cmp.lt.s, 0x0, 0xbf800000, 0xff800000, 0x0
  nanomips_ck_3s cmp.lt.s, 0x0, 0x7f800000, 0xbf800000, 0x0

  writemsg "[13] Test CMP.lt.d", 4, 6
  nanomips_ck_3d cmp.lt.d, 0x0, 0x3ff0000000000000, 0x3ff0000000000000, 0x0
  nanomips_ck_3d cmp.lt.d, 0x0, 0x0000000000000000, 0x3ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.lt.d, 0x0, 0xbff0000000000000, 0x3ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.lt.d, 0x0, 0x3ff0000000000000, 0xbff0000000000000, 0x0
  nanomips_ck_3d cmp.lt.d, 0x0, 0xfff0000000000000, 0xbff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.lt.d, 0x0, 0xbff0000000000000, 0x7ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.lt.d, 0x0, 0xbff0000000000000, 0xfff0000000000000, 0x0
  nanomips_ck_3d cmp.lt.d, 0x0, 0x7ff0000000000000, 0xbff0000000000000, 0x0

  writemsg "[14] Test CMP.le.s", 4, 6
  nanomips_ck_3s cmp.le.s, 0x0, 0x3f800000, 0x3f800000, 0xffffffff
  nanomips_ck_3s cmp.le.s, 0x0, 0x00000000, 0x3f800000, 0xffffffff
  nanomips_ck_3s cmp.le.s, 0x0, 0xbf800000, 0x3f800000, 0xffffffff
  nanomips_ck_3s cmp.le.s, 0x0, 0x3f800000, 0xbf800000, 0x0
  nanomips_ck_3s cmp.le.s, 0x0, 0xff800000, 0xbf800000, 0xffffffff
  nanomips_ck_3s cmp.le.s, 0x0, 0xbf800000, 0x7f800000, 0xffffffff
  nanomips_ck_3s cmp.le.s, 0x0, 0xbf800000, 0xff800000, 0x0
  nanomips_ck_3s cmp.le.s, 0x0, 0x7f800000, 0xbf800000, 0x0

  writemsg "[15] Test CMP.le.d", 4, 6
  nanomips_ck_3d cmp.le.d, 0x0, 0x3ff0000000000000, 0x3ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.le.d, 0x0, 0x0000000000000000, 0x3ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.le.d, 0x0, 0xbff0000000000000, 0x3ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.le.d, 0x0, 0x3ff0000000000000, 0xbff0000000000000, 0x0
  nanomips_ck_3d cmp.le.d, 0x0, 0xfff0000000000000, 0xbff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.le.d, 0x0, 0xbff0000000000000, 0x7ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.le.d, 0x0, 0xbff0000000000000, 0xfff0000000000000, 0x0
  nanomips_ck_3d cmp.le.d, 0x0, 0x7ff0000000000000, 0xbff0000000000000, 0x0

  writemsg "[16] Test CMP.un.s", 4, 6
  nanomips_ck_3s cmp.un.s, 0x0, 0x3f800000, 0x3f800000, 0x0
  nanomips_ck_3s cmp.un.s, 0x0, 0x3f800000, 0xbf800000, 0x0
  nanomips_ck_3s cmp.un.s, 0x0, 0x3f800000, 0x7fc00000, 0xffffffff
  nanomips_ck_3s cmp.un.s, 0x0, 0x7fc01234, 0x7fc00000, 0xffffffff
  nanomips_ck_3s cmp.un.s, 0x0, 0x7fc00000, 0x7fc00000, 0xffffffff
  nanomips_ck_3s cmp.un.s, 0x0, 0x3f800000, 0xff800000, 0x0
  nanomips_ck_3s cmp.un.s, 0x0, 0x3f800000, 0x7f800000, 0x0

  writemsg "[17] Test CMP.un.d", 4, 6
  nanomips_ck_3d cmp.un.d, 0x0, 0x3ff0000000000000, 0x3ff0000000000000, 0x0
  nanomips_ck_3d cmp.un.d, 0x0, 0x3ff0000000000000, 0xbff0000000000000, 0x0
  nanomips_ck_3d cmp.un.d, 0x0, 0x3ff0000000000000, 0x7ff8000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.un.d, 0x0, 0x7fc0123400000000, 0x7ff8000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.un.d, 0x0, 0x7ff8000000000000, 0x7ff8000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.un.d, 0x0, 0x3ff0000000000000, 0xfff0000000000000, 0x0
  nanomips_ck_3d cmp.un.d, 0x0, 0x3ff0000000000000, 0x7ff0000000000000, 0x0

  writemsg "[18] Test CMP.or.s", 4, 6
  nanomips_ck_3s cmp.or.s, 0x0, 0x3f800000, 0x3f800000, 0xffffffff
  nanomips_ck_3s cmp.or.s, 0x0, 0xbf800000, 0x3f800000, 0xffffffff
  nanomips_ck_3s cmp.or.s, 0x0, 0x3f800000, 0x7fc00000, 0x0
  nanomips_ck_3s cmp.or.s, 0x0, 0x7fc00000, 0x3f800000, 0x0
  nanomips_ck_3s cmp.or.s, 0x0, 0xffc00000, 0x3f800000, 0x0
  nanomips_ck_3s cmp.or.s, 0x0, 0x7fc01234, 0x7fc00000, 0x0
  nanomips_ck_3s cmp.or.s, 0x0, 0xff800000, 0x00000000, 0xffffffff
  nanomips_ck_3s cmp.or.s, 0x0, 0x00000000, 0x7f800000, 0xffffffff
  nanomips_ck_3s cmp.or.s, 0x0, 0x00000000, 0xff800000, 0xffffffff
  nanomips_ck_3s cmp.or.s, 0x0, 0x7f800000, 0x00000000, 0xffffffff
  nanomips_ck_3s cmp.or.s, 0x0, 0x7f800000, 0x00000000, 0xffffffff

  writemsg "[19] Test CMP.or.d", 4, 6
  nanomips_ck_3d cmp.or.d, 0x0, 0x3ff0000000000000, 0x3ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.or.d, 0x0, 0xbff0000000000000, 0x3ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.or.d, 0x0, 0x3ff0000000000000, 0x7ff8000000000000, 0x0
  nanomips_ck_3d cmp.or.d, 0x0, 0x7ff8000000000000, 0x3ff0000000000000, 0x0
  nanomips_ck_3d cmp.or.d, 0x0, 0xfff8000000000000, 0x3ff0000000000000, 0x0
  nanomips_ck_3d cmp.or.d, 0x0, 0x7ff8123492134352, 0x7ff8000000000000, 0x0
  nanomips_ck_3d cmp.or.d, 0x0, 0xfff0000000000000, 0x0000000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.or.d, 0x0, 0x0000000000000000, 0x7ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.or.d, 0x0, 0x0000000000000000, 0xfff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.or.d, 0x0, 0x7ff0000000000000, 0x0000000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.or.d, 0x0, 0x7ff0000000000000, 0x0000000000000000, 0xffffffffffffffff

  writemsg "[20] Test CMP.ueq.s", 4, 6
  nanomips_ck_3s cmp.ueq.s, 0x0, 0x3f800000, 0x00000000, 0x0
  nanomips_ck_3s cmp.ueq.s, 0x0, 0x3f800000, 0x7fc00000, 0xffffffff
  nanomips_ck_3s cmp.ueq.s, 0x0, 0x7fc00000, 0x7fc00000, 0xffffffff
  nanomips_ck_3s cmp.ueq.s, 0x0, 0x3f800000, 0x3f800000, 0xffffffff
  nanomips_ck_3s cmp.ueq.s, 0x0, 0x00000000, 0x3f800000, 0x0
  nanomips_ck_3s cmp.ueq.s, 0x0, 0x80000000, 0x00000000, 0xffffffff
  nanomips_ck_3s cmp.ueq.s, 0x0, 0x7f800000, 0x7fc00000, 0xffffffff
  nanomips_ck_3s cmp.ueq.s, 0x0, 0xff800000, 0xff800000, 0xffffffff

  writemsg "[21] Test CMP.ueq.d", 4, 6
  nanomips_ck_3d cmp.ueq.d, 0x0, 0x3ff0000000000000, 0x0000000000000000, 0x0
  nanomips_ck_3d cmp.ueq.d, 0x0, 0x3ff0000000000000, 0x7ff8000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.ueq.d, 0x0, 0x7ff8000000000000, 0x7ff8000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.ueq.d, 0x0, 0x3ff0000000000000, 0x3ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.ueq.d, 0x0, 0x0000000000000000, 0x3ff0000000000000, 0x0
  nanomips_ck_3d cmp.ueq.d, 0x0, 0x8000000000000000, 0x0000000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.ueq.d, 0x0, 0x7ff0000000000000, 0x7ff8000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.ueq.d, 0x0, 0xfff0000000000000, 0xfff0000000000000, 0xffffffffffffffff

  writemsg "[22] Test CMP.une.s", 4, 6
  nanomips_ck_3s cmp.une.s, 0x0, 0x3f800000, 0x3f800000, 0x0
  nanomips_ck_3s cmp.une.s, 0x0, 0x3f800000, 0x7fc00000, 0xffffffff
  nanomips_ck_3s cmp.une.s, 0x0, 0x7fc00000, 0x7fc00000, 0xffffffff
  nanomips_ck_3s cmp.une.s, 0x0, 0x3f800000, 0x3f800000, 0x0
  nanomips_ck_3s cmp.une.s, 0x0, 0x00000000, 0x3f800000, 0xffffffff
  nanomips_ck_3s cmp.une.s, 0x0, 0x80000000, 0x00000000, 0x0
  nanomips_ck_3s cmp.une.s, 0x0, 0x7f800000, 0x7fc00000, 0xffffffff
  nanomips_ck_3s cmp.une.s, 0x0, 0xff800000, 0xff800000, 0x0

  writemsg "[23] Test CMP.une.d", 4, 6
  nanomips_ck_3d cmp.une.d, 0x0, 0x3ff0000000000000, 0x3ff0000000000000, 0x0
  nanomips_ck_3d cmp.une.d, 0x0, 0x3ff0000000000000, 0x7ff8000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.une.d, 0x0, 0x7ff8000000000000, 0x7ff8000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.une.d, 0x0, 0x3ff0000000000000, 0x3ff0000000000000, 0x0
  nanomips_ck_3d cmp.une.d, 0x0, 0x0000000000000000, 0x3ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.une.d, 0x0, 0x8000000000000000, 0x0000000000000000, 0x0
  nanomips_ck_3d cmp.une.d, 0x0, 0x7ff0000000000000, 0x7ff8000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.une.d, 0x0, 0xfff0000000000000, 0xfff0000000000000, 0x0

  writemsg "[24] Test CMP.ult.s", 4, 6
  nanomips_ck_3s cmp.ult.s, 0x0, 0x3f800000, 0x3f800000, 0x0
  nanomips_ck_3s cmp.ult.s, 0x0, 0x3f800000, 0x7fc00000, 0xffffffff
  nanomips_ck_3s cmp.ult.s, 0x0, 0x7fc00000, 0x7fc00000, 0xffffffff
  nanomips_ck_3s cmp.ult.s, 0x0, 0x00000000, 0x3f800000, 0xffffffff
  nanomips_ck_3s cmp.ult.s, 0x0, 0xbf800000, 0x3f800000, 0xffffffff
  nanomips_ck_3s cmp.ult.s, 0x0, 0x3f800000, 0xbf800000, 0x0

  writemsg "[25] Test CMP.ult.d", 4, 6
  nanomips_ck_3d cmp.ult.d, 0x0, 0x3ff0000000000000, 0x3ff0000000000000, 0x0
  nanomips_ck_3d cmp.ult.d, 0x0, 0x3ff0000000000000, 0x7ff8000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.ult.d, 0x0, 0x7ff8000000000000, 0x7ff8000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.ult.d, 0x0, 0x0000000000000000, 0x3ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.ult.d, 0x0, 0xbff0000000000000, 0x3ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.ult.d, 0x0, 0x3ff0000000000000, 0xbff0000000000000, 0x0

  writemsg "[26] Test CMP.ule.s", 4, 6
  nanomips_ck_3s cmp.ule.s, 0x0, 0x3f800000, 0x7fc00000, 0xffffffff
  nanomips_ck_3s cmp.ule.s, 0x0, 0x7fc00000, 0x7fc00000, 0xffffffff
  nanomips_ck_3s cmp.ule.s, 0x0, 0x3f800000, 0x3f800000, 0xffffffff
  nanomips_ck_3s cmp.ule.s, 0x0, 0x00000000, 0x3f800000, 0xffffffff
  nanomips_ck_3s cmp.ule.s, 0x0, 0xbf800000, 0x3f800000, 0xffffffff
  nanomips_ck_3s cmp.ule.s, 0x0, 0x3f800000, 0xbf800000, 0x0
  nanomips_ck_3s cmp.ule.s, 0x0, 0x3f800000, 0xff800000, 0x0

  writemsg "[27] Test CMP.ule.d", 4, 6
  nanomips_ck_3d cmp.ule.d, 0x0, 0x3ff0000000000000, 0x7ff8000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.ule.d, 0x0, 0x7ff8000000000000, 0x7ff8000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.ule.d, 0x0, 0x3ff0000000000000, 0x3ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.ule.d, 0x0, 0x0000000000000000, 0x3ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.ule.d, 0x0, 0xbff0000000000000, 0x3ff0000000000000, 0xffffffffffffffff
  nanomips_ck_3d cmp.ule.d, 0x0, 0x3ff0000000000000, 0xbff0000000000000, 0x0
  nanomips_ck_3d cmp.ule.d, 0x0, 0x3ff0000000000000, 0xfff0000000000000, 0x0

  writemsg "[28] Test rint.s", 4, 6
  nanomips_ck_2s rint.s, 0x0, 0x3fbf10cb, 0x3f800000
  nanomips_ck_2s rint.s, 0x0, 0xb9011423, 0x0
  nanomips_ck_2s rint.s, 0x0, 0x43fa4687, 0x43fa8000
  nanomips_ck_2s rint.s, 0x0, 0x41380000, 0x41400000
  nanomips_ck_2s rint.s, 0x0, 0x3ff33333, 0x40000000

  writemsg "[29] Test rint.d", 4, 6
  nanomips_ck_2d rint.d, 0x0, 0x3ff1f9a6b50b0f28, 0x3ff0000000000000
  nanomips_ck_2d rint.d, 0x0, 0xbf543bf727136a40, 0x0
  nanomips_ck_2d rint.d, 0x0, 0x407f48d0e5604189, 0x407f500000000000
  nanomips_ck_2d rint.d, 0x0, 0x5b7c2d43b93b0a8c, 0x5b7c2d43b93b0a8c,

  writemsg "[30] Test class.s", 4, 6
  nanomips_ck_2s class.s, 0x0, 0x7f800010, 0x1
  nanomips_ck_2s class.s, 0x0, 0x7fc00000, 0x2
  nanomips_ck_2s class.s, 0x0, 0xff800000, 0x4
  nanomips_ck_2s class.s, 0x0, 0xbf800000, 0x8
  nanomips_ck_2s class.s, 0x0, 0x80000001, 0x10
  nanomips_ck_2s class.s, 0x0, 0x80000000, 0x20
  nanomips_ck_2s class.s, 0x0, 0x7f800000, 0x40
  nanomips_ck_2s class.s, 0x0, 0x3f800000, 0x80
  nanomips_ck_2s class.s, 0x0, 0x00000001, 0x100
  nanomips_ck_2s class.s, 0x0, 0x00000000, 0x200

  writemsg "[31] Test class.d", 4, 6
  nanomips_ck_2d class.d, 0x0, 0x7ff0000000000010, 0x1
  nanomips_ck_2d class.d, 0x0, 0x7ff8000000000000, 0x2
  nanomips_ck_2d class.d, 0x0, 0xfff0000000000000, 0x4
  nanomips_ck_2d class.d, 0x0, 0xbff0000000000000, 0x8
  nanomips_ck_2d class.d, 0x0, 0x8000000000000001, 0x10
  nanomips_ck_2d class.d, 0x0, 0x8000000000000000, 0x20
  nanomips_ck_2d class.d, 0x0, 0x7ff0000000000000, 0x40
  nanomips_ck_2d class.d, 0x0, 0x3ff0000000000000, 0x80
  nanomips_ck_2d class.d, 0x0, 0x0000000000000001, 0x100
  nanomips_ck_2d class.d, 0x0, 0x0000000000000000, 0x200

  writemsg "[32] Test min.s", 4, 6
  nanomips_ck_3s min.s, 0x0, 0x3f800000, 0x0, 0x0
  nanomips_ck_3s min.s, 0x0, 0x0, 0x3f800000, 0x0
  nanomips_ck_3s min.s, 0x0, 0x7f800000, 0x3f800000, 0x3f800000
  nanomips_ck_3s min.s, 0x0, 0x3f800000, 0x7f800000, 0x3f800000
  nanomips_ck_3s min.s, 0x0, 0xff800000, 0xbf800000, 0xff800000
  nanomips_ck_3s min.s, 0x0, 0xbf800000, 0xff800000, 0xff800000
  nanomips_ck_3s min.s, 0x0, 0x7fffffff, 0x3f800000, 0x3f800000
  nanomips_ck_3s min.s, 0x0, 0x3f800000, 0x7fffffff, 0x3f800000

  writemsg "[33] Test min.d", 4, 6
  nanomips_ck_3d min.d, 0x0, 0x3ff0000000000000, 0x0, 0x0
  nanomips_ck_3d min.d, 0x0, 0x0, 0x3ff0000000000000, 0x0
  nanomips_ck_3d min.d, 0x0, 0x7ff0000000000000, 0x3ff0000000000000, 0x3ff0000000000000
  nanomips_ck_3d min.d, 0x0, 0x3ff0000000000000, 0x7ff0000000000000, 0x3ff0000000000000
  nanomips_ck_3d min.d, 0x0, 0xfff0000000000000, 0xbff0000000000000, 0xfff0000000000000
  nanomips_ck_3d min.d, 0x0, 0xbff0000000000000, 0xfff0000000000000, 0xfff0000000000000
  nanomips_ck_3d min.d, 0x0, 0x7fffffffffffffff, 0x3ff0000000000000, 0x3ff0000000000000
  nanomips_ck_3d min.d, 0x0, 0x3ff0000000000000, 0x7fffffffffffffff, 0x3ff0000000000000

  writemsg "[34] Test max.s", 4, 6
  nanomips_ck_3s max.s, 0x0, 0x3f800000, 0x0, 0x3f800000
  nanomips_ck_3s max.s, 0x0, 0x0, 0x3f800000, 0x3f800000
  nanomips_ck_3s max.s, 0x0, 0x7f800000, 0x3f800000, 0x7f800000
  nanomips_ck_3s max.s, 0x0, 0x3f800000, 0x7f800000, 0x7f800000
  nanomips_ck_3s max.s, 0x0, 0xff800000, 0xbf800000, 0xbf800000
  nanomips_ck_3s max.s, 0x0, 0xbf800000, 0xff800000, 0xbf800000
  nanomips_ck_3s max.s, 0x0, 0x7fffffff, 0x3f800000, 0x3f800000
  nanomips_ck_3s max.s, 0x0, 0x3f800000, 0x7fffffff, 0x3f800000

  writemsg "[35] Test max.d", 4, 6
  nanomips_ck_3d max.d, 0x0, 0x3ff0000000000000, 0x0, 0x3ff0000000000000
  nanomips_ck_3d max.d, 0x0, 0x0, 0x3ff0000000000000, 0x3ff0000000000000
  nanomips_ck_3d max.d, 0x0, 0x7ff0000000000000, 0x3ff0000000000000, 0x7ff0000000000000
  nanomips_ck_3d max.d, 0x0, 0x3ff0000000000000, 0x7ff0000000000000, 0x7ff0000000000000
  nanomips_ck_3d max.d, 0x0, 0xfff0000000000000, 0xbff0000000000000, 0xbff0000000000000
  nanomips_ck_3d max.d, 0x0, 0xbff0000000000000, 0xfff0000000000000, 0xbff0000000000000
  nanomips_ck_3d max.d, 0x0, 0x7fffffffffffffff, 0x3ff0000000000000, 0x3ff0000000000000
  nanomips_ck_3d max.d, 0x0, 0x3ff0000000000000, 0x7fffffffffffffff, 0x3ff0000000000000

  writemsg "[36] Test mina.s", 4, 6
  nanomips_ck_3s mina.s, 0x0, 0x3f800000, 0x0, 0x0
  nanomips_ck_3s mina.s, 0x0, 0x0, 0x3f800000, 0x0
  nanomips_ck_3s mina.s, 0x0, 0x7f800000, 0x3f800000, 0x3f800000
  nanomips_ck_3s mina.s, 0x0, 0x3f800000, 0x7f800000, 0x3f800000
  nanomips_ck_3s mina.s, 0x0, 0xff800000, 0xbf800000, 0xbf800000
  nanomips_ck_3s mina.s, 0x0, 0xbf800000, 0xff800000, 0xbf800000
  nanomips_ck_3s mina.s, 0x0, 0x7fffffff, 0x3f800000, 0x3f800000
  nanomips_ck_3s mina.s, 0x0, 0x3f800000, 0x7fffffff, 0x3f800000
  nanomips_ck_3s mina.s, 0x0, 0xc0000000, 0x3f800000, 0x3f800000
  nanomips_ck_3s mina.s, 0x0, 0x3f800000, 0xc0000000, 0x3f800000

  writemsg "[37] Test mina.d", 4, 6
  nanomips_ck_3d mina.d, 0x0, 0x3ff0000000000000, 0x0, 0x0
  nanomips_ck_3d mina.d, 0x0, 0x0, 0x3ff0000000000000, 0x0
  nanomips_ck_3d mina.d, 0x0, 0x7ff0000000000000, 0x3ff0000000000000, 0x3ff0000000000000
  nanomips_ck_3d mina.d, 0x0, 0x3ff0000000000000, 0x7ff0000000000000, 0x3ff0000000000000
  nanomips_ck_3d mina.d, 0x0, 0xfff0000000000000, 0xbff0000000000000, 0xbff0000000000000
  nanomips_ck_3d mina.d, 0x0, 0xbff0000000000000, 0xfff0000000000000, 0xbff0000000000000
  nanomips_ck_3d mina.d, 0x0, 0x7fffffffffffffff, 0x3ff0000000000000, 0x3ff0000000000000
  nanomips_ck_3d mina.d, 0x0, 0x3ff0000000000000, 0x7fffffffffffffff, 0x3ff0000000000000
  nanomips_ck_3d mina.d, 0x0, 0xc000000000000000, 0x3ff0000000000000, 0x3ff0000000000000
  nanomips_ck_3d mina.d, 0x0, 0x3ff0000000000000, 0xc000000000000000, 0x3ff0000000000000

  writemsg "[38] Test maxa.s", 4, 6
  nanomips_ck_3s maxa.s, 0x0, 0x3f800000, 0x0, 0x3f800000
  nanomips_ck_3s maxa.s, 0x0, 0x0, 0x3f800000, 0x3f800000
  nanomips_ck_3s maxa.s, 0x0, 0x7f800000, 0x3f800000, 0x7f800000
  nanomips_ck_3s maxa.s, 0x0, 0x3f800000, 0x7f800000, 0x7f800000
  nanomips_ck_3s maxa.s, 0x0, 0xff800000, 0xbf800000, 0xff800000
  nanomips_ck_3s maxa.s, 0x0, 0xbf800000, 0xff800000, 0xff800000
  nanomips_ck_3s maxa.s, 0x0, 0x7fffffff, 0x3f800000, 0x3f800000
  nanomips_ck_3s maxa.s, 0x0, 0x3f800000, 0x7fffffff, 0x3f800000
  nanomips_ck_3s maxa.s, 0x0, 0xc0000000, 0x3f800000, 0xc0000000
  nanomips_ck_3s maxa.s, 0x0, 0x3f800000, 0xc0000000, 0xc0000000

  writemsg "[39] Test maxa.d", 4, 6
  nanomips_ck_3d maxa.d, 0x0, 0x3ff0000000000000, 0x0, 0x3ff0000000000000
  nanomips_ck_3d maxa.d, 0x0, 0x0, 0x3ff0000000000000, 0x3ff0000000000000
  nanomips_ck_3d maxa.d, 0x0, 0x7ff0000000000000, 0x3ff0000000000000, 0x7ff0000000000000
  nanomips_ck_3d maxa.d, 0x0, 0x3ff0000000000000, 0x7ff0000000000000, 0x7ff0000000000000
  nanomips_ck_3d maxa.d, 0x0, 0xfff0000000000000, 0xbff0000000000000, 0xfff0000000000000
  nanomips_ck_3d maxa.d, 0x0, 0xbff0000000000000, 0xfff0000000000000, 0xfff0000000000000
  nanomips_ck_3d maxa.d, 0x0, 0x7fffffffffffffff, 0x3ff0000000000000, 0x3ff0000000000000
  nanomips_ck_3d maxa.d, 0x0, 0x3ff0000000000000, 0x7fffffffffffffff, 0x3ff0000000000000
  nanomips_ck_3d maxa.d, 0x0, 0xc000000000000000, 0x3ff0000000000000, 0xc000000000000000
  nanomips_ck_3d maxa.d, 0x0, 0x3ff0000000000000, 0xc000000000000000, 0xc000000000000000

  writemsg "[40] Test sel.s", 4, 6
  nanomips_ck_3s sel.s, 0x0, 0xabcdef12, 0x12345678, 0xabcdef12
  nanomips_ck_3s sel.s, 0x1, 0xdeadbeef, 0xcafe1234, 0xcafe1234
  nanomips_ck_3s sel.s, 0xfffffffe, 0xbadcafe0, 0x12345678, 0xbadcafe0
  nanomips_ck_3s sel.s, 0xffffffff, 0xdeadbeef, 0xcadf00ab, 0xcadf00ab

  writemsg "[41] Test sel.d", 4, 6
  nanomips_ck_3d sel.d, 0x0, 0xabcdef123456789, 0x12345678abcdefa, 0xabcdef123456789
  nanomips_ck_3d sel.d, 0x1, 0xdeadbeef1534567, 0xcafe12340145279, 0xcafe12340145279
  nanomips_ck_3d sel.d, 0xfffffffffffffffe, 0xbadcafe00efacdab, 0x1234567887654321, 0xbadcafe00efacdab
  nanomips_ck_3d sel.d, 0xffffffffffffffff, 0xdeadbeeffeebdaed, 0xcadf00abba00fdac, 0xcadf00abba00fdac

  writemsg "[42] Test seleqz.s", 4, 6
  nanomips_ck_3s seleqz.s, 0x0, 0x1234abcd, 0x0, 0x1234abcd
  nanomips_ck_3s seleqz.s, 0x0, 0xabcdef01, 0x1, 0x0
  nanomips_ck_3s seleqz.s, 0x0, 0xffeebbcc, 0xfffffffe, 0xffeebbcc
  nanomips_ck_3s seleqz.s, 0x0, 0x12345678, 0xffffffff, 0

  writemsg "[43] Test seleqz.d", 4, 6
  nanomips_ck_3d seleqz.d, 0x0, 0x1234abcddcba4321, 0x0, 0x1234abcddcba4321
  nanomips_ck_3d seleqz.d, 0x0, 0xabcdef0110fedcba, 0x1, 0x0
  nanomips_ck_3d seleqz.d, 0x0, 0xffeebbccccbbeeff, 0xfffffffffffffffe, 0xffeebbccccbbeeff
  nanomips_ck_3d seleqz.d, 0x0, 0x1234567887654321, 0xffffffffffffffff, 0x0

  writemsg "[44] Test selnez.s", 4, 6
  nanomips_ck_3s selnez.s, 0x0, 0x1234abcd, 0x0, 0x0
  nanomips_ck_3s selnez.s, 0x0, 0xabcdef01, 0x1, 0xabcdef01
  nanomips_ck_3s selnez.s, 0x0, 0xffeebbcc, 0xfffffffe, 0x0
  nanomips_ck_3s selnez.s, 0x0, 0x12345678, 0xffffffff, 0x12345678

  writemsg "[45] Test selnez.d", 4, 6
  nanomips_ck_3d selnez.d, 0x0, 0x1234abcddcba4321, 0x0, 0x0
  nanomips_ck_3d selnez.d, 0x0, 0xabcdef0110fedcba, 0x1, 0xabcdef0110fedcba
  nanomips_ck_3d selnez.d, 0x0, 0xffeebbccccbbeeff, 0xfffffffffffffffe, 0x0
  nanomips_ck_3d selnez.d, 0x0, 0x1234567887654321, 0xffffffffffffffff, 0x1234567887654321

  .set reorder

  writemsg "[46] Test bc1eqz", 4, 6
  li $10, 0x01
  mtc1 $10, $f2
  mtc1 $0, $f4
  bc1eqz $f2, L1
  nop
  bc1eqz $f4, L2
  nop
  fail

L1:
  fail

L2:
  writemsg "[47] Test bc1nez", 4, 6
  bc1nez $f4, L3
  nop
  bc1nez $f2, L4
  nop
  fail

L3:
  fail

L4:

  pass

  .end DIAG
