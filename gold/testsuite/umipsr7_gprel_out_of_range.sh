#!/bin/sh

# umipsr7_gprel_out_of_range.sh -- test microMIPSR7 gp-relative load and store
# instructions whose targets are out of the range limits.

# Copyright (C) 2016 Free Software Foundation, Inc.
# Written by Vladimir Radosavljevic <vladimir.radosavljevic@imgtec.com>.

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

# Test lw[gp] expansion to lui, addu, lw.
check umipsr7_gprel_out_of_range.stdout " 1000:	e030 003c 	lui	at,0x1f00"
check umipsr7_gprel_out_of_range.stdout " 1004:	2381 0950 	addu	at,at,gp"
check umipsr7_gprel_out_of_range.stdout " 1008:	8441 8000 	lw	v0,0(at)"

# Test sw[gp] expansion to lui, addu, sw.
check umipsr7_gprel_out_of_range.stdout " 100c:	e030 003c 	lui	at,0x1f00"
check umipsr7_gprel_out_of_range.stdout " 1010:	2381 0950 	addu	at,at,gp"
check umipsr7_gprel_out_of_range.stdout " 1014:	8461 9000 	sw	v1,0(at)"

# Test lb[gp] expansion to lui, addu, lb.
check umipsr7_gprel_out_of_range.stdout " 1018:	e030 003c 	lui	at,0x1f00"
check umipsr7_gprel_out_of_range.stdout " 101c:	2381 0950 	addu	at,at,gp"
check umipsr7_gprel_out_of_range.stdout " 1020:	84c1 0000 	lb	a2,0(at)"

# Test lbu[gp] expansion to lui, addu, lbu.
check umipsr7_gprel_out_of_range.stdout " 1024:	e030 003c 	lui	at,0x1f00"
check umipsr7_gprel_out_of_range.stdout " 1028:	2381 0950 	addu	at,at,gp"
check umipsr7_gprel_out_of_range.stdout " 102c:	84e1 2000 	lbu	a3,0(at)"

# Test lh[gp] expansion to lui, addu, lh.
check umipsr7_gprel_out_of_range.stdout " 1030:	e030 003c 	lui	at,0x1f00"
check umipsr7_gprel_out_of_range.stdout " 1034:	2381 0950 	addu	at,at,gp"
check umipsr7_gprel_out_of_range.stdout " 1038:	8601 4000 	lh	s0,0(at)"

# Test lhu[gp] expansion to lui, addu, lhu.
check umipsr7_gprel_out_of_range.stdout " 103c:	e030 003c 	lui	at,0x1f00"
check umipsr7_gprel_out_of_range.stdout " 1040:	2381 0950 	addu	at,at,gp"
check umipsr7_gprel_out_of_range.stdout " 1044:	8681 6000 	lhu	s4,0(at)"

# Test sb[gp] expansion to lui, addu, sb.
check umipsr7_gprel_out_of_range.stdout " 1048:	e030 003c 	lui	at,0x1f00"
check umipsr7_gprel_out_of_range.stdout " 104c:	2381 0950 	addu	at,at,gp"
check umipsr7_gprel_out_of_range.stdout " 1050:	8521 1000 	sb	t1,0(at)"

# Test sh[gp] expansion to lui, addu, sh.
check umipsr7_gprel_out_of_range.stdout " 1054:	e030 003c 	lui	at,0x1f00"
check umipsr7_gprel_out_of_range.stdout " 1058:	2381 0950 	addu	at,at,gp"
check umipsr7_gprel_out_of_range.stdout " 105c:	85a1 5000 	sh	t5,0(at)"

# Test addiu[gp] expansion to lui, addu, addiu.
check umipsr7_gprel_out_of_range.stdout " 1060:	e030 003c 	lui	at,0x1f00"
check umipsr7_gprel_out_of_range.stdout " 1064:	2381 0950 	addu	at,at,gp"
check umipsr7_gprel_out_of_range.stdout " 1068:	01c1 0000 	addiu	t6,at,0"

exit 0
