/* ix86 ELF support for BFD.
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

#ifndef _ELF_I386_H
#define _ELF_I386_H

#define R_386_NONE	0		/* No reloc */
#define R_386_32	1		/* Direct 32 bit  */
#define R_386_PC32	2		/* PC relative 32 bit */
#define R_386_GOT32	3		/* 32 bit GOT entry */
#define R_386_PLT32	4		/* 32 bit PLT address */
#define R_386_COPY	5		/* Copy symbol at runtime */
#define R_386_GLOB_DAT	6		/* Create GOT entry */
#define R_386_JMP_SLOT	7		/* Create PLT entry */
#define R_386_RELATIVE	8		/* Adjust by program base */
#define R_386_GOTOFF	9		/* 32 bit offset to GOT */
#define R_386_GOTPC	10		/* 32 bit PC relative offset to GOT */
#define R_386_16	20
#define R_386_PC16	21
#define R_386_PC8	22

#endif
