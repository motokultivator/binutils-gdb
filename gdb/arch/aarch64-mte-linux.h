/* Common Linux target-dependent definitions for AArch64 MTE

   Copyright (C) 2020 Free Software Foundation, Inc.

   This file is part of GDB.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#ifndef ARCH_AARCH64_LINUX_H
#define ARCH_AARCH64_LINUX_H

#include "gdbsupport/common-defs.h"

/* Feature check for Memory Tagging Extension.  */
#ifndef HWCAP2_MTE
#define HWCAP2_MTE  (1 << 18)
#endif

/* The MTE regset consists of 2 registers of 64-bit size.  */
#define AARCH64_LINUX_SIZEOF_MTE (2 * 64)

/* We have one tag per 16 bytes of memory.  */
#define MTE_GRANULE_SIZE 16
#define MTE_LOGICAL_TAG_START_BIT   56
#define MTE_LOGICAL_MAX_VALUE	    0xf

/* Memory tagging definitions.  */
#ifndef SEGV_MTEAERR
# define SEGV_MTEAERR 8
# define SEGV_MTESERR 9
#endif

/* Return the number of tag granules in the memory range
   [ADDR, ADDR + LEN) given GRANULE_SIZE.  */
extern int get_tag_granules (CORE_ADDR addr, size_t len,
			     unsigned int granule_size);

/* Return the 4-bit tag made from VALUE.  */
extern CORE_ADDR make_ltag_bits (CORE_ADDR value);

/* Return the 4-bit tag that can be OR-ed to an address.  */
extern CORE_ADDR make_ltag (CORE_ADDR value);

/* Helper to set the logical TAG for a 64-bit ADDRESS.

   It is always possible to set the logical tag.  */
extern CORE_ADDR aarch64_linux_set_ltag (CORE_ADDR address,
					 CORE_ADDR tag);

/* Helper to get the logical tag from a 64-bit ADDRESS.

   It is always possible to get the logical tag.  */
extern CORE_ADDR aarch64_linux_get_ltag (CORE_ADDR address);

#endif /* ARCH_AARCH64_LINUX_H */