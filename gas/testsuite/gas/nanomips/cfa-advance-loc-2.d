#objdump: -Wf
#name: nanoMIPS cfa-advance-loc-2
#...
Contents of the .eh_frame section:

00000000 00000010 00000000 CIE
  Version:               1
  Augmentation:          "zR"
  Code alignment factor: 1
  Data alignment factor: -4
  Return address column: 31
  Augmentation data:     1b

  DW_CFA_def_cfa_register: r29
  DW_CFA_nop

00000014 00000014 00000018 FDE cie=00000000 pc=00000000..00000004
  DW_CFA_advance_loc: 4 to 00000004
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r31 at cfa-4
  DW_CFA_nop
  DW_CFA_nop
#...