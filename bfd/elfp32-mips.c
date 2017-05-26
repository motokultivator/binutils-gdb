/* MIPS-specific support for 32-bit ELF
   Copyright (C) 1993-2014 Free Software Foundation, Inc.

   Most of the information added by Ian Lance Taylor, Cygnus Support,
   <ian@cygnus.com>.
   N32/64 ABI support added by Mark Mitchell, CodeSourcery, LLC.
   <mark@codesourcery.com>
   Traditional MIPS targets support added by Koundinya.K, Dansk Data
   Elektronik & Operations Research Group. <kk@ddeorg.soft.net>

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


/* This file handles MIPS ELF targets.  SGI Irix 5 uses a slightly
   different MIPS ELF from other targets.  This matters when linking.
   This file supports both, switching at runtime.  */

#include "sysdep.h"
#include "bfd.h"
#include "libbfd.h"
#include "bfdlink.h"
#include "genlink.h"
#include "elf-bfd.h"
#include "elfxx-mips.h"
#include "elf/mips.h"
#include "elf/nanomips.h"

static reloc_howto_type *bfd_elf32_bfd_reloc_type_lookup
  (bfd *, bfd_reloc_code_real_type);
static reloc_howto_type *mips_elf32_rtype_to_howto
  (unsigned int, bfd_boolean);
static void mips_info_to_howto_rel
  (bfd *, arelent *, Elf_Internal_Rela *);
static void mips_info_to_howto_rela
  (bfd *, arelent *, Elf_Internal_Rela *);
static bfd_boolean mips_elf_sym_is_global
  (bfd *, asymbol *);
static bfd_boolean mips_elf_p32_object_p
  (bfd *);
static bfd_boolean mips_elf_is_local_label_name
  (bfd *, const char *);
static bfd_boolean mips_elf_assign_gp
  (bfd *, bfd_vma *);

/* Nonzero if ABFD is using the P32 ABI.  */
#define ABI_P32_P(abfd) \
  ((elf_elfheader (abfd)->e_flags & E_NANOMIPS_ABI_P32) == E_NANOMIPS_ABI_P32)

/* The number of local .got entries we reserve.  */
#define MIPS_RESERVED_GOTNO (2)

/* In case we're on a 32-bit machine, construct a 64-bit "-1" value
   from smaller values.  Start with zero, widen, *then* decrement.  */
#define MINUS_ONE	(((bfd_vma)0) - 1)

/* The relocation table used for SHT_RELA sections.  */

static reloc_howto_type elf_mips_howto_table_rela[] =
{
  /* No relocation.  */
  HOWTO (R_NANOMIPS_NONE,	/* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_NONE",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 16 bit relocation.  */
  HOWTO (R_NANOMIPS_16, 	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_16",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 32 bit relocation.  */
  HOWTO (R_NANOMIPS_32,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_32",		/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  EMPTY_HOWTO (3),
  EMPTY_HOWTO (4),
  EMPTY_HOWTO (5),
  EMPTY_HOWTO (6),
  EMPTY_HOWTO (7),
  EMPTY_HOWTO (8),
  EMPTY_HOWTO (9),
  EMPTY_HOWTO (10),
  EMPTY_HOWTO (11),
  EMPTY_HOWTO (12),
  EMPTY_HOWTO (13),
  EMPTY_HOWTO (14),
  EMPTY_HOWTO (15),
  EMPTY_HOWTO (16),
  EMPTY_HOWTO (17),

  /* 64 bit relocation.  */
  HOWTO (R_NANOMIPS_64, 	/* type */
	 0,			/* rightshift */
	 4,			/* size (0 = byte, 1 = short, 2 = long) */
	 64,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc,	/* special_function */
	 "R_NANOMIPS_64",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 MINUS_ONE,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  EMPTY_HOWTO (19),
  EMPTY_HOWTO (20),
  EMPTY_HOWTO (21),
  EMPTY_HOWTO (22),
  EMPTY_HOWTO (23),

  /* 64 bit subtraction.  */
  HOWTO (R_NANOMIPS_SUB,	/* type */
	 0,			/* rightshift */
	 4,			/* size (0 = byte, 1 = short, 2 = long) */
	 64,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_SUB",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 MINUS_ONE,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  EMPTY_HOWTO (25),
  EMPTY_HOWTO (26),
  EMPTY_HOWTO (27),
  EMPTY_HOWTO (28),
  EMPTY_HOWTO (29),
  EMPTY_HOWTO (30),
  EMPTY_HOWTO (31),
  EMPTY_HOWTO (32),
  EMPTY_HOWTO (33),
  EMPTY_HOWTO (34),
  EMPTY_HOWTO (35),
  EMPTY_HOWTO (36),
  EMPTY_HOWTO (37),

  /* TLS GD/LD dynamic relocations.  */
  HOWTO (R_NANOMIPS_TLS_DTPMOD32, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_DTPMOD32", /* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  HOWTO (R_NANOMIPS_TLS_DTPREL32, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_DTPREL32", /* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  EMPTY_HOWTO (R_NANOMIPS_TLS_DTPMOD64),
  EMPTY_HOWTO (R_NANOMIPS_TLS_DTPREL64),
  EMPTY_HOWTO (42),
  EMPTY_HOWTO (43),
  EMPTY_HOWTO (44),
  EMPTY_HOWTO (45),
  EMPTY_HOWTO (46),

  /* TLS IE dynamic relocations.  */
  HOWTO (R_NANOMIPS_TLS_TPREL32, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_TPREL32", /* name */
	 TRUE,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  EMPTY_HOWTO (R_NANOMIPS_TLS_TPREL64),
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
  EMPTY_HOWTO (64),
  EMPTY_HOWTO (65),

  /* A 5 bit shift field.  */
  HOWTO (R_NANOMIPS_ASHIFTR_1,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_ASHIFTR_1", /* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  HOWTO (R_NANOMIPS_UNSIGNED_8, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 8,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_UNSIGNED_8", /* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xff,			/* dst_mask */
	 FALSE),		/* pcrel_offset */


  HOWTO (R_NANOMIPS_UNSIGNED_16, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_UNSIGNED_16", /* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  HOWTO (R_NANOMIPS_SIGNED_8,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 8,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_SIGNED_8",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xff,			/* dst_mask */
	 FALSE),		/* pcrel_offset */

  HOWTO (R_NANOMIPS_SIGNED_16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_SIGNED_16", /* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */
};

static reloc_howto_type elf_nanomips_howto_table_rela[] =
{
  /* High 20 bits of symbol value.  */
  HOWTO (R_NANOMIPS_HI20,	/* type */
	 12,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 20,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_HI20",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffffd,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Low 12 bits of symbol value.  */
  HOWTO (R_NANOMIPS_LO12,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 12,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_LO12",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x00000fff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  EMPTY_HOWTO (184),

  /* This is for nanoMIPS branches.  */
  HOWTO (R_NANOMIPS_PC7_S1,	/* type */
	 1,			/* rightshift */
	 1,			/* size (0 = byte, 1 = short, 2 = long) */
	 7,			/* bitsize */
	 TRUE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC7_S1",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000007f,		/* dst_mask */
	 TRUE),			/* pcrel_offset */

  HOWTO (R_NANOMIPS_PC10_S1,	/* type */
	 1,			/* rightshift */
	 1,			/* size (0 = byte, 1 = short, 2 = long) */
	 10,			/* bitsize */
	 TRUE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC10_S1",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x000003ff,		/* dst_mask */
	 TRUE),			/* pcrel_offset */

  EMPTY_HOWTO (187), /* was PCHI20_M12 */

  HOWTO (R_NANOMIPS_PCHI20, /* type */
	 12,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 20,			/* bitsize */
	 TRUE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PCHI20", /* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffffd,		/* dst_mask */
	 TRUE),			/* pcrel_offset */

  HOWTO (R_NANOMIPS_PCLO12, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 12,			/* bitsize */
	 TRUE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PCLO12", /* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x00000fff,		/* dst_mask */
	 TRUE),			/* pcrel_offset */

    /* GP- and PC-relative relocations.  */
  HOWTO (R_NANOMIPS_GPREL7_S2,	/* type */
	 2,			/* rightshift */
	 1,			/* size (0 = byte, 1 = short, 2 = long) */
	 7,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL7_S2",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000007f,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  HOWTO (R_NANOMIPS_PC11_S1,	/* type */
	 1,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 11,			/* bitsize */
	 TRUE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC11_S1",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x000007ff,		/* dst_mask */
	 TRUE),			/* pcrel_offset */

  HOWTO (R_NANOMIPS_PC21_S1,	/* type */
	 1,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 21,			/* bitsize */
	 TRUE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC21_S1",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0001ffff,		/* dst_mask */
	 TRUE),			/* pcrel_offset */

  HOWTO (R_NANOMIPS_PC25_S1,	/* type */
	 1,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 25,			/* bitsize */
	 TRUE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC25_S1",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x01ffffff,		/* dst_mask */
	 TRUE),			/* pcrel_offset */

  HOWTO (R_NANOMIPS_PC14_S1,	/* type */
	 1,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 14,			/* bitsize */
	 TRUE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC14_S1",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x00003fff,		/* dst_mask */
	 TRUE),			/* pcrel_offset */

  HOWTO (R_NANOMIPS_PC20_S1,	/* type */
	 1,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 20,			/* bitsize */
	 TRUE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC20_S1",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x000fffff,		/* dst_mask */
	 TRUE),			/* pcrel_offset */

  /* GP relative reference.  */
  HOWTO (R_NANOMIPS_GPREL18,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 18,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL18",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0003ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* GP relative reference.  */
  HOWTO (R_NANOMIPS_GPREL19_S2,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 19,			/* bitsize */
	 FALSE,			/* pc_relative */
	 2,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL19_S2",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffffc,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  HOWTO (R_NANOMIPS_PC4_S1,	/* type */
	 1,			/* rightshift */
	 1,			/* size (0 = byte, 1 = short, 2 = long) */
	 4,			/* bitsize */
	 TRUE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC4_S1",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000000f,		/* dst_mask */
	 TRUE),			/* pcrel_offset */

  /* GP relative reference.  */
  HOWTO (R_NANOMIPS_GPREL16_S2,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 2,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL16_S2",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0003fffc,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* GP relative reference.  */
  HOWTO (R_NANOMIPS_GPREL18_S3,	/* type */
	 3,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 18,			/* bitsize */
	 FALSE,			/* pc_relative */
	 3,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL18_S3",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffff8,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Reference to literal section.  */
  HOWTO (R_NANOMIPS_LITERAL,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 19,			/* bitsize */
	 FALSE,			/* pc_relative */
	 2,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_LITERAL",	/* name */
	 FALSE,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x001ffffc,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 19 bit call through global offset table.  */
  HOWTO (R_NANOMIPS_CALL,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 19,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_mips_elf_got16_reloc, /* special_function */
	 "R_NANOMIPS_CALL",	/* name */
	 FALSE,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x001ffffc,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Displacement in the global offset table.  */
  HOWTO (R_NANOMIPS_GOT_DISP, /* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 19,			/* bitsize */
	 FALSE,			/* pc_relative */
	 2,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GOT_DISP", /* name */
	 FALSE,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x001ffffc,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Displacement to page pointer in the global offset table.  */
  HOWTO (R_NANOMIPS_GOT_PAGE,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 19,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GOT_PAGE"	, /* name */
	 FALSE,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x001ffffc,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Offset from page pointer in the global offset table.  */
  HOWTO (R_NANOMIPS_GOT_OFST, 	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 12,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GOT_OFST", /* name */
	 FALSE,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x00000fff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */


  /* High 20 bits of displacement in global offset table.  */
  HOWTO (R_NANOMIPS_GOT_HI20,	/* type */
	 12,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 20,			/* bitsize */
	 TRUE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GOT_HI20", /* name */
	 FALSE,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x001ffffd,		/* dst_mask */
	 TRUE),			/* pcrel_offset */

  /* Low 12 bits of displacement in global offset table.  */
  HOWTO (R_NANOMIPS_GOT_LO12,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 12,			/* bitsize */
	 TRUE,			/* pc_relative */
	 2,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GOT_LO12", /* name */
	 FALSE,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x00000fff,		/* dst_mask */
	 TRUE),			/* pcrel_offset */

  /* High 20 bits of displacement in global offset table.  */
  HOWTO (R_NANOMIPS_CALL_HI20, /* type */
	 12,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 20,			/* bitsize */
	 TRUE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_CALL_HI20", /* name */
	 FALSE,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x001ffffd,		/* dst_mask */
	 TRUE),			/* pcrel_offset */

  /* Low 12 bits of displacement in global offset table.  */
  HOWTO (R_NANOMIPS_CALL_LO12, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 12,			/* bitsize */
	 TRUE,			/* pc_relative */
	 2,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_CALL_LO12", /* name */
	 FALSE,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0x00000fff,		/* dst_mask */
	 TRUE),			/* pcrel_offset */

  /* Refers to low 32-bits of 48-bit instruction. The 32-bit value
     is encoded as nanoMIPS instruction stream - so it will be
     half-word swapped on little endian targets.  */
  HOWTO (R_NANOMIPS_I32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_I32",	/* name */
	 FALSE,			/* partial_inplace */
	 0x0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* High 32 bits of 64-bit address.  */
  HOWTO (R_NANOMIPS_HI32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_HI32",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* High 20 bits of GP relative reference.  */
  HOWTO (R_NANOMIPS_GPREL_HI20,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 20,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL_HI20", /* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffffd,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Low 12 bits of GP relative reference.  */
  HOWTO (R_NANOMIPS_GPREL_LO12,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 12,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL_LO12", /* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x00000fff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS general dynamic variable reference.  */
  HOWTO (R_NANOMIPS_TLS_GD,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 19,			/* bitsize */
	 FALSE,			/* pc_relative */
	 2,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_GD",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffffc,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS local dynamic variable reference.  */
  HOWTO (R_NANOMIPS_TLS_LDM,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 19,			/* bitsize */
	 FALSE,			/* pc_relative */
	 2,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_LDM",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffffc,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS local dynamic offset.  */
  HOWTO (R_NANOMIPS_TLS_DTPREL_HI20, /* type */
	 12,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 20,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_DTPREL_HI20",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffffd,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS local dynamic offset.  */
  HOWTO (R_NANOMIPS_TLS_DTPREL_LO12,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 12,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_DTPREL_LO12",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x00000fff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS thread pointer offset.  */
  HOWTO (R_NANOMIPS_TLS_GOTTPREL,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 19,			/* bitsize */
	 FALSE,			/* pc_relative */
	 2,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_GOTTPREL",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffffc,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS thread pointer offset.  */
  HOWTO (R_NANOMIPS_TLS_TPREL_HI20,	/* type */
	 12,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 20,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_TPREL_HI20", /* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x001ffffd,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS thread pointer offset.  */
  HOWTO (R_NANOMIPS_TLS_TPREL_LO12,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 12,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_TLS_TPREL_LO12", /* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x00000fff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  EMPTY_HOWTO (221),
  EMPTY_HOWTO (222),
  EMPTY_HOWTO (223),
  EMPTY_HOWTO (224),
  EMPTY_HOWTO (225),
  EMPTY_HOWTO (226),
  EMPTY_HOWTO (227),
  EMPTY_HOWTO (228),

  /* High 32 bits of 64-bit address.  */
  HOWTO (R_NANOMIPS_PC32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 TRUE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_PC32",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* High 32 bits of 64-bit address.  */
  HOWTO (R_NANOMIPS_GPREL32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL32",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* GP relative reference.  */
  HOWTO (R_NANOMIPS_GPREL17_S1,	/* type */
	 1,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 17,			/* bitsize */
	 FALSE,			/* pc_relative */
	 1,			/* bitpos */
	 complain_overflow_unsigned, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_GPREL17_S1",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0001fffe,		/* dst_mask */
	 FALSE),		/* pcrel_offset */
};

/* GNU extension to record C++ vtable hierarchy */
static reloc_howto_type elf_mips_gnu_vtinherit_howto =
  HOWTO (R_NANOMIPS_GNU_VTINHERIT, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 NULL,			/* special_function */
	 "R_NANOMIPS_GNU_VTINHERIT", /* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 FALSE);		/* pcrel_offset */

/* GNU extension to record C++ vtable member usage */
static reloc_howto_type elf_mips_gnu_vtentry_howto =
  HOWTO (R_NANOMIPS_GNU_VTENTRY, /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_elf_rel_vtable_reloc_fn, /* special_function */
	 "R_NANOMIPS_GNU_VTENTRY", /* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 FALSE);		/* pcrel_offset */

/* Originally a VxWorks extension, but now used for other systems too.  */
static reloc_howto_type elf_mips_jump_slot_howto =
  HOWTO (R_NANOMIPS_JUMP_SLOT,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_bitfield, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_JUMP_SLOT", /* name */
	 FALSE,			/* partial_inplace */
	 0x0,         		/* src_mask */
	 0x0,		        /* dst_mask */
	 FALSE);		/* pcrel_offset */

/* Used in EH tables.  */
static reloc_howto_type elf_mips_eh_howto =
  HOWTO (R_NANOMIPS_EH, 	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_mips_elf_generic_reloc, /* special_function */
	 "R_NANOMIPS_EH",	/* name */
	 TRUE,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,	        /* dst_mask */
	 FALSE);		/* pcrel_offset */

/* A mapping from BFD reloc types to MIPS ELF reloc types.  */

struct elf_reloc_map {
  bfd_reloc_code_real_type bfd_val;
  enum elf_nanomips_reloc_type elf_val;
};

static const struct elf_reloc_map mips_reloc_map[] =
{
  { BFD_RELOC_NONE, R_NANOMIPS_NONE },
  { BFD_RELOC_16, R_NANOMIPS_16 },
  { BFD_RELOC_32, R_NANOMIPS_32 },
  { BFD_RELOC_64, R_NANOMIPS_64 },
  { BFD_RELOC_MIPS_SUB, R_NANOMIPS_SUB },
  { BFD_RELOC_MIPS_TLS_DTPMOD32, R_NANOMIPS_TLS_DTPMOD32 },
  { BFD_RELOC_MIPS_TLS_DTPREL32, R_NANOMIPS_TLS_DTPREL32 },
  { BFD_RELOC_MIPS_TLS_DTPMOD64, R_NANOMIPS_TLS_DTPMOD64 },
  { BFD_RELOC_MIPS_TLS_DTPREL64, R_NANOMIPS_TLS_DTPREL64 },
  { BFD_RELOC_MIPS_TLS_TPREL32, R_NANOMIPS_TLS_TPREL32 },
  { BFD_RELOC_MIPS_TLS_TPREL64, R_NANOMIPS_TLS_TPREL64 },
  { BFD_RELOC_MIPS_UNSIGNED_8, R_NANOMIPS_UNSIGNED_8 },
  { BFD_RELOC_MIPS_UNSIGNED_16, R_NANOMIPS_UNSIGNED_16 },
  { BFD_RELOC_MIPS_ASHIFTR_1, R_NANOMIPS_ASHIFTR_1 },
  { BFD_RELOC_MIPS_SIGNED_8, R_NANOMIPS_SIGNED_8 },
  { BFD_RELOC_MIPS_SIGNED_16, R_NANOMIPS_SIGNED_16 },
};

static const struct elf_reloc_map nanomips_reloc_map[] =
{
  { BFD_RELOC_NANOMIPS_HI20, R_NANOMIPS_HI20 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_LO12, R_NANOMIPS_LO12 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_IMM16, R_NANOMIPS_LO12 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_7_PCREL_S1,
    R_NANOMIPS_PC7_S1 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_10_PCREL_S1,
    R_NANOMIPS_PC10_S1 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_21_PCREL_S1,
    R_NANOMIPS_PC21_S1 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_25_PCREL_S1,
    R_NANOMIPS_PC25_S1 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_14_PCREL_S1,
    R_NANOMIPS_PC14_S1 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_20_PCREL_S1,
    R_NANOMIPS_PC20_S1 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_GPREL7_S2,
    R_NANOMIPS_GPREL7_S2 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_11_PCREL_S1,
    R_NANOMIPS_PC11_S1 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_GPREL18, R_NANOMIPS_GPREL18 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_GPREL19_S2,
    R_NANOMIPS_GPREL19_S2 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_4_PCREL_S1,
    R_NANOMIPS_PC4_S1 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_HI20_PCREL,
    R_NANOMIPS_PCHI20 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_LO12_PCREL,
    R_NANOMIPS_LO12 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_GPREL16_S2,
    R_NANOMIPS_GPREL16_S2 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_GPREL18_S3,
    R_NANOMIPS_GPREL18_S3 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_CALL,
    R_NANOMIPS_CALL - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_GOT_DISP,
    R_NANOMIPS_GOT_DISP - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_GOT_PAGE,
    R_NANOMIPS_GOT_PAGE - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_GOT_OFST,
    R_NANOMIPS_GOT_OFST - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_GOT_HI20,
    R_NANOMIPS_GOT_HI20 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_GOT_LO12,
    R_NANOMIPS_GOT_LO12 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_CALL_HI20,
    R_NANOMIPS_CALL_HI20 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_CALL_LO12,
    R_NANOMIPS_CALL_LO12 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_LITERAL,
    R_NANOMIPS_LITERAL - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_32,
    R_NANOMIPS_I32 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_GPREL_HI20,
    R_NANOMIPS_GPREL_HI20 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_GPREL_LO12,
    R_NANOMIPS_GPREL_LO12 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_TLS_GD, R_NANOMIPS_TLS_GD - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_TLS_LDM, R_NANOMIPS_TLS_LDM - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_TLS_DTPREL_HI20,
    R_NANOMIPS_TLS_DTPREL_HI20 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_TLS_DTPREL_LO12,
    R_NANOMIPS_TLS_DTPREL_LO12 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_TLS_GOTTPREL,
    R_NANOMIPS_TLS_GOTTPREL - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_TLS_TPREL_HI20,
    R_NANOMIPS_TLS_TPREL_HI20 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_TLS_TPREL_LO12,
    R_NANOMIPS_TLS_TPREL_LO12 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_HI32, R_NANOMIPS_HI32 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_PC32, R_NANOMIPS_PC32 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_GPREL32, R_NANOMIPS_GPREL32 - R_NANOMIPS_min },
  { BFD_RELOC_NANOMIPS_GPREL17_S1,
    R_NANOMIPS_GPREL17_S1 - R_NANOMIPS_min },
};

/* Given a BFD reloc type, return a howto structure.  */

static reloc_howto_type *
bfd_elf32_bfd_reloc_type_lookup (bfd *abfd ATTRIBUTE_UNUSED,
				 bfd_reloc_code_real_type code)
{
  unsigned int i;
  reloc_howto_type *howto_table;
  reloc_howto_type *howto_nanomips_table;

  howto_table = elf_mips_howto_table_rela;
  howto_nanomips_table = elf_nanomips_howto_table_rela;

  for (i = 0; i < sizeof (mips_reloc_map) / sizeof (struct elf_reloc_map);
       i++)
    {
      if (mips_reloc_map[i].bfd_val == code)
	return &howto_table[(int) mips_reloc_map[i].elf_val];
    }

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
      return &howto_table[(int) R_NANOMIPS_32];

    case BFD_RELOC_VTABLE_INHERIT:
      return &elf_mips_gnu_vtinherit_howto;
    case BFD_RELOC_VTABLE_ENTRY:
      return &elf_mips_gnu_vtentry_howto;
    case BFD_RELOC_MIPS_JUMP_SLOT:
      return &elf_mips_jump_slot_howto;
    case BFD_RELOC_MIPS_EH:
      return &elf_mips_eh_howto;
    }
}

static reloc_howto_type *
bfd_elf32_bfd_reloc_name_lookup (bfd *abfd ATTRIBUTE_UNUSED,
				 const char *r_name)
{
  unsigned int i;

  for (i = 0;
       i < (sizeof (elf_mips_howto_table_rela)
	    / sizeof (elf_mips_howto_table_rela[0]));
       i++)
    if (elf_mips_howto_table_rela[i].name != NULL
	&& strcasecmp (elf_mips_howto_table_rela[i].name, r_name) == 0)
      return &elf_mips_howto_table_rela[i];

  for (i = 0;
       i < (sizeof (elf_nanomips_howto_table_rela)
	    / sizeof (elf_nanomips_howto_table_rela[0]));
       i++)
    if (elf_nanomips_howto_table_rela[i].name != NULL
	&& strcasecmp (elf_nanomips_howto_table_rela[i].name, r_name) == 0)
      return &elf_nanomips_howto_table_rela[i];

  if (strcasecmp (elf_mips_gnu_vtinherit_howto.name, r_name) == 0)
    return &elf_mips_gnu_vtinherit_howto;
  if (strcasecmp (elf_mips_gnu_vtentry_howto.name, r_name) == 0)
    return &elf_mips_gnu_vtentry_howto;
  if (strcasecmp (elf_mips_jump_slot_howto.name, r_name) == 0)
    return &elf_mips_jump_slot_howto;
  if (strcasecmp (elf_mips_eh_howto.name, r_name) == 0)
    return &elf_mips_eh_howto;

  return NULL;
}

/* Given a MIPS Elf_Internal_Rel, fill in an arelent structure.  */

static reloc_howto_type *
mips_elf32_rtype_to_howto (unsigned int r_type,
			   bfd_boolean rela_p ATTRIBUTE_UNUSED)
{
  switch (r_type)
    {
    case R_NANOMIPS_GNU_VTINHERIT:
      return &elf_mips_gnu_vtinherit_howto;
    case R_NANOMIPS_GNU_VTENTRY:
      return &elf_mips_gnu_vtentry_howto;
    case R_NANOMIPS_JUMP_SLOT:
      return &elf_mips_jump_slot_howto;
    case R_NANOMIPS_EH:
      return &elf_mips_eh_howto;
    default:
      if (r_type >= R_NANOMIPS_min && r_type < R_NANOMIPS_max)
	return &elf_nanomips_howto_table_rela[r_type - R_NANOMIPS_min];
      else
	return &elf_mips_howto_table_rela[r_type];
    }
}

/* Given a MIPS Elf_Internal_Rel, fill in an arelent structure.  */

static void
mips_info_to_howto_rel (bfd *abfd, arelent *cache_ptr, Elf_Internal_Rela *dst)
{
  const struct elf_backend_data *bed;
  unsigned int r_type;

  r_type = ELF32_R_TYPE (dst->r_info);
  bed = get_elf_backend_data (abfd);
  cache_ptr->howto = bed->elf_backend_mips_rtype_to_howto (r_type, FALSE);

  /* The addend for a GPREL16 or LITERAL relocation comes from the GP
     value for the object file.  We get the addend now, rather than
     when we do the relocation, because the symbol manipulations done
     by the linker may cause us to lose track of the input BFD.  */
  if (((*cache_ptr->sym_ptr_ptr)->flags & BSF_SECTION_SYM) != 0
      && (gprel16_reloc_p (r_type) || literal_reloc_p (r_type)))
    cache_ptr->addend = elf_gp (abfd);
}

/* Given a MIPS Elf_Internal_Rela, fill in an arelent structure.  */

static void
mips_info_to_howto_rela (bfd *abfd, arelent *cache_ptr, Elf_Internal_Rela *dst)
{
  const struct elf_backend_data *bed;
  unsigned int r_type;

  r_type = ELF32_R_TYPE (dst->r_info);
  bed = get_elf_backend_data (abfd);
  cache_ptr->howto = bed->elf_backend_mips_rtype_to_howto (r_type, TRUE);
  cache_ptr->addend = dst->r_addend;

  /* If we ever need to do any extra processing with dst->r_addend
     (the field omitted in an Elf_Internal_Rel) we can do it here.  */
}

/* Determine whether a symbol is global for the purposes of splitting
   the symbol table into global symbols and local symbols.  At least
   on Irix 5, this split must be between section symbols and all other
   symbols.  On most ELF targets the split is between static symbols
   and externally visible symbols.  */

static bfd_boolean
mips_elf_sym_is_global (bfd *abfd ATTRIBUTE_UNUSED, asymbol *sym)
{
  return ((sym->flags & (BSF_GLOBAL | BSF_WEAK | BSF_GNU_UNIQUE)) != 0
	  || bfd_is_und_section (bfd_get_section (sym))
	  || bfd_is_com_section (bfd_get_section (sym)));
}

/* Set the right machine number for a MIPS ELF file.  */

static bfd_boolean
mips_elf_p32_object_p (bfd *abfd)
{
  unsigned long mach;

  if (!ABI_P32_P (abfd))
    return FALSE;

  mach = _bfd_elf_nanomips_mach (elf_elfheader (abfd)->e_flags);
  bfd_default_set_arch_mach (abfd, bfd_arch_mips, mach);
  return TRUE;
}

/* MIPS ELF local labels start with '$', not 'L'.  */

static bfd_boolean
mips_elf_is_local_label_name (bfd *abfd, const char *name)
{
  if (name[0] == '$')
    return TRUE;

  /* On Irix 6, the labels go back to starting with '.', so we accept
     the generic ELF local label syntax as well.  */
  return _bfd_elf_is_local_label_name (abfd, name);
}

/* Depending on the target vector we generate some version of Irix
   executables or "normal" MIPS ELF ABI executables.  */
static irix_compat_t
elf32_mips_irix_compat (bfd *abfd ATTRIBUTE_UNUSED)
{
  return ict_none;
}

#define ELF_ARCH			bfd_arch_mips
#define ELF_TARGET_ID			MIPS_ELF_DATA
#define ELF_MACHINE_CODE		EM_NANOMIPS

#define elf_backend_collect		TRUE
#define elf_backend_type_change_ok	TRUE
#define elf_backend_can_gc_sections	TRUE
#define elf_backend_gc_mark_extra_sections \
					_bfd_mips_elf_gc_mark_extra_sections
#define elf_info_to_howto		mips_info_to_howto_rela
#define elf_info_to_howto_rel		mips_info_to_howto_rel
#define elf_backend_sym_is_global	mips_elf_sym_is_global
#define elf_backend_object_p		mips_elf_p32_object_p
#define elf_backend_symbol_processing	_bfd_mips_elf_symbol_processing
#define elf_backend_section_processing	_bfd_mips_elf_section_processing
#define elf_backend_section_from_shdr	_bfd_mips_elf_section_from_shdr
#define elf_backend_fake_sections	_bfd_mips_elf_fake_sections
#define elf_backend_section_from_bfd_section \
					_bfd_mips_elf_section_from_bfd_section
#define elf_backend_add_symbol_hook	_bfd_mips_elf_add_symbol_hook
#define elf_backend_link_output_symbol_hook \
					_bfd_mips_elf_link_output_symbol_hook
#define elf_backend_create_dynamic_sections \
					_bfd_mips_elf_create_dynamic_sections
#define elf_backend_check_relocs	_bfd_mips_elf_check_relocs
#define elf_backend_merge_symbol_attribute \
					_bfd_mips_elf_merge_symbol_attribute
#define elf_backend_get_target_dtag	_bfd_nanomips_elf_get_target_dtag
#define elf_backend_adjust_dynamic_symbol \
					_bfd_mips_elf_adjust_dynamic_symbol
#define elf_backend_always_size_sections \
					_bfd_mips_elf_always_size_sections
#define elf_backend_size_dynamic_sections \
					_bfd_mips_elf_size_dynamic_sections
#define elf_backend_init_index_section	_bfd_elf_init_1_index_section
#define elf_backend_relocate_section	_bfd_mips_elf_relocate_section
#define elf_backend_finish_dynamic_symbol \
					_bfd_mips_elf_finish_dynamic_symbol
#define elf_backend_finish_dynamic_sections \
					_bfd_mips_elf_finish_dynamic_sections
#define elf_backend_final_write_processing \
					_bfd_mips_elf_final_write_processing
#define elf_backend_additional_program_headers \
					_bfd_mips_elf_additional_program_headers
#define elf_backend_modify_segment_map	_bfd_mips_elf_modify_segment_map
#define elf_backend_gc_mark_hook	_bfd_mips_elf_gc_mark_hook
#define elf_backend_gc_sweep_hook	_bfd_mips_elf_gc_sweep_hook
#define elf_backend_copy_indirect_symbol \
					_bfd_mips_elf_copy_indirect_symbol

#define elf_backend_got_header_size	(4 * MIPS_RESERVED_GOTNO)
#define elf_backend_may_use_rela_p	1
#define elf_backend_default_use_rela_p	1
#define elf_backend_sign_extend_vma	TRUE
#define elf_backend_plt_readonly	1

#define elf_backend_discard_info	_bfd_mips_elf_discard_info
#define elf_backend_ignore_discarded_relocs \
					_bfd_mips_elf_ignore_discarded_relocs
#define elf_backend_write_section	_bfd_mips_elf_write_section
#define elf_backend_mips_irix_compat	elf32_mips_irix_compat
#define elf_backend_mips_rtype_to_howto	mips_elf32_rtype_to_howto
#define bfd_elf32_bfd_is_local_label_name \
					mips_elf_is_local_label_name
#define bfd_elf32_bfd_is_target_special_symbol \
					_bfd_mips_elf_is_target_special_symbol
#define bfd_elf32_get_synthetic_symtab	_bfd_mips_elf_get_synthetic_symtab
#define bfd_elf32_find_nearest_line	_bfd_mips_elf_find_nearest_line
#define bfd_elf32_find_inliner_info	_bfd_mips_elf_find_inliner_info
#define bfd_elf32_new_section_hook	_bfd_mips_elf_new_section_hook
#define bfd_elf32_set_section_contents	_bfd_mips_elf_set_section_contents
#define bfd_elf32_bfd_get_relocated_section_contents \
				_bfd_elf_mips_get_relocated_section_contents
#define bfd_elf32_bfd_link_hash_table_create \
					_bfd_mips_elf_link_hash_table_create
#define bfd_elf32_bfd_final_link	_bfd_mips_elf_final_link
#define bfd_elf32_bfd_merge_private_bfd_data \
					_bfd_mips_elf_merge_private_bfd_data
#define bfd_elf32_bfd_set_private_flags	_bfd_mips_elf_set_private_flags
#define bfd_elf32_bfd_print_private_bfd_data \
					_bfd_nanomips_elf_print_private_bfd_data
#define bfd_elf32_bfd_relax_section	_bfd_mips_elf_relax_section
#define bfd_elf32_mkobject		_bfd_mips_elf_mkobject

/* The SVR4 MIPS ABI says that this should be 0x10000, but Irix 5 uses
   a value of 0x1000, and we are compatible.  */
#define ELF_MAXPAGESIZE			0x1000
#define ELF_COMMONPAGESIZE		0x1000

/* Support for nanomips32 target.  */

#define TARGET_LITTLE_SYM               nanomips_elf32_le_vec
#define TARGET_LITTLE_NAME              "elf32-littlenanomips"
#define TARGET_BIG_SYM                  nanomips_elf32_be_vec
#define TARGET_BIG_NAME                 "elf32-bignanomips"

#define elf32_bed			elf32_nanomips_bed

/* Include the target file again for this target.  */
#include "elf32-target.h"
