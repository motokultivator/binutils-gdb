#objdump: -dr --prefix-addresses --show-raw-insn -M cp0-names=mips32
#name: MIPS MT ASE for MIPS32R7
#as: -mmt -mips32r7 -mmicromips -32
#source: mips32-mt.s

# Check MIPS MT ASE for MIPS32R7 Instruction Assembly

.*: +file format .*mips.*

Disassembly of section .text:
[0-9a-f]+ <[^>]+> 2001 0ab0 	dmt
[0-9a-f]+ <[^>]+> 23e1 0ab0 	dmt	ra
[0-9a-f]+ <[^>]+> 2000 0ab0 	dvpe
[0-9a-f]+ <[^>]+> 2020 0ab0 	dvpe	at
[0-9a-f]+ <[^>]+> 2001 0eb0 	emt
[0-9a-f]+ <[^>]+> 2041 0eb0 	emt	v0
[0-9a-f]+ <[^>]+> 2000 0eb0 	evpe
[0-9a-f]+ <[^>]+> 2060 0eb0 	evpe	v1
[0-9a-f]+ <[^>]+> 20c5 2228 	fork	a0,a1,a2
[0-9a-f]+ <[^>]+> 2005 0268 	yield	a1
[0-9a-f]+ <[^>]+> 20c7 0268 	yield	a2,a3
[0-9a-f]+ <[^>]+> 20e8 0238 	mftc0	a3,c0_badvaddr
[0-9a-f]+ <[^>]+> 2100 0238 	mftc0	t0,c0_index
[0-9a-f]+ <[^>]+> 2100 0a38 	mftc0	t0,\$0,1
[0-9a-f]+ <[^>]+> 2100 1238 	mftc0	t0,\$0,2
[0-9a-f]+ <[^>]+> 2100 1a38 	mftc0	t0,\$0,3
[0-9a-f]+ <[^>]+> 2100 2238 	mftc0	t0,\$0,4
[0-9a-f]+ <[^>]+> 2100 2a38 	mftc0	t0,\$0,5
[0-9a-f]+ <[^>]+> 2100 3238 	mftc0	t0,\$0,6
[0-9a-f]+ <[^>]+> 2100 3a38 	mftc0	t0,\$0,7
[0-9a-f]+ <[^>]+> 2101 0238 	mftc0	t0,c0_random
[0-9a-f]+ <[^>]+> 2101 0a38 	mftc0	t0,\$1,1
[0-9a-f]+ <[^>]+> 2101 1238 	mftc0	t0,\$1,2
[0-9a-f]+ <[^>]+> 2101 1a38 	mftc0	t0,\$1,3
[0-9a-f]+ <[^>]+> 2101 2238 	mftc0	t0,\$1,4
[0-9a-f]+ <[^>]+> 2101 2a38 	mftc0	t0,\$1,5
[0-9a-f]+ <[^>]+> 2101 3238 	mftc0	t0,\$1,6
[0-9a-f]+ <[^>]+> 2101 3a38 	mftc0	t0,\$1,7
[0-9a-f]+ <[^>]+> 2102 0238 	mftc0	t0,c0_entrylo0
[0-9a-f]+ <[^>]+> 2102 0a38 	mftc0	t0,\$2,1
[0-9a-f]+ <[^>]+> 2102 1238 	mftc0	t0,\$2,2
[0-9a-f]+ <[^>]+> 2102 1a38 	mftc0	t0,\$2,3
[0-9a-f]+ <[^>]+> 2102 2238 	mftc0	t0,\$2,4
[0-9a-f]+ <[^>]+> 2102 2a38 	mftc0	t0,\$2,5
[0-9a-f]+ <[^>]+> 2102 3238 	mftc0	t0,\$2,6
[0-9a-f]+ <[^>]+> 2102 3a38 	mftc0	t0,\$2,7
[0-9a-f]+ <[^>]+> 2103 0238 	mftc0	t0,c0_entrylo1
[0-9a-f]+ <[^>]+> 2103 0a38 	mftc0	t0,\$3,1
[0-9a-f]+ <[^>]+> 2103 1238 	mftc0	t0,\$3,2
[0-9a-f]+ <[^>]+> 2103 1a38 	mftc0	t0,\$3,3
[0-9a-f]+ <[^>]+> 2103 2238 	mftc0	t0,\$3,4
[0-9a-f]+ <[^>]+> 2103 2a38 	mftc0	t0,\$3,5
[0-9a-f]+ <[^>]+> 2103 3238 	mftc0	t0,\$3,6
[0-9a-f]+ <[^>]+> 2103 3a38 	mftc0	t0,\$3,7
[0-9a-f]+ <[^>]+> 2104 0238 	mftc0	t0,c0_context
[0-9a-f]+ <[^>]+> 2104 0a38 	mftc0	t0,\$4,1
[0-9a-f]+ <[^>]+> 2104 1238 	mftc0	t0,\$4,2
[0-9a-f]+ <[^>]+> 2104 1a38 	mftc0	t0,\$4,3
[0-9a-f]+ <[^>]+> 2104 2238 	mftc0	t0,\$4,4
[0-9a-f]+ <[^>]+> 2104 2a38 	mftc0	t0,\$4,5
[0-9a-f]+ <[^>]+> 2104 3238 	mftc0	t0,\$4,6
[0-9a-f]+ <[^>]+> 2104 3a38 	mftc0	t0,\$4,7
[0-9a-f]+ <[^>]+> 2105 0238 	mftc0	t0,c0_pagemask
[0-9a-f]+ <[^>]+> 2105 0a38 	mftc0	t0,\$5,1
[0-9a-f]+ <[^>]+> 2105 1238 	mftc0	t0,\$5,2
[0-9a-f]+ <[^>]+> 2105 1a38 	mftc0	t0,\$5,3
[0-9a-f]+ <[^>]+> 2105 2238 	mftc0	t0,\$5,4
[0-9a-f]+ <[^>]+> 2105 2a38 	mftc0	t0,\$5,5
[0-9a-f]+ <[^>]+> 2105 3238 	mftc0	t0,\$5,6
[0-9a-f]+ <[^>]+> 2105 3a38 	mftc0	t0,\$5,7
[0-9a-f]+ <[^>]+> 2106 0238 	mftc0	t0,c0_wired
[0-9a-f]+ <[^>]+> 2106 0a38 	mftc0	t0,\$6,1
[0-9a-f]+ <[^>]+> 2106 1238 	mftc0	t0,\$6,2
[0-9a-f]+ <[^>]+> 2106 1a38 	mftc0	t0,\$6,3
[0-9a-f]+ <[^>]+> 2106 2238 	mftc0	t0,\$6,4
[0-9a-f]+ <[^>]+> 2106 2a38 	mftc0	t0,\$6,5
[0-9a-f]+ <[^>]+> 2106 3238 	mftc0	t0,\$6,6
[0-9a-f]+ <[^>]+> 2106 3a38 	mftc0	t0,\$6,7
[0-9a-f]+ <[^>]+> 2107 0238 	mftc0	t0,\$7
[0-9a-f]+ <[^>]+> 2107 0a38 	mftc0	t0,\$7,1
[0-9a-f]+ <[^>]+> 2107 1238 	mftc0	t0,\$7,2
[0-9a-f]+ <[^>]+> 2107 1a38 	mftc0	t0,\$7,3
[0-9a-f]+ <[^>]+> 2107 2238 	mftc0	t0,\$7,4
[0-9a-f]+ <[^>]+> 2107 2a38 	mftc0	t0,\$7,5
[0-9a-f]+ <[^>]+> 2107 3238 	mftc0	t0,\$7,6
[0-9a-f]+ <[^>]+> 2107 3a38 	mftc0	t0,\$7,7
[0-9a-f]+ <[^>]+> 2108 0238 	mftc0	t0,c0_badvaddr
[0-9a-f]+ <[^>]+> 2108 0a38 	mftc0	t0,\$8,1
[0-9a-f]+ <[^>]+> 2108 1238 	mftc0	t0,\$8,2
[0-9a-f]+ <[^>]+> 2108 1a38 	mftc0	t0,\$8,3
[0-9a-f]+ <[^>]+> 2108 2238 	mftc0	t0,\$8,4
[0-9a-f]+ <[^>]+> 2108 2a38 	mftc0	t0,\$8,5
[0-9a-f]+ <[^>]+> 2108 3238 	mftc0	t0,\$8,6
[0-9a-f]+ <[^>]+> 2108 3a38 	mftc0	t0,\$8,7
[0-9a-f]+ <[^>]+> 2109 0238 	mftc0	t0,c0_count
[0-9a-f]+ <[^>]+> 2109 0a38 	mftc0	t0,\$9,1
[0-9a-f]+ <[^>]+> 2109 1238 	mftc0	t0,\$9,2
[0-9a-f]+ <[^>]+> 2109 1a38 	mftc0	t0,\$9,3
[0-9a-f]+ <[^>]+> 2109 2238 	mftc0	t0,\$9,4
[0-9a-f]+ <[^>]+> 2109 2a38 	mftc0	t0,\$9,5
[0-9a-f]+ <[^>]+> 2109 3238 	mftc0	t0,\$9,6
[0-9a-f]+ <[^>]+> 2109 3a38 	mftc0	t0,\$9,7
[0-9a-f]+ <[^>]+> 210a 0238 	mftc0	t0,c0_entryhi
[0-9a-f]+ <[^>]+> 210a 0a38 	mftc0	t0,\$10,1
[0-9a-f]+ <[^>]+> 210a 1238 	mftc0	t0,\$10,2
[0-9a-f]+ <[^>]+> 210a 1a38 	mftc0	t0,\$10,3
[0-9a-f]+ <[^>]+> 210a 2238 	mftc0	t0,\$10,4
[0-9a-f]+ <[^>]+> 210a 2a38 	mftc0	t0,\$10,5
[0-9a-f]+ <[^>]+> 210a 3238 	mftc0	t0,\$10,6
[0-9a-f]+ <[^>]+> 210a 3a38 	mftc0	t0,\$10,7
[0-9a-f]+ <[^>]+> 210b 0238 	mftc0	t0,c0_compare
[0-9a-f]+ <[^>]+> 210b 0a38 	mftc0	t0,\$11,1
[0-9a-f]+ <[^>]+> 210b 1238 	mftc0	t0,\$11,2
[0-9a-f]+ <[^>]+> 210b 1a38 	mftc0	t0,\$11,3
[0-9a-f]+ <[^>]+> 210b 2238 	mftc0	t0,\$11,4
[0-9a-f]+ <[^>]+> 210b 2a38 	mftc0	t0,\$11,5
[0-9a-f]+ <[^>]+> 210b 3238 	mftc0	t0,\$11,6
[0-9a-f]+ <[^>]+> 210b 3a38 	mftc0	t0,\$11,7
[0-9a-f]+ <[^>]+> 210c 0238 	mftc0	t0,c0_status
[0-9a-f]+ <[^>]+> 210c 0a38 	mftc0	t0,\$12,1
[0-9a-f]+ <[^>]+> 210c 1238 	mftc0	t0,\$12,2
[0-9a-f]+ <[^>]+> 210c 1a38 	mftc0	t0,\$12,3
[0-9a-f]+ <[^>]+> 210c 2238 	mftc0	t0,\$12,4
[0-9a-f]+ <[^>]+> 210c 2a38 	mftc0	t0,\$12,5
[0-9a-f]+ <[^>]+> 210c 3238 	mftc0	t0,\$12,6
[0-9a-f]+ <[^>]+> 210c 3a38 	mftc0	t0,\$12,7
[0-9a-f]+ <[^>]+> 210d 0238 	mftc0	t0,c0_cause
[0-9a-f]+ <[^>]+> 210d 0a38 	mftc0	t0,\$13,1
[0-9a-f]+ <[^>]+> 210d 1238 	mftc0	t0,\$13,2
[0-9a-f]+ <[^>]+> 210d 1a38 	mftc0	t0,\$13,3
[0-9a-f]+ <[^>]+> 210d 2238 	mftc0	t0,\$13,4
[0-9a-f]+ <[^>]+> 210d 2a38 	mftc0	t0,\$13,5
[0-9a-f]+ <[^>]+> 210d 3238 	mftc0	t0,\$13,6
[0-9a-f]+ <[^>]+> 210d 3a38 	mftc0	t0,\$13,7
[0-9a-f]+ <[^>]+> 210e 0238 	mftc0	t0,c0_epc
[0-9a-f]+ <[^>]+> 210e 0a38 	mftc0	t0,\$14,1
[0-9a-f]+ <[^>]+> 210e 1238 	mftc0	t0,\$14,2
[0-9a-f]+ <[^>]+> 210e 1a38 	mftc0	t0,\$14,3
[0-9a-f]+ <[^>]+> 210e 2238 	mftc0	t0,\$14,4
[0-9a-f]+ <[^>]+> 210e 2a38 	mftc0	t0,\$14,5
[0-9a-f]+ <[^>]+> 210e 3238 	mftc0	t0,\$14,6
[0-9a-f]+ <[^>]+> 210e 3a38 	mftc0	t0,\$14,7
[0-9a-f]+ <[^>]+> 210f 0238 	mftc0	t0,c0_prid
[0-9a-f]+ <[^>]+> 210f 0a38 	mftc0	t0,\$15,1
[0-9a-f]+ <[^>]+> 210f 1238 	mftc0	t0,\$15,2
[0-9a-f]+ <[^>]+> 210f 1a38 	mftc0	t0,\$15,3
[0-9a-f]+ <[^>]+> 210f 2238 	mftc0	t0,\$15,4
[0-9a-f]+ <[^>]+> 210f 2a38 	mftc0	t0,\$15,5
[0-9a-f]+ <[^>]+> 210f 3238 	mftc0	t0,\$15,6
[0-9a-f]+ <[^>]+> 210f 3a38 	mftc0	t0,\$15,7
[0-9a-f]+ <[^>]+> 2110 0238 	mftc0	t0,c0_config
[0-9a-f]+ <[^>]+> 2110 0a38 	mftc0	t0,c0_config1
[0-9a-f]+ <[^>]+> 2110 1238 	mftc0	t0,c0_config2
[0-9a-f]+ <[^>]+> 2110 1a38 	mftc0	t0,c0_config3
[0-9a-f]+ <[^>]+> 2110 2238 	mftc0	t0,\$16,4
[0-9a-f]+ <[^>]+> 2110 2a38 	mftc0	t0,\$16,5
[0-9a-f]+ <[^>]+> 2110 3238 	mftc0	t0,\$16,6
[0-9a-f]+ <[^>]+> 2110 3a38 	mftc0	t0,\$16,7
[0-9a-f]+ <[^>]+> 2111 0238 	mftc0	t0,c0_lladdr
[0-9a-f]+ <[^>]+> 2111 0a38 	mftc0	t0,\$17,1
[0-9a-f]+ <[^>]+> 2111 1238 	mftc0	t0,\$17,2
[0-9a-f]+ <[^>]+> 2111 1a38 	mftc0	t0,\$17,3
[0-9a-f]+ <[^>]+> 2111 2238 	mftc0	t0,\$17,4
[0-9a-f]+ <[^>]+> 2111 2a38 	mftc0	t0,\$17,5
[0-9a-f]+ <[^>]+> 2111 3238 	mftc0	t0,\$17,6
[0-9a-f]+ <[^>]+> 2111 3a38 	mftc0	t0,\$17,7
[0-9a-f]+ <[^>]+> 2112 0238 	mftc0	t0,c0_watchlo
[0-9a-f]+ <[^>]+> 2112 0a38 	mftc0	t0,c0_watchlo,1
[0-9a-f]+ <[^>]+> 2112 1238 	mftc0	t0,c0_watchlo,2
[0-9a-f]+ <[^>]+> 2112 1a38 	mftc0	t0,c0_watchlo,3
[0-9a-f]+ <[^>]+> 2112 2238 	mftc0	t0,c0_watchlo,4
[0-9a-f]+ <[^>]+> 2112 2a38 	mftc0	t0,c0_watchlo,5
[0-9a-f]+ <[^>]+> 2112 3238 	mftc0	t0,c0_watchlo,6
[0-9a-f]+ <[^>]+> 2112 3a38 	mftc0	t0,c0_watchlo,7
[0-9a-f]+ <[^>]+> 2113 0238 	mftc0	t0,c0_watchhi
[0-9a-f]+ <[^>]+> 2113 0a38 	mftc0	t0,c0_watchhi,1
[0-9a-f]+ <[^>]+> 2113 1238 	mftc0	t0,c0_watchhi,2
[0-9a-f]+ <[^>]+> 2113 1a38 	mftc0	t0,c0_watchhi,3
[0-9a-f]+ <[^>]+> 2113 2238 	mftc0	t0,c0_watchhi,4
[0-9a-f]+ <[^>]+> 2113 2a38 	mftc0	t0,c0_watchhi,5
[0-9a-f]+ <[^>]+> 2113 3238 	mftc0	t0,c0_watchhi,6
[0-9a-f]+ <[^>]+> 2113 3a38 	mftc0	t0,c0_watchhi,7
[0-9a-f]+ <[^>]+> 2114 0238 	mftc0	t0,c0_xcontext
[0-9a-f]+ <[^>]+> 2114 0a38 	mftc0	t0,\$20,1
[0-9a-f]+ <[^>]+> 2114 1238 	mftc0	t0,\$20,2
[0-9a-f]+ <[^>]+> 2114 1a38 	mftc0	t0,\$20,3
[0-9a-f]+ <[^>]+> 2114 2238 	mftc0	t0,\$20,4
[0-9a-f]+ <[^>]+> 2114 2a38 	mftc0	t0,\$20,5
[0-9a-f]+ <[^>]+> 2114 3238 	mftc0	t0,\$20,6
[0-9a-f]+ <[^>]+> 2114 3a38 	mftc0	t0,\$20,7
[0-9a-f]+ <[^>]+> 2115 0238 	mftc0	t0,\$21
[0-9a-f]+ <[^>]+> 2115 0a38 	mftc0	t0,\$21,1
[0-9a-f]+ <[^>]+> 2115 1238 	mftc0	t0,\$21,2
[0-9a-f]+ <[^>]+> 2115 1a38 	mftc0	t0,\$21,3
[0-9a-f]+ <[^>]+> 2115 2238 	mftc0	t0,\$21,4
[0-9a-f]+ <[^>]+> 2115 2a38 	mftc0	t0,\$21,5
[0-9a-f]+ <[^>]+> 2115 3238 	mftc0	t0,\$21,6
[0-9a-f]+ <[^>]+> 2115 3a38 	mftc0	t0,\$21,7
[0-9a-f]+ <[^>]+> 2116 0238 	mftc0	t0,\$22
[0-9a-f]+ <[^>]+> 2116 0a38 	mftc0	t0,\$22,1
[0-9a-f]+ <[^>]+> 2116 1238 	mftc0	t0,\$22,2
[0-9a-f]+ <[^>]+> 2116 1a38 	mftc0	t0,\$22,3
[0-9a-f]+ <[^>]+> 2116 2238 	mftc0	t0,\$22,4
[0-9a-f]+ <[^>]+> 2116 2a38 	mftc0	t0,\$22,5
[0-9a-f]+ <[^>]+> 2116 3238 	mftc0	t0,\$22,6
[0-9a-f]+ <[^>]+> 2116 3a38 	mftc0	t0,\$22,7
[0-9a-f]+ <[^>]+> 2117 0238 	mftc0	t0,c0_debug
[0-9a-f]+ <[^>]+> 2117 0a38 	mftc0	t0,\$23,1
[0-9a-f]+ <[^>]+> 2117 1238 	mftc0	t0,\$23,2
[0-9a-f]+ <[^>]+> 2117 1a38 	mftc0	t0,\$23,3
[0-9a-f]+ <[^>]+> 2117 2238 	mftc0	t0,\$23,4
[0-9a-f]+ <[^>]+> 2117 2a38 	mftc0	t0,\$23,5
[0-9a-f]+ <[^>]+> 2117 3238 	mftc0	t0,\$23,6
[0-9a-f]+ <[^>]+> 2117 3a38 	mftc0	t0,\$23,7
[0-9a-f]+ <[^>]+> 2118 0238 	mftc0	t0,c0_depc
[0-9a-f]+ <[^>]+> 2118 0a38 	mftc0	t0,\$24,1
[0-9a-f]+ <[^>]+> 2118 1238 	mftc0	t0,\$24,2
[0-9a-f]+ <[^>]+> 2118 1a38 	mftc0	t0,\$24,3
[0-9a-f]+ <[^>]+> 2118 2238 	mftc0	t0,\$24,4
[0-9a-f]+ <[^>]+> 2118 2a38 	mftc0	t0,\$24,5
[0-9a-f]+ <[^>]+> 2118 3238 	mftc0	t0,\$24,6
[0-9a-f]+ <[^>]+> 2118 3a38 	mftc0	t0,\$24,7
[0-9a-f]+ <[^>]+> 2119 0238 	mftc0	t0,c0_perfcnt
[0-9a-f]+ <[^>]+> 2119 0a38 	mftc0	t0,c0_perfcnt,1
[0-9a-f]+ <[^>]+> 2119 1238 	mftc0	t0,c0_perfcnt,2
[0-9a-f]+ <[^>]+> 2119 1a38 	mftc0	t0,c0_perfcnt,3
[0-9a-f]+ <[^>]+> 2119 2238 	mftc0	t0,c0_perfcnt,4
[0-9a-f]+ <[^>]+> 2119 2a38 	mftc0	t0,c0_perfcnt,5
[0-9a-f]+ <[^>]+> 2119 3238 	mftc0	t0,c0_perfcnt,6
[0-9a-f]+ <[^>]+> 2119 3a38 	mftc0	t0,c0_perfcnt,7
[0-9a-f]+ <[^>]+> 211a 0238 	mftc0	t0,c0_errctl
[0-9a-f]+ <[^>]+> 211a 0a38 	mftc0	t0,\$26,1
[0-9a-f]+ <[^>]+> 211a 1238 	mftc0	t0,\$26,2
[0-9a-f]+ <[^>]+> 211a 1a38 	mftc0	t0,\$26,3
[0-9a-f]+ <[^>]+> 211a 2238 	mftc0	t0,\$26,4
[0-9a-f]+ <[^>]+> 211a 2a38 	mftc0	t0,\$26,5
[0-9a-f]+ <[^>]+> 211a 3238 	mftc0	t0,\$26,6
[0-9a-f]+ <[^>]+> 211a 3a38 	mftc0	t0,\$26,7
[0-9a-f]+ <[^>]+> 211b 0238 	mftc0	t0,c0_cacheerr
[0-9a-f]+ <[^>]+> 211b 0a38 	mftc0	t0,c0_cacheerr,1
[0-9a-f]+ <[^>]+> 211b 1238 	mftc0	t0,c0_cacheerr,2
[0-9a-f]+ <[^>]+> 211b 1a38 	mftc0	t0,c0_cacheerr,3
[0-9a-f]+ <[^>]+> 211b 2238 	mftc0	t0,\$27,4
[0-9a-f]+ <[^>]+> 211b 2a38 	mftc0	t0,\$27,5
[0-9a-f]+ <[^>]+> 211b 3238 	mftc0	t0,\$27,6
[0-9a-f]+ <[^>]+> 211b 3a38 	mftc0	t0,\$27,7
[0-9a-f]+ <[^>]+> 211c 0238 	mftc0	t0,c0_taglo
[0-9a-f]+ <[^>]+> 211c 0a38 	mftc0	t0,c0_datalo
[0-9a-f]+ <[^>]+> 211c 1238 	mftc0	t0,\$28,2
[0-9a-f]+ <[^>]+> 211c 1a38 	mftc0	t0,\$28,3
[0-9a-f]+ <[^>]+> 211c 2238 	mftc0	t0,\$28,4
[0-9a-f]+ <[^>]+> 211c 2a38 	mftc0	t0,\$28,5
[0-9a-f]+ <[^>]+> 211c 3238 	mftc0	t0,\$28,6
[0-9a-f]+ <[^>]+> 211c 3a38 	mftc0	t0,\$28,7
[0-9a-f]+ <[^>]+> 211d 0238 	mftc0	t0,c0_taghi
[0-9a-f]+ <[^>]+> 211d 0a38 	mftc0	t0,c0_datahi
[0-9a-f]+ <[^>]+> 211d 1238 	mftc0	t0,\$29,2
[0-9a-f]+ <[^>]+> 211d 1a38 	mftc0	t0,\$29,3
[0-9a-f]+ <[^>]+> 211d 2238 	mftc0	t0,\$29,4
[0-9a-f]+ <[^>]+> 211d 2a38 	mftc0	t0,\$29,5
[0-9a-f]+ <[^>]+> 211d 3238 	mftc0	t0,\$29,6
[0-9a-f]+ <[^>]+> 211d 3a38 	mftc0	t0,\$29,7
[0-9a-f]+ <[^>]+> 211e 0238 	mftc0	t0,c0_errorepc
[0-9a-f]+ <[^>]+> 211e 0a38 	mftc0	t0,\$30,1
[0-9a-f]+ <[^>]+> 211e 1238 	mftc0	t0,\$30,2
[0-9a-f]+ <[^>]+> 211e 1a38 	mftc0	t0,\$30,3
[0-9a-f]+ <[^>]+> 211e 2238 	mftc0	t0,\$30,4
[0-9a-f]+ <[^>]+> 211e 2a38 	mftc0	t0,\$30,5
[0-9a-f]+ <[^>]+> 211e 3238 	mftc0	t0,\$30,6
[0-9a-f]+ <[^>]+> 211e 3a38 	mftc0	t0,\$30,7
[0-9a-f]+ <[^>]+> 211f 0238 	mftc0	t0,c0_desave
[0-9a-f]+ <[^>]+> 211f 0a38 	mftc0	t0,\$31,1
[0-9a-f]+ <[^>]+> 211f 1238 	mftc0	t0,\$31,2
[0-9a-f]+ <[^>]+> 211f 1a38 	mftc0	t0,\$31,3
[0-9a-f]+ <[^>]+> 211f 2238 	mftc0	t0,\$31,4
[0-9a-f]+ <[^>]+> 211f 2a38 	mftc0	t0,\$31,5
[0-9a-f]+ <[^>]+> 211f 3238 	mftc0	t0,\$31,6
[0-9a-f]+ <[^>]+> 211f 3a38 	mftc0	t0,\$31,7
[0-9a-f]+ <[^>]+> 212a 8238 	mftgpr	t1,t2
[0-9a-f]+ <[^>]+> 2140 8a38 	mftlo	t2
[0-9a-f]+ <[^>]+> 2160 8a38 	mftlo	t3
[0-9a-f]+ <[^>]+> 2181 8a38 	mfthi	t4
[0-9a-f]+ <[^>]+> 21a5 8a38 	mfthi	t5,\$ac1
[0-9a-f]+ <[^>]+> 21c2 8a38 	mftacx	t6
[0-9a-f]+ <[^>]+> 21ea 8a38 	mftacx	t7,\$ac2
[0-9a-f]+ <[^>]+> 2210 8a38 	mftdsp	s0
[0-9a-f]+ <[^>]+> 2232 9238 	mftc1	s1,\$f18
[0-9a-f]+ <[^>]+> 2253 9238 	mftc1	s2,\$f19
[0-9a-f]+ <[^>]+> 2274 d238 	mfthc1	s3,\$f20
[0-9a-f]+ <[^>]+> 2296 d238 	mfthc1	s4,\$f22
[0-9a-f]+ <[^>]+> 22b6 9a38 	cftc1	s5,\$22
[0-9a-f]+ <[^>]+> 22d7 9a38 	cftc1	s6,\$23
[0-9a-f]+ <[^>]+> 22f8 a238 	mftc2	s7,\$24
[0-9a-f]+ <[^>]+> 2319 e238 	mfthc2	t8,\$25
[0-9a-f]+ <[^>]+> 233a aa38 	cftc2	t9,\$26
[0-9a-f]+ <[^>]+> 237a 0278 	mttc0	k0,c0_cacheerr
[0-9a-f]+ <[^>]+> 201b 0278 	mttc0	k1,c0_index
[0-9a-f]+ <[^>]+> 201b 0a78 	mttc0	k1,\$0,1
[0-9a-f]+ <[^>]+> 201b 1278 	mttc0	k1,\$0,2
[0-9a-f]+ <[^>]+> 201b 1a78 	mttc0	k1,\$0,3
[0-9a-f]+ <[^>]+> 201b 2278 	mttc0	k1,\$0,4
[0-9a-f]+ <[^>]+> 201b 2a78 	mttc0	k1,\$0,5
[0-9a-f]+ <[^>]+> 201b 3278 	mttc0	k1,\$0,6
[0-9a-f]+ <[^>]+> 201b 3a78 	mttc0	k1,\$0,7
[0-9a-f]+ <[^>]+> 203b 0278 	mttc0	k1,c0_random
[0-9a-f]+ <[^>]+> 203b 0a78 	mttc0	k1,\$1,1
[0-9a-f]+ <[^>]+> 203b 1278 	mttc0	k1,\$1,2
[0-9a-f]+ <[^>]+> 203b 1a78 	mttc0	k1,\$1,3
[0-9a-f]+ <[^>]+> 203b 2278 	mttc0	k1,\$1,4
[0-9a-f]+ <[^>]+> 203b 2a78 	mttc0	k1,\$1,5
[0-9a-f]+ <[^>]+> 203b 3278 	mttc0	k1,\$1,6
[0-9a-f]+ <[^>]+> 203b 3a78 	mttc0	k1,\$1,7
[0-9a-f]+ <[^>]+> 205b 0278 	mttc0	k1,c0_entrylo0
[0-9a-f]+ <[^>]+> 205b 0a78 	mttc0	k1,\$2,1
[0-9a-f]+ <[^>]+> 205b 1278 	mttc0	k1,\$2,2
[0-9a-f]+ <[^>]+> 205b 1a78 	mttc0	k1,\$2,3
[0-9a-f]+ <[^>]+> 205b 2278 	mttc0	k1,\$2,4
[0-9a-f]+ <[^>]+> 205b 2a78 	mttc0	k1,\$2,5
[0-9a-f]+ <[^>]+> 205b 3278 	mttc0	k1,\$2,6
[0-9a-f]+ <[^>]+> 205b 3a78 	mttc0	k1,\$2,7
[0-9a-f]+ <[^>]+> 207b 0278 	mttc0	k1,c0_entrylo1
[0-9a-f]+ <[^>]+> 207b 0a78 	mttc0	k1,\$3,1
[0-9a-f]+ <[^>]+> 207b 1278 	mttc0	k1,\$3,2
[0-9a-f]+ <[^>]+> 207b 1a78 	mttc0	k1,\$3,3
[0-9a-f]+ <[^>]+> 207b 2278 	mttc0	k1,\$3,4
[0-9a-f]+ <[^>]+> 207b 2a78 	mttc0	k1,\$3,5
[0-9a-f]+ <[^>]+> 207b 3278 	mttc0	k1,\$3,6
[0-9a-f]+ <[^>]+> 207b 3a78 	mttc0	k1,\$3,7
[0-9a-f]+ <[^>]+> 209b 0278 	mttc0	k1,c0_context
[0-9a-f]+ <[^>]+> 209b 0a78 	mttc0	k1,\$4,1
[0-9a-f]+ <[^>]+> 209b 1278 	mttc0	k1,\$4,2
[0-9a-f]+ <[^>]+> 209b 1a78 	mttc0	k1,\$4,3
[0-9a-f]+ <[^>]+> 209b 2278 	mttc0	k1,\$4,4
[0-9a-f]+ <[^>]+> 209b 2a78 	mttc0	k1,\$4,5
[0-9a-f]+ <[^>]+> 209b 3278 	mttc0	k1,\$4,6
[0-9a-f]+ <[^>]+> 209b 3a78 	mttc0	k1,\$4,7
[0-9a-f]+ <[^>]+> 20bb 0278 	mttc0	k1,c0_pagemask
[0-9a-f]+ <[^>]+> 20bb 0a78 	mttc0	k1,\$5,1
[0-9a-f]+ <[^>]+> 20bb 1278 	mttc0	k1,\$5,2
[0-9a-f]+ <[^>]+> 20bb 1a78 	mttc0	k1,\$5,3
[0-9a-f]+ <[^>]+> 20bb 2278 	mttc0	k1,\$5,4
[0-9a-f]+ <[^>]+> 20bb 2a78 	mttc0	k1,\$5,5
[0-9a-f]+ <[^>]+> 20bb 3278 	mttc0	k1,\$5,6
[0-9a-f]+ <[^>]+> 20bb 3a78 	mttc0	k1,\$5,7
[0-9a-f]+ <[^>]+> 20db 0278 	mttc0	k1,c0_wired
[0-9a-f]+ <[^>]+> 20db 0a78 	mttc0	k1,\$6,1
[0-9a-f]+ <[^>]+> 20db 1278 	mttc0	k1,\$6,2
[0-9a-f]+ <[^>]+> 20db 1a78 	mttc0	k1,\$6,3
[0-9a-f]+ <[^>]+> 20db 2278 	mttc0	k1,\$6,4
[0-9a-f]+ <[^>]+> 20db 2a78 	mttc0	k1,\$6,5
[0-9a-f]+ <[^>]+> 20db 3278 	mttc0	k1,\$6,6
[0-9a-f]+ <[^>]+> 20db 3a78 	mttc0	k1,\$6,7
[0-9a-f]+ <[^>]+> 20fb 0278 	mttc0	k1,\$7
[0-9a-f]+ <[^>]+> 20fb 0a78 	mttc0	k1,\$7,1
[0-9a-f]+ <[^>]+> 20fb 1278 	mttc0	k1,\$7,2
[0-9a-f]+ <[^>]+> 20fb 1a78 	mttc0	k1,\$7,3
[0-9a-f]+ <[^>]+> 20fb 2278 	mttc0	k1,\$7,4
[0-9a-f]+ <[^>]+> 20fb 2a78 	mttc0	k1,\$7,5
[0-9a-f]+ <[^>]+> 20fb 3278 	mttc0	k1,\$7,6
[0-9a-f]+ <[^>]+> 20fb 3a78 	mttc0	k1,\$7,7
[0-9a-f]+ <[^>]+> 211b 0278 	mttc0	k1,c0_badvaddr
[0-9a-f]+ <[^>]+> 211b 0a78 	mttc0	k1,\$8,1
[0-9a-f]+ <[^>]+> 211b 1278 	mttc0	k1,\$8,2
[0-9a-f]+ <[^>]+> 211b 1a78 	mttc0	k1,\$8,3
[0-9a-f]+ <[^>]+> 211b 2278 	mttc0	k1,\$8,4
[0-9a-f]+ <[^>]+> 211b 2a78 	mttc0	k1,\$8,5
[0-9a-f]+ <[^>]+> 211b 3278 	mttc0	k1,\$8,6
[0-9a-f]+ <[^>]+> 211b 3a78 	mttc0	k1,\$8,7
[0-9a-f]+ <[^>]+> 213b 0278 	mttc0	k1,c0_count
[0-9a-f]+ <[^>]+> 213b 0a78 	mttc0	k1,\$9,1
[0-9a-f]+ <[^>]+> 213b 1278 	mttc0	k1,\$9,2
[0-9a-f]+ <[^>]+> 213b 1a78 	mttc0	k1,\$9,3
[0-9a-f]+ <[^>]+> 213b 2278 	mttc0	k1,\$9,4
[0-9a-f]+ <[^>]+> 213b 2a78 	mttc0	k1,\$9,5
[0-9a-f]+ <[^>]+> 213b 3278 	mttc0	k1,\$9,6
[0-9a-f]+ <[^>]+> 213b 3a78 	mttc0	k1,\$9,7
[0-9a-f]+ <[^>]+> 215b 0278 	mttc0	k1,c0_entryhi
[0-9a-f]+ <[^>]+> 215b 0a78 	mttc0	k1,\$10,1
[0-9a-f]+ <[^>]+> 215b 1278 	mttc0	k1,\$10,2
[0-9a-f]+ <[^>]+> 215b 1a78 	mttc0	k1,\$10,3
[0-9a-f]+ <[^>]+> 215b 2278 	mttc0	k1,\$10,4
[0-9a-f]+ <[^>]+> 215b 2a78 	mttc0	k1,\$10,5
[0-9a-f]+ <[^>]+> 215b 3278 	mttc0	k1,\$10,6
[0-9a-f]+ <[^>]+> 215b 3a78 	mttc0	k1,\$10,7
[0-9a-f]+ <[^>]+> 217b 0278 	mttc0	k1,c0_compare
[0-9a-f]+ <[^>]+> 217b 0a78 	mttc0	k1,\$11,1
[0-9a-f]+ <[^>]+> 217b 1278 	mttc0	k1,\$11,2
[0-9a-f]+ <[^>]+> 217b 1a78 	mttc0	k1,\$11,3
[0-9a-f]+ <[^>]+> 217b 2278 	mttc0	k1,\$11,4
[0-9a-f]+ <[^>]+> 217b 2a78 	mttc0	k1,\$11,5
[0-9a-f]+ <[^>]+> 217b 3278 	mttc0	k1,\$11,6
[0-9a-f]+ <[^>]+> 217b 3a78 	mttc0	k1,\$11,7
[0-9a-f]+ <[^>]+> 219b 0278 	mttc0	k1,c0_status
[0-9a-f]+ <[^>]+> 219b 0a78 	mttc0	k1,\$12,1
[0-9a-f]+ <[^>]+> 219b 1278 	mttc0	k1,\$12,2
[0-9a-f]+ <[^>]+> 219b 1a78 	mttc0	k1,\$12,3
[0-9a-f]+ <[^>]+> 219b 2278 	mttc0	k1,\$12,4
[0-9a-f]+ <[^>]+> 219b 2a78 	mttc0	k1,\$12,5
[0-9a-f]+ <[^>]+> 219b 3278 	mttc0	k1,\$12,6
[0-9a-f]+ <[^>]+> 219b 3a78 	mttc0	k1,\$12,7
[0-9a-f]+ <[^>]+> 21bb 0278 	mttc0	k1,c0_cause
[0-9a-f]+ <[^>]+> 21bb 0a78 	mttc0	k1,\$13,1
[0-9a-f]+ <[^>]+> 21bb 1278 	mttc0	k1,\$13,2
[0-9a-f]+ <[^>]+> 21bb 1a78 	mttc0	k1,\$13,3
[0-9a-f]+ <[^>]+> 21bb 2278 	mttc0	k1,\$13,4
[0-9a-f]+ <[^>]+> 21bb 2a78 	mttc0	k1,\$13,5
[0-9a-f]+ <[^>]+> 21bb 3278 	mttc0	k1,\$13,6
[0-9a-f]+ <[^>]+> 21bb 3a78 	mttc0	k1,\$13,7
[0-9a-f]+ <[^>]+> 21db 0278 	mttc0	k1,c0_epc
[0-9a-f]+ <[^>]+> 21db 0a78 	mttc0	k1,\$14,1
[0-9a-f]+ <[^>]+> 21db 1278 	mttc0	k1,\$14,2
[0-9a-f]+ <[^>]+> 21db 1a78 	mttc0	k1,\$14,3
[0-9a-f]+ <[^>]+> 21db 2278 	mttc0	k1,\$14,4
[0-9a-f]+ <[^>]+> 21db 2a78 	mttc0	k1,\$14,5
[0-9a-f]+ <[^>]+> 21db 3278 	mttc0	k1,\$14,6
[0-9a-f]+ <[^>]+> 21db 3a78 	mttc0	k1,\$14,7
[0-9a-f]+ <[^>]+> 21fb 0278 	mttc0	k1,c0_prid
[0-9a-f]+ <[^>]+> 21fb 0a78 	mttc0	k1,\$15,1
[0-9a-f]+ <[^>]+> 21fb 1278 	mttc0	k1,\$15,2
[0-9a-f]+ <[^>]+> 21fb 1a78 	mttc0	k1,\$15,3
[0-9a-f]+ <[^>]+> 21fb 2278 	mttc0	k1,\$15,4
[0-9a-f]+ <[^>]+> 21fb 2a78 	mttc0	k1,\$15,5
[0-9a-f]+ <[^>]+> 21fb 3278 	mttc0	k1,\$15,6
[0-9a-f]+ <[^>]+> 21fb 3a78 	mttc0	k1,\$15,7
[0-9a-f]+ <[^>]+> 221b 0278 	mttc0	k1,c0_config
[0-9a-f]+ <[^>]+> 221b 0a78 	mttc0	k1,c0_config1
[0-9a-f]+ <[^>]+> 221b 1278 	mttc0	k1,c0_config2
[0-9a-f]+ <[^>]+> 221b 1a78 	mttc0	k1,c0_config3
[0-9a-f]+ <[^>]+> 221b 2278 	mttc0	k1,\$16,4
[0-9a-f]+ <[^>]+> 221b 2a78 	mttc0	k1,\$16,5
[0-9a-f]+ <[^>]+> 221b 3278 	mttc0	k1,\$16,6
[0-9a-f]+ <[^>]+> 221b 3a78 	mttc0	k1,\$16,7
[0-9a-f]+ <[^>]+> 223b 0278 	mttc0	k1,c0_lladdr
[0-9a-f]+ <[^>]+> 223b 0a78 	mttc0	k1,\$17,1
[0-9a-f]+ <[^>]+> 223b 1278 	mttc0	k1,\$17,2
[0-9a-f]+ <[^>]+> 223b 1a78 	mttc0	k1,\$17,3
[0-9a-f]+ <[^>]+> 223b 2278 	mttc0	k1,\$17,4
[0-9a-f]+ <[^>]+> 223b 2a78 	mttc0	k1,\$17,5
[0-9a-f]+ <[^>]+> 223b 3278 	mttc0	k1,\$17,6
[0-9a-f]+ <[^>]+> 223b 3a78 	mttc0	k1,\$17,7
[0-9a-f]+ <[^>]+> 225b 0278 	mttc0	k1,c0_watchlo
[0-9a-f]+ <[^>]+> 225b 0a78 	mttc0	k1,c0_watchlo,1
[0-9a-f]+ <[^>]+> 225b 1278 	mttc0	k1,c0_watchlo,2
[0-9a-f]+ <[^>]+> 225b 1a78 	mttc0	k1,c0_watchlo,3
[0-9a-f]+ <[^>]+> 225b 2278 	mttc0	k1,c0_watchlo,4
[0-9a-f]+ <[^>]+> 225b 2a78 	mttc0	k1,c0_watchlo,5
[0-9a-f]+ <[^>]+> 225b 3278 	mttc0	k1,c0_watchlo,6
[0-9a-f]+ <[^>]+> 225b 3a78 	mttc0	k1,c0_watchlo,7
[0-9a-f]+ <[^>]+> 227b 0278 	mttc0	k1,c0_watchhi
[0-9a-f]+ <[^>]+> 227b 0a78 	mttc0	k1,c0_watchhi,1
[0-9a-f]+ <[^>]+> 227b 1278 	mttc0	k1,c0_watchhi,2
[0-9a-f]+ <[^>]+> 227b 1a78 	mttc0	k1,c0_watchhi,3
[0-9a-f]+ <[^>]+> 227b 2278 	mttc0	k1,c0_watchhi,4
[0-9a-f]+ <[^>]+> 227b 2a78 	mttc0	k1,c0_watchhi,5
[0-9a-f]+ <[^>]+> 227b 3278 	mttc0	k1,c0_watchhi,6
[0-9a-f]+ <[^>]+> 227b 3a78 	mttc0	k1,c0_watchhi,7
[0-9a-f]+ <[^>]+> 229b 0278 	mttc0	k1,c0_xcontext
[0-9a-f]+ <[^>]+> 229b 0a78 	mttc0	k1,\$20,1
[0-9a-f]+ <[^>]+> 229b 1278 	mttc0	k1,\$20,2
[0-9a-f]+ <[^>]+> 229b 1a78 	mttc0	k1,\$20,3
[0-9a-f]+ <[^>]+> 229b 2278 	mttc0	k1,\$20,4
[0-9a-f]+ <[^>]+> 229b 2a78 	mttc0	k1,\$20,5
[0-9a-f]+ <[^>]+> 229b 3278 	mttc0	k1,\$20,6
[0-9a-f]+ <[^>]+> 229b 3a78 	mttc0	k1,\$20,7
[0-9a-f]+ <[^>]+> 22bb 0278 	mttc0	k1,\$21
[0-9a-f]+ <[^>]+> 22bb 0a78 	mttc0	k1,\$21,1
[0-9a-f]+ <[^>]+> 22bb 1278 	mttc0	k1,\$21,2
[0-9a-f]+ <[^>]+> 22bb 1a78 	mttc0	k1,\$21,3
[0-9a-f]+ <[^>]+> 22bb 2278 	mttc0	k1,\$21,4
[0-9a-f]+ <[^>]+> 22bb 2a78 	mttc0	k1,\$21,5
[0-9a-f]+ <[^>]+> 22bb 3278 	mttc0	k1,\$21,6
[0-9a-f]+ <[^>]+> 22bb 3a78 	mttc0	k1,\$21,7
[0-9a-f]+ <[^>]+> 22db 0278 	mttc0	k1,\$22
[0-9a-f]+ <[^>]+> 22db 0a78 	mttc0	k1,\$22,1
[0-9a-f]+ <[^>]+> 22db 1278 	mttc0	k1,\$22,2
[0-9a-f]+ <[^>]+> 22db 1a78 	mttc0	k1,\$22,3
[0-9a-f]+ <[^>]+> 22db 2278 	mttc0	k1,\$22,4
[0-9a-f]+ <[^>]+> 22db 2a78 	mttc0	k1,\$22,5
[0-9a-f]+ <[^>]+> 22db 3278 	mttc0	k1,\$22,6
[0-9a-f]+ <[^>]+> 22db 3a78 	mttc0	k1,\$22,7
[0-9a-f]+ <[^>]+> 22fb 0278 	mttc0	k1,c0_debug
[0-9a-f]+ <[^>]+> 22fb 0a78 	mttc0	k1,\$23,1
[0-9a-f]+ <[^>]+> 22fb 1278 	mttc0	k1,\$23,2
[0-9a-f]+ <[^>]+> 22fb 1a78 	mttc0	k1,\$23,3
[0-9a-f]+ <[^>]+> 22fb 2278 	mttc0	k1,\$23,4
[0-9a-f]+ <[^>]+> 22fb 2a78 	mttc0	k1,\$23,5
[0-9a-f]+ <[^>]+> 22fb 3278 	mttc0	k1,\$23,6
[0-9a-f]+ <[^>]+> 22fb 3a78 	mttc0	k1,\$23,7
[0-9a-f]+ <[^>]+> 231b 0278 	mttc0	k1,c0_depc
[0-9a-f]+ <[^>]+> 231b 0a78 	mttc0	k1,\$24,1
[0-9a-f]+ <[^>]+> 231b 1278 	mttc0	k1,\$24,2
[0-9a-f]+ <[^>]+> 231b 1a78 	mttc0	k1,\$24,3
[0-9a-f]+ <[^>]+> 231b 2278 	mttc0	k1,\$24,4
[0-9a-f]+ <[^>]+> 231b 2a78 	mttc0	k1,\$24,5
[0-9a-f]+ <[^>]+> 231b 3278 	mttc0	k1,\$24,6
[0-9a-f]+ <[^>]+> 231b 3a78 	mttc0	k1,\$24,7
[0-9a-f]+ <[^>]+> 233b 0278 	mttc0	k1,c0_perfcnt
[0-9a-f]+ <[^>]+> 233b 0a78 	mttc0	k1,c0_perfcnt,1
[0-9a-f]+ <[^>]+> 233b 1278 	mttc0	k1,c0_perfcnt,2
[0-9a-f]+ <[^>]+> 233b 1a78 	mttc0	k1,c0_perfcnt,3
[0-9a-f]+ <[^>]+> 233b 2278 	mttc0	k1,c0_perfcnt,4
[0-9a-f]+ <[^>]+> 233b 2a78 	mttc0	k1,c0_perfcnt,5
[0-9a-f]+ <[^>]+> 233b 3278 	mttc0	k1,c0_perfcnt,6
[0-9a-f]+ <[^>]+> 233b 3a78 	mttc0	k1,c0_perfcnt,7
[0-9a-f]+ <[^>]+> 235b 0278 	mttc0	k1,c0_errctl
[0-9a-f]+ <[^>]+> 235b 0a78 	mttc0	k1,\$26,1
[0-9a-f]+ <[^>]+> 235b 1278 	mttc0	k1,\$26,2
[0-9a-f]+ <[^>]+> 235b 1a78 	mttc0	k1,\$26,3
[0-9a-f]+ <[^>]+> 235b 2278 	mttc0	k1,\$26,4
[0-9a-f]+ <[^>]+> 235b 2a78 	mttc0	k1,\$26,5
[0-9a-f]+ <[^>]+> 235b 3278 	mttc0	k1,\$26,6
[0-9a-f]+ <[^>]+> 235b 3a78 	mttc0	k1,\$26,7
[0-9a-f]+ <[^>]+> 237b 0278 	mttc0	k1,c0_cacheerr
[0-9a-f]+ <[^>]+> 237b 0a78 	mttc0	k1,c0_cacheerr,1
[0-9a-f]+ <[^>]+> 237b 1278 	mttc0	k1,c0_cacheerr,2
[0-9a-f]+ <[^>]+> 237b 1a78 	mttc0	k1,c0_cacheerr,3
[0-9a-f]+ <[^>]+> 237b 2278 	mttc0	k1,\$27,4
[0-9a-f]+ <[^>]+> 237b 2a78 	mttc0	k1,\$27,5
[0-9a-f]+ <[^>]+> 237b 3278 	mttc0	k1,\$27,6
[0-9a-f]+ <[^>]+> 237b 3a78 	mttc0	k1,\$27,7
[0-9a-f]+ <[^>]+> 239b 0278 	mttc0	k1,c0_taglo
[0-9a-f]+ <[^>]+> 239b 0a78 	mttc0	k1,c0_datalo
[0-9a-f]+ <[^>]+> 239b 1278 	mttc0	k1,\$28,2
[0-9a-f]+ <[^>]+> 239b 1a78 	mttc0	k1,\$28,3
[0-9a-f]+ <[^>]+> 239b 2278 	mttc0	k1,\$28,4
[0-9a-f]+ <[^>]+> 239b 2a78 	mttc0	k1,\$28,5
[0-9a-f]+ <[^>]+> 239b 3278 	mttc0	k1,\$28,6
[0-9a-f]+ <[^>]+> 239b 3a78 	mttc0	k1,\$28,7
[0-9a-f]+ <[^>]+> 23bb 0278 	mttc0	k1,c0_taghi
[0-9a-f]+ <[^>]+> 23bb 0a78 	mttc0	k1,c0_datahi
[0-9a-f]+ <[^>]+> 23bb 1278 	mttc0	k1,\$29,2
[0-9a-f]+ <[^>]+> 23bb 1a78 	mttc0	k1,\$29,3
[0-9a-f]+ <[^>]+> 23bb 2278 	mttc0	k1,\$29,4
[0-9a-f]+ <[^>]+> 23bb 2a78 	mttc0	k1,\$29,5
[0-9a-f]+ <[^>]+> 23bb 3278 	mttc0	k1,\$29,6
[0-9a-f]+ <[^>]+> 23bb 3a78 	mttc0	k1,\$29,7
[0-9a-f]+ <[^>]+> 23db 0278 	mttc0	k1,c0_errorepc
[0-9a-f]+ <[^>]+> 23db 0a78 	mttc0	k1,\$30,1
[0-9a-f]+ <[^>]+> 23db 1278 	mttc0	k1,\$30,2
[0-9a-f]+ <[^>]+> 23db 1a78 	mttc0	k1,\$30,3
[0-9a-f]+ <[^>]+> 23db 2278 	mttc0	k1,\$30,4
[0-9a-f]+ <[^>]+> 23db 2a78 	mttc0	k1,\$30,5
[0-9a-f]+ <[^>]+> 23db 3278 	mttc0	k1,\$30,6
[0-9a-f]+ <[^>]+> 23db 3a78 	mttc0	k1,\$30,7
[0-9a-f]+ <[^>]+> 23fb 0278 	mttc0	k1,c0_desave
[0-9a-f]+ <[^>]+> 23fb 0a78 	mttc0	k1,\$31,1
[0-9a-f]+ <[^>]+> 23fb 1278 	mttc0	k1,\$31,2
[0-9a-f]+ <[^>]+> 23fb 1a78 	mttc0	k1,\$31,3
[0-9a-f]+ <[^>]+> 23fb 2278 	mttc0	k1,\$31,4
[0-9a-f]+ <[^>]+> 23fb 2a78 	mttc0	k1,\$31,5
[0-9a-f]+ <[^>]+> 23fb 3278 	mttc0	k1,\$31,6
[0-9a-f]+ <[^>]+> 23fb 3a78 	mttc0	k1,\$31,7
[0-9a-f]+ <[^>]+> 23bc 8278 	mttgpr	gp,sp
[0-9a-f]+ <[^>]+> 201d 8a78 	mttlo	sp
[0-9a-f]+ <[^>]+> 219e 8a78 	mttlo	s8,\$ac3
[0-9a-f]+ <[^>]+> 203f 8a78 	mtthi	ra
[0-9a-f]+ <[^>]+> 2020 8a78 	mtthi	zero
[0-9a-f]+ <[^>]+> 2041 8a78 	mttacx	at
[0-9a-f]+ <[^>]+> 20c2 8a78 	mttacx	v0,\$ac1
[0-9a-f]+ <[^>]+> 2203 8a78 	mttdsp	v1
[0-9a-f]+ <[^>]+> 20a4 9278 	mttc1	a0,\$f5
[0-9a-f]+ <[^>]+> 20c5 9278 	mttc1	a1,\$f6
[0-9a-f]+ <[^>]+> 2106 d278 	mtthc1	a2,\$f8
[0-9a-f]+ <[^>]+> 2147 d278 	mtthc1	a3,\$f10
[0-9a-f]+ <[^>]+> 2128 9a78 	cttc1	t0,\$9
[0-9a-f]+ <[^>]+> 2149 9a78 	cttc1	t1,\$10
[0-9a-f]+ <[^>]+> 216a a278 	mttc2	t2,\$11
[0-9a-f]+ <[^>]+> 218b e278 	mtthc2	t3,\$12
[0-9a-f]+ <[^>]+> 21ac aa78 	cttc2	t4,\$13
[0-9a-f]+ <[^>]+> 21ae 0238 	mftc0	t5,c0_epc
[0-9a-f]+ <[^>]+> 21ae 0a38 	mftc0	t5,\$14,1
[0-9a-f]+ <[^>]+> 21ae 1238 	mftc0	t5,\$14,2
[0-9a-f]+ <[^>]+> 21ae 1a38 	mftc0	t5,\$14,3
[0-9a-f]+ <[^>]+> 21ae 2238 	mftc0	t5,\$14,4
[0-9a-f]+ <[^>]+> 21ae 2a38 	mftc0	t5,\$14,5
[0-9a-f]+ <[^>]+> 21ae 3238 	mftc0	t5,\$14,6
[0-9a-f]+ <[^>]+> 21ae 3a38 	mftc0	t5,\$14,7
[0-9a-f]+ <[^>]+> 21ae 4238 	mftr	t5,t6,0,0,1
[0-9a-f]+ <[^>]+> 21ae 4a38 	mftr	t5,t6,0,1,1
[0-9a-f]+ <[^>]+> 21ae 5238 	mftr	t5,t6,0,2,1
[0-9a-f]+ <[^>]+> 21ae 5a38 	mftr	t5,t6,0,3,1
[0-9a-f]+ <[^>]+> 21ae 6238 	mftr	t5,t6,0,4,1
[0-9a-f]+ <[^>]+> 21ae 6a38 	mftr	t5,t6,0,5,1
[0-9a-f]+ <[^>]+> 21ae 7238 	mftr	t5,t6,0,6,1
[0-9a-f]+ <[^>]+> 21ae 7a38 	mftr	t5,t6,0,7,1
[0-9a-f]+ <[^>]+> 21ae 8238 	mftgpr	t5,t6
[0-9a-f]+ <[^>]+> 21ae 8a38 	mftacx	t5,\$ac3
[0-9a-f]+ <[^>]+> 21ae 9238 	mftc1	t5,\$f14
[0-9a-f]+ <[^>]+> 21ae 9a38 	cftc1	t5,\$14
[0-9a-f]+ <[^>]+> 21ae a238 	mftc2	t5,\$14
[0-9a-f]+ <[^>]+> 21ae aa38 	cftc2	t5,\$14
[0-9a-f]+ <[^>]+> 21ae b238 	mftr	t5,t6,1,6,0
[0-9a-f]+ <[^>]+> 21ae ba38 	mftr	t5,t6,1,7,0
[0-9a-f]+ <[^>]+> 21ae c238 	mftr	t5,t6,1,0,1
[0-9a-f]+ <[^>]+> 21ae ca38 	mftr	t5,t6,1,1,1
[0-9a-f]+ <[^>]+> 21ae d238 	mfthc1	t5,\$f14
[0-9a-f]+ <[^>]+> 21ae da38 	mftr	t5,t6,1,3,1
[0-9a-f]+ <[^>]+> 21ae e238 	mfthc2	t5,\$14
[0-9a-f]+ <[^>]+> 21ae ea38 	mftr	t5,t6,1,5,1
[0-9a-f]+ <[^>]+> 21ae f238 	mftr	t5,t6,1,6,1
[0-9a-f]+ <[^>]+> 21ae fa38 	mftr	t5,t6,1,7,1
[0-9a-f]+ <[^>]+> 21cd 0278 	mttc0	t5,c0_epc
[0-9a-f]+ <[^>]+> 21cd 0a78 	mttc0	t5,\$14,1
[0-9a-f]+ <[^>]+> 21cd 1278 	mttc0	t5,\$14,2
[0-9a-f]+ <[^>]+> 21cd 1a78 	mttc0	t5,\$14,3
[0-9a-f]+ <[^>]+> 21cd 2278 	mttc0	t5,\$14,4
[0-9a-f]+ <[^>]+> 21cd 2a78 	mttc0	t5,\$14,5
[0-9a-f]+ <[^>]+> 21cd 3278 	mttc0	t5,\$14,6
[0-9a-f]+ <[^>]+> 21cd 3a78 	mttc0	t5,\$14,7
[0-9a-f]+ <[^>]+> 21cd 4278 	mttr	t5,t6,0,0,1
[0-9a-f]+ <[^>]+> 21cd 4a78 	mttr	t5,t6,0,1,1
[0-9a-f]+ <[^>]+> 21cd 5278 	mttr	t5,t6,0,2,1
[0-9a-f]+ <[^>]+> 21cd 5a78 	mttr	t5,t6,0,3,1
[0-9a-f]+ <[^>]+> 21cd 6278 	mttr	t5,t6,0,4,1
[0-9a-f]+ <[^>]+> 21cd 6a78 	mttr	t5,t6,0,5,1
[0-9a-f]+ <[^>]+> 21cd 7278 	mttr	t5,t6,0,6,1
[0-9a-f]+ <[^>]+> 21cd 7a78 	mttr	t5,t6,0,7,1
[0-9a-f]+ <[^>]+> 21cd 8278 	mttgpr	t5,t6
[0-9a-f]+ <[^>]+> 21cd 8a78 	mttacx	t5,\$ac3
[0-9a-f]+ <[^>]+> 21cd 9278 	mttc1	t5,\$f14
[0-9a-f]+ <[^>]+> 21cd 9a78 	cttc1	t5,\$14
[0-9a-f]+ <[^>]+> 21cd a278 	mttc2	t5,\$14
[0-9a-f]+ <[^>]+> 21cd aa78 	cttc2	t5,\$14
[0-9a-f]+ <[^>]+> 21cd b278 	mttr	t5,t6,1,6,0
[0-9a-f]+ <[^>]+> 21cd ba78 	mttr	t5,t6,1,7,0
[0-9a-f]+ <[^>]+> 21cd c278 	mttr	t5,t6,1,0,1
[0-9a-f]+ <[^>]+> 21cd ca78 	mttr	t5,t6,1,1,1
[0-9a-f]+ <[^>]+> 21cd d278 	mtthc1	t5,\$f14
[0-9a-f]+ <[^>]+> 21cd da78 	mttr	t5,t6,1,3,1
[0-9a-f]+ <[^>]+> 21cd e278 	mtthc2	t5,\$14
[0-9a-f]+ <[^>]+> 21cd ea78 	mttr	t5,t6,1,5,1
[0-9a-f]+ <[^>]+> 21cd f278 	mttr	t5,t6,1,6,1
[0-9a-f]+ <[^>]+> 21cd fa78 	mttr	t5,t6,1,7,1
[0-9a-f]+ <[^>]+> 8000 c005 	pause
	\.\.\.
