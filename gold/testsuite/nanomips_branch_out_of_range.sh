#!/bin/sh

# nanomips_branch_out_of_range.sh -- test nanoMIPS branch instructions whose
# targets are out of the branch range limits.

# Copyright (C) 2017 Free Software Foundation, Inc.
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

# Test balc expansion to aluipc, addiu and jalrc.
check nanomips_b_out_of_range.stdout " 1000:	e020 0042 	aluipc	at,.*"
check nanomips_b_out_of_range.stdout " 1004:	0021 0020 	addiu	at,at,32"
check nanomips_b_out_of_range.stdout " 1008:	d830      	jalrc	at"

# Test bc expansion to aluipc, addiu and jrc.
check nanomips_b_out_of_range.stdout " 100a:	e020 0042 	aluipc	at,.*"
check nanomips_b_out_of_range.stdout " 100e:	0021 0020 	addiu	at,at,32"
check nanomips_b_out_of_range.stdout " 1012:	d820      	jrc	at"

# Test move.balc expansion to move and balc.
check nanomips_move_balc_1_out_of_range.stdout " 1000:	1090      	move	a0,s0"
check nanomips_move_balc_1_out_of_range.stdout " 1002:	2a20 001a 	balc	.*"

# Test move.balc expansion to move, aluipc, addiu and jalrc.
check nanomips_move_balc_2_out_of_range.stdout " 1000:	1090      	move	a0,s0"
check nanomips_move_balc_2_out_of_range.stdout " 1002:	e020 0042 	aluipc	at,.*"
check nanomips_move_balc_2_out_of_range.stdout " 1006:	0021 0020 	addiu	at,at,32"
check nanomips_move_balc_2_out_of_range.stdout " 100a:	d830      	jalrc	at"

# Test beqic expansion to li, beqc.
check nanomips_bci_out_of_range.stdout " 1000:	0020 005a 	li	at,90"
check nanomips_bci_out_of_range.stdout " 1004:	8824 2018 	beqc	a0,at,.*"

# Test bgeic expansion to li, bgec.
check nanomips_bci_out_of_range.stdout " 1008:	0020 0001 	li	at,1"
check nanomips_bci_out_of_range.stdout " 100c:	8831 a010 	bgec	s1,at,.*"

# Test bgeiuc expansion to li, bgeuc.
check nanomips_bci_out_of_range.stdout " 1010:	0020 007f 	li	at,127"
check nanomips_bci_out_of_range.stdout " 1014:	8823 e008 	bgeuc	t5,at,.*"

# Test bltic expansion to li, bltc.
check nanomips_bci_out_of_range.stdout " 1018:	0020 0004 	li	at,4"
check nanomips_bci_out_of_range.stdout " 101c:	a822 a000 	bltc	t4,at,.*"

# Test bltiuc expansion to li, bltuc.
check nanomips_bci_out_of_range.stdout " 1020:	0020 0006 	li	at,6"
check nanomips_bci_out_of_range.stdout " 1024:	a838 dff8 	bltuc	t8,at,.*"

# Test bneic expansion to li, bnec.
check nanomips_bci_out_of_range.stdout " 1028:	0020 0002 	li	at,2"
check nanomips_bci_out_of_range.stdout " 102c:	a837 1ff0 	bnec	s7,at,.*"

exit 0
