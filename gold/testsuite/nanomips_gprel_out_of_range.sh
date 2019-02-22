#!/bin/sh

# nanomips_gprel_out_of_range.sh -- test nanoMIPS gp-relative instructions whose
# targets are out of the range limits.

# Copyright (C) 2018 Free Software Foundation, Inc.
# Written by Vladimir Radosavljevic <vladimir.radosavljevic@mips.com>.

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
check nanomips_gprel_out_of_range.stdout " 1000:	e030 003c 	lui	at,%hi(0x1f00000)"
check nanomips_gprel_out_of_range.stdout " 1004:	2381 0950 	addu	at,at,gp"
check nanomips_gprel_out_of_range.stdout " 1008:	8441 8000 	lw	t4,0(at)"

# Test sw[gp] expansion to lui, addu, sw.
check nanomips_gprel_out_of_range.stdout " 100c:	e030 003c 	lui	at,%hi(0x1f00000)"
check nanomips_gprel_out_of_range.stdout " 1010:	2381 0950 	addu	at,at,gp"
check nanomips_gprel_out_of_range.stdout " 1014:	8461 9000 	sw	t5,0(at)"

# Test lb[gp] expansion to lui, addu, lb.
check nanomips_gprel_out_of_range.stdout " 1018:	e030 003c 	lui	at,%hi(0x1f00000)"
check nanomips_gprel_out_of_range.stdout " 101c:	2381 0950 	addu	at,at,gp"
check nanomips_gprel_out_of_range.stdout " 1020:	84c1 0000 	lb	a2,0(at)"

# Test lbu[gp] expansion to lui, addu, lbu.
check nanomips_gprel_out_of_range.stdout " 1024:	e030 003c 	lui	at,%hi(0x1f00000)"
check nanomips_gprel_out_of_range.stdout " 1028:	2381 0950 	addu	at,at,gp"
check nanomips_gprel_out_of_range.stdout " 102c:	84e1 2000 	lbu	a3,0(at)"

# Test lh[gp] expansion to lui, addu, lh.
check nanomips_gprel_out_of_range.stdout " 1030:	e030 003c 	lui	at,%hi(0x1f00000)"
check nanomips_gprel_out_of_range.stdout " 1034:	2381 0950 	addu	at,at,gp"
check nanomips_gprel_out_of_range.stdout " 1038:	8601 4000 	lh	s0,0(at)"

# Test lhu[gp] expansion to lui, addu, lhu.
check nanomips_gprel_out_of_range.stdout " 103c:	e030 003c 	lui	at,%hi(0x1f00000)"
check nanomips_gprel_out_of_range.stdout " 1040:	2381 0950 	addu	at,at,gp"
check nanomips_gprel_out_of_range.stdout " 1044:	8681 6000 	lhu	s4,0(at)"

# Test sb[gp] expansion to lui, addu, sb.
check nanomips_gprel_out_of_range.stdout " 1048:	e030 003c 	lui	at,%hi(0x1f00000)"
check nanomips_gprel_out_of_range.stdout " 104c:	2381 0950 	addu	at,at,gp"
check nanomips_gprel_out_of_range.stdout " 1050:	8521 1000 	sb	a5,0(at)"

# Test sh[gp] expansion to lui, addu, sh.
check nanomips_gprel_out_of_range.stdout " 1054:	e030 003c 	lui	at,%hi(0x1f00000)"
check nanomips_gprel_out_of_range.stdout " 1058:	2381 0950 	addu	at,at,gp"
check nanomips_gprel_out_of_range.stdout " 105c:	85a1 5000 	sh	t1,0(at)"

# Test addiu[gp.w] expansion to lui, ori, addu.
check nanomips_gprel_out_of_range.stdout " 1060:	e030 003c 	lui	at,%hi(0x1f00000)"
check nanomips_gprel_out_of_range.stdout " 1064:	8021 0000 	ori	at,at,0"
check nanomips_gprel_out_of_range.stdout " 1068:	2381 7150 	addu	t2,at,gp"

# Test addiu[gp.b] expansion to lui, ori, addu.
check nanomips_gprel_out_of_range.stdout " 106c:	e030 003c 	lui	at,%hi(0x1f00000)"
check nanomips_gprel_out_of_range.stdout " 1070:	8021 0000 	ori	at,at,0"
check nanomips_gprel_out_of_range.stdout " 1074:	2381 7950 	addu	t3,at,gp"


# Test lw[gp] expansion to addiu[gp48], lw.
check nanomips_gprel_nmf_out_of_range.stdout " 1000:	6022 0000 	addiu	at,gp,.*"
check nanomips_gprel_nmf_out_of_range.stdout " 1004:	01f0"
check nanomips_gprel_nmf_out_of_range.stdout " 1006:	8441 8000 	lw	t4,0(at)"

# Test sw[gp] expansion to addiu[gp48], sw.
check nanomips_gprel_nmf_out_of_range.stdout " 100a:	6022 0000 	addiu	at,gp,.*"
check nanomips_gprel_nmf_out_of_range.stdout " 100e:	01f0"
check nanomips_gprel_nmf_out_of_range.stdout " 1010:	8461 9000 	sw	t5,0(at)"

# Test lb[gp] expansion to addiu[gp48], lb.
check nanomips_gprel_nmf_out_of_range.stdout " 1014:	6022 0000 	addiu	at,gp,.*"
check nanomips_gprel_nmf_out_of_range.stdout " 1018:	01f0"
check nanomips_gprel_nmf_out_of_range.stdout " 101a:	84c1 0000 	lb	a2,0(at)"

# Test lbu[gp] expansion to addiu[gp48], lbu.
check nanomips_gprel_nmf_out_of_range.stdout " 101e:	6022 0000 	addiu	at,gp,.*"
check nanomips_gprel_nmf_out_of_range.stdout " 1022:	01f0"
check nanomips_gprel_nmf_out_of_range.stdout " 1024:	84e1 2000 	lbu	a3,0(at)"

# Test lh[gp] expansion to addiu[gp48], lh.
check nanomips_gprel_nmf_out_of_range.stdout " 1028:	6022 0000 	addiu	at,gp,.*"
check nanomips_gprel_nmf_out_of_range.stdout " 102c:	01f0"
check nanomips_gprel_nmf_out_of_range.stdout " 102e:	8601 4000 	lh	s0,0(at)"

# Test lhu[gp] expansion to addiu[gp48], lhu.
check nanomips_gprel_nmf_out_of_range.stdout " 1032:	6022 0000 	addiu	at,gp,.*"
check nanomips_gprel_nmf_out_of_range.stdout " 1036:	01f0"
check nanomips_gprel_nmf_out_of_range.stdout " 1038:	8681 6000 	lhu	s4,0(at)"

# Test sb[gp] expansion to addiu[gp48], sb.
check nanomips_gprel_nmf_out_of_range.stdout " 103c:	6022 0000 	addiu	at,gp,.*"
check nanomips_gprel_nmf_out_of_range.stdout " 1040:	01f0"
check nanomips_gprel_nmf_out_of_range.stdout " 1042:	8521 1000 	sb	a5,0(at)"

# Test sh[gp] expansion to addiu[gp48], sh.
check nanomips_gprel_nmf_out_of_range.stdout " 1046:	6022 0000 	addiu	at,gp,.*"
check nanomips_gprel_nmf_out_of_range.stdout " 104a:	01f0"
check nanomips_gprel_nmf_out_of_range.stdout " 104c:	85a1 5000 	sh	t1,0(at)"

# Test addiu[gp.w] expansion to addiu[gp48].
check nanomips_gprel_nmf_out_of_range.stdout " 1050:	61c2 0000 	addiu	t2,gp,.*"
check nanomips_gprel_nmf_out_of_range.stdout " 1054:	01f0"

# Test addiu[gp.b] expansion to addiu[gp48].
check nanomips_gprel_nmf_out_of_range.stdout " 1056:	61e2 0000 	addiu	t3,gp,.*"
check nanomips_gprel_nmf_out_of_range.stdout " 105a:	01f0"


# Test lw[gp] expansion to lui, lw.
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 1000:	e020 0040 	lui	at,%hi(0x2000000)"
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 1004:	8441 8000 	lw	t4,0(at)"

# Test sw[gp] expansion to lui, sw.
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 1008:	e020 0040 	lui	at,%hi(0x2000000)"
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 100c:	8461 9000 	sw	t5,0(at)"

# Test lb[gp] expansion to lui, lb.
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 1010:	e020 0040 	lui	at,%hi(0x2000000)"
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 1014:	84c1 0000 	lb	a2,0(at)"

# Test lbu[gp] expansion to lui, lbu.
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 1018:	e020 0040 	lui	at,%hi(0x2000000)"
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 101c:	84e1 2000 	lbu	a3,0(at)"

# Test lh[gp] expansion to lui, lh.
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 1020:	e020 0040 	lui	at,%hi(0x2000000)"
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 1024:	8601 4000 	lh	s0,0(at)"

# Test lhu[gp] expansion to lui, lhu.
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 1028:	e020 0040 	lui	at,%hi(0x2000000)"
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 102c:	8681 6000 	lhu	s4,0(at)"

# Test sb[gp] expansion to lui, sb.
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 1030:	e020 0040 	lui	at,%hi(0x2000000)"
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 1034:	8521 1000 	sb	a5,0(at)"

# Test sh[gp] expansion to lui, sh.
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 1038:	e020 0040 	lui	at,%hi(0x2000000)"
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 103c:	85a1 5000 	sh	t1,0(at)"

# Test addiu[gp.w] expansion to lui, ori.
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 1040:	e020 0040 	lui	at,%hi(0x2000000)"
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 1044:	81c1 0000 	ori	t2,at,0x0"

# Test addiu[gp.b] expansion to lui, ori.
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 1048:	e020 0040 	lui	at,%hi(0x2000000)"
check nanomips_gprel_out_of_range_no_strict_abs.stdout " 104c:	81e1 0000 	ori	t3,at,0x0"


# Test lw[gp] expansion to lwpc.
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 1000:	604b effa 	lwpc	t4,2000000 <var>"
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 1004:	01ff"

# Test sw[gp] expansion to swpc.
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 1006:	606f eff4 	swpc	t5,2000000 <var>"
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 100a:	01ff"

# Test lb[gp] expansion to lui, lb.
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 100c:	e020 0040 	lui	at,%hi(0x2000000)"
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 1010:	84c1 0000 	lb	a2,0(at)"

# Test lbu[gp] expansion to lui, lbu.
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 1014:	e020 0040 	lui	at,%hi(0x2000000)"
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 1018:	84e1 2000 	lbu	a3,0(at)"

# Test lh[gp] expansion to lui, lh.
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 101c:	e020 0040 	lui	at,%hi(0x2000000)"
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 1020:	8601 4000 	lh	s0,0(at)"

# Test lhu[gp] expansion to lui, lhu.
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 1024:	e020 0040 	lui	at,%hi(0x2000000)"
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 1028:	8681 6000 	lhu	s4,0(at)"

# Test sb[gp] expansion to lui, sb.
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 102c:	e020 0040 	lui	at,%hi(0x2000000)"
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 1030:	8521 1000 	sb	a5,0(at)"

# Test sh[gp] expansion to lui, sh.
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 1034:	e020 0040 	lui	at,%hi(0x2000000)"
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 1038:	85a1 5000 	sh	t1,0(at)"

# Test addiu[gp.w] expansion to addiu[gp48].
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 103c:	61c2 0000 	addiu	t2,gp,.*"
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 1040:	01f0"

# Test addiu[gp.b] expansion to addiu[gp48].
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 1042:	61e2 0000 	addiu	t3,gp,.*"
check nanomips_gprel_nmf_out_of_range_no_strict_abs.stdout " 1046:	01f0"


# Test lw[gp] expansion to aluipc, lw.
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 1000:	e03f f03e 	aluipc	at,.*"
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 1004:	8441 8000 	lw	t4,0(at)"

# Test sw[gp] expansion to aluipc, sw.
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 1008:	e03f f03e 	aluipc	at,.*"
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 100c:	8461 9000 	sw	t5,0(at)"

# Test lb[gp] expansion to aluipc, lb.
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 1010:	e03f f03e 	aluipc	at,.*"
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 1014:	84c1 0000 	lb	a2,0(at)"

# Test lbu[gp] expansion to aluipc, lbu.
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 1018:	e03f f03e 	aluipc	at,.*"
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 101c:	84e1 2000 	lbu	a3,0(at)"

# Test lh[gp] expansion to aluipc, lh.
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 1020:	e03f f03e 	aluipc	at,.*"
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 1024:	8601 4000 	lh	s0,0(at)"

# Test lhu[gp] expansion to aluipc, lhu.
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 1028:	e03f f03e 	aluipc	at,.*"
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 102c:	8681 6000 	lhu	s4,0(at)"

# Test sb[gp] expansion to aluipc, sb.
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 1030:	e03f f03e 	aluipc	at,.*"
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 1034:	8521 1000 	sb	a5,0(at)"

# Test sh[gp] expansion to aluipc, sh.
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 1038:	e03f f03e 	aluipc	at,.*"
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 103c:	85a1 5000 	sh	t1,0(at)"

# Test addiu[gp.w] expansion to aluipc, ori.
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 1040:	e03f f03e 	aluipc	at,.*"
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 1044:	81c1 0000 	ori	t2,at,0x0"

# Test addiu[gp.b] expansion to aluipc, ori.
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 1048:	e03f f03e 	aluipc	at,.*"
check nanomips_gprel_out_of_range_no_strict_pcrel.stdout " 104c:	81e1 0000 	ori	t3,at,0x0"


# Test lw[gp] expansion to lwpc.
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 1000:	604b effa 	lwpc	t4,2000000 <var>"
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 1004:	01ff"

# Test lw[gp] expansion to swpc.
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 1006:	606f eff4 	swpc	t5,2000000 <var>"
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 100a:	01ff"

# Test lb[gp] expansion to aluipc, lb.
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 100c:	e03f f03e 	aluipc	at,.*"
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 1010:	84c1 0000 	lb	a2,0(at)"

# Test lbu[gp] expansion to aluipc, lbu.
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 1014:	e03f f03e 	aluipc	at,.*"
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 1018:	84e1 2000 	lbu	a3,0(at)"

# Test lh[gp] expansion to aluipc, lh.
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 101c:	e03f f03e 	aluipc	at,.*"
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 1020:	8601 4000 	lh	s0,0(at)"

# Test lhu[gp] expansion to aluipc, lhu.
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 1024:	e03f f03e 	aluipc	at,.*"
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 1028:	8681 6000 	lhu	s4,0(at)"

# Test sb[gp] expansion to aluipc, sb.
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 102c:	e03f f03e 	aluipc	at,.*"
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 1030:	8521 1000 	sb	a5,0(at)"

# Test sh[gp] expansion to aluipc, sh.
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 1034:	e03f f03e 	aluipc	at,.*"
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 1038:	85a1 5000 	sh	t1,0(at)"

# Test addiu[gp.w] expansion to addiu[gp48].
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 103c:	61c2 0000 	addiu	t2,gp,.*"
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 1040:	01f0"

# Test addiu[gp.b] expansion to addiu[gp48].
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 1042:	61e2 0000 	addiu	t3,gp,.*"
check nanomips_gprel_nmf_out_of_range_no_strict_pcrel.stdout " 1046:	01f0"

exit 0
