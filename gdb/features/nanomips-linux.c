/* THIS FILE IS GENERATED.  -*- buffer-read-only: t -*- vi:set ro:
  Original: nanomips-linux.xml */

#include "defs.h"
#include "osabi.h"
#include "target-descriptions.h"

struct target_desc *tdesc_nanomips_linux;
static void
initialize_tdesc_nanomips_linux (void)
{
  struct target_desc *result = allocate_target_description ();
  struct tdesc_feature *feature;

  set_tdesc_architecture (result, bfd_scan_arch ("nanomips"));

  set_tdesc_osabi (result, osabi_from_tdesc_string ("GNU/Linux"));

  feature = tdesc_create_feature (result, "org.gnu.gdb.nanomips.cpu");
  tdesc_create_reg (feature, "r0", 0, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r1", 1, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r2", 2, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r3", 3, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r4", 4, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r5", 5, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r6", 6, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r7", 7, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r8", 8, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r9", 9, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r10", 10, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r11", 11, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r12", 12, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r13", 13, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r14", 14, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r15", 15, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r16", 16, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r17", 17, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r18", 18, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r19", 19, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r20", 20, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r21", 21, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r22", 22, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r23", 23, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r24", 24, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r25", 25, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r26", 26, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r27", 27, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r28", 28, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r29", 29, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r30", 30, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "r31", 31, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "pc", 32, 1, NULL, 32, "int");

  feature = tdesc_create_feature (result, "org.gnu.gdb.nanomips.linux");
  tdesc_create_reg (feature, "restart", 33, 1, "system", 32, "int");

  feature = tdesc_create_feature (result, "org.gnu.gdb.nanomips.cp0");
  tdesc_create_reg (feature, "status", 34, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "badvaddr", 35, 1, NULL, 32, "int");
  tdesc_create_reg (feature, "cause", 36, 1, NULL, 32, "int");

  feature = tdesc_create_feature (result, "org.gnu.gdb.nanomips.fpu");
  tdesc_create_reg (feature, "f0", 37, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f1", 38, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f2", 39, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f3", 40, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f4", 41, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f5", 42, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f6", 43, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f7", 44, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f8", 45, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f9", 46, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f10", 47, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f11", 48, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f12", 49, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f13", 50, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f14", 51, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f15", 52, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f16", 53, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f17", 54, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f18", 55, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f19", 56, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f20", 57, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f21", 58, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f22", 59, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f23", 60, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f24", 61, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f25", 62, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f26", 63, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f27", 64, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f28", 65, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f29", 66, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f30", 67, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "f31", 68, 1, NULL, 64, "ieee_double");
  tdesc_create_reg (feature, "fcsr", 69, 1, "float", 32, "int");
  tdesc_create_reg (feature, "fir", 70, 1, "float", 32, "int");

  tdesc_nanomips_linux = result;
}
