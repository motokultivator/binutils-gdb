#source: attr-gnu-4-2.s -32 -EB
#source: attr-gnu-4-5.s -32 -EB
#ld: -r -melf32btsmip
#readelf: -A
#warning: Warning: .* uses -msingle-float \(set by .*\), .* uses -mfpxx
#target: mips*-*-*

Attribute Section: gnu
File Attributes
  Tag_GNU_MIPS_ABI_FP: Hard float \(single precision\)
