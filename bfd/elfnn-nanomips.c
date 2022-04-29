/* nanoMIPS-specific support for 32-bit ELF
   Copyright (C) 2018-2022 Free Software Foundation, Inc.

   Written by Faraz Shahbazker <faraz.shahbazker@mips.com>

   This file is part of BFD, the Binary File Descriptor library.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street - Fifth Floor, Boston,
   MA 02110-1301, USA.  */


/* This file handles nanoMIPS ELF targets.  */

#include "sysdep.h"
#include "bfd.h"
#include "libbfd.h"
#include "elf-bfd.h"
#include "elfxx-nanomips.h"
#include "elf/nanomips.h"

#define ARCH_SIZE	NN

#if ARCH_SIZE == 32
/* Nonzero if ABFD is using the P32 ABI.  */
#define ABI_P32_P(abfd) \
  ((elf_elfheader (abfd)->e_flags & EF_NANOMIPS_ABI) != E_NANOMIPS_ABI_P64)
#else /* ARCH_SIZE != 32 */
/* Nonzero if ABFD is using the P64 ABI.  */
#define ABI_P64_P(abfd) \
  ((elf_elfheader (abfd)->e_flags & EF_NANOMIPS_ABI) != E_NANOMIPS_ABI_P32)
#endif /* ARCH_SIZE == 32 */

/* In case we're on a 32-bit machine, construct a 64-bit "-1" value
   from smaller values.  Start with zero, widen, *then* decrement.  */
#define MINUS_ONE	(((bfd_vma)0) - 1)

/* The relocation table used for SHT_RELA sections.  */

static reloc_howto_type elfNN_nanomips_howto_table_rela[] = {
  /* No relocation.  */
  HOWTO (R_NANOMIPS_NONE,	/* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_NONE",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 false),		/* pcrel_offset */

  /* 32 bit relocation.  */
  HOWTO (R_NANOMIPS_32,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_32",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* 64 bit relocation.  */
  HOWTO (R_NANOMIPS_64, 	/* type */
	 0,			/* rightshift */
	 4,			/* size (0 = byte, 1 = short, 2 = long) */
	 64,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_64",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 MINUS_ONE,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* Symbol address negation, can be composed for label differences.  */
  HOWTO (R_NANOMIPS_NEG,	/* type */
	 0,			/* rightshift */
	 4,			/* size (0 = byte, 1 = short, 2 = long) */
	 64,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_negative_reloc, /* special_function */
	 "R_NANOMIPS_NEG",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* A 5 bit shift field.  */
  HOWTO (R_NANOMIPS_ASHIFTR_1,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_ASHIFTR_1", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  HOWTO (R_NANOMIPS_UNSIGNED_8, /* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 8,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_UNSIGNED_8", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xff,			/* dst_mask */
	 false),		/* pcrel_offset */

  HOWTO (R_NANOMIPS_SIGNED_8,	/* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 8,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_SIGNED_8",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xff,			/* dst_mask */
	 false),		/* pcrel_offset */

  HOWTO (R_NANOMIPS_UNSIGNED_16, /* type */
	 0,			/* rightshift */
	 1,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_UNSIGNED_16", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  HOWTO (R_NANOMIPS_SIGNED_16,	/* type */
	 0,			/* rightshift */
	 1,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_SIGNED_16", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  EMPTY_HOWTO (R_NANOMIPS_RELATIVE),
  EMPTY_HOWTO (R_NANOMIPS_GLOBAL),

  /* Lazy resolver jump slot.  */
  HOWTO (R_NANOMIPS_JUMP_SLOT,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_JUMP_SLOT", /* name */
	 false,			/* partial_inplace */
	 0x0,         		/* src_mask */
	 0x0,		        /* dst_mask */
	 false),		/* pcrel_offset */

  /* Reserved for IFUNC support.  */
  EMPTY_HOWTO (R_NANOMIPS_IRELATIVE),

  HOWTO (R_NANOMIPS_PC25_S1,	/* type */
	 1,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 25,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC25_S1",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x01ffffff,		/* dst_mask */
	 true),			/* pcrel_offset */

  HOWTO (R_NANOMIPS_PC21_S1,	/* type */
	 1,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 21,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC21_S1",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0001ffff,		/* dst_mask */
	 true),			/* pcrel_offset */

  HOWTO (R_NANOMIPS_PC14_S1,	/* type */
	 1,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 14,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC14_S1",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x00003fff,		/* dst_mask */
	 true),			/* pcrel_offset */

  HOWTO (R_NANOMIPS_PC11_S1,	/* type */
	 1,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 11,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC11_S1",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x000007ff,		/* dst_mask */
	 true),			/* pcrel_offset */

  HOWTO (R_NANOMIPS_PC10_S1,	/* type */
	 1,			/* rightshift */
	 1,			/* size (0 = byte, 1 = short, 2 = long) */
	 10,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC10_S1",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x000003ff,		/* dst_mask */
	 true),			/* pcrel_offset */

  /* This is for nanoMIPS branches.  */
  HOWTO (R_NANOMIPS_PC7_S1,	/* type */
	 1,			/* rightshift */
	 1,			/* size (0 = byte, 1 = short, 2 = long) */
	 7,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC7_S1",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000007f,		/* dst_mask */
	 true),			/* pcrel_offset */

  HOWTO (R_NANOMIPS_PC4_S1,	/* type */
	 1,			/* rightshift */
	 1,			/* size (0 = byte, 1 = short, 2 = long) */
	 4,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC4_S1",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000000f,		/* dst_mask */
	 true),			/* pcrel_offset */

  /* GP relative reference.  */
  HOWTO (R_NANOMIPS_GPREL19_S2,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 19,			/* bitsize */
	 false,			/* pc_relative */
	 2,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL19_S2",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffffc,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* GP relative reference.  */
  HOWTO (R_NANOMIPS_GPREL18_S3,	/* type */
	 3,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 18,			/* bitsize */
	 false,			/* pc_relative */
	 3,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL18_S3",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffff8,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* GP relative reference.  */
  HOWTO (R_NANOMIPS_GPREL18,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 18,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL18",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0003ffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* GP relative reference.  */
  HOWTO (R_NANOMIPS_GPREL17_S1,	/* type */
	 1,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 17,			/* bitsize */
	 false,			/* pc_relative */
	 1,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL17_S1",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0001fffe,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* GP relative reference.  */
  HOWTO (R_NANOMIPS_GPREL16_S2,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 false,			/* pc_relative */
	 2,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL16_S2",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0003fffc,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* GP- and PC-relative relocations.  */
  HOWTO (R_NANOMIPS_GPREL7_S2,	/* type */
	 2,			/* rightshift */
	 1,			/* size (0 = byte, 1 = short, 2 = long) */
	 7,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL7_S2", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000007f,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* High 20 bits of GP relative reference.  */
  HOWTO (R_NANOMIPS_GPREL_HI20,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 20,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL_HI20", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffffd,		/* dst_mask */
	 false),		/* pcrel_offset */

  HOWTO (R_NANOMIPS_PCHI20,	/* type */
	 12,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 20,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PCHI20", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffffd,		/* dst_mask */
	 true),			/* pcrel_offset */

  /* High 20 bits of symbol value.  */
  HOWTO (R_NANOMIPS_HI20,	/* type */
	 12,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 20,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_HI20",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffffd,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* Low 12 bits of symbol value.  */
  HOWTO (R_NANOMIPS_LO12,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 12,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_LO12",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x00000fff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* High 32 bits of 64-bit address.  */
  HOWTO (R_NANOMIPS_GPREL_I32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL_I32", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* High 32 bits of 64-bit address.  */
  HOWTO (R_NANOMIPS_PC_I32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC_I32",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* Refers to low 32-bits of 48-bit instruction. The 32-bit value
     is encoded as nanoMIPS instruction stream - so it will be
     half-word swapped on little endian targets.  */
  HOWTO (R_NANOMIPS_I32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_I32",	/* name */
	 false,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* Displacement in the global offset table.  */
  HOWTO (R_NANOMIPS_GOT_DISP,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 19,			/* bitsize */
	 false,			/* pc_relative */
	 2,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GOT_DISP", /* name */
	 false,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x001ffffc,		/* dst_mask */
	 false),		/* pcrel_offset */
  /* High 32 bits of 64-bit address.  */
  HOWTO (R_NANOMIPS_GOTPC_I32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GOTPC_I32", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* High 20 bits of PC-relative GOT offset.  */
  HOWTO (R_NANOMIPS_GOTPC_HI20,	/* type */
	 12,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 20,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GOTPC_HI20", /* name */
	 false,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x001ffffd,		/* dst_mask */
	 true),			/* pcrel_offset */

  /* Low 12 bits of displacement in global offset table.  */
  HOWTO (R_NANOMIPS_GOT_LO12,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 12,			/* bitsize */
	 false,			/* pc_relative */
	 2,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GOT_LO12", /* name */
	 false,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x00000fff,		/* dst_mask */
	 true),			/* pcrel_offset */

  /* 19 bit call through global offset table.  */
  HOWTO (R_NANOMIPS_GOT_CALL,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 19,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GOT_CALL",	/* name */
	 false,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x001ffffc,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* Displacement to page pointer in the global offset table.  */
  HOWTO (R_NANOMIPS_GOT_PAGE,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 19,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GOT_PAGE", /* name */
	 false,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x001ffffc,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* Offset from page pointer in the global offset table.  */
  HOWTO (R_NANOMIPS_GOT_OFST,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 12,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GOT_OFST", /* name */
	 false,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x00000fff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* Low 4 bits of symbol value.  */
  HOWTO (R_NANOMIPS_LO4_S2,	/* type */
	 2,			/* rightshift */
	 1,			/* size (0 = byte, 1 = short, 2 = long) */
	 4,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_LO4_S2",	/* name */
	 false,			/* partial_inplace */
	 0x0000000f,		/* src_mask */
	 0x0000000f,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* Reserved for 64-bit ABI, HI32 relocation.  */
  EMPTY_HOWTO (R_NANOMIPS_RESERVED1),

  /* Low 12 bits of GP-relative displacement.  */
  HOWTO (R_NANOMIPS_GPREL_LO12,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 12,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL_LO12", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x00000fff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* Section displacement.  */
  HOWTO (R_NANOMIPS_SCN_DISP,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_SCN_DISP",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* Copy relocation.  */
  HOWTO (R_NANOMIPS_COPY,	/* type */
	 0,			/* rightshift */
	 0,			/* this one is variable size */
	 0,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_bitfield, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_COPY",	/* name */
	 false,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x0,			/* dst_mask */
	 false),		/* pcrel_offset */

  EMPTY_HOWTO (45),
  EMPTY_HOWTO (46),
  EMPTY_HOWTO (47),
  EMPTY_HOWTO (48),
  EMPTY_HOWTO (49),
  EMPTY_HOWTO (50),
  EMPTY_HOWTO (51),
  EMPTY_HOWTO (52),
  EMPTY_HOWTO (53),
  EMPTY_HOWTO (54),
  EMPTY_HOWTO (55),
  EMPTY_HOWTO (56),
  EMPTY_HOWTO (57),
  EMPTY_HOWTO (58),
  EMPTY_HOWTO (59),
  EMPTY_HOWTO (60),
  EMPTY_HOWTO (61),
  EMPTY_HOWTO (62),
  EMPTY_HOWTO (63),

  /* Place-holder for code alignment.  */
  HOWTO (R_NANOMIPS_ALIGN,	/* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 bfd_elf_generic_reloc,	/* special handler.  */
	 "R_NANOMIPS_ALIGN",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 false),		/* pcrel_offset */

  /* Fill value for code alignment.  */
  HOWTO (R_NANOMIPS_FILL,	/* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 bfd_elf_generic_reloc,	/* special handler.  */
	 "R_NANOMIPS_FILL",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 false),		/* pcrel_offset */

  /* Maximum padding bytes for code alignment.  */
  HOWTO (R_NANOMIPS_MAX,	/* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 bfd_elf_generic_reloc,	/* special handler.  */
	 "R_NANOMIPS_MAX",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 false),		/* pcrel_offset */

  /* Place-holder to enforce 32-bit instruction encoding.  */
  HOWTO (R_NANOMIPS_INSN32,	/* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 bfd_elf_generic_reloc,	/* special handler.  */
	 "R_NANOMIPS_INSN32",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 false),		/* pcrel_offset */

  /* Place-holder to inhibit relaxation on one instruction.  */
  HOWTO (R_NANOMIPS_FIXED,	/* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 bfd_elf_generic_reloc,	/* special handler.  */
	 "R_NANOMIPS_FIXED",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 false),		/* pcrel_offset */

  /* Marker to inhibit linker relaxation.  */
  HOWTO (R_NANOMIPS_NORELAX,	/* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 false, 		/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 bfd_elf_generic_reloc,	/* special handler.  */
	 "R_NANOMIPS_NORELAX",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 false),		/* pcrel_offset */

  /* Marker to enable linker relaxation.  */
  HOWTO (R_NANOMIPS_RELAX,	/* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 bfd_elf_generic_reloc,	/* special handler.  */
	 "R_NANOMIPS_RELAX",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 false),		/* pcrel_offset */

  /* Place-holder for relaxation of save/restore instructions.  */
  HOWTO (R_NANOMIPS_SAVERESTORE, /* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 bfd_elf_generic_reloc,	/* special handler.  */
	 "R_NANOMIPS_SAVERESTORE", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 false),		/* pcrel_offset */

  /* Place-holder to enforce 16-bit instruction encoding.  */
  HOWTO (R_NANOMIPS_INSN16,	/* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 bfd_elf_generic_reloc,	/* special handler.  */
	 "R_NANOMIPS_INSN16",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 false),		/* pcrel_offset */

  /* Place-holder to enforce 32-bit JALR encoding.  */
  HOWTO (R_NANOMIPS_JALR32,	/* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 bfd_elf_generic_reloc, /* special handler.  */
	 "R_NANOMIPS_JALR32",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 false),		/* pcrel_offset */

  /* Place-holder to enforce 16-bit JALR encoding.  */
  HOWTO (R_NANOMIPS_JALR16,	/* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 bfd_elf_generic_reloc, /* special handler.  */
	 "R_NANOMIPS_JALR16",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 false),		/* pcrel_offset */

  /* Place-holder for compressed jump-table load instructions.  */
  HOWTO (R_NANOMIPS_JUMPTABLE_LOAD, /* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 bfd_elf_generic_reloc, /* special handler */
	 "R_NANOMIPS_JUMPTABLE_LOAD", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 false),		/* pcrel_offset */

  /* Place-holder for relaxing frame-register information.  */
  HOWTO (R_NANOMIPS_FRAME_REG, /* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 bfd_elf_generic_reloc, /* special handler */
	 "R_NANOMIPS_FRAME_REG", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 false),		/* pcrel_offset */


  EMPTY_HOWTO (77),
  EMPTY_HOWTO (78),
  EMPTY_HOWTO (79),

  /* TLS GD/LD dynamic relocations.  */
  HOWTO (R_NANOMIPS_TLS_DTPMOD, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_DTPMOD", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  HOWTO (R_NANOMIPS_TLS_DTPREL, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_DTPREL", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* TLS IE dynamic relocations.  */
  HOWTO (R_NANOMIPS_TLS_TPREL, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_TPREL", /* name */
	 false,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* TLS general dynamic variable reference.  */
  HOWTO (R_NANOMIPS_TLS_GD,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 19,			/* bitsize */
	 false,			/* pc_relative */
	 2,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_GD",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffffc,		/* dst_mask */
	 false),		/* pcrel_offset */

  HOWTO (R_NANOMIPS_TLS_GD_I32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_GD_I32", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* TLS local dynamic variable reference.  */
  HOWTO (R_NANOMIPS_TLS_LD,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 19,			/* bitsize */
	 false,			/* pc_relative */
	 2,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_LD",	/* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffffc,		/* dst_mask */
	 false),		/* pcrel_offset */

  HOWTO (R_NANOMIPS_TLS_LD_I32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_LD_I32", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* TLS local dynamic 12-bit offset.  */
  HOWTO (R_NANOMIPS_TLS_DTPREL12, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 12,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_DTPREL12", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x00000fff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* TLS local dynamic 16-bit offset.  */
  HOWTO (R_NANOMIPS_TLS_DTPREL16, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_DTPREL16", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* TLS local dynamic 32-bit offset.  */
  HOWTO (R_NANOMIPS_TLS_DTPREL_I32, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_DTPREL_I32", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* TLS thread pointer 21-bit GOT offset.  */
  HOWTO (R_NANOMIPS_TLS_GOTTPREL,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 19,			/* bitsize */
	 false,			/* pc_relative */
	 2,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_GOTTPREL", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffffc,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* TLS thread pointer 32-bit GOT offset.  */
  HOWTO (R_NANOMIPS_TLS_GOTTPREL_PC_I32, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_GOTTPREL_PC_I32", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 true), 		/* pcrel_offset */

  /* TLS thread pointer 12-bit offset.  */
  HOWTO (R_NANOMIPS_TLS_TPREL12, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 12,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_TPREL12", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x00000fff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* TLS thread pointer 16-bit offset.  */
  HOWTO (R_NANOMIPS_TLS_TPREL16, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_TPREL16", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 false),		/* pcrel_offset */

  /* TLS thread pointer 32-bit offset.  */
  HOWTO (R_NANOMIPS_TLS_TPREL_I32, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_TPREL_I32", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 false),		/* pcrel_offset */
};

/* GNU extension to record C++ vtable hierarchy */
static reloc_howto_type elf_nanomips_gnu_vtinherit_howto =
  HOWTO (R_NANOMIPS_GNU_VTINHERIT, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 false, 		/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 NULL,			/* special_function */
	 "R_NANOMIPS_GNU_VTINHERIT", /* name */
	 false, 		/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 false);		/* pcrel_offset */

/* GNU extension to record C++ vtable member usage */
static reloc_howto_type elf_nanomips_gnu_vtentry_howto =
  HOWTO (R_NANOMIPS_GNU_VTENTRY, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_elf_rel_vtable_reloc_fn, /* special_function */
	 "R_NANOMIPS_GNU_VTENTRY", /* name */
	 false,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 false);		/* pcrel_offset */

/* 32 bit pc-relative.  */
static reloc_howto_type elf_nanomips_gnu_pcrel32 =
  HOWTO (R_NANOMIPS_PC32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 true,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC32",	/* name */
	 true,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 true);			/* pcrel_offset */

/* Used in EH tables.  */
static reloc_howto_type elf_nanomips_eh_howto =
  HOWTO (R_NANOMIPS_EH, 	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 false,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_nanomips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_EH",	/* name */
	 true,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,	        /* dst_mask */
	 false);		/* pcrel_offset */

/* A mapping from BFD reloc types to nanoMIPS ELF reloc types.  */

struct elf_reloc_map
{
  bfd_reloc_code_real_type bfd_val;
  enum elf_nanomips_reloc_type elf_val;
};

static const struct elf_reloc_map nanomips_reloc_map[] = {
  { BFD_RELOC_NONE, R_NANOMIPS_NONE },
  { BFD_RELOC_32, R_NANOMIPS_32 },
  { BFD_RELOC_64, R_NANOMIPS_64 },
  { BFD_RELOC_NANOMIPS_NEG, R_NANOMIPS_NEG },
  { BFD_RELOC_NANOMIPS_ASHIFTR_1, R_NANOMIPS_ASHIFTR_1 },
  { BFD_RELOC_NANOMIPS_UNSIGNED_8, R_NANOMIPS_UNSIGNED_8 },
  { BFD_RELOC_NANOMIPS_SIGNED_8, R_NANOMIPS_SIGNED_8 },
  { BFD_RELOC_NANOMIPS_UNSIGNED_16, R_NANOMIPS_UNSIGNED_16 },
  { BFD_RELOC_16, R_NANOMIPS_UNSIGNED_16 },
  { BFD_RELOC_NANOMIPS_SIGNED_16, R_NANOMIPS_SIGNED_16 },
  { BFD_RELOC_NANOMIPS_HI20, R_NANOMIPS_HI20 },
  { BFD_RELOC_NANOMIPS_LO12, R_NANOMIPS_LO12 },
  { BFD_RELOC_NANOMIPS_IMM16, R_NANOMIPS_LO12 },
  { BFD_RELOC_NANOMIPS_25_PCREL_S1, R_NANOMIPS_PC25_S1 },
  { BFD_RELOC_NANOMIPS_21_PCREL_S1, R_NANOMIPS_PC21_S1 },
  { BFD_RELOC_NANOMIPS_14_PCREL_S1, R_NANOMIPS_PC14_S1 },
  { BFD_RELOC_NANOMIPS_11_PCREL_S1, R_NANOMIPS_PC11_S1 },
  { BFD_RELOC_NANOMIPS_10_PCREL_S1, R_NANOMIPS_PC10_S1 },
  { BFD_RELOC_NANOMIPS_7_PCREL_S1, R_NANOMIPS_PC7_S1 },
  { BFD_RELOC_NANOMIPS_GPREL7_S2, R_NANOMIPS_GPREL7_S2 },
  { BFD_RELOC_NANOMIPS_GPREL18, R_NANOMIPS_GPREL18 },
  { BFD_RELOC_NANOMIPS_GPREL19_S2, R_NANOMIPS_GPREL19_S2 },
  { BFD_RELOC_NANOMIPS_4_PCREL_S1,R_NANOMIPS_PC4_S1 },
  { BFD_RELOC_NANOMIPS_PCREL_HI20, R_NANOMIPS_PCHI20 },
  { BFD_RELOC_NANOMIPS_GPREL16_S2, R_NANOMIPS_GPREL16_S2 },
  { BFD_RELOC_NANOMIPS_GPREL18_S3, R_NANOMIPS_GPREL18_S3 },
  { BFD_RELOC_NANOMIPS_GOT_CALL, R_NANOMIPS_GOT_CALL },
  { BFD_RELOC_NANOMIPS_GOT_DISP, R_NANOMIPS_GOT_DISP },
  { BFD_RELOC_NANOMIPS_GOT_PAGE, R_NANOMIPS_GOT_PAGE },
  { BFD_RELOC_NANOMIPS_GOT_OFST, R_NANOMIPS_GOT_OFST },
  { BFD_RELOC_NANOMIPS_GOTPC_HI20, R_NANOMIPS_GOTPC_HI20 },
  { BFD_RELOC_NANOMIPS_GOT_LO12, R_NANOMIPS_GOT_LO12 },
  { BFD_RELOC_NANOMIPS_GOTPC_I32, R_NANOMIPS_GOTPC_I32 },
  { BFD_RELOC_NANOMIPS_I32, R_NANOMIPS_I32 },
  { BFD_RELOC_NANOMIPS_GPREL_HI20, R_NANOMIPS_GPREL_HI20 },
  { BFD_RELOC_NANOMIPS_PC_I32, R_NANOMIPS_PC_I32 },
  { BFD_RELOC_NANOMIPS_GPREL_I32, R_NANOMIPS_GPREL_I32 },
  { BFD_RELOC_NANOMIPS_GPREL17_S1, R_NANOMIPS_GPREL17_S1 },
  { BFD_RELOC_NANOMIPS_GPREL_LO12, R_NANOMIPS_GPREL_LO12 },
  { BFD_RELOC_NANOMIPS_LO4_S2, R_NANOMIPS_LO4_S2 },
  { BFD_RELOC_NANOMIPS_COPY, R_NANOMIPS_COPY },

  { BFD_RELOC_NANOMIPS_ALIGN, R_NANOMIPS_ALIGN },
  { BFD_RELOC_NANOMIPS_FILL, R_NANOMIPS_FILL },
  { BFD_RELOC_NANOMIPS_MAX, R_NANOMIPS_MAX },
  { BFD_RELOC_NANOMIPS_INSN32, R_NANOMIPS_INSN32 },
  { BFD_RELOC_NANOMIPS_INSN16, R_NANOMIPS_INSN16 },
  { BFD_RELOC_NANOMIPS_FIXED, R_NANOMIPS_FIXED },
  { BFD_RELOC_NANOMIPS_RELAX, R_NANOMIPS_RELAX },
  { BFD_RELOC_NANOMIPS_NORELAX, R_NANOMIPS_NORELAX },
  { BFD_RELOC_NANOMIPS_SAVERESTORE, R_NANOMIPS_SAVERESTORE },
  { BFD_RELOC_NANOMIPS_JALR32, R_NANOMIPS_JALR32 },
  { BFD_RELOC_NANOMIPS_JALR16, R_NANOMIPS_JALR16 },
  { BFD_RELOC_NANOMIPS_JUMPTABLE_LOAD, R_NANOMIPS_JUMPTABLE_LOAD },

  { BFD_RELOC_NANOMIPS_TLS_GD, R_NANOMIPS_TLS_GD },
  { BFD_RELOC_NANOMIPS_TLS_GD_I32, R_NANOMIPS_TLS_GD_I32 },
  { BFD_RELOC_NANOMIPS_TLS_LD, R_NANOMIPS_TLS_LD },
  { BFD_RELOC_NANOMIPS_TLS_LD_I32, R_NANOMIPS_TLS_LD_I32 },
  { BFD_RELOC_NANOMIPS_TLS_DTPREL12, R_NANOMIPS_TLS_DTPREL12 },
  { BFD_RELOC_NANOMIPS_TLS_DTPREL16, R_NANOMIPS_TLS_DTPREL16 },
  { BFD_RELOC_NANOMIPS_TLS_DTPREL_I32, R_NANOMIPS_TLS_DTPREL_I32 },
  { BFD_RELOC_NANOMIPS_TLS_GOTTPREL, R_NANOMIPS_TLS_GOTTPREL },
  { BFD_RELOC_NANOMIPS_TLS_GOTTPREL_PC_I32, R_NANOMIPS_TLS_GOTTPREL_PC_I32 },
  { BFD_RELOC_NANOMIPS_TLS_TPREL12, R_NANOMIPS_TLS_TPREL12 },
  { BFD_RELOC_NANOMIPS_TLS_TPREL16, R_NANOMIPS_TLS_TPREL16 },
  { BFD_RELOC_NANOMIPS_TLS_TPREL_I32, R_NANOMIPS_TLS_TPREL_I32 },
  { BFD_RELOC_NANOMIPS_TLS_DTPMOD, R_NANOMIPS_TLS_DTPMOD },
  { BFD_RELOC_NANOMIPS_TLS_DTPREL, R_NANOMIPS_TLS_DTPREL },
  { BFD_RELOC_NANOMIPS_TLS_TPREL, R_NANOMIPS_TLS_TPREL },
};

/* Given a BFD reloc type, return a howto structure.  */

static reloc_howto_type *
bfd_elfNN_bfd_reloc_type_lookup (bfd *abfd ATTRIBUTE_UNUSED,
				 bfd_reloc_code_real_type code)
{
  unsigned int i;
  reloc_howto_type *howto_nanomips_table;

  howto_nanomips_table = elfNN_nanomips_howto_table_rela;

  for (i = 0; i < sizeof (nanomips_reloc_map) / sizeof (struct elf_reloc_map);
       i++)
    {
      if (nanomips_reloc_map[i].bfd_val == code)
	return &howto_nanomips_table[(int) nanomips_reloc_map[i].elf_val];
    }

  switch (code)
    {
    default:
      bfd_set_error (bfd_error_bad_value);
      return NULL;

    case BFD_RELOC_CTOR:
      return &howto_nanomips_table[(int) R_NANOMIPS_32];

    case BFD_RELOC_VTABLE_INHERIT:
      return &elf_nanomips_gnu_vtinherit_howto;
    case BFD_RELOC_VTABLE_ENTRY:
      return &elf_nanomips_gnu_vtentry_howto;
    case BFD_RELOC_NANOMIPS_EH:
      return &elf_nanomips_eh_howto;
    case BFD_RELOC_32_PCREL:
      return &elf_nanomips_gnu_pcrel32;
    }
}

/* Map a BFD relocation to its display name.  */

static reloc_howto_type *
bfd_elfNN_bfd_reloc_name_lookup (bfd *abfd ATTRIBUTE_UNUSED,
				 const char *r_name)
{
  unsigned int i;

  for (i = 0;
       i < (sizeof (elfNN_nanomips_howto_table_rela)
	    / sizeof (elfNN_nanomips_howto_table_rela[0])); i++)
    if (elfNN_nanomips_howto_table_rela[i].name != NULL
	&& strcasecmp (elfNN_nanomips_howto_table_rela[i].name, r_name) == 0)
      return &elfNN_nanomips_howto_table_rela[i];

  if (strcasecmp (elf_nanomips_gnu_vtinherit_howto.name, r_name) == 0)
    return &elf_nanomips_gnu_vtinherit_howto;
  if (strcasecmp (elf_nanomips_gnu_vtentry_howto.name, r_name) == 0)
    return &elf_nanomips_gnu_vtentry_howto;
  if (strcasecmp (elf_nanomips_eh_howto.name, r_name) == 0)
    return &elf_nanomips_eh_howto;

  return NULL;
}

/* Given a nanoMIPS Elf_Internal_Rel, fill in an arelent structure.  */

static reloc_howto_type *
nanomips_elfNN_rtype_to_howto (bfd *abfd ATTRIBUTE_UNUSED,
			       unsigned int r_type,
			       bool rela_p ATTRIBUTE_UNUSED)
{
  switch (r_type)
    {
    case R_NANOMIPS_GNU_VTINHERIT:
      return &elf_nanomips_gnu_vtinherit_howto;
    case R_NANOMIPS_GNU_VTENTRY:
      return &elf_nanomips_gnu_vtentry_howto;
    case R_NANOMIPS_EH:
      return &elf_nanomips_eh_howto;
    case R_NANOMIPS_PC32:
      return &elf_nanomips_gnu_pcrel32;
    default:
      return &elfNN_nanomips_howto_table_rela[r_type];
    }
}

/* Given a nanoMIPS Elf_Internal_Rela, fill in an arelent structure.  */

static bool
nanomips_info_to_howto_rela (bfd *abfd, arelent *cache_ptr,
			     Elf_Internal_Rela *dst)
{
  const struct elf_backend_data *bed;
  unsigned int r_type;

  r_type = ELFNN_R_TYPE (dst->r_info);
  bed = get_elf_backend_data (abfd);
  cache_ptr->howto = bed->elf_backend_mips_rtype_to_howto (abfd, r_type, true);
  cache_ptr->addend = dst->r_addend;
  return true;
}

/* nanoMIPS ELF local labels start with '$'.  */

static bool
nanomips_elf_is_local_label_name (bfd *abfd, const char *name)
{
  if (name[0] == '$')
    return true;

  /* Fall back to the generic ELF local label syntax.  */
  return _bfd_elf_is_local_label_name (abfd, name);
}

/* Set the right machine number for a nanoMIPS ELF file.  */

static bool
nanomips_elfNN_object_p (bfd *abfd)
{
  unsigned long mach;

  if (!ABI_PNN_P (abfd))
    return false;

  mach = _bfd_elf_mips_mach (elf_elfheader (abfd)->e_flags);
  bfd_default_set_arch_mach (abfd, bfd_arch_nanomips, mach);
  return true;
}

#if ARCH_SIZE == 32
# define PRSTATUS_SIZE			256
# define PRSTATUS_OFFSET_PR_CURSIG	12
# define PRSTATUS_OFFSET_PR_PID		24
# define PRSTATUS_OFFSET_PR_REG		72
# define ELF_GREGSET_T_SIZE		180
# define PRPSINFO_SIZE			128
# define PRPSINFO_OFFSET_PR_PID		16
# define PRPSINFO_OFFSET_PR_FNAME	32
# define PRPSINFO_OFFSET_PR_PSARGS	48
#else
# define PRSTATUS_SIZE			480
# define PRSTATUS_OFFSET_PR_CURSIG	12
# define PRSTATUS_OFFSET_PR_PID		32
# define PRSTATUS_OFFSET_PR_REG		112
# define ELF_GREGSET_T_SIZE		360
# define PRPSINFO_SIZE			136
# define PRPSINFO_OFFSET_PR_PID		24
# define PRPSINFO_OFFSET_PR_FNAME	40
# define PRPSINFO_OFFSET_PR_PSARGS	56
#endif

static bool
nanomips_elf_grok_prstatus (bfd *abfd, Elf_Internal_Note *note)
{
  size_t size;
  int offset;

  switch (note->descsz)
    {
    default:
      return false;

    case PRSTATUS_SIZE: /* sizeof(struct elf_prstatus) on Linux/nanoMIPS.  */
      /* pr_cursig */
      elf_tdata (abfd)->core->signal
	= bfd_get_16 (abfd, note->descdata + PRSTATUS_OFFSET_PR_CURSIG);

      /* pr_pid */
      elf_tdata (abfd)->core->lwpid
	= bfd_get_32 (abfd, note->descdata + PRSTATUS_OFFSET_PR_PID);

      /* pr_reg */
      offset = PRSTATUS_OFFSET_PR_REG;
      size = ELF_GREGSET_T_SIZE;
      break;
    }

  /* Make a ".reg/999" section.  */
  return _bfd_elfcore_make_pseudosection (abfd, ".reg", size,
					  note->descpos + offset);
}

static bool
nanomips_elf_grok_psinfo (bfd *abfd, Elf_Internal_Note *note)
{
  switch (note->descsz)
    {
    default:
      return false;

    case PRPSINFO_SIZE: /* sizeof(struct elf_prpsinfo) on Linux/nanoMIPS.  */
      /* pr_pid */
      elf_tdata (abfd)->core->pid
	= bfd_get_32 (abfd, note->descdata + PRPSINFO_OFFSET_PR_PID);

      /* pr_fname */
      elf_tdata (abfd)->core->program = _bfd_elfcore_strndup
	(abfd, note->descdata + PRPSINFO_OFFSET_PR_FNAME, 16);

      /* pr_psargs */
      elf_tdata (abfd)->core->command = _bfd_elfcore_strndup
	(abfd, note->descdata + PRPSINFO_OFFSET_PR_PSARGS, 80);
      break;
    }

  /* Note that for some reason, a spurious space is tacked
     onto the end of the args in some (at least one anyway)
     implementations, so strip it off if it exists.  */

  {
    char *command = elf_tdata (abfd)->core->command;
    int n = strlen (command);

    if (0 < n && command[n - 1] == ' ')
      command[n - 1] = '\0';
  }

  return true;
}

/* Write Linux core PRSTATUS note into core file.  */

static char *
nanomips_elf_write_core_note (bfd *abfd, char *buf, int *bufsiz, int note_type,
			      ...)
{
  switch (note_type)
    {
    default:
      return NULL;

    case NT_PRPSINFO:
      BFD_FAIL ();
      return NULL;

    case NT_PRSTATUS:
      {
        char data[PRSTATUS_SIZE];
        va_list ap;
        long pid;
        int cursig;
        const void *greg;

        va_start (ap, note_type);
        memset (data, 0, PRSTATUS_OFFSET_PR_REG);
        pid = va_arg (ap, long);
        bfd_put_32 (abfd, pid, data + PRSTATUS_OFFSET_PR_PID);
        cursig = va_arg (ap, int);
        bfd_put_16 (abfd, cursig, data + PRSTATUS_OFFSET_PR_CURSIG);
        greg = va_arg (ap, const void *);
        memcpy (data + PRSTATUS_OFFSET_PR_REG, greg, ELF_GREGSET_T_SIZE);
        memset (data + PRSTATUS_OFFSET_PR_REG + ELF_GREGSET_T_SIZE, 0,
		PRSTATUS_SIZE - (PRSTATUS_OFFSET_PR_REG + ELF_GREGSET_T_SIZE));
        va_end (ap);
        return elfcore_write_note (abfd, buf, bufsiz,
                                   "CORE", note_type, data, sizeof (data));
      }
    }
}


#define ELF_ARCH			bfd_arch_nanomips
#define ELF_TARGET_ID			NANOMIPS_ELF_DATA
#define ELF_MACHINE_CODE		EM_NANOMIPS

#define elf_backend_collect		true
#define elf_backend_type_change_ok	true
#define elf_info_to_howto		nanomips_info_to_howto_rela
#define elf_backend_object_p		nanomips_elfNN_object_p
#define elf_backend_section_processing	_bfd_nanomips_elf_section_processing
#define elf_backend_section_from_shdr	_bfd_nanomips_elf_section_from_shdr
#define elf_backend_fake_sections	_bfd_nanomips_elf_fake_sections
#define elf_backend_final_write_processing \
					_bfd_nanomips_elf_final_write_processing
#define elf_backend_grok_prstatus	nanomips_elf_grok_prstatus
#define elf_backend_grok_psinfo		nanomips_elf_grok_psinfo
#define elf_backend_write_core_note	nanomips_elf_write_core_note

#define elf_backend_may_use_rela_p	1
#define elf_backend_default_use_rela_p	1
#define elf_backend_sign_extend_vma	true
#define elf_backend_plt_readonly	1

#define bfd_elfNN_bfd_get_relocated_section_contents \
			_bfd_elf_nanomips_get_relocated_section_contents
#define elf_backend_mips_rtype_to_howto	nanomips_elfNN_rtype_to_howto
#define bfd_elfNN_bfd_print_private_bfd_data \
					_bfd_nanomips_elf_print_private_bfd_data
#define bfd_elfNN_mkobject		_bfd_nanomips_elf_mkobject
#define bfd_elfNN_bfd_is_local_label_name \
					nanomips_elf_is_local_label_name

#define ELF_MAXPAGESIZE			0x1000
#define ELF_COMMONPAGESIZE		0x1000

/* Support for nanomipsNN target.  */

#define TARGET_LITTLE_SYM               nanomips_elfNN_le_vec
#define TARGET_LITTLE_NAME              "elfNN-littlenanomips"
#define TARGET_BIG_SYM                  nanomips_elfNN_be_vec
#define TARGET_BIG_NAME                 "elfNN-bignanomips"

#define elfNN_bed			elfNN_nanomips_bed

/* Include the target file for this target.  */
#include "elfNN-target.h"
