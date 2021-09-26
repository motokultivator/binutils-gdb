#!/bin/sh

# nanomips_emit_relocs.sh - Test that the --emit-relocs
# works with --gc-sections.

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
    pattern0=$2
    num=$3
    pattern1=$4

    count=`grep -c "$pattern0" $file`
    if [ $count != $num ]; then
      echo "pattern \"$pattern0\" not found in $file exactly $num times."
      exit 1
    fi

    found=`grep "$pattern0" $file | grep $pattern1`
    if test -z "$found"; then
      echo "pattern \"$pattern1\" not found in file $file."
      exit 1
    fi
}

check nanomips_emit_relocs.stdout "R_NANOMIPS_32" 1 "bar"

exit 0

