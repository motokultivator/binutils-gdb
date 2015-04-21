#objdump: -dr
#as: -mfix-24k -32
#name: 24K: Triple Store (Extended Range Check)
#source: 24k-triple-stores-7.s

.*: +file format .*mips.*

Disassembly of section \.text:

[0-9a-f]+ <.*>:
 *[0-9a-f]+:	1a68 0004 	sb	s3,4\(t0\)
 *[0-9a-f]+:	fa68 0008 	sw	s3,8\(t0\)
 *[0-9a-f]+:	1a68 000f 	sb	s3,15\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0003 	sb	s3,3\(t0\)
 *[0-9a-f]+:	fa68 0008 	sw	s3,8\(t0\)
 *[0-9a-f]+:	1a68 000f 	sb	s3,15\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	fa68 001c 	sw	s3,28\(t0\)
 *[0-9a-f]+:	fa68 0008 	sw	s3,8\(t0\)
 *[0-9a-f]+:	1a68 001f 	sb	s3,31\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0005 	sb	s3,5\(t0\)
 *[0-9a-f]+:	fa68 0009 	sw	s3,9\(t0\)
 *[0-9a-f]+:	1a68 0010 	sb	s3,16\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0004 	sb	s3,4\(t0\)
 *[0-9a-f]+:	fa68 0009 	sw	s3,9\(t0\)
 *[0-9a-f]+:	1a68 0010 	sb	s3,16\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0006 	sb	s3,6\(t0\)
 *[0-9a-f]+:	3a68 0008 	sh	s3,8\(t0\)
 *[0-9a-f]+:	1a68 000f 	sb	s3,15\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0005 	sb	s3,5\(t0\)
 *[0-9a-f]+:	3a68 0008 	sh	s3,8\(t0\)
 *[0-9a-f]+:	1a68 000f 	sb	s3,15\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	3a68 001e 	sh	s3,30\(t0\)
 *[0-9a-f]+:	3a68 0008 	sh	s3,8\(t0\)
 *[0-9a-f]+:	1a68 001f 	sb	s3,31\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0007 	sb	s3,7\(t0\)
 *[0-9a-f]+:	3a68 0009 	sh	s3,9\(t0\)
 *[0-9a-f]+:	1a68 0010 	sb	s3,16\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0006 	sb	s3,6\(t0\)
 *[0-9a-f]+:	3a68 0009 	sh	s3,9\(t0\)
 *[0-9a-f]+:	1a68 0010 	sb	s3,16\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0007 	sb	s3,7\(t0\)
 *[0-9a-f]+:	b808 0008 	sdc1	\$f0,8\(t0\)
 *[0-9a-f]+:	1a68 000f 	sb	s3,15\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0007 	sb	s3,7\(t0\)
 *[0-9a-f]+:	b808 0008 	sdc1	\$f0,8\(t0\)
 *[0-9a-f]+:	1a68 0010 	sb	s3,16\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0010 	sb	s3,16\(t0\)
 *[0-9a-f]+:	b808 0008 	sdc1	\$f0,8\(t0\)
 *[0-9a-f]+:	1a68 0017 	sb	s3,23\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0010 	sb	s3,16\(t0\)
 *[0-9a-f]+:	b808 0008 	sdc1	\$f0,8\(t0\)
 *[0-9a-f]+:	1a68 0018 	sb	s3,24\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 0008 	sb	s3,8\(t0\)
 *[0-9a-f]+:	b808 0009 	sdc1	\$f0,9\(t0\)
 *[0-9a-f]+:	1a68 0010 	sb	s3,16\(t0\)
 *[0-9a-f]+:	441b      	break
 *[0-9a-f]+:	1a68 fffd 	sb	s3,-3\(t0\)
 *[0-9a-f]+:	b808 fffe 	sdc1	\$f0,-2\(t0\)
 *[0-9a-f]+:	1a68 0006 	sb	s3,6\(t0\)
 *[0-9a-f]+:	441b      	break
	\.\.\.
