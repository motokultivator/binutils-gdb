#objdump: -dr
#as: -mfix-24k -32
#name: 24K: Triple Store (Range Check >= 24)
#source: 24k-triple-stores-8.s

.*: +file format .*mips.*

Disassembly of section \.text:

[0-9a-f]+ <.*>:
 *[0-9a-f]+:	1a68 0000 	sb	s3,0\(t0\)
 *[0-9a-f]+:	1a68 0001 	sb	s3,1\(t0\)
 *[0-9a-f]+:	1a68 0018 	sb	s3,24\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0000 	sb	s3,0\(t0\)
 *[0-9a-f]+:	1a68 0001 	sb	s3,1\(t0\)
 *[0-9a-f]+:	1a68 0019 	sb	s3,25\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0001 	sb	s3,1\(t0\)
 *[0-9a-f]+:	1a68 0019 	sb	s3,25\(t0\)
 *[0-9a-f]+:	1a68 001a 	sb	s3,26\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0000 	sb	s3,0\(t0\)
 *[0-9a-f]+:	3a68 0003 	sh	s3,3\(t0\)
 *[0-9a-f]+:	1a68 001a 	sb	s3,26\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	3a68 0000 	sh	s3,0\(t0\)
 *[0-9a-f]+:	1a68 0003 	sb	s3,3\(t0\)
 *[0-9a-f]+:	1a68 001a 	sb	s3,26\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0023 	sb	s3,35\(t0\)
 *[0-9a-f]+:	3a68 0020 	sh	s3,32\(t0\)
 *[0-9a-f]+:	1a68 0009 	sb	s3,9\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0001 	sb	s3,1\(t0\)
 *[0-9a-f]+:	3a68 0019 	sh	s3,25\(t0\)
 *[0-9a-f]+:	1a68 001b 	sb	s3,27\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0000 	sb	s3,0\(t0\)
 *[0-9a-f]+:	fa68 0007 	sw	s3,7\(t0\)
 *[0-9a-f]+:	1a68 001c 	sb	s3,28\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0000 	sb	s3,0\(t0\)
 *[0-9a-f]+:	1a68 0007 	sb	s3,7\(t0\)
 *[0-9a-f]+:	fa68 001c 	sw	s3,28\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0040 	sb	s3,64\(t0\)
 *[0-9a-f]+:	fa68 003b 	sw	s3,59\(t0\)
 *[0-9a-f]+:	fa68 0025 	sw	s3,37\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	fa68 0040 	sw	s3,64\(t0\)
 *[0-9a-f]+:	1a68 003d 	sb	s3,61\(t0\)
 *[0-9a-f]+:	1a68 0027 	sb	s3,39\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0001 	sb	s3,1\(t0\)
 *[0-9a-f]+:	fa68 0019 	sw	s3,25\(t0\)
 *[0-9a-f]+:	1a68 001d 	sb	s3,29\(t0\)
 *[0-9a-f]+:	441b      	break
	\.\.\.
