/* ARM ELF support for BFD.
   Copyright (C) 1998 Free Software Foundation, Inc.

   This file is part of BFD, the Binary File Descriptor library.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software Foundation,
   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */

#ifndef _ELF_ARM_H
#define _ELF_ARM_H

/* Relocations.  */
#define R_ARM_NONE	0		/* No reloc */
#define R_ARM_PC24	1		/* PC relative 26 bit branch */
#define R_ARM_ABS32	2		/* Direct 32 bit  */
#define R_ARM_REL32	3		/* PC relative 32 bit */
#define R_ARM_COPY	20		/* Copy symbol at runtime */
#define R_ARM_GLOB_DAT	21		/* Create GOT entry */
#define R_ARM_JUMP_SLOT	22		/* Create PLT entry */
#define R_ARM_RELATIVE	23		/* Adjust by program base */
#define R_ARM_GOTOFF	24		/* 32 bit offset to GOT */
#define R_ARM_GOTPC	25		/* 32 bit PC relative offset to GOT */
#define R_ARM_GOT32	26		/* 32 bit GOT entry */
#define R_ARM_PLT32	27		/* 32 bit PLT address */

#endif
