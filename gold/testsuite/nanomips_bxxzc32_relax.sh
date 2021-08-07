#!/bin/sh

# nanomips_bxxzc32_relax.sh - Test that the beqzc[32]/bnezc[32]
# instructions are relaxed to their 16-bit variants.

# Copyright (C) 2021 Free Software Foundation, Inc.
# Written by Dragan Mladjenovic <Dragan.Mladjenovic@syrmia.com>.

# This file is part of gold.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street - Fifth Floor, Boston,
# MA 02110-1301, USA.

check()
{
    file=$1
    pattern=$2

    found=`grep "$pattern" $file`
    if test -z "$found"; then
      echo "pattern \"$pattern\" not found in file $file."
      exit 1
    fi
}

check nanomips_bxxzc32_relax.stdout "beqzc\[16].a0,.*<foo>"
check nanomips_bxxzc32_relax.stdout "bnezc\[16].a0,.*<foo>"

exit 0
