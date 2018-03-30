#objdump: -dr -M gpr-names=numeric,cp0-names=32r6,no-aliases
#name: nanoMIPS CP0 select register with aliases disabled.
#source: cp0sel-names.s

# Check disassembly of cp0-names register names with aliases disabled.

.*: +file format .*nanomips.*

Disassembly of section \.text:

0+0000 <text_label>:
   0:	2000 0870 	mtc0	\$0,\$0,1
   4:	2000 1070 	mtc0	\$0,\$0,2
   8:	2000 1870 	mtc0	\$0,\$0,3
   c:	2000 2070 	mtc0	\$0,\$0,4
  10:	2000 2870 	mtc0	\$0,\$0,5
  14:	2000 3070 	mtc0	\$0,\$0,6
  18:	2000 3870 	mtc0	\$0,\$0,7
  1c:	2001 0870 	mtc0	\$0,\$1,1
  20:	2001 1070 	mtc0	\$0,\$1,2
  24:	2001 1870 	mtc0	\$0,\$1,3
  28:	2001 2070 	mtc0	\$0,\$1,4
  2c:	2001 2870 	mtc0	\$0,\$1,5
  30:	2001 3070 	mtc0	\$0,\$1,6
  34:	2001 3870 	mtc0	\$0,\$1,7
  38:	2002 0870 	mtc0	\$0,\$2,1
  3c:	2002 1070 	mtc0	\$0,\$2,2
  40:	2002 1870 	mtc0	\$0,\$2,3
  44:	2002 2070 	mtc0	\$0,\$2,4
  48:	2002 2870 	mtc0	\$0,\$2,5
  4c:	2002 3070 	mtc0	\$0,\$2,6
  50:	2002 3870 	mtc0	\$0,\$2,7
  54:	2003 0870 	mtc0	\$0,\$3,1
  58:	2003 1070 	mtc0	\$0,\$3,2
  5c:	2003 1870 	mtc0	\$0,\$3,3
  60:	2003 2070 	mtc0	\$0,\$3,4
  64:	2003 2870 	mtc0	\$0,\$3,5
  68:	2003 3070 	mtc0	\$0,\$3,6
  6c:	2003 3870 	mtc0	\$0,\$3,7
  70:	2004 0870 	mtc0	\$0,\$4,1
  74:	2004 1070 	mtc0	\$0,\$4,2
  78:	2004 1870 	mtc0	\$0,\$4,3
  7c:	2004 2070 	mtc0	\$0,\$4,4
  80:	2004 2870 	mtc0	\$0,\$4,5
  84:	2004 3070 	mtc0	\$0,\$4,6
  88:	2004 3870 	mtc0	\$0,\$4,7
  8c:	2005 0870 	mtc0	\$0,\$5,1
  90:	2005 1070 	mtc0	\$0,\$5,2
  94:	2005 1870 	mtc0	\$0,\$5,3
  98:	2005 2070 	mtc0	\$0,\$5,4
  9c:	2005 2870 	mtc0	\$0,\$5,5
  a0:	2005 3070 	mtc0	\$0,\$5,6
  a4:	2005 3870 	mtc0	\$0,\$5,7
  a8:	2006 0870 	mtc0	\$0,\$6,1
  ac:	2006 1070 	mtc0	\$0,\$6,2
  b0:	2006 1870 	mtc0	\$0,\$6,3
  b4:	2006 2070 	mtc0	\$0,\$6,4
  b8:	2006 2870 	mtc0	\$0,\$6,5
  bc:	2006 3070 	mtc0	\$0,\$6,6
  c0:	2006 3870 	mtc0	\$0,\$6,7
  c4:	2007 0870 	mtc0	\$0,\$7,1
  c8:	2007 1070 	mtc0	\$0,\$7,2
  cc:	2007 1870 	mtc0	\$0,\$7,3
  d0:	2007 2070 	mtc0	\$0,\$7,4
  d4:	2007 2870 	mtc0	\$0,\$7,5
  d8:	2007 3070 	mtc0	\$0,\$7,6
  dc:	2007 3870 	mtc0	\$0,\$7,7
  e0:	2008 0870 	mtc0	\$0,\$8,1
  e4:	2008 1070 	mtc0	\$0,\$8,2
  e8:	2008 1870 	mtc0	\$0,\$8,3
  ec:	2008 2070 	mtc0	\$0,\$8,4
  f0:	2008 2870 	mtc0	\$0,\$8,5
  f4:	2008 3070 	mtc0	\$0,\$8,6
  f8:	2008 3870 	mtc0	\$0,\$8,7
  fc:	2009 0870 	mtc0	\$0,\$9,1
 100:	2009 1070 	mtc0	\$0,\$9,2
 104:	2009 1870 	mtc0	\$0,\$9,3
 108:	2009 2070 	mtc0	\$0,\$9,4
 10c:	2009 2870 	mtc0	\$0,\$9,5
 110:	2009 3070 	mtc0	\$0,\$9,6
 114:	2009 3870 	mtc0	\$0,\$9,7
 118:	200a 0870 	mtc0	\$0,\$10,1
 11c:	200a 1070 	mtc0	\$0,\$10,2
 120:	200a 1870 	mtc0	\$0,\$10,3
 124:	200a 2070 	mtc0	\$0,\$10,4
 128:	200a 2870 	mtc0	\$0,\$10,5
 12c:	200a 3070 	mtc0	\$0,\$10,6
 130:	200a 3870 	mtc0	\$0,\$10,7
 134:	200b 0870 	mtc0	\$0,\$11,1
 138:	200b 1070 	mtc0	\$0,\$11,2
 13c:	200b 1870 	mtc0	\$0,\$11,3
 140:	200b 2070 	mtc0	\$0,\$11,4
 144:	200b 2870 	mtc0	\$0,\$11,5
 148:	200b 3070 	mtc0	\$0,\$11,6
 14c:	200b 3870 	mtc0	\$0,\$11,7
 150:	200c 0870 	mtc0	\$0,\$12,1
 154:	200c 1070 	mtc0	\$0,\$12,2
 158:	200c 1870 	mtc0	\$0,\$12,3
 15c:	200c 2070 	mtc0	\$0,\$12,4
 160:	200c 2870 	mtc0	\$0,\$12,5
 164:	200c 3070 	mtc0	\$0,\$12,6
 168:	200c 3870 	mtc0	\$0,\$12,7
 16c:	200d 0870 	mtc0	\$0,\$13,1
 170:	200d 1070 	mtc0	\$0,\$13,2
 174:	200d 1870 	mtc0	\$0,\$13,3
 178:	200d 2070 	mtc0	\$0,\$13,4
 17c:	200d 2870 	mtc0	\$0,\$13,5
 180:	200d 3070 	mtc0	\$0,\$13,6
 184:	200d 3870 	mtc0	\$0,\$13,7
 188:	200e 0870 	mtc0	\$0,\$14,1
 18c:	200e 1070 	mtc0	\$0,\$14,2
 190:	200e 1870 	mtc0	\$0,\$14,3
 194:	200e 2070 	mtc0	\$0,\$14,4
 198:	200e 2870 	mtc0	\$0,\$14,5
 19c:	200e 3070 	mtc0	\$0,\$14,6
 1a0:	200e 3870 	mtc0	\$0,\$14,7
 1a4:	200f 0870 	mtc0	\$0,\$15,1
 1a8:	200f 1070 	mtc0	\$0,\$15,2
 1ac:	200f 1870 	mtc0	\$0,\$15,3
 1b0:	200f 2070 	mtc0	\$0,\$15,4
 1b4:	200f 2870 	mtc0	\$0,\$15,5
 1b8:	200f 3070 	mtc0	\$0,\$15,6
 1bc:	200f 3870 	mtc0	\$0,\$15,7
 1c0:	2010 0870 	mtc0	\$0,\$16,1
 1c4:	2010 1070 	mtc0	\$0,\$16,2
 1c8:	2010 1870 	mtc0	\$0,\$16,3
 1cc:	2010 2070 	mtc0	\$0,\$16,4
 1d0:	2010 2870 	mtc0	\$0,\$16,5
 1d4:	2010 3070 	mtc0	\$0,\$16,6
 1d8:	2010 3870 	mtc0	\$0,\$16,7
 1dc:	2011 0870 	mtc0	\$0,\$17,1
 1e0:	2011 1070 	mtc0	\$0,\$17,2
 1e4:	2011 1870 	mtc0	\$0,\$17,3
 1e8:	2011 2070 	mtc0	\$0,\$17,4
 1ec:	2011 2870 	mtc0	\$0,\$17,5
 1f0:	2011 3070 	mtc0	\$0,\$17,6
 1f4:	2011 3870 	mtc0	\$0,\$17,7
 1f8:	2012 0870 	mtc0	\$0,\$18,1
 1fc:	2012 1070 	mtc0	\$0,\$18,2
 200:	2012 1870 	mtc0	\$0,\$18,3
 204:	2012 2070 	mtc0	\$0,\$18,4
 208:	2012 2870 	mtc0	\$0,\$18,5
 20c:	2012 3070 	mtc0	\$0,\$18,6
 210:	2012 3870 	mtc0	\$0,\$18,7
 214:	2013 0870 	mtc0	\$0,\$19,1
 218:	2013 1070 	mtc0	\$0,\$19,2
 21c:	2013 1870 	mtc0	\$0,\$19,3
 220:	2013 2070 	mtc0	\$0,\$19,4
 224:	2013 2870 	mtc0	\$0,\$19,5
 228:	2013 3070 	mtc0	\$0,\$19,6
 22c:	2013 3870 	mtc0	\$0,\$19,7
 230:	2014 0870 	mtc0	\$0,\$20,1
 234:	2014 1070 	mtc0	\$0,\$20,2
 238:	2014 1870 	mtc0	\$0,\$20,3
 23c:	2014 2070 	mtc0	\$0,\$20,4
 240:	2014 2870 	mtc0	\$0,\$20,5
 244:	2014 3070 	mtc0	\$0,\$20,6
 248:	2014 3870 	mtc0	\$0,\$20,7
 24c:	2015 0870 	mtc0	\$0,\$21,1
 250:	2015 1070 	mtc0	\$0,\$21,2
 254:	2015 1870 	mtc0	\$0,\$21,3
 258:	2015 2070 	mtc0	\$0,\$21,4
 25c:	2015 2870 	mtc0	\$0,\$21,5
 260:	2015 3070 	mtc0	\$0,\$21,6
 264:	2015 3870 	mtc0	\$0,\$21,7
 268:	2016 0870 	mtc0	\$0,\$22,1
 26c:	2016 1070 	mtc0	\$0,\$22,2
 270:	2016 1870 	mtc0	\$0,\$22,3
 274:	2016 2070 	mtc0	\$0,\$22,4
 278:	2016 2870 	mtc0	\$0,\$22,5
 27c:	2016 3070 	mtc0	\$0,\$22,6
 280:	2016 3870 	mtc0	\$0,\$22,7
 284:	2017 0870 	mtc0	\$0,\$23,1
 288:	2017 1070 	mtc0	\$0,\$23,2
 28c:	2017 1870 	mtc0	\$0,\$23,3
 290:	2017 2070 	mtc0	\$0,\$23,4
 294:	2017 2870 	mtc0	\$0,\$23,5
 298:	2017 3070 	mtc0	\$0,\$23,6
 29c:	2017 3870 	mtc0	\$0,\$23,7
 2a0:	2018 0870 	mtc0	\$0,\$24,1
 2a4:	2018 1070 	mtc0	\$0,\$24,2
 2a8:	2018 1870 	mtc0	\$0,\$24,3
 2ac:	2018 2070 	mtc0	\$0,\$24,4
 2b0:	2018 2870 	mtc0	\$0,\$24,5
 2b4:	2018 3070 	mtc0	\$0,\$24,6
 2b8:	2018 3870 	mtc0	\$0,\$24,7
 2bc:	2019 0870 	mtc0	\$0,\$25,1
 2c0:	2019 1070 	mtc0	\$0,\$25,2
 2c4:	2019 1870 	mtc0	\$0,\$25,3
 2c8:	2019 2070 	mtc0	\$0,\$25,4
 2cc:	2019 2870 	mtc0	\$0,\$25,5
 2d0:	2019 3070 	mtc0	\$0,\$25,6
 2d4:	2019 3870 	mtc0	\$0,\$25,7
 2d8:	201a 0870 	mtc0	\$0,\$26,1
 2dc:	201a 1070 	mtc0	\$0,\$26,2
 2e0:	201a 1870 	mtc0	\$0,\$26,3
 2e4:	201a 2070 	mtc0	\$0,\$26,4
 2e8:	201a 2870 	mtc0	\$0,\$26,5
 2ec:	201a 3070 	mtc0	\$0,\$26,6
 2f0:	201a 3870 	mtc0	\$0,\$26,7
 2f4:	201b 0870 	mtc0	\$0,\$27,1
 2f8:	201b 1070 	mtc0	\$0,\$27,2
 2fc:	201b 1870 	mtc0	\$0,\$27,3
 300:	201b 2070 	mtc0	\$0,\$27,4
 304:	201b 2870 	mtc0	\$0,\$27,5
 308:	201b 3070 	mtc0	\$0,\$27,6
 30c:	201b 3870 	mtc0	\$0,\$27,7
 310:	201c 0870 	mtc0	\$0,\$28,1
 314:	201c 1070 	mtc0	\$0,\$28,2
 318:	201c 1870 	mtc0	\$0,\$28,3
 31c:	201c 2070 	mtc0	\$0,\$28,4
 320:	201c 2870 	mtc0	\$0,\$28,5
 324:	201c 3070 	mtc0	\$0,\$28,6
 328:	201c 3870 	mtc0	\$0,\$28,7
 32c:	201d 0870 	mtc0	\$0,\$29,1
 330:	201d 1070 	mtc0	\$0,\$29,2
 334:	201d 1870 	mtc0	\$0,\$29,3
 338:	201d 2070 	mtc0	\$0,\$29,4
 33c:	201d 2870 	mtc0	\$0,\$29,5
 340:	201d 3070 	mtc0	\$0,\$29,6
 344:	201d 3870 	mtc0	\$0,\$29,7
 348:	201e 0870 	mtc0	\$0,\$30,1
 34c:	201e 1070 	mtc0	\$0,\$30,2
 350:	201e 1870 	mtc0	\$0,\$30,3
 354:	201e 2070 	mtc0	\$0,\$30,4
 358:	201e 2870 	mtc0	\$0,\$30,5
 35c:	201e 3070 	mtc0	\$0,\$30,6
 360:	201e 3870 	mtc0	\$0,\$30,7
 364:	201f 0870 	mtc0	\$0,\$31,1
 368:	201f 1070 	mtc0	\$0,\$31,2
 36c:	201f 1870 	mtc0	\$0,\$31,3
 370:	201f 2070 	mtc0	\$0,\$31,4
 374:	201f 2870 	mtc0	\$0,\$31,5
 378:	201f 3070 	mtc0	\$0,\$31,6
 37c:	201f 3870 	mtc0	\$0,\$31,7
#pass
