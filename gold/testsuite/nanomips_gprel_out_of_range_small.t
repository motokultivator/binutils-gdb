/* nanomips_gprel_out_of_range_small.t -- test gp-relative load and
   store expansions in small data range.

   Copyright (C) 2022 Free Software Foundation, Inc.
   Written by Faraz Shahbazker <faraz.shahbazker@mediatek.com>.

   This file is part of gold.

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

SECTIONS
{
  . = 0x1000;
  .text : { *(.text) }
  .nanoMIPS.abiflags : { *(.nanoMIPS.abiflags) }
  .data : { *(.data) }
  _gp = 0x100000;
  .sdata 0x140000 : { *(.ssdata) *(.sdata) }
}
