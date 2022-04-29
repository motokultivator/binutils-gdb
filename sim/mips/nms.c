/*  Run function for the nanomips simulator

    Copyright (C) 2018-2022 Free Software Foundation, Inc.

    Written by Andrew Bennett <andrew.bennett@imgtec.com>.

    This file is part of GDB, the GNU debugger.

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

#include "sim-main.h"
#include "elf/mips-common.h"
#include "elf/nanomips.h"

/* NMS Flag */
int nms_flag = -1;

int is_nms_flag_set = 0;

void
set_nms_flag (SIM_DESC sd)
{
  Elf_Internal_ABIFlags_v0 *abiflags;
  abiflags = bfd_nanomips_elf_get_abiflags (STATE_PROG_BFD(sd));

  nms_flag = 0;

  if (abiflags != NULL
      && ((abiflags->ases & NANOMIPS_ASE_xNMS) != 0))
    nms_flag = 1;

  is_nms_flag_set = 1;
}
