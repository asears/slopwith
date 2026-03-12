
.\artifacts\disasm\segments\code_candidate.bin:     file format binary


Disassembly of section .data:

00000000 <.data>:
       0:	26 8b 1e 02 00       	mov    %es:0x2,%bx
       5:	e8 15 00             	call   0x1d
       8:	2b d8                	sub    %ax,%bx
       a:	89 1e 14 00          	mov    %bx,0x14
       e:	c7 06 10 00 00 00    	movw   $0x0,0x10
      14:	c7 06 1a 00 02 00    	movw   $0x2,0x1a
      1a:	eb 4f                	jmp    0x6b
      1c:	90                   	nop
      1d:	b8 52 9c             	mov    $0x9c52,%ax
      20:	a8 0f                	test   $0xf,%al
      22:	74 05                	je     0x29
      24:	05 10 00             	add    $0x10,%ax
      27:	24 f0                	and    $0xf0,%al
      29:	d1 e8                	shr    %ax
      2b:	d1 e8                	shr    %ax
      2d:	d1 e8                	shr    %ax
      2f:	d1 e8                	shr    %ax
      31:	8c ce                	mov    %cs,%si
      33:	03 c6                	add    %si,%ax
      35:	8e d8                	mov    %ax,%ds
      37:	c3                   	ret
      38:	0a 0d                	or     (%di),%cl
      3a:	49                   	dec    %cx
      3b:	6e                   	outsb  %ds:(%si),(%dx)
      3c:	73 75                	jae    0xb3
      3e:	66 66 69 63 69 65 6e 	data32 imul $0x20746e65,0x69(%bp,%di),%esp
      45:	74 20 
      47:	6d                   	insw   (%dx),%es:(%di)
      48:	65 6d                	gs insw (%dx),%es:(%di)
      4a:	6f                   	outsw  %ds:(%si),(%dx)
      4b:	72 79                	jb     0xc6
      4d:	0a 0d                	or     (%di),%cl
      4f:	00 bb 38 01          	add    %bh,0x138(%bp,%di)
      53:	2e 8a 07             	mov    %cs:(%bx),%al
      56:	32 e4                	xor    %ah,%ah
      58:	50                   	push   %ax
      59:	e8 e0 03             	call   0x43c
      5c:	58                   	pop    %ax
      5d:	43                   	inc    %bx
      5e:	80 3f 00             	cmpb   $0x0,(%bx)
      61:	75 f0                	jne    0x53
      63:	b8 ff ff             	mov    $0xffff,%ax
      66:	50                   	push   %ax
      67:	ff 16 25 02          	call   *0x225
      6b:	db e3                	fninit
      6d:	fc                   	cld
      6e:	8c 0e 18 00          	mov    %cs,0x18
      72:	8c d8                	mov    %ds,%ax
      74:	03 06 14 00          	add    0x14,%ax
      78:	3b 06 a9 25          	cmp    0x25a9,%ax
      7c:	76 d2                	jbe    0x50
      7e:	2b 06 a9 25          	sub    0x25a9,%ax
      82:	8b 36 12 00          	mov    0x12,%si
      86:	d1 ee                	shr    %si
      88:	d1 ee                	shr    %si
      8a:	d1 ee                	shr    %si
      8c:	d1 ee                	shr    %si
      8e:	46                   	inc    %si
      8f:	8c df                	mov    %ds,%di
      91:	03 f7                	add    %di,%si
      93:	3b f0                	cmp    %ax,%si
      95:	73 b9                	jae    0x50
      97:	2b c6                	sub    %si,%ax
      99:	3b 06 a7 25          	cmp    0x25a7,%ax
      9d:	72 b1                	jb     0x50
      9f:	3b 06 a5 25          	cmp    0x25a5,%ax
      a3:	76 03                	jbe    0xa8
      a5:	a1 a5 25             	mov    0x25a5,%ax
      a8:	3d 00 10             	cmp    $0x1000,%ax
      ab:	76 03                	jbe    0xb0
      ad:	b8 00 10             	mov    $0x1000,%ax
      b0:	8b d8                	mov    %ax,%bx
      b2:	d1 e0                	shl    %ax
      b4:	d1 e0                	shl    %ax
      b6:	d1 e0                	shl    %ax
      b8:	d1 e0                	shl    %ax
      ba:	9c                   	pushf
      bb:	59                   	pop    %cx
      bc:	fa                   	cli
      bd:	8c df                	mov    %ds,%di
      bf:	8e d7                	mov    %di,%ss
      c1:	8b e0                	mov    %ax,%sp
      c3:	33 ed                	xor    %bp,%bp
      c5:	55                   	push   %bp
      c6:	8b ec                	mov    %sp,%bp
      c8:	51                   	push   %cx
      c9:	9d                   	popf
      ca:	83 3e 10 00 00       	cmpw   $0x0,0x10
      cf:	75 0e                	jne    0xdf
      d1:	0e                   	push   %cs
      d2:	07                   	pop    %es
      d3:	8c d8                	mov    %ds,%ax
      d5:	03 d8                	add    %ax,%bx
      d7:	8c c8                	mov    %cs,%ax
      d9:	2b d8                	sub    %ax,%bx
      db:	b4 4a                	mov    $0x4a,%ah
      dd:	cd 21                	int    $0x21
      df:	83 3e 10 00 00       	cmpw   $0x0,0x10
      e4:	74 07                	je     0xed
      e6:	b8 00 0d             	mov    $0xd00,%ax
      e9:	50                   	push   %ax
      ea:	eb 1b                	jmp    0x107
      ec:	90                   	nop
      ed:	8c db                	mov    %ds,%bx
      ef:	0e                   	push   %cs
      f0:	1f                   	pop    %ds
      f1:	16                   	push   %ss
      f2:	07                   	pop    %es
      f3:	be 80 00             	mov    $0x80,%si
      f6:	8a 0c                	mov    (%si),%cl
      f8:	80 c1 03             	add    $0x3,%cl
      fb:	81 e1 fe 00          	and    $0xfe,%cx
      ff:	2b e1                	sub    %cx,%sp
     101:	8b fc                	mov    %sp,%di
     103:	f3 a4                	rep movsb %ds:(%si),%es:(%di)
     105:	8e db                	mov    %bx,%ds
     107:	8b c4                	mov    %sp,%ax
     109:	50                   	push   %ax
     10a:	8c d8                	mov    %ds,%ax
     10c:	8e c0                	mov    %ax,%es
     10e:	bf ad 25             	mov    $0x25ad,%di
     111:	b9 6d 62             	mov    $0x626d,%cx
     114:	2b cf                	sub    %di,%cx
     116:	33 c0                	xor    %ax,%ax
     118:	f3 aa                	rep stos %al,%es:(%di)
     11a:	a1 12 00             	mov    0x12,%ax
     11d:	a3 2c 46             	mov    %ax,0x462c
     120:	e8 87 04             	call   0x5aa
     123:	50                   	push   %ax
     124:	50                   	push   %ax
     125:	83 3e 10 00 00       	cmpw   $0x0,0x10
     12a:	75 03                	jne    0x12f
     12c:	e8 01 96             	call   0x9730
     12f:	83 3e 10 00 02       	cmpw   $0x2,0x10
     134:	75 02                	jne    0x138
     136:	cd 18                	int    $0x18
     138:	fa                   	cli
     139:	8e 16 1c 00          	mov    0x1c,%ss
     13d:	8b 26 1e 00          	mov    0x1e,%sp
     141:	fb                   	sti
     142:	8c d8                	mov    %ds,%ax
     144:	8c cb                	mov    %cs,%bx
     146:	3b c3                	cmp    %bx,%ax
     148:	74 0b                	je     0x155
     14a:	3d 00 00             	cmp    $0x0,%ax
     14d:	74 06                	je     0x155
     14f:	8e c0                	mov    %ax,%es
     151:	b4 49                	mov    $0x49,%ah
     153:	cd 21                	int    $0x21
     155:	07                   	pop    %es
     156:	1f                   	pop    %ds
     157:	5d                   	pop    %bp
     158:	5f                   	pop    %di
     159:	5e                   	pop    %si
     15a:	5a                   	pop    %dx
     15b:	59                   	pop    %cx
     15c:	5b                   	pop    %bx
     15d:	58                   	pop    %ax
     15e:	cb                   	lret
     15f:	55                   	push   %bp
     160:	8b ec                	mov    %sp,%bp
     162:	83 ec 08             	sub    $0x8,%sp
     165:	ff 76 06             	push   0x6(%bp)
     168:	ff 76 04             	push   0x4(%bp)
     16b:	e8 14 2d             	call   0x2e82
     16e:	83 c4 04             	add    $0x4,%sp
     171:	8d 06 3a 4b          	lea    0x4b3a,%ax
     175:	50                   	push   %ax
     176:	e8 9f 99             	call   0x9b18
     179:	83 c4 02             	add    $0x2,%sp
     17c:	b8 01 00             	mov    $0x1,%ax
     17f:	0b c0                	or     %ax,%ax
     181:	74 74                	je     0x1f7
     183:	81 3e e5 25 02 00    	cmpw   $0x2,0x25e5
     189:	7d 02                	jge    0x18d
     18b:	eb f6                	jmp    0x183
     18d:	b8 00 00             	mov    $0x0,%ax
     190:	89 06 e5 25          	mov    %ax,0x25e5
     194:	e8 7e 0a             	call   0xc15
     197:	e8 c7 01             	call   0x361
     19a:	e8 16 05             	call   0x6b3
     19d:	e8 c1 01             	call   0x361
     1a0:	e8 32 49             	call   0x4ad5
     1a3:	e8 bb 01             	call   0x361
     1a6:	e8 9c 54             	call   0x5645
     1a9:	8b 06 cf 07          	mov    0x7cf,%ax
     1ad:	0b c0                	or     %ax,%ax
     1af:	74 3d                	je     0x1ee
     1b1:	b8 00 00             	mov    $0x0,%ax
     1b4:	89 06 cf 07          	mov    %ax,0x7cf
     1b8:	ff 36 1a 46          	push   0x461a
     1bc:	e8 16 2c             	call   0x2dd5
     1bf:	83 c4 02             	add    $0x2,%sp
     1c2:	e8 7e 54             	call   0x5643
     1c5:	e8 d9 02             	call   0x4a1
     1c8:	8d 76 f8             	lea    -0x8(%bp),%si
     1cb:	56                   	push   %si
     1cc:	e8 72 99             	call   0x9b41
     1cf:	83 c4 02             	add    $0x2,%sp
     1d2:	e8 70 54             	call   0x5645
     1d5:	ff 76 fc             	push   -0x4(%bp)
     1d8:	ff 76 f8             	push   -0x8(%bp)
     1db:	8d 06 1a 03          	lea    0x31a,%ax
     1df:	50                   	push   %ax
     1e0:	b8 09 00             	mov    $0x9,%ax
     1e3:	50                   	push   %ax
     1e4:	e8 6b 2a             	call   0x2c52
     1e7:	83 c4 08             	add    $0x8,%sp
     1ea:	89 06 1a 46          	mov    %ax,0x461a
     1ee:	e8 52 54             	call   0x5643
     1f1:	e8 39 22             	call   0x242d
     1f4:	e9 85 ff             	jmp    0x17c
     1f7:	8b e5                	mov    %bp,%sp
     1f9:	5d                   	pop    %bp
     1fa:	c3                   	ret
     1fb:	1e                   	push   %ds
     1fc:	53                   	push   %bx
     1fd:	55                   	push   %bp
     1fe:	8b ec                	mov    %sp,%bp
     200:	8b 5e 06             	mov    0x6(%bp),%bx
     203:	8e db                	mov    %bx,%ds
     205:	8b 5e 0e             	mov    0xe(%bp),%bx
     208:	89 1e 30 4b          	mov    %bx,0x4b30
     20c:	8b 5e 10             	mov    0x10(%bp),%bx
     20f:	89 1e 32 4b          	mov    %bx,0x4b32
     213:	5d                   	pop    %bp
     214:	5b                   	pop    %bx
     215:	1f                   	pop    %ds
     216:	83 c4 08             	add    $0x8,%sp
     219:	cf                   	iret
     21a:	fb                   	sti
     21b:	55                   	push   %bp
     21c:	1e                   	push   %ds
     21d:	8b ec                	mov    %sp,%bp
     21f:	8b 6e 04             	mov    0x4(%bp),%bp
     222:	8e dd                	mov    %bp,%ds
     224:	c6 06 12 08 01       	movb   $0x1,0x812
     229:	83 3e 16 46 00       	cmpw   $0x0,0x4616
     22e:	75 06                	jne    0x236
     230:	1f                   	pop    %ds
     231:	5d                   	pop    %bp
     232:	83 c4 02             	add    $0x2,%sp
     235:	cf                   	iret
     236:	50                   	push   %ax
     237:	53                   	push   %bx
     238:	51                   	push   %cx
     239:	06                   	push   %es
     23a:	56                   	push   %si
     23b:	57                   	push   %di
     23c:	8e c5                	mov    %bp,%es
     23e:	83 3e 10 00 00       	cmpw   $0x0,0x10
     243:	74 05                	je     0x24a
     245:	8a d8                	mov    %al,%bl
     247:	eb 11                	jmp    0x25a
     249:	90                   	nop
     24a:	e4 60                	in     $0x60,%al
     24c:	8a d8                	mov    %al,%bl
     24e:	e4 61                	in     $0x61,%al
     250:	8a e0                	mov    %al,%ah
     252:	0c 80                	or     $0x80,%al
     254:	e6 61                	out    %al,$0x61
     256:	8a c4                	mov    %ah,%al
     258:	e6 61                	out    %al,$0x61
     25a:	80 fb 37             	cmp    $0x37,%bl
     25d:	75 05                	jne    0x264
     25f:	cd 05                	int    $0x5
     261:	eb 48                	jmp    0x2ab
     263:	90                   	nop
     264:	80 fb 46             	cmp    $0x46,%bl
     267:	75 02                	jne    0x26b
     269:	cd 1b                	int    $0x1b
     26b:	b9 0a 00             	mov    $0xa,%cx
     26e:	8a c3                	mov    %bl,%al
     270:	24 7f                	and    $0x7f,%al
     272:	8d 3e 13 08          	lea    0x813,%di
     276:	8b f7                	mov    %di,%si
     278:	fc                   	cld
     279:	f2 ae                	repnz scas %es:(%di),%al
     27b:	75 2e                	jne    0x2ab
     27d:	4f                   	dec    %di
     27e:	2b fe                	sub    %si,%di
     280:	d1 e7                	shl    %di
     282:	8d 36 1d 08          	lea    0x81d,%si
     286:	03 f7                	add    %di,%si
     288:	8b 04                	mov    (%si),%ax
     28a:	fa                   	cli
     28b:	f6 c3 80             	test   $0x80,%bl
     28e:	74 13                	je     0x2a3
     290:	85 06 06 08          	test   %ax,0x806
     294:	f7 d0                	not    %ax
     296:	74 04                	je     0x29c
     298:	21 06 0a 08          	and    %ax,0x80a
     29c:	21 06 08 08          	and    %ax,0x808
     2a0:	eb 09                	jmp    0x2ab
     2a2:	90                   	nop
     2a3:	09 06 08 08          	or     %ax,0x808
     2a7:	09 06 0a 08          	or     %ax,0x80a
     2ab:	83 3e 10 00 00       	cmpw   $0x0,0x10
     2b0:	75 05                	jne    0x2b7
     2b2:	fa                   	cli
     2b3:	b0 20                	mov    $0x20,%al
     2b5:	e6 20                	out    %al,$0x20
     2b7:	5f                   	pop    %di
     2b8:	5e                   	pop    %si
     2b9:	07                   	pop    %es
     2ba:	59                   	pop    %cx
     2bb:	5b                   	pop    %bx
     2bc:	58                   	pop    %ax
     2bd:	1f                   	pop    %ds
     2be:	5d                   	pop    %bp
     2bf:	83 c4 08             	add    $0x8,%sp
     2c2:	cf                   	iret
     2c3:	83 3e 18 46 00       	cmpw   $0x0,0x4618
     2c8:	75 07                	jne    0x2d1
     2ca:	e8 86 00             	call   0x353
     2cd:	e8 bd 81             	call   0x848d
     2d0:	c3                   	ret
     2d1:	83 3e 16 46 00       	cmpw   $0x0,0x4616
     2d6:	74 13                	je     0x2eb
     2d8:	fa                   	cli
     2d9:	ff 36 0a 08          	push   0x80a
     2dd:	a1 08 08             	mov    0x808,%ax
     2e0:	a3 0a 08             	mov    %ax,0x80a
     2e3:	58                   	pop    %ax
     2e4:	a3 06 08             	mov    %ax,0x806
     2e7:	fb                   	sti
     2e8:	eb 32                	jmp    0x31c
     2ea:	90                   	nop
     2eb:	51                   	push   %cx
     2ec:	57                   	push   %di
     2ed:	56                   	push   %si
     2ee:	e8 62 00             	call   0x353
     2f1:	3d 00 00             	cmp    $0x0,%ax
     2f4:	74 14                	je     0x30a
     2f6:	8d 3e 31 08          	lea    0x831,%di
     2fa:	e8 3c 00             	call   0x339
     2fd:	74 0b                	je     0x30a
     2ff:	8d 3e 3b 08          	lea    0x83b,%di
     303:	e8 33 00             	call   0x339
     306:	74 02                	je     0x30a
     308:	33 c0                	xor    %ax,%ax
     30a:	50                   	push   %ax
     30b:	e8 39 32             	call   0x3547
     30e:	3d 00 00             	cmp    $0x0,%ax
     311:	74 03                	je     0x316
     313:	b8 00 08             	mov    $0x800,%ax
     316:	5e                   	pop    %si
     317:	0b c6                	or     %si,%ax
     319:	5e                   	pop    %si
     31a:	5f                   	pop    %di
     31b:	59                   	pop    %cx
     31c:	83 3e 14 46 00       	cmpw   $0x0,0x4614
     321:	74 12                	je     0x335
     323:	50                   	push   %ax
     324:	a1 10 08             	mov    0x810,%ax
     327:	a3 0c 08             	mov    %ax,0x80c
     32a:	a1 0e 08             	mov    0x80e,%ax
     32d:	a3 10 08             	mov    %ax,0x810
     330:	58                   	pop    %ax
     331:	0b 06 0c 08          	or     0x80c,%ax
     335:	e8 55 81             	call   0x848d
     338:	c3                   	ret
     339:	b9 0a 00             	mov    $0xa,%cx
     33c:	8b f7                	mov    %di,%si
     33e:	fc                   	cld
     33f:	f2 ae                	repnz scas %es:(%di),%al
     341:	75 0f                	jne    0x352
     343:	4f                   	dec    %di
     344:	2b fe                	sub    %si,%di
     346:	d1 e7                	shl    %di
     348:	8d 36 1d 08          	lea    0x81d,%si
     34c:	03 f7                	add    %di,%si
     34e:	8b 04                	mov    (%si),%ax
     350:	33 f6                	xor    %si,%si
     352:	c3                   	ret
     353:	b4 01                	mov    $0x1,%ah
     355:	cd 16                	int    $0x16
     357:	75 03                	jne    0x35c
     359:	33 c0                	xor    %ax,%ax
     35b:	c3                   	ret
     35c:	b4 00                	mov    $0x0,%ah
     35e:	cd 16                	int    $0x16
     360:	c3                   	ret
     361:	83 3e 14 46 00       	cmpw   $0x0,0x4614
     366:	74 6a                	je     0x3d2
     368:	53                   	push   %bx
     369:	52                   	push   %dx
     36a:	b8 00 00             	mov    $0x0,%ax
     36d:	e8 63 00             	call   0x3d3
     370:	8b d0                	mov    %ax,%dx
     372:	b8 01 00             	mov    $0x1,%ax
     375:	e8 5b 00             	call   0x3d3
     378:	8d 1e 4d 08          	lea    0x84d,%bx
     37c:	3d 80 02             	cmp    $0x280,%ax
     37f:	7f 06                	jg     0x387
     381:	83 eb 06             	sub    $0x6,%bx
     384:	eb 09                	jmp    0x38f
     386:	90                   	nop
     387:	3d 80 07             	cmp    $0x780,%ax
     38a:	7c 03                	jl     0x38f
     38c:	83 c3 06             	add    $0x6,%bx
     38f:	81 fa 80 02          	cmp    $0x280,%dx
     393:	7f 06                	jg     0x39b
     395:	83 eb 02             	sub    $0x2,%bx
     398:	eb 0a                	jmp    0x3a4
     39a:	90                   	nop
     39b:	81 fa 80 07          	cmp    $0x780,%dx
     39f:	7c 03                	jl     0x3a4
     3a1:	83 c3 02             	add    $0x2,%bx
     3a4:	8b 1f                	mov    (%bx),%bx
     3a6:	ba 01 02             	mov    $0x201,%dx
     3a9:	ec                   	in     (%dx),%al
     3aa:	a8 10                	test   $0x10,%al
     3ac:	75 04                	jne    0x3b2
     3ae:	81 cb 20 00          	or     $0x20,%bx
     3b2:	a8 20                	test   $0x20,%al
     3b4:	75 04                	jne    0x3ba
     3b6:	81 cb 00 01          	or     $0x100,%bx
     3ba:	89 1e 0e 08          	mov    %bx,0x80e
     3be:	09 1e 10 08          	or     %bx,0x810
     3c2:	8b c3                	mov    %bx,%ax
     3c4:	f7 d0                	not    %ax
     3c6:	23 06 0c 08          	and    0x80c,%ax
     3ca:	f7 d0                	not    %ax
     3cc:	21 06 10 08          	and    %ax,0x810
     3d0:	5a                   	pop    %dx
     3d1:	5b                   	pop    %bx
     3d2:	c3                   	ret
     3d3:	53                   	push   %bx
     3d4:	51                   	push   %cx
     3d5:	52                   	push   %dx
     3d6:	fa                   	cli
     3d7:	8b c8                	mov    %ax,%cx
     3d9:	b5 01                	mov    $0x1,%ch
     3db:	d2 e5                	shl    %cl,%ch
     3dd:	ba 01 02             	mov    $0x201,%dx
     3e0:	ec                   	in     (%dx),%al
     3e1:	84 c5                	test   %al,%ch
     3e3:	74 06                	je     0x3eb
     3e5:	b8 00 0a             	mov    $0xa00,%ax
     3e8:	eb 35                	jmp    0x41f
     3ea:	90                   	nop
     3eb:	c6 06 12 08 00       	movb   $0x0,0x812
     3f0:	b0 00                	mov    $0x0,%al
     3f2:	e6 43                	out    %al,$0x43
     3f4:	e4 40                	in     $0x40,%al
     3f6:	8a d8                	mov    %al,%bl
     3f8:	e4 40                	in     $0x40,%al
     3fa:	8a f8                	mov    %al,%bh
     3fc:	ee                   	out    %al,(%dx)
     3fd:	ec                   	in     (%dx),%al
     3fe:	84 c5                	test   %al,%ch
     400:	75 fb                	jne    0x3fd
     402:	b0 00                	mov    $0x0,%al
     404:	e6 43                	out    %al,$0x43
     406:	e4 40                	in     $0x40,%al
     408:	8a e0                	mov    %al,%ah
     40a:	e4 40                	in     $0x40,%al
     40c:	86 c4                	xchg   %al,%ah
     40e:	80 3e 12 08 00       	cmpb   $0x0,0x812
     413:	74 06                	je     0x41b
     415:	b8 80 02             	mov    $0x280,%ax
     418:	eb 05                	jmp    0x41f
     41a:	90                   	nop
     41b:	2b d8                	sub    %ax,%bx
     41d:	8b c3                	mov    %bx,%ax
     41f:	fb                   	sti
     420:	5a                   	pop    %dx
     421:	59                   	pop    %cx
     422:	5b                   	pop    %bx
     423:	c3                   	ret
     424:	a1 18 46             	mov    0x4618,%ax
     427:	23 06 16 46          	and    0x4616,%ax
     42b:	75 06                	jne    0x433
     42d:	b4 01                	mov    $0x1,%ah
     42f:	cd 16                	int    $0x16
     431:	75 03                	jne    0x436
     433:	33 c0                	xor    %ax,%ax
     435:	c3                   	ret
     436:	b4 00                	mov    $0x0,%ah
     438:	cd 16                	int    $0x16
     43a:	eb f1                	jmp    0x42d
     43c:	55                   	push   %bp
     43d:	8b ec                	mov    %sp,%bp
     43f:	50                   	push   %ax
     440:	53                   	push   %bx
     441:	57                   	push   %di
     442:	56                   	push   %si
     443:	8a 46 04             	mov    0x4(%bp),%al
     446:	8a 1e 05 08          	mov    0x805,%bl
     44a:	32 ff                	xor    %bh,%bh
     44c:	b4 0e                	mov    $0xe,%ah
     44e:	cd 10                	int    $0x10
     450:	5e                   	pop    %si
     451:	5f                   	pop    %di
     452:	5b                   	pop    %bx
     453:	58                   	pop    %ax
     454:	5d                   	pop    %bp
     455:	c3                   	ret
     456:	55                   	push   %bp
     457:	8b ec                	mov    %sp,%bp
     459:	50                   	push   %ax
     45a:	53                   	push   %bx
     45b:	52                   	push   %dx
     45c:	57                   	push   %di
     45d:	56                   	push   %si
     45e:	8a 76 06             	mov    0x6(%bp),%dh
     461:	8a 56 04             	mov    0x4(%bp),%dl
     464:	32 ff                	xor    %bh,%bh
     466:	b4 02                	mov    $0x2,%ah
     468:	cd 10                	int    $0x10
     46a:	5e                   	pop    %si
     46b:	5f                   	pop    %di
     46c:	5a                   	pop    %dx
     46d:	5b                   	pop    %bx
     46e:	58                   	pop    %ax
     46f:	5d                   	pop    %bp
     470:	c3                   	ret
     471:	55                   	push   %bp
     472:	8b ec                	mov    %sp,%bp
     474:	8a 46 04             	mov    0x4(%bp),%al
     477:	a2 05 08             	mov    %al,0x805
     47a:	5d                   	pop    %bp
     47b:	c3                   	ret
     47c:	1e                   	push   %ds
     47d:	55                   	push   %bp
     47e:	53                   	push   %bx
     47f:	8b ec                	mov    %sp,%bp
     481:	8b 5e 06             	mov    0x6(%bp),%bx
     484:	8e db                	mov    %bx,%ds
     486:	c7 06 cf 07 01 00    	movw   $0x1,0x7cf
     48c:	8b 5e 08             	mov    0x8(%bp),%bx
     48f:	89 1e 57 08          	mov    %bx,0x857
     493:	8b 5e 0a             	mov    0xa(%bp),%bx
     496:	89 1e 59 08          	mov    %bx,0x859
     49a:	5b                   	pop    %bx
     49b:	5d                   	pop    %bp
     49c:	1f                   	pop    %ds
     49d:	83 c4 08             	add    $0x8,%sp
     4a0:	cf                   	iret
     4a1:	9c                   	pushf
     4a2:	ff 1e 57 08          	lcall  *0x857
     4a6:	c3                   	ret
     4a7:	1e                   	push   %ds
     4a8:	06                   	push   %es
     4a9:	50                   	push   %ax
     4aa:	53                   	push   %bx
     4ab:	51                   	push   %cx
     4ac:	52                   	push   %dx
     4ad:	56                   	push   %si
     4ae:	57                   	push   %di
     4af:	55                   	push   %bp
     4b0:	8b ec                	mov    %sp,%bp
     4b2:	8b 5e 12             	mov    0x12(%bp),%bx
     4b5:	8e db                	mov    %bx,%ds
     4b7:	8e c3                	mov    %bx,%es
     4b9:	e8 69 51             	call   0x5625
     4bc:	5d                   	pop    %bp
     4bd:	5f                   	pop    %di
     4be:	5e                   	pop    %si
     4bf:	5a                   	pop    %dx
     4c0:	59                   	pop    %cx
     4c1:	5b                   	pop    %bx
     4c2:	58                   	pop    %ax
     4c3:	07                   	pop    %es
     4c4:	1f                   	pop    %ds
     4c5:	83 c4 02             	add    $0x2,%sp
     4c8:	cf                   	iret
     4c9:	55                   	push   %bp
     4ca:	8b ec                	mov    %sp,%bp
     4cc:	06                   	push   %es
     4cd:	8b 46 06             	mov    0x6(%bp),%ax
     4d0:	8e c0                	mov    %ax,%es
     4d2:	fc                   	cld
     4d3:	8b 7e 04             	mov    0x4(%bp),%di
     4d6:	8b 4e 08             	mov    0x8(%bp),%cx
     4d9:	8a 46 0a             	mov    0xa(%bp),%al
     4dc:	f3 aa                	rep stos %al,%es:(%di)
     4de:	07                   	pop    %es
     4df:	5d                   	pop    %bp
     4e0:	c3                   	ret
     4e1:	55                   	push   %bp
     4e2:	8b ec                	mov    %sp,%bp
     4e4:	50                   	push   %ax
     4e5:	53                   	push   %bx
     4e6:	51                   	push   %cx
     4e7:	52                   	push   %dx
     4e8:	56                   	push   %si
     4e9:	57                   	push   %di
     4ea:	8b 7e 04             	mov    0x4(%bp),%di
     4ed:	8b 45 02             	mov    0x2(%di),%ax
     4f0:	8b 75 2c             	mov    0x2c(%di),%si
     4f3:	8b 4d 06             	mov    0x6(%di),%cx
     4f6:	8b 55 30             	mov    0x30(%di),%dx
     4f9:	e8 2d 00             	call   0x529
     4fc:	89 45 02             	mov    %ax,0x2(%di)
     4ff:	89 75 2c             	mov    %si,0x2c(%di)
     502:	8b 5e 06             	mov    0x6(%bp),%bx
     505:	89 07                	mov    %ax,(%bx)
     507:	8b 45 04             	mov    0x4(%di),%ax
     50a:	8b 75 2e             	mov    0x2e(%di),%si
     50d:	8b 4d 08             	mov    0x8(%di),%cx
     510:	8b 55 32             	mov    0x32(%di),%dx
     513:	e8 13 00             	call   0x529
     516:	89 45 04             	mov    %ax,0x4(%di)
     519:	89 75 2e             	mov    %si,0x2e(%di)
     51c:	8b 5e 08             	mov    0x8(%bp),%bx
     51f:	89 07                	mov    %ax,(%bx)
     521:	5f                   	pop    %di
     522:	5e                   	pop    %si
     523:	5a                   	pop    %dx
     524:	59                   	pop    %cx
     525:	5b                   	pop    %bx
     526:	58                   	pop    %ax
     527:	5d                   	pop    %bp
     528:	c3                   	ret
     529:	03 f2                	add    %dx,%si
     52b:	13 c1                	adc    %cx,%ax
     52d:	c3                   	ret
     52e:	55                   	push   %bp
     52f:	8b ec                	mov    %sp,%bp
     531:	53                   	push   %bx
     532:	51                   	push   %cx
     533:	8b 5e 04             	mov    0x4(%bp),%bx
     536:	8b 4e 06             	mov    0x6(%bp),%cx
     539:	8a c5                	mov    %ch,%al
     53b:	98                   	cbtw
     53c:	89 47 06             	mov    %ax,0x6(%bx)
     53f:	8a e1                	mov    %cl,%ah
     541:	32 c0                	xor    %al,%al
     543:	89 47 30             	mov    %ax,0x30(%bx)
     546:	8b 4e 08             	mov    0x8(%bp),%cx
     549:	8a c5                	mov    %ch,%al
     54b:	98                   	cbtw
     54c:	89 47 08             	mov    %ax,0x8(%bx)
     54f:	8a e1                	mov    %cl,%ah
     551:	32 c0                	xor    %al,%al
     553:	89 47 32             	mov    %ax,0x32(%bx)
     556:	59                   	pop    %cx
     557:	5b                   	pop    %bx
     558:	5d                   	pop    %bp
     559:	c3                   	ret
     55a:	55                   	push   %bp
     55b:	8b ec                	mov    %sp,%bp
     55d:	53                   	push   %bx
     55e:	52                   	push   %dx
     55f:	8b 46 04             	mov    0x4(%bp),%ax
     562:	f7 66 06             	mulw   0x6(%bp)
     565:	8b da                	mov    %dx,%bx
     567:	f7 66 08             	mulw   0x8(%bp)
     56a:	8b c3                	mov    %bx,%ax
     56c:	8b da                	mov    %dx,%bx
     56e:	f7 66 08             	mulw   0x8(%bp)
     571:	03 c3                	add    %bx,%ax
     573:	5a                   	pop    %dx
     574:	5b                   	pop    %bx
     575:	5d                   	pop    %bp
     576:	c3                   	ret
     577:	55                   	push   %bp
     578:	8b ec                	mov    %sp,%bp
     57a:	52                   	push   %dx
     57b:	8b 46 04             	mov    0x4(%bp),%ax
     57e:	8b 56 06             	mov    0x6(%bp),%dx
     581:	f7 76 08             	divw   0x8(%bp)
     584:	5a                   	pop    %dx
     585:	5d                   	pop    %bp
     586:	c3                   	ret
     587:	55                   	push   %bp
     588:	8b ec                	mov    %sp,%bp
     58a:	8b 76 04             	mov    0x4(%bp),%si
     58d:	8a 04                	mov    (%si),%al
     58f:	98                   	cbtw
     590:	0b c0                	or     %ax,%ax
     592:	74 12                	je     0x5a6
     594:	8b 76 04             	mov    0x4(%bp),%si
     597:	ff 46 04             	incw   0x4(%bp)
     59a:	8a 04                	mov    (%si),%al
     59c:	98                   	cbtw
     59d:	50                   	push   %ax
     59e:	e8 9b fe             	call   0x43c
     5a1:	83 c4 02             	add    $0x2,%sp
     5a4:	eb e4                	jmp    0x58a
     5a6:	8b e5                	mov    %bp,%sp
     5a8:	5d                   	pop    %bp
     5a9:	c3                   	ret
     5aa:	55                   	push   %bp
     5ab:	8b ec                	mov    %sp,%bp
     5ad:	83 ec 30             	sub    $0x30,%sp
     5b0:	8b 46 04             	mov    0x4(%bp),%ax
     5b3:	89 46 d0             	mov    %ax,-0x30(%bp)
     5b6:	8b 76 d0             	mov    -0x30(%bp),%si
     5b9:	ff 46 d0             	incw   -0x30(%bp)
     5bc:	8a 04                	mov    (%si),%al
     5be:	81 e0 ff 00          	and    $0xff,%ax
     5c2:	89 46 fc             	mov    %ax,-0x4(%bp)
     5c5:	8b 46 fc             	mov    -0x4(%bp),%ax
     5c8:	ff 4e fc             	decw   -0x4(%bp)
     5cb:	0b c0                	or     %ax,%ax
     5cd:	74 2b                	je     0x5fa
     5cf:	8b 76 d0             	mov    -0x30(%bp),%si
     5d2:	8a 04                	mov    (%si),%al
     5d4:	81 e0 ff 00          	and    $0xff,%ax
     5d8:	83 f8 20             	cmp    $0x20,%ax
     5db:	75 02                	jne    0x5df
     5dd:	eb 0e                	jmp    0x5ed
     5df:	8b 76 d0             	mov    -0x30(%bp),%si
     5e2:	8a 04                	mov    (%si),%al
     5e4:	81 e0 ff 00          	and    $0xff,%ax
     5e8:	83 f8 09             	cmp    $0x9,%ax
     5eb:	75 08                	jne    0x5f5
     5ed:	b8 00 00             	mov    $0x0,%ax
     5f0:	8b 76 d0             	mov    -0x30(%bp),%si
     5f3:	88 04                	mov    %al,(%si)
     5f5:	ff 46 d0             	incw   -0x30(%bp)
     5f8:	eb cb                	jmp    0x5c5
     5fa:	b8 00 00             	mov    $0x0,%ax
     5fd:	8b 76 d0             	mov    -0x30(%bp),%si
     600:	88 04                	mov    %al,(%si)
     602:	8b 46 04             	mov    0x4(%bp),%ax
     605:	89 46 d0             	mov    %ax,-0x30(%bp)
     608:	b8 01 00             	mov    $0x1,%ax
     60b:	89 46 fe             	mov    %ax,-0x2(%bp)
     60e:	8b 76 d0             	mov    -0x30(%bp),%si
     611:	ff 46 d0             	incw   -0x30(%bp)
     614:	8a 04                	mov    (%si),%al
     616:	81 e0 ff 00          	and    $0xff,%ax
     61a:	83 c0 01             	add    $0x1,%ax
     61d:	89 46 fc             	mov    %ax,-0x4(%bp)
     620:	8b 46 fc             	mov    -0x4(%bp),%ax
     623:	ff 4e fc             	decw   -0x4(%bp)
     626:	0b c0                	or     %ax,%ax
     628:	74 59                	je     0x683
     62a:	8b 76 d0             	mov    -0x30(%bp),%si
     62d:	8a 04                	mov    (%si),%al
     62f:	81 e0 ff 00          	and    $0xff,%ax
     633:	0b c0                	or     %ax,%ax
     635:	74 02                	je     0x639
     637:	eb 02                	jmp    0x63b
     639:	eb 43                	jmp    0x67e
     63b:	8b 46 d0             	mov    -0x30(%bp),%ax
     63e:	8d 76 d2             	lea    -0x2e(%bp),%si
     641:	8b 56 fe             	mov    -0x2(%bp),%dx
     644:	ff 46 fe             	incw   -0x2(%bp)
     647:	d1 e2                	shl    %dx
     649:	03 f2                	add    %dx,%si
     64b:	89 04                	mov    %ax,(%si)
     64d:	81 7e fe 14 00       	cmpw   $0x14,-0x2(%bp)
     652:	7c 15                	jl     0x669
     654:	8d 06 20 00          	lea    0x20,%ax
     658:	50                   	push   %ax
     659:	e8 2b ff             	call   0x587
     65c:	83 c4 02             	add    $0x2,%sp
     65f:	b8 82 80             	mov    $0x8082,%ax
     662:	50                   	push   %ax
     663:	e8 ca 90             	call   0x9730
     666:	83 c4 02             	add    $0x2,%sp
     669:	8b 76 d0             	mov    -0x30(%bp),%si
     66c:	8a 04                	mov    (%si),%al
     66e:	81 e0 ff 00          	and    $0xff,%ax
     672:	0b c0                	or     %ax,%ax
     674:	74 08                	je     0x67e
     676:	ff 46 d0             	incw   -0x30(%bp)
     679:	ff 4e fc             	decw   -0x4(%bp)
     67c:	eb eb                	jmp    0x669
     67e:	ff 46 d0             	incw   -0x30(%bp)
     681:	eb 9d                	jmp    0x620
     683:	b8 00 00             	mov    $0x0,%ax
     686:	8d 76 d2             	lea    -0x2e(%bp),%si
     689:	8b 56 fe             	mov    -0x2(%bp),%dx
     68c:	d1 e2                	shl    %dx
     68e:	03 f2                	add    %dx,%si
     690:	89 04                	mov    %ax,(%si)
     692:	8d 06 35 00          	lea    0x35,%ax
     696:	8d 76 d2             	lea    -0x2e(%bp),%si
     699:	89 04                	mov    %ax,(%si)
     69b:	8d 46 d2             	lea    -0x2e(%bp),%ax
     69e:	50                   	push   %ax
     69f:	ff 76 fe             	push   -0x2(%bp)
     6a2:	e8 ba fa             	call   0x15f
     6a5:	83 c4 04             	add    $0x4,%sp
     6a8:	50                   	push   %ax
     6a9:	e8 79 fa             	call   0x125
     6ac:	83 c4 02             	add    $0x2,%sp
     6af:	8b e5                	mov    %bp,%sp
     6b1:	5d                   	pop    %bp
     6b2:	c3                   	ret
     6b3:	53                   	push   %bx
     6b4:	51                   	push   %cx
     6b5:	52                   	push   %dx
     6b6:	55                   	push   %bp
     6b7:	57                   	push   %di
     6b8:	56                   	push   %si
     6b9:	06                   	push   %es
     6ba:	e8 e6 32             	call   0x39a3
     6bd:	8b 1e d8 47          	mov    0x47d8,%bx
     6c1:	0b db                	or     %bx,%bx
     6c3:	75 03                	jne    0x6c8
     6c5:	e9 86 00             	jmp    0x74e
     6c8:	8b 47 40             	mov    0x40(%bx),%ax
     6cb:	23 47 3e             	and    0x3e(%bx),%ax
     6ce:	74 25                	je     0x6f5
     6d0:	83 7f 22 01          	cmpw   $0x1,0x22(%bx)
     6d4:	74 1f                	je     0x6f5
     6d6:	8b 47 42             	mov    0x42(%bx),%ax
     6d9:	3b 47 4e             	cmp    0x4e(%bx),%ax
     6dc:	75 17                	jne    0x6f5
     6de:	8b 47 04             	mov    0x4(%bx),%ax
     6e1:	3b 47 3c             	cmp    0x3c(%bx),%ax
     6e4:	75 0f                	jne    0x6f5
     6e6:	8b 47 3a             	mov    0x3a(%bx),%ax
     6e9:	03 06 1c 46          	add    0x461c,%ax
     6ed:	3b 47 02             	cmp    0x2(%bx),%ax
     6f0:	75 03                	jne    0x6f5
     6f2:	eb 41                	jmp    0x735
     6f4:	90                   	nop
     6f5:	83 7f 40 00          	cmpw   $0x0,0x40(%bx)
     6f9:	74 0f                	je     0x70a
     6fb:	8b 7f 3c             	mov    0x3c(%bx),%di
     6fe:	8b 77 3a             	mov    0x3a(%bx),%si
     701:	8b 6f 42             	mov    0x42(%bx),%bp
     704:	8b 47 2a             	mov    0x2a(%bx),%ax
     707:	e8 40 02             	call   0x94a
     70a:	83 7f 3e 00          	cmpw   $0x0,0x3e(%bx)
     70e:	74 38                	je     0x748
     710:	8b 77 02             	mov    0x2(%bx),%si
     713:	3b 36 1c 46          	cmp    0x461c,%si
     717:	7c 2a                	jl     0x743
     719:	3b 36 1e 46          	cmp    0x461e,%si
     71d:	7f 24                	jg     0x743
     71f:	2b 36 1c 46          	sub    0x461c,%si
     723:	89 77 3a             	mov    %si,0x3a(%bx)
     726:	8b 7f 04             	mov    0x4(%bx),%di
     729:	89 7f 3c             	mov    %di,0x3c(%bx)
     72c:	8b 6f 4e             	mov    0x4e(%bx),%bp
     72f:	8b 47 2a             	mov    0x2a(%bx),%ax
     732:	e8 15 02             	call   0x94a
     735:	83 7f 44 00          	cmpw   $0x0,0x44(%bx)
     739:	74 0d                	je     0x748
     73b:	53                   	push   %bx
     73c:	ff 57 44             	call   *0x44(%bx)
     73f:	5b                   	pop    %bx
     740:	eb 06                	jmp    0x748
     742:	90                   	nop
     743:	c7 47 3e 00 00       	movw   $0x0,0x3e(%bx)
     748:	8b 5f 34             	mov    0x34(%bx),%bx
     74b:	e9 73 ff             	jmp    0x6c1
     74e:	8b 1e dc 47          	mov    0x47dc,%bx
     752:	0b db                	or     %bx,%bx
     754:	74 1a                	je     0x770
     756:	83 7f 40 00          	cmpw   $0x0,0x40(%bx)
     75a:	74 0f                	je     0x76b
     75c:	8b 7f 3c             	mov    0x3c(%bx),%di
     75f:	8b 77 3a             	mov    0x3a(%bx),%si
     762:	8b 6f 42             	mov    0x42(%bx),%bp
     765:	8b 47 2a             	mov    0x2a(%bx),%ax
     768:	e8 df 01             	call   0x94a
     76b:	8b 5f 34             	mov    0x34(%bx),%bx
     76e:	eb e2                	jmp    0x752
     770:	e8 14 00             	call   0x787
     773:	c7 06 28 46 00 00    	movw   $0x0,0x4628
     779:	c7 06 28 4b 00 00    	movw   $0x0,0x4b28
     77f:	07                   	pop    %es
     780:	5e                   	pop    %si
     781:	5f                   	pop    %di
     782:	5d                   	pop    %bp
     783:	5a                   	pop    %dx
     784:	59                   	pop    %cx
     785:	5b                   	pop    %bx
     786:	c3                   	ret
     787:	fc                   	cld
     788:	83 3e 28 46 01       	cmpw   $0x1,0x4628
     78d:	74 16                	je     0x7a5
     78f:	83 3e 20 46 00       	cmpw   $0x0,0x4620
     794:	75 08                	jne    0x79e
     796:	83 3e 28 4b 00       	cmpw   $0x0,0x4b28
     79b:	75 01                	jne    0x79e
     79d:	c3                   	ret
     79e:	8d 36 5f 08          	lea    0x85f,%si
     7a2:	e8 1d 00             	call   0x7c2
     7a5:	8c d8                	mov    %ds,%ax
     7a7:	8e c0                	mov    %ax,%es
     7a9:	8d 36 69 52          	lea    0x5269,%si
     7ad:	03 36 1c 46          	add    0x461c,%si
     7b1:	8b de                	mov    %si,%bx
     7b3:	8d 3e 5f 08          	lea    0x85f,%di
     7b7:	b9 a0 00             	mov    $0xa0,%cx
     7ba:	f3 a5                	rep movsw %ds:(%si),%es:(%di)
     7bc:	8b f3                	mov    %bx,%si
     7be:	e8 01 00             	call   0x7c2
     7c1:	c3                   	ret
     7c2:	8b 16 26 46          	mov    0x4626,%dx
     7c6:	8b da                	mov    %dx,%bx
     7c8:	83 eb 50             	sub    $0x50,%bx
     7cb:	8a 04                	mov    (%si),%al
     7cd:	8a c8                	mov    %al,%cl
     7cf:	2c c7                	sub    $0xc7,%al
     7d1:	f6 d8                	neg    %al
     7d3:	d0 e8                	shr    %al
     7d5:	b5 50                	mov    $0x50,%ch
     7d7:	f6 e5                	mul    %ch
     7d9:	f6 c1 01             	test   $0x1,%cl
     7dc:	75 08                	jne    0x7e6
     7de:	03 c2                	add    %dx,%ax
     7e0:	f7 db                	neg    %bx
     7e2:	f7 da                	neg    %dx
     7e4:	87 da                	xchg   %bx,%dx
     7e6:	03 06 24 46          	add    0x4624,%ax
     7ea:	8b f8                	mov    %ax,%di
     7ec:	8b ee                	mov    %si,%bp
     7ee:	81 c5 40 01          	add    $0x140,%bp
     7f2:	b5 c0                	mov    $0xc0,%ch
     7f4:	8a 24                	mov    (%si),%ah
     7f6:	8e 06 22 46          	mov    0x4622,%es
     7fa:	ac                   	lods   %ds:(%si),%al
     7fb:	3a c4                	cmp    %ah,%al
     7fd:	77 08                	ja     0x807
     7ff:	72 1a                	jb     0x81b
     801:	26 30 2d             	xor    %ch,%es:(%di)
     804:	eb 26                	jmp    0x82c
     806:	90                   	nop
     807:	03 fb                	add    %bx,%di
     809:	f7 db                	neg    %bx
     80b:	f7 da                	neg    %dx
     80d:	87 da                	xchg   %bx,%dx
     80f:	26 30 2d             	xor    %ch,%es:(%di)
     812:	fe c4                	inc    %ah
     814:	3a c4                	cmp    %ah,%al
     816:	75 ef                	jne    0x807
     818:	eb 12                	jmp    0x82c
     81a:	90                   	nop
     81b:	03 fa                	add    %dx,%di
     81d:	f7 db                	neg    %bx
     81f:	f7 da                	neg    %dx
     821:	87 da                	xchg   %bx,%dx
     823:	26 30 2d             	xor    %ch,%es:(%di)
     826:	fe cc                	dec    %ah
     828:	3a c4                	cmp    %ah,%al
     82a:	75 ef                	jne    0x81b
     82c:	d0 ed                	shr    %ch
     82e:	d0 ed                	shr    %ch
     830:	0a ed                	or     %ch,%ch
     832:	75 c6                	jne    0x7fa
     834:	47                   	inc    %di
     835:	b5 c0                	mov    $0xc0,%ch
     837:	3b f5                	cmp    %bp,%si
     839:	72 bf                	jb     0x7fa
     83b:	c3                   	ret
     83c:	51                   	push   %cx
     83d:	57                   	push   %di
     83e:	56                   	push   %si
     83f:	06                   	push   %es
     840:	fc                   	cld
     841:	8e 06 22 46          	mov    0x4622,%es
     845:	8b 36 24 46          	mov    0x4624,%si
     849:	81 c6 f0 1e          	add    $0x1ef0,%si
     84d:	e8 0c 00             	call   0x85c
     850:	03 36 26 46          	add    0x4626,%si
     854:	e8 05 00             	call   0x85c
     857:	07                   	pop    %es
     858:	5e                   	pop    %si
     859:	5f                   	pop    %di
     85a:	59                   	pop    %cx
     85b:	c3                   	ret
     85c:	8b fe                	mov    %si,%di
     85e:	b9 08 00             	mov    $0x8,%cx
     861:	33 c0                	xor    %ax,%ax
     863:	ab                   	stos   %ax,%es:(%di)
     864:	ab                   	stos   %ax,%es:(%di)
     865:	ab                   	stos   %ax,%es:(%di)
     866:	ab                   	stos   %ax,%es:(%di)
     867:	ab                   	stos   %ax,%es:(%di)
     868:	ab                   	stos   %ax,%es:(%di)
     869:	83 ef 5c             	sub    $0x5c,%di
     86c:	e2 f5                	loop   0x863
     86e:	c3                   	ret
     86f:	53                   	push   %bx
     870:	8b dc                	mov    %sp,%bx
     872:	51                   	push   %cx
     873:	52                   	push   %dx
     874:	55                   	push   %bp
     875:	56                   	push   %si
     876:	57                   	push   %di
     877:	06                   	push   %es
     878:	8b 77 04             	mov    0x4(%bx),%si
     87b:	8b 7f 06             	mov    0x6(%bx),%di
     87e:	8b 5f 08             	mov    0x8(%bx),%bx
     881:	8b 6f 4e             	mov    0x4e(%bx),%bp
     884:	8b 47 2a             	mov    0x2a(%bx),%ax
     887:	e8 c0 00             	call   0x94a
     88a:	07                   	pop    %es
     88b:	5f                   	pop    %di
     88c:	5e                   	pop    %si
     88d:	5d                   	pop    %bp
     88e:	5a                   	pop    %dx
     88f:	59                   	pop    %cx
     890:	5b                   	pop    %bx
     891:	c3                   	ret
     892:	55                   	push   %bp
     893:	8b ec                	mov    %sp,%bp
     895:	56                   	push   %si
     896:	57                   	push   %di
     897:	06                   	push   %es
     898:	52                   	push   %dx
     899:	51                   	push   %cx
     89a:	53                   	push   %bx
     89b:	8b 76 04             	mov    0x4(%bp),%si
     89e:	8b 7e 06             	mov    0x6(%bp),%di
     8a1:	8b 6e 08             	mov    0x8(%bp),%bp
     8a4:	e8 08 01             	call   0x9af
     8a7:	5b                   	pop    %bx
     8a8:	59                   	pop    %cx
     8a9:	5a                   	pop    %dx
     8aa:	07                   	pop    %es
     8ab:	5f                   	pop    %di
     8ac:	5e                   	pop    %si
     8ad:	5d                   	pop    %bp
     8ae:	c3                   	ret
     8af:	53                   	push   %bx
     8b0:	8b dc                	mov    %sp,%bx
     8b2:	51                   	push   %cx
     8b3:	52                   	push   %dx
     8b4:	55                   	push   %bp
     8b5:	56                   	push   %si
     8b6:	57                   	push   %di
     8b7:	06                   	push   %es
     8b8:	8b 77 04             	mov    0x4(%bx),%si
     8bb:	8b 7f 06             	mov    0x6(%bx),%di
     8be:	8b 5f 08             	mov    0x8(%bx),%bx
     8c1:	8b 6f 4e             	mov    0x4e(%bx),%bp
     8c4:	e8 a9 01             	call   0xa70
     8c7:	75 06                	jne    0x8cf
     8c9:	e8 41 01             	call   0xa0d
     8cc:	eb 40                	jmp    0x90e
     8ce:	90                   	nop
     8cf:	c6 06 5e 08 00       	movb   $0x0,0x85e
     8d4:	90                   	nop
     8d5:	50                   	push   %ax
     8d6:	57                   	push   %di
     8d7:	32 ed                	xor    %ch,%ch
     8d9:	53                   	push   %bx
     8da:	2e 8d 1e 13 0c       	lea    %cs:0xc13,%bx
     8df:	e8 34 00             	call   0x916
     8e2:	80 fc 00             	cmp    $0x0,%ah
     8e5:	7c 09                	jl     0x8f0
     8e7:	8a c4                	mov    %ah,%al
     8e9:	32 e4                	xor    %ah,%ah
     8eb:	03 f0                	add    %ax,%si
     8ed:	eb 0e                	jmp    0x8fd
     8ef:	90                   	nop
     8f0:	80 fd 00             	cmp    $0x0,%ch
     8f3:	74 08                	je     0x8fd
     8f5:	8a f5                	mov    %ch,%dh
     8f7:	e8 fe 01             	call   0xaf8
     8fa:	26 30 2d             	xor    %ch,%es:(%di)
     8fd:	5b                   	pop    %bx
     8fe:	5f                   	pop    %di
     8ff:	03 fb                	add    %bx,%di
     901:	87 1e 5b 08          	xchg   %bx,0x85b
     905:	58                   	pop    %ax
     906:	4d                   	dec    %bp
     907:	75 cc                	jne    0x8d5
     909:	a0 5e 08             	mov    0x85e,%al
     90c:	32 e4                	xor    %ah,%ah
     90e:	07                   	pop    %es
     90f:	5f                   	pop    %di
     910:	5e                   	pop    %si
     911:	5d                   	pop    %bp
     912:	5a                   	pop    %dx
     913:	59                   	pop    %cx
     914:	5b                   	pop    %bx
     915:	c3                   	ret
     916:	32 d2                	xor    %dl,%dl
     918:	8a 34                	mov    (%si),%dh
     91a:	d3 ea                	shr    %cl,%dx
     91c:	0a f5                	or     %ch,%dh
     91e:	e8 d7 01             	call   0xaf8
     921:	26 30 35             	xor    %dh,%es:(%di)
     924:	8a ea                	mov    %dl,%ch
     926:	46                   	inc    %si
     927:	47                   	inc    %di
     928:	fe c8                	dec    %al
     92a:	75 ea                	jne    0x916
     92c:	c3                   	ret
     92d:	55                   	push   %bp
     92e:	8b ec                	mov    %sp,%bp
     930:	56                   	push   %si
     931:	57                   	push   %di
     932:	06                   	push   %es
     933:	52                   	push   %dx
     934:	51                   	push   %cx
     935:	53                   	push   %bx
     936:	8b 76 04             	mov    0x4(%bp),%si
     939:	8b 7e 06             	mov    0x6(%bp),%di
     93c:	8b 6e 08             	mov    0x8(%bp),%bp
     93f:	e8 cb 00             	call   0xa0d
     942:	5b                   	pop    %bx
     943:	59                   	pop    %cx
     944:	5a                   	pop    %dx
     945:	07                   	pop    %es
     946:	5f                   	pop    %di
     947:	5e                   	pop    %si
     948:	5d                   	pop    %bp
     949:	c3                   	ret
     94a:	53                   	push   %bx
     94b:	53                   	push   %bx
     94c:	8b d8                	mov    %ax,%bx
     94e:	2e 8a 87 12 0d       	mov    %cs:0xd12(%bx),%al
     953:	a2 5d 08             	mov    %al,0x85d
     956:	5b                   	pop    %bx
     957:	e8 16 01             	call   0xa70
     95a:	75 06                	jne    0x962
     95c:	e8 50 00             	call   0x9af
     95f:	eb 35                	jmp    0x996
     961:	90                   	nop
     962:	50                   	push   %ax
     963:	57                   	push   %di
     964:	32 ed                	xor    %ch,%ch
     966:	53                   	push   %bx
     967:	2e 8d 1e 13 0c       	lea    %cs:0xc13,%bx
     96c:	e8 29 00             	call   0x998
     96f:	80 fc 00             	cmp    $0x0,%ah
     972:	7c 09                	jl     0x97d
     974:	8a c4                	mov    %ah,%al
     976:	32 e4                	xor    %ah,%ah
     978:	03 f0                	add    %ax,%si
     97a:	eb 0e                	jmp    0x98a
     97c:	90                   	nop
     97d:	80 fd 00             	cmp    $0x0,%ch
     980:	74 08                	je     0x98a
     982:	8a f5                	mov    %ch,%dh
     984:	e8 7f 01             	call   0xb06
     987:	26 30 35             	xor    %dh,%es:(%di)
     98a:	5b                   	pop    %bx
     98b:	5f                   	pop    %di
     98c:	03 fb                	add    %bx,%di
     98e:	87 1e 5b 08          	xchg   %bx,0x85b
     992:	58                   	pop    %ax
     993:	4d                   	dec    %bp
     994:	75 cc                	jne    0x962
     996:	5b                   	pop    %bx
     997:	c3                   	ret
     998:	32 d2                	xor    %dl,%dl
     99a:	8a 34                	mov    (%si),%dh
     99c:	d3 ea                	shr    %cl,%dx
     99e:	0a f5                	or     %ch,%dh
     9a0:	e8 63 01             	call   0xb06
     9a3:	26 30 35             	xor    %dh,%es:(%di)
     9a6:	8a ea                	mov    %dl,%ch
     9a8:	46                   	inc    %si
     9a9:	47                   	inc    %di
     9aa:	fe c8                	dec    %al
     9ac:	75 ea                	jne    0x998
     9ae:	c3                   	ret
     9af:	81 ef c7 00          	sub    $0xc7,%di
     9b3:	f7 df                	neg    %di
     9b5:	8b ce                	mov    %si,%cx
     9b7:	80 e1 03             	and    $0x3,%cl
     9ba:	80 e9 03             	sub    $0x3,%cl
     9bd:	f6 d9                	neg    %cl
     9bf:	d0 e1                	shl    %cl
     9c1:	8b c7                	mov    %di,%ax
     9c3:	d1 e8                	shr    %ax
     9c5:	ba 40 01             	mov    $0x140,%dx
     9c8:	f7 e2                	mul    %dx
     9ca:	03 c6                	add    %si,%ax
     9cc:	83 d2 00             	adc    $0x0,%dx
     9cf:	d1 ea                	shr    %dx
     9d1:	d1 d8                	rcr    %ax
     9d3:	d1 ea                	shr    %dx
     9d5:	d1 d8                	rcr    %ax
     9d7:	8b f0                	mov    %ax,%si
     9d9:	f7 c7 01 00          	test   $0x1,%di
     9dd:	74 04                	je     0x9e3
     9df:	03 36 26 46          	add    0x4626,%si
     9e3:	a1 22 46             	mov    0x4622,%ax
     9e6:	8e c0                	mov    %ax,%es
     9e8:	03 36 24 46          	add    0x4624,%si
     9ec:	8b c5                	mov    %bp,%ax
     9ee:	a8 80                	test   $0x80,%al
     9f0:	75 13                	jne    0xa05
     9f2:	b5 03                	mov    $0x3,%ch
     9f4:	d2 e5                	shl    %cl,%ch
     9f6:	26 8a 34             	mov    %es:(%si),%dh
     9f9:	22 ee                	and    %dh,%ch
     9fb:	32 f5                	xor    %ch,%dh
     9fd:	d2 c0                	rol    %cl,%al
     9ff:	0a f0                	or     %al,%dh
     a01:	26 88 34             	mov    %dh,%es:(%si)
     a04:	c3                   	ret
     a05:	24 7f                	and    $0x7f,%al
     a07:	d2 e0                	shl    %cl,%al
     a09:	26 30 04             	xor    %al,%es:(%si)
     a0c:	c3                   	ret
     a0d:	81 ef c7 00          	sub    $0xc7,%di
     a11:	f7 df                	neg    %di
     a13:	8b ce                	mov    %si,%cx
     a15:	80 e1 03             	and    $0x3,%cl
     a18:	80 e9 03             	sub    $0x3,%cl
     a1b:	f6 d9                	neg    %cl
     a1d:	d0 e1                	shl    %cl
     a1f:	8b c7                	mov    %di,%ax
     a21:	d1 e8                	shr    %ax
     a23:	ba 40 01             	mov    $0x140,%dx
     a26:	f7 e2                	mul    %dx
     a28:	03 c6                	add    %si,%ax
     a2a:	83 d2 00             	adc    $0x0,%dx
     a2d:	d1 ea                	shr    %dx
     a2f:	d1 d8                	rcr    %ax
     a31:	d1 ea                	shr    %dx
     a33:	d1 d8                	rcr    %ax
     a35:	8b f0                	mov    %ax,%si
     a37:	f7 c7 01 00          	test   $0x1,%di
     a3b:	74 04                	je     0xa41
     a3d:	03 36 26 46          	add    0x4626,%si
     a41:	a1 22 46             	mov    0x4622,%ax
     a44:	8e c0                	mov    %ax,%es
     a46:	03 36 24 46          	add    0x4624,%si
     a4a:	b5 03                	mov    $0x3,%ch
     a4c:	d2 e5                	shl    %cl,%ch
     a4e:	26 22 2c             	and    %es:(%si),%ch
     a51:	8b c5                	mov    %bp,%ax
     a53:	a8 80                	test   $0x80,%al
     a55:	75 0b                	jne    0xa62
     a57:	26 30 2c             	xor    %ch,%es:(%si)
     a5a:	d2 c0                	rol    %cl,%al
     a5c:	26 08 04             	or     %al,%es:(%si)
     a5f:	eb 08                	jmp    0xa69
     a61:	90                   	nop
     a62:	24 7f                	and    $0x7f,%al
     a64:	d2 e0                	shl    %cl,%al
     a66:	26 30 04             	xor    %al,%es:(%si)
     a69:	d2 ed                	shr    %cl,%ch
     a6b:	8a c5                	mov    %ch,%al
     a6d:	32 e4                	xor    %ah,%ah
     a6f:	c3                   	ret
     a70:	83 7f 22 01          	cmpw   $0x1,0x22(%bx)
     a74:	75 07                	jne    0xa7d
     a76:	83 7f 24 01          	cmpw   $0x1,0x24(%bx)
     a7a:	75 01                	jne    0xa7d
     a7c:	c3                   	ret
     a7d:	81 ef c7 00          	sub    $0xc7,%di
     a81:	f7 df                	neg    %di
     a83:	8b ce                	mov    %si,%cx
     a85:	80 e1 03             	and    $0x3,%cl
     a88:	d0 e1                	shl    %cl
     a8a:	8b 47 24             	mov    0x24(%bx),%ax
     a8d:	d1 e8                	shr    %ax
     a8f:	d1 e8                	shr    %ax
     a91:	8b d6                	mov    %si,%dx
     a93:	d1 ea                	shr    %dx
     a95:	d1 ea                	shr    %dx
     a97:	80 ea 50             	sub    $0x50,%dl
     a9a:	f6 da                	neg    %dl
     a9c:	8a e0                	mov    %al,%ah
     a9e:	2a e2                	sub    %dl,%ah
     aa0:	7e 02                	jle    0xaa4
     aa2:	8a c2                	mov    %dl,%al
     aa4:	50                   	push   %ax
     aa5:	8b 47 22             	mov    0x22(%bx),%ax
     aa8:	ba c8 00             	mov    $0xc8,%dx
     aab:	2b d7                	sub    %di,%dx
     aad:	3b c2                	cmp    %dx,%ax
     aaf:	76 02                	jbe    0xab3
     ab1:	8b c2                	mov    %dx,%ax
     ab3:	50                   	push   %ax
     ab4:	8b c7                	mov    %di,%ax
     ab6:	d1 e8                	shr    %ax
     ab8:	ba 40 01             	mov    $0x140,%dx
     abb:	f7 e2                	mul    %dx
     abd:	03 c6                	add    %si,%ax
     abf:	83 d2 00             	adc    $0x0,%dx
     ac2:	d1 ea                	shr    %dx
     ac4:	d1 d8                	rcr    %ax
     ac6:	d1 ea                	shr    %dx
     ac8:	d1 d8                	rcr    %ax
     aca:	ba 50 00             	mov    $0x50,%dx
     acd:	8b 1e 26 46          	mov    0x4626,%bx
     ad1:	89 16 5b 08          	mov    %dx,0x85b
     ad5:	29 1e 5b 08          	sub    %bx,0x85b
     ad9:	f7 c7 01 00          	test   $0x1,%di
     add:	74 06                	je     0xae5
     adf:	03 c3                	add    %bx,%ax
     ae1:	87 1e 5b 08          	xchg   %bx,0x85b
     ae5:	8b 36 22 46          	mov    0x4622,%si
     ae9:	8e c6                	mov    %si,%es
     aeb:	8b f5                	mov    %bp,%si
     aed:	8b f8                	mov    %ax,%di
     aef:	03 3e 24 46          	add    0x4624,%di
     af3:	5d                   	pop    %bp
     af4:	58                   	pop    %ax
     af5:	0b c0                	or     %ax,%ax
     af7:	c3                   	ret
     af8:	50                   	push   %ax
     af9:	8a c6                	mov    %dh,%al
     afb:	2e d7                	xlat   %cs:(%bx)
     afd:	26 22 05             	and    %es:(%di),%al
     b00:	08 06 5e 08          	or     %al,0x85e
     b04:	58                   	pop    %ax
     b05:	c3                   	ret
     b06:	50                   	push   %ax
     b07:	8a c6                	mov    %dh,%al
     b09:	2e d7                	xlat   %cs:(%bx)
     b0b:	22 06 5d 08          	and    0x85d,%al
     b0f:	32 f0                	xor    %al,%dh
     b11:	58                   	pop    %ax
     b12:	c3                   	ret
     b13:	00 03                	add    %al,(%bp,%di)
     b15:	03 03                	add    (%bp,%di),%ax
     b17:	0c 0f                	or     $0xf,%al
     b19:	0f                   	(bad)
     b1a:	0f 0c                	(bad)
     b1c:	0f 0f 0f 0c          	pi2fw  (%bx),%mm1
     b20:	0f                   	(bad)
     b21:	0f                   	(bad)
     b22:	0f 30                	wrmsr
     b24:	33 33                	xor    (%bp,%di),%si
     b26:	33 3c                	xor    (%si),%di
     b28:	3f                   	aas
     b29:	3f                   	aas
     b2a:	3f                   	aas
     b2b:	3c 3f                	cmp    $0x3f,%al
     b2d:	3f                   	aas
     b2e:	3f                   	aas
     b2f:	3c 3f                	cmp    $0x3f,%al
     b31:	3f                   	aas
     b32:	3f                   	aas
     b33:	30 33                	xor    %dh,(%bp,%di)
     b35:	33 33                	xor    (%bp,%di),%si
     b37:	3c 3f                	cmp    $0x3f,%al
     b39:	3f                   	aas
     b3a:	3f                   	aas
     b3b:	3c 3f                	cmp    $0x3f,%al
     b3d:	3f                   	aas
     b3e:	3f                   	aas
     b3f:	3c 3f                	cmp    $0x3f,%al
     b41:	3f                   	aas
     b42:	3f                   	aas
     b43:	30 33                	xor    %dh,(%bp,%di)
     b45:	33 33                	xor    (%bp,%di),%si
     b47:	3c 3f                	cmp    $0x3f,%al
     b49:	3f                   	aas
     b4a:	3f                   	aas
     b4b:	3c 3f                	cmp    $0x3f,%al
     b4d:	3f                   	aas
     b4e:	3f                   	aas
     b4f:	3c 3f                	cmp    $0x3f,%al
     b51:	3f                   	aas
     b52:	3f                   	aas
     b53:	c0 c3 c3             	rol    $0xc3,%bl
     b56:	c3                   	ret
     b57:	cc                   	int3
     b58:	cf                   	iret
     b59:	cf                   	iret
     b5a:	cf                   	iret
     b5b:	cc                   	int3
     b5c:	cf                   	iret
     b5d:	cf                   	iret
     b5e:	cf                   	iret
     b5f:	cc                   	int3
     b60:	cf                   	iret
     b61:	cf                   	iret
     b62:	cf                   	iret
     b63:	f0 f3 f3 f3 fc       	lock repz repz repz cld
     b68:	ff                   	(bad)
     b69:	ff                   	(bad)
     b6a:	ff                   	(bad)
     b6b:	fc                   	cld
     b6c:	ff                   	(bad)
     b6d:	ff                   	(bad)
     b6e:	ff                   	(bad)
     b6f:	fc                   	cld
     b70:	ff                   	(bad)
     b71:	ff                   	(bad)
     b72:	ff f0                	push   %ax
     b74:	f3 f3 f3 fc          	repz repz repz cld
     b78:	ff                   	(bad)
     b79:	ff                   	(bad)
     b7a:	ff                   	(bad)
     b7b:	fc                   	cld
     b7c:	ff                   	(bad)
     b7d:	ff                   	(bad)
     b7e:	ff                   	(bad)
     b7f:	fc                   	cld
     b80:	ff                   	(bad)
     b81:	ff                   	(bad)
     b82:	ff f0                	push   %ax
     b84:	f3 f3 f3 fc          	repz repz repz cld
     b88:	ff                   	(bad)
     b89:	ff                   	(bad)
     b8a:	ff                   	(bad)
     b8b:	fc                   	cld
     b8c:	ff                   	(bad)
     b8d:	ff                   	(bad)
     b8e:	ff                   	(bad)
     b8f:	fc                   	cld
     b90:	ff                   	(bad)
     b91:	ff                   	(bad)
     b92:	ff c0                	inc    %ax
     b94:	c3                   	ret
     b95:	c3                   	ret
     b96:	c3                   	ret
     b97:	cc                   	int3
     b98:	cf                   	iret
     b99:	cf                   	iret
     b9a:	cf                   	iret
     b9b:	cc                   	int3
     b9c:	cf                   	iret
     b9d:	cf                   	iret
     b9e:	cf                   	iret
     b9f:	cc                   	int3
     ba0:	cf                   	iret
     ba1:	cf                   	iret
     ba2:	cf                   	iret
     ba3:	f0 f3 f3 f3 fc       	lock repz repz repz cld
     ba8:	ff                   	(bad)
     ba9:	ff                   	(bad)
     baa:	ff                   	(bad)
     bab:	fc                   	cld
     bac:	ff                   	(bad)
     bad:	ff                   	(bad)
     bae:	ff                   	(bad)
     baf:	fc                   	cld
     bb0:	ff                   	(bad)
     bb1:	ff                   	(bad)
     bb2:	ff f0                	push   %ax
     bb4:	f3 f3 f3 fc          	repz repz repz cld
     bb8:	ff                   	(bad)
     bb9:	ff                   	(bad)
     bba:	ff                   	(bad)
     bbb:	fc                   	cld
     bbc:	ff                   	(bad)
     bbd:	ff                   	(bad)
     bbe:	ff                   	(bad)
     bbf:	fc                   	cld
     bc0:	ff                   	(bad)
     bc1:	ff                   	(bad)
     bc2:	ff f0                	push   %ax
     bc4:	f3 f3 f3 fc          	repz repz repz cld
     bc8:	ff                   	(bad)
     bc9:	ff                   	(bad)
     bca:	ff                   	(bad)
     bcb:	fc                   	cld
     bcc:	ff                   	(bad)
     bcd:	ff                   	(bad)
     bce:	ff                   	(bad)
     bcf:	fc                   	cld
     bd0:	ff                   	(bad)
     bd1:	ff                   	(bad)
     bd2:	ff c0                	inc    %ax
     bd4:	c3                   	ret
     bd5:	c3                   	ret
     bd6:	c3                   	ret
     bd7:	cc                   	int3
     bd8:	cf                   	iret
     bd9:	cf                   	iret
     bda:	cf                   	iret
     bdb:	cc                   	int3
     bdc:	cf                   	iret
     bdd:	cf                   	iret
     bde:	cf                   	iret
     bdf:	cc                   	int3
     be0:	cf                   	iret
     be1:	cf                   	iret
     be2:	cf                   	iret
     be3:	f0 f3 f3 f3 fc       	lock repz repz repz cld
     be8:	ff                   	(bad)
     be9:	ff                   	(bad)
     bea:	ff                   	(bad)
     beb:	fc                   	cld
     bec:	ff                   	(bad)
     bed:	ff                   	(bad)
     bee:	ff                   	(bad)
     bef:	fc                   	cld
     bf0:	ff                   	(bad)
     bf1:	ff                   	(bad)
     bf2:	ff f0                	push   %ax
     bf4:	f3 f3 f3 fc          	repz repz repz cld
     bf8:	ff                   	(bad)
     bf9:	ff                   	(bad)
     bfa:	ff                   	(bad)
     bfb:	fc                   	cld
     bfc:	ff                   	(bad)
     bfd:	ff                   	(bad)
     bfe:	ff                   	(bad)
     bff:	fc                   	cld
     c00:	ff                   	(bad)
     c01:	ff                   	(bad)
     c02:	ff f0                	push   %ax
     c04:	f3 f3 f3 fc          	repz repz repz cld
     c08:	ff                   	(bad)
     c09:	ff                   	(bad)
     c0a:	ff                   	(bad)
     c0b:	fc                   	cld
     c0c:	ff                   	(bad)
     c0d:	ff                   	(bad)
     c0e:	ff                   	(bad)
     c0f:	fc                   	cld
     c10:	ff                   	(bad)
     c11:	ff                   	(bad)
     c12:	ff 00                	incw   (%bx,%si)
     c14:	ff 55 8b             	call   *-0x75(%di)
     c17:	ec                   	in     (%dx),%al
     c18:	83 ec 04             	sub    $0x4,%sp
     c1b:	8b 06 dc 47          	mov    0x47dc,%ax
     c1f:	0b c0                	or     %ax,%ax
     c21:	74 1e                	je     0xc41
     c23:	8b 06 da 47          	mov    0x47da,%ax
     c27:	8b 36 de 47          	mov    0x47de,%si
     c2b:	89 44 34             	mov    %ax,0x34(%si)
     c2e:	8b 06 dc 47          	mov    0x47dc,%ax
     c32:	89 06 da 47          	mov    %ax,0x47da
     c36:	b8 00 00             	mov    $0x0,%ax
     c39:	89 06 de 47          	mov    %ax,0x47de
     c3d:	89 06 dc 47          	mov    %ax,0x47dc
     c41:	ff 06 34 4b          	incw   0x4b34
     c45:	8b 06 34 4b          	mov    0x4b34,%ax
     c49:	3b 06 e3 07          	cmp    0x7e3,%ax
     c4d:	7c 07                	jl     0xc56
     c4f:	b8 00 00             	mov    $0x0,%ax
     c52:	89 06 34 4b          	mov    %ax,0x4b34
     c56:	8b 06 d8 47          	mov    0x47d8,%ax
     c5a:	89 46 fc             	mov    %ax,-0x4(%bp)
     c5d:	8b 46 fc             	mov    -0x4(%bp),%ax
     c60:	0b c0                	or     %ax,%ax
     c62:	75 03                	jne    0xc67
     c64:	e9 7e 00             	jmp    0xce5
     c67:	8b 76 fc             	mov    -0x4(%bp),%si
     c6a:	8b 74 34             	mov    0x34(%si),%si
     c6d:	89 76 fe             	mov    %si,-0x2(%bp)
     c70:	8b 76 fc             	mov    -0x4(%bp),%si
     c73:	8b 44 3e             	mov    0x3e(%si),%ax
     c76:	8b 76 fc             	mov    -0x4(%bp),%si
     c79:	89 44 40             	mov    %ax,0x40(%si)
     c7c:	8b 76 fc             	mov    -0x4(%bp),%si
     c7f:	8b 74 4e             	mov    0x4e(%si),%si
     c82:	8b 7e fc             	mov    -0x4(%bp),%di
     c85:	89 75 42             	mov    %si,0x42(%di)
     c88:	ff 76 fc             	push   -0x4(%bp)
     c8b:	8b 76 fc             	mov    -0x4(%bp),%si
     c8e:	8b 74 46             	mov    0x46(%si),%si
     c91:	ff d6                	call   *%si
     c93:	83 c4 02             	add    $0x2,%sp
     c96:	8b 76 fc             	mov    -0x4(%bp),%si
     c99:	89 44 3e             	mov    %ax,0x3e(%si)
     c9c:	81 3e ad 25 01 00    	cmpw   $0x1,0x25ad
     ca2:	75 02                	jne    0xca6
     ca4:	eb 08                	jmp    0xcae
     ca6:	81 3e ad 25 03 00    	cmpw   $0x3,0x25ad
     cac:	75 2e                	jne    0xcdc
     cae:	8b 36 cb 07          	mov    0x7cb,%si
     cb2:	8a 04                	mov    (%si),%al
     cb4:	81 e0 ff 00          	and    $0xff,%ax
     cb8:	8b 76 fc             	mov    -0x4(%bp),%si
     cbb:	8b 54 38             	mov    0x38(%si),%dx
     cbe:	3b d0                	cmp    %ax,%dx
     cc0:	75 1a                	jne    0xcdc
     cc2:	8b 06 34 4b          	mov    0x4b34,%ax
     cc6:	0b c0                	or     %ax,%ax
     cc8:	74 02                	je     0xccc
     cca:	eb 10                	jmp    0xcdc
     ccc:	81 3e ad 25 01 00    	cmpw   $0x1,0x25ad
     cd2:	75 05                	jne    0xcd9
     cd4:	e8 07 64             	call   0x70de
     cd7:	eb 03                	jmp    0xcdc
     cd9:	e8 7b 74             	call   0x8157
     cdc:	8b 46 fe             	mov    -0x2(%bp),%ax
     cdf:	89 46 fc             	mov    %ax,-0x4(%bp)
     ce2:	e9 78 ff             	jmp    0xc5d
     ce5:	ff 06 e3 25          	incw   0x25e3
     ce9:	8b e5                	mov    %bp,%sp
     ceb:	5d                   	pop    %bp
     cec:	c3                   	ret
     ced:	55                   	push   %bp
     cee:	8b ec                	mov    %sp,%bp
     cf0:	83 ec 06             	sub    $0x6,%sp
     cf3:	b8 00 00             	mov    $0x0,%ax
     cf6:	89 06 cc 48          	mov    %ax,0x48cc
     cfa:	b0 01                	mov    $0x1,%al
     cfc:	89 06 ca 48          	mov    %ax,0x48ca
     d00:	8b 46 04             	mov    0x4(%bp),%ax
     d03:	89 46 fa             	mov    %ax,-0x6(%bp)
     d06:	8b 76 fa             	mov    -0x6(%bp),%si
     d09:	8b 44 38             	mov    0x38(%si),%ax
     d0c:	89 06 c8 48          	mov    %ax,0x48c8
     d10:	8d 36 bc 48          	lea    0x48bc,%si
     d14:	8b 06 c6 48          	mov    0x48c6,%ax
     d18:	d1 e0                	shl    %ax
     d1a:	03 f0                	add    %ax,%si
     d1c:	8b 04                	mov    (%si),%ax
     d1e:	89 06 36 4b          	mov    %ax,0x4b36
     d22:	0b c0                	or     %ax,%ax
     d24:	74 2f                	je     0xd55
     d26:	ff 0e c4 48          	decw   0x48c4
     d2a:	8b 06 c4 48          	mov    0x48c4,%ax
     d2e:	83 f8 00             	cmp    $0x0,%ax
     d31:	7f 22                	jg     0xd55
     d33:	81 3e ad 25 01 00    	cmpw   $0x1,0x25ad
     d39:	74 0d                	je     0xd48
     d3b:	8b 06 46 4b          	mov    0x4b46,%ax
     d3f:	0b c0                	or     %ax,%ax
     d41:	74 02                	je     0xd45
     d43:	eb 03                	jmp    0xd48
     d45:	e8 5b 24             	call   0x31a3
     d48:	b8 01 00             	mov    $0x1,%ax
     d4b:	50                   	push   %ax
     d4c:	b0 00                	mov    $0x0,%al
     d4e:	50                   	push   %ax
     d4f:	e8 3f 4c             	call   0x5991
     d52:	83 c4 04             	add    $0x4,%sp
     d55:	8b 06 34 4b          	mov    0x4b34,%ax
     d59:	0b c0                	or     %ax,%ax
     d5b:	74 02                	je     0xd5f
     d5d:	eb 47                	jmp    0xda6
     d5f:	81 3e ad 25 01 00    	cmpw   $0x1,0x25ad
     d65:	75 0f                	jne    0xd76
     d67:	ff 76 fa             	push   -0x6(%bp)
     d6a:	e8 9c 62             	call   0x7009
     d6d:	83 c4 02             	add    $0x2,%sp
     d70:	89 06 04 46          	mov    %ax,0x4604
     d74:	eb 21                	jmp    0xd97
     d76:	81 3e ad 25 03 00    	cmpw   $0x3,0x25ad
     d7c:	75 0f                	jne    0xd8d
     d7e:	ff 76 fa             	push   -0x6(%bp)
     d81:	e8 65 73             	call   0x80e9
     d84:	83 c4 02             	add    $0x2,%sp
     d87:	89 06 04 46          	mov    %ax,0x4604
     d8b:	eb 0a                	jmp    0xd97
     d8d:	e8 33 f5             	call   0x2c3
     d90:	89 06 04 46          	mov    %ax,0x4604
     d94:	e8 8d f6             	call   0x424
     d97:	ff 36 04 46          	push   0x4604
     d9b:	ff 76 fa             	push   -0x6(%bp)
     d9e:	e8 4b 01             	call   0xeec
     da1:	83 c4 04             	add    $0x4,%sp
     da4:	eb 12                	jmp    0xdb8
     da6:	b8 00 00             	mov    $0x0,%ax
     da9:	8b 76 fa             	mov    -0x6(%bp),%si
     dac:	89 44 12             	mov    %ax,0x12(%si)
     daf:	b8 00 00             	mov    $0x0,%ax
     db2:	8b 76 fa             	mov    -0x6(%bp),%si
     db5:	89 44 26             	mov    %ax,0x26(%si)
     db8:	8b 76 fa             	mov    -0x6(%bp),%si
     dbb:	8b 04                	mov    (%si),%ax
     dbd:	83 f8 04             	cmp    $0x4,%ax
     dc0:	75 02                	jne    0xdc4
     dc2:	eb 0d                	jmp    0xdd1
     dc4:	8b 76 fa             	mov    -0x6(%bp),%si
     dc7:	8b 04                	mov    (%si),%ax
     dc9:	83 f8 5d             	cmp    $0x5d,%ax
     dcc:	74 03                	je     0xdd1
     dce:	e9 92 00             	jmp    0xe63
     dd1:	8b 76 fa             	mov    -0x6(%bp),%si
     dd4:	8b 44 1a             	mov    0x1a(%si),%ax
     dd7:	83 f8 00             	cmp    $0x0,%ax
     dda:	7e 03                	jle    0xddf
     ddc:	e9 84 00             	jmp    0xe63
     ddf:	8b 76 fa             	mov    -0x6(%bp),%si
     de2:	ff 44 4c             	incw   0x4c(%si)
     de5:	81 3e 36 4b 01 00    	cmpw   $0x1,0x4b36
     deb:	74 3e                	je     0xe2b
     ded:	8b 76 fa             	mov    -0x6(%bp),%si
     df0:	8b 44 1e             	mov    0x1e(%si),%ax
     df3:	81 f8 78 ec          	cmp    $0xec78,%ax
     df7:	7f 02                	jg     0xdfb
     df9:	eb 1b                	jmp    0xe16
     dfb:	81 3e ad 25 01 00    	cmpw   $0x1,0x25ad
     e01:	74 28                	je     0xe2b
     e03:	81 3e ad 25 03 00    	cmpw   $0x3,0x25ad
     e09:	74 20                	je     0xe2b
     e0b:	8b 76 fa             	mov    -0x6(%bp),%si
     e0e:	8b 44 4c             	mov    0x4c(%si),%ax
     e11:	83 f8 05             	cmp    $0x5,%ax
     e14:	7c 15                	jl     0xe2b
     e16:	8b 06 36 4b          	mov    0x4b36,%ax
     e1a:	0b c0                	or     %ax,%ax
     e1c:	74 02                	je     0xe20
     e1e:	eb 09                	jmp    0xe29
     e20:	ff 76 fa             	push   -0x6(%bp)
     e23:	e8 ac 4d             	call   0x5bd2
     e26:	83 c4 02             	add    $0x2,%sp
     e29:	eb 38                	jmp    0xe63
     e2b:	ff 76 fa             	push   -0x6(%bp)
     e2e:	e8 56 2d             	call   0x3b87
     e31:	83 c4 02             	add    $0x2,%sp
     e34:	b8 01 00             	mov    $0x1,%ax
     e37:	50                   	push   %ax
     e38:	e8 54 27             	call   0x358f
     e3b:	83 c4 02             	add    $0x2,%sp
     e3e:	81 3e 36 4b 01 00    	cmpw   $0x1,0x4b36
     e44:	75 1d                	jne    0xe63
     e46:	e8 fe 26             	call   0x3547
     e49:	0b c0                	or     %ax,%ax
     e4b:	74 0d                	je     0xe5a
     e4d:	b8 01 00             	mov    $0x1,%ax
     e50:	50                   	push   %ax
     e51:	b0 00                	mov    $0x0,%al
     e53:	50                   	push   %ax
     e54:	e8 3a 4b             	call   0x5991
     e57:	83 c4 04             	add    $0x4,%sp
     e5a:	ff 76 fa             	push   -0x6(%bp)
     e5d:	e8 08 4d             	call   0x5b68
     e60:	83 c4 02             	add    $0x2,%sp
     e63:	8b 76 fa             	mov    -0x6(%bp),%si
     e66:	8b 44 02             	mov    0x2(%si),%ax
     e69:	89 46 fe             	mov    %ax,-0x2(%bp)
     e6c:	ff 76 fa             	push   -0x6(%bp)
     e6f:	e8 77 03             	call   0x11e9
     e72:	83 c4 02             	add    $0x2,%sp
     e75:	89 46 fc             	mov    %ax,-0x4(%bp)
     e78:	81 7e fe b4 00       	cmpw   $0xb4,-0x2(%bp)
     e7d:	7f 02                	jg     0xe81
     e7f:	eb 07                	jmp    0xe88
     e81:	81 7e fe 04 0b       	cmpw   $0xb04,-0x2(%bp)
     e86:	7c 09                	jl     0xe91
     e88:	b8 00 00             	mov    $0x0,%ax
     e8b:	89 06 20 46          	mov    %ax,0x4620
     e8f:	eb 1f                	jmp    0xeb0
     e91:	8b 76 fa             	mov    -0x6(%bp),%si
     e94:	8b 44 02             	mov    0x2(%si),%ax
     e97:	2b 46 fe             	sub    -0x2(%bp),%ax
     e9a:	89 06 20 46          	mov    %ax,0x4620
     e9e:	8b 16 1c 46          	mov    0x461c,%dx
     ea2:	03 d0                	add    %ax,%dx
     ea4:	89 16 1c 46          	mov    %dx,0x461c
     ea8:	8b 06 20 46          	mov    0x4620,%ax
     eac:	01 06 1e 46          	add    %ax,0x461e
     eb0:	8b 76 fa             	mov    -0x6(%bp),%si
     eb3:	8b 44 64             	mov    0x64(%si),%ax
     eb6:	0b c0                	or     %ax,%ax
     eb8:	74 02                	je     0xebc
     eba:	eb 29                	jmp    0xee5
     ebc:	e8 e4 2a             	call   0x39a3
     ebf:	8b 76 fa             	mov    -0x6(%bp),%si
     ec2:	8b 44 14             	mov    0x14(%si),%ax
     ec5:	0b c0                	or     %ax,%ax
     ec7:	74 09                	je     0xed2
     ec9:	ff 76 fa             	push   -0x6(%bp)
     ecc:	e8 34 28             	call   0x3703
     ecf:	83 c4 02             	add    $0x2,%sp
     ed2:	8b 76 fa             	mov    -0x6(%bp),%si
     ed5:	8b 44 26             	mov    0x26(%si),%ax
     ed8:	0b c0                	or     %ax,%ax
     eda:	74 09                	je     0xee5
     edc:	ff 76 fa             	push   -0x6(%bp)
     edf:	e8 fc 27             	call   0x36de
     ee2:	83 c4 02             	add    $0x2,%sp
     ee5:	8b 46 fc             	mov    -0x4(%bp),%ax
     ee8:	8b e5                	mov    %bp,%sp
     eea:	5d                   	pop    %bp
     eeb:	c3                   	ret
     eec:	55                   	push   %bp
     eed:	8b ec                	mov    %sp,%bp
     eef:	83 ec 04             	sub    $0x4,%sp
     ef2:	8b 46 04             	mov    0x4(%bp),%ax
     ef5:	89 46 fc             	mov    %ax,-0x4(%bp)
     ef8:	b8 00 00             	mov    $0x0,%ax
     efb:	8b 76 fc             	mov    -0x4(%bp),%si
     efe:	89 44 12             	mov    %ax,0x12(%si)
     f01:	b8 00 00             	mov    $0x0,%ax
     f04:	8b 76 fc             	mov    -0x4(%bp),%si
     f07:	89 44 14             	mov    %ax,0x14(%si)
     f0a:	8b 76 fc             	mov    -0x4(%bp),%si
     f0d:	89 44 26             	mov    %ax,0x26(%si)
     f10:	8b 76 fc             	mov    -0x4(%bp),%si
     f13:	8b 04                	mov    (%si),%ax
     f15:	89 46 fe             	mov    %ax,-0x2(%bp)
     f18:	83 f8 01             	cmp    $0x1,%ax
     f1b:	74 20                	je     0xf3d
     f1d:	81 7e fe 07 00       	cmpw   $0x7,-0x2(%bp)
     f22:	74 19                	je     0xf3d
     f24:	81 7e fe 05 00       	cmpw   $0x5,-0x2(%bp)
     f29:	74 12                	je     0xf3d
     f2b:	81 7e fe 5c 00       	cmpw   $0x5c,-0x2(%bp)
     f30:	74 0b                	je     0xf3d
     f32:	81 7e fe 5e 00       	cmpw   $0x5e,-0x2(%bp)
     f37:	74 04                	je     0xf3d
     f39:	8b e5                	mov    %bp,%sp
     f3b:	5d                   	pop    %bp
     f3c:	c3                   	ret
     f3d:	81 7e fe 05 00       	cmpw   $0x5,-0x2(%bp)
     f42:	75 03                	jne    0xf47
     f44:	e9 9f 00             	jmp    0xfe6
     f47:	8b 06 36 4b          	mov    0x4b36,%ax
     f4b:	0b c0                	or     %ax,%ax
     f4d:	74 1d                	je     0xf6c
     f4f:	81 3e 36 4b 02 00    	cmpw   $0x2,0x4b36
     f55:	75 11                	jne    0xf68
     f57:	8b 06 ca 48          	mov    0x48ca,%ax
     f5b:	0b c0                	or     %ax,%ax
     f5d:	74 09                	je     0xf68
     f5f:	ff 76 fc             	push   -0x4(%bp)
     f62:	e8 a8 4f             	call   0x5f0d
     f65:	83 c4 02             	add    $0x2,%sp
     f68:	8b e5                	mov    %bp,%sp
     f6a:	5d                   	pop    %bp
     f6b:	c3                   	ret
     f6c:	8b 46 06             	mov    0x6(%bp),%ax
     f6f:	81 e0 00 08          	and    $0x800,%ax
     f73:	0b c0                	or     %ax,%ax
     f75:	74 4b                	je     0xfc2
     f77:	b8 78 ec             	mov    $0xec78,%ax
     f7a:	8b 76 fc             	mov    -0x4(%bp),%si
     f7d:	89 44 1e             	mov    %ax,0x1e(%si)
     f80:	b8 00 00             	mov    $0x0,%ax
     f83:	8b 76 fc             	mov    -0x4(%bp),%si
     f86:	89 44 52             	mov    %ax,0x52(%si)
     f89:	8b 76 fc             	mov    -0x4(%bp),%si
     f8c:	8b 44 64             	mov    0x64(%si),%ax
     f8f:	0b c0                	or     %ax,%ax
     f91:	74 20                	je     0xfb3
     f93:	81 7e fe 5b 00       	cmpw   $0x5b,-0x2(%bp)
     f98:	7c 05                	jl     0xf9f
     f9a:	b8 5d 00             	mov    $0x5d,%ax
     f9d:	eb 03                	jmp    0xfa2
     f9f:	b8 04 00             	mov    $0x4,%ax
     fa2:	89 46 fe             	mov    %ax,-0x2(%bp)
     fa5:	8b 76 fc             	mov    -0x4(%bp),%si
     fa8:	89 04                	mov    %ax,(%si)
     faa:	b8 00 00             	mov    $0x0,%ax
     fad:	8b 76 fc             	mov    -0x4(%bp),%si
     fb0:	89 44 1a             	mov    %ax,0x1a(%si)
     fb3:	8b 06 ca 48          	mov    0x48ca,%ax
     fb7:	0b c0                	or     %ax,%ax
     fb9:	74 07                	je     0xfc2
     fbb:	b8 01 00             	mov    $0x1,%ax
     fbe:	89 06 46 4b          	mov    %ax,0x4b46
     fc2:	8b 46 06             	mov    0x6(%bp),%ax
     fc5:	81 e0 00 02          	and    $0x200,%ax
     fc9:	0b c0                	or     %ax,%ax
     fcb:	74 19                	je     0xfe6
     fcd:	81 7e fe 01 00       	cmpw   $0x1,-0x2(%bp)
     fd2:	75 02                	jne    0xfd6
     fd4:	eb 07                	jmp    0xfdd
     fd6:	81 7e fe 5c 00       	cmpw   $0x5c,-0x2(%bp)
     fdb:	75 09                	jne    0xfe6
     fdd:	b8 01 00             	mov    $0x1,%ax
     fe0:	8b 76 fc             	mov    -0x4(%bp),%si
     fe3:	89 44 52             	mov    %ax,0x52(%si)
     fe6:	8b 46 06             	mov    0x6(%bp),%ax
     fe9:	83 e0 04             	and    $0x4,%ax
     fec:	0b c0                	or     %ax,%ax
     fee:	74 0f                	je     0xfff
     ff0:	8b 76 fc             	mov    -0x4(%bp),%si
     ff3:	ff 44 12             	incw   0x12(%si)
     ff6:	b8 00 00             	mov    $0x0,%ax
     ff9:	8b 76 fc             	mov    -0x4(%bp),%si
     ffc:	89 44 52             	mov    %ax,0x52(%si)
     fff:	8b 46 06             	mov    0x6(%bp),%ax
    1002:	83 e0 08             	and    $0x8,%ax
    1005:	0b c0                	or     %ax,%ax
    1007:	74 0f                	je     0x1018
    1009:	8b 76 fc             	mov    -0x4(%bp),%si
    100c:	ff 4c 12             	decw   0x12(%si)
    100f:	b8 00 00             	mov    $0x0,%ax
    1012:	8b 76 fc             	mov    -0x4(%bp),%si
    1015:	89 44 52             	mov    %ax,0x52(%si)
    1018:	8b 46 06             	mov    0x6(%bp),%ax
    101b:	83 e0 10             	and    $0x10,%ax
    101e:	0b c0                	or     %ax,%ax
    1020:	74 1f                	je     0x1041
    1022:	8b 76 fc             	mov    -0x4(%bp),%si
    1025:	8b 44 0c             	mov    0xc(%si),%ax
    1028:	0b c0                	or     %ax,%ax
    102a:	74 03                	je     0x102f
    102c:	b8 01 00             	mov    $0x1,%ax
    102f:	83 f0 01             	xor    $0x1,%ax
    1032:	8b 76 fc             	mov    -0x4(%bp),%si
    1035:	89 44 0c             	mov    %ax,0xc(%si)
    1038:	b8 00 00             	mov    $0x0,%ax
    103b:	8b 76 fc             	mov    -0x4(%bp),%si
    103e:	89 44 52             	mov    %ax,0x52(%si)
    1041:	8b 46 06             	mov    0x6(%bp),%ax
    1044:	83 e0 02             	and    $0x2,%ax
    1047:	0b c0                	or     %ax,%ax
    1049:	74 19                	je     0x1064
    104b:	8b 76 fc             	mov    -0x4(%bp),%si
    104e:	8b 44 10             	mov    0x10(%si),%ax
    1051:	0b c0                	or     %ax,%ax
    1053:	74 06                	je     0x105b
    1055:	8b 76 fc             	mov    -0x4(%bp),%si
    1058:	ff 4c 10             	decw   0x10(%si)
    105b:	b8 00 00             	mov    $0x0,%ax
    105e:	8b 76 fc             	mov    -0x4(%bp),%si
    1061:	89 44 52             	mov    %ax,0x52(%si)
    1064:	8b 46 06             	mov    0x6(%bp),%ax
    1067:	83 e0 01             	and    $0x1,%ax
    106a:	0b c0                	or     %ax,%ax
    106c:	74 1a                	je     0x1088
    106e:	8b 76 fc             	mov    -0x4(%bp),%si
    1071:	8b 44 10             	mov    0x10(%si),%ax
    1074:	83 f8 04             	cmp    $0x4,%ax
    1077:	7d 06                	jge    0x107f
    1079:	8b 76 fc             	mov    -0x4(%bp),%si
    107c:	ff 44 10             	incw   0x10(%si)
    107f:	b8 00 00             	mov    $0x0,%ax
    1082:	8b 76 fc             	mov    -0x4(%bp),%si
    1085:	89 44 52             	mov    %ax,0x52(%si)
    1088:	8b 46 06             	mov    0x6(%bp),%ax
    108b:	83 e0 20             	and    $0x20,%ax
    108e:	0b c0                	or     %ax,%ax
    1090:	74 10                	je     0x10a2
    1092:	81 7e fe 5b 00       	cmpw   $0x5b,-0x2(%bp)
    1097:	7d 09                	jge    0x10a2
    1099:	b8 01 00             	mov    $0x1,%ax
    109c:	8b 76 fc             	mov    -0x4(%bp),%si
    109f:	89 44 14             	mov    %ax,0x14(%si)
    10a2:	8b 46 06             	mov    0x6(%bp),%ax
    10a5:	81 e0 00 01          	and    $0x100,%ax
    10a9:	0b c0                	or     %ax,%ax
    10ab:	74 10                	je     0x10bd
    10ad:	81 7e fe 5b 00       	cmpw   $0x5b,-0x2(%bp)
    10b2:	7d 09                	jge    0x10bd
    10b4:	b8 01 00             	mov    $0x1,%ax
    10b7:	8b 76 fc             	mov    -0x4(%bp),%si
    10ba:	89 44 26             	mov    %ax,0x26(%si)
    10bd:	8b 46 06             	mov    0x6(%bp),%ax
    10c0:	81 e0 00 04          	and    $0x400,%ax
    10c4:	0b c0                	or     %ax,%ax
    10c6:	74 30                	je     0x10f8
    10c8:	8b 06 ca 48          	mov    0x48ca,%ax
    10cc:	0b c0                	or     %ax,%ax
    10ce:	74 28                	je     0x10f8
    10d0:	8b 06 10 46          	mov    0x4610,%ax
    10d4:	0b c0                	or     %ax,%ax
    10d6:	74 0e                	je     0x10e6
    10d8:	b8 00 00             	mov    $0x0,%ax
    10db:	50                   	push   %ax
    10dc:	50                   	push   %ax
    10dd:	e8 06 13             	call   0x23e6
    10e0:	83 c4 04             	add    $0x4,%sp
    10e3:	e8 47 13             	call   0x242d
    10e6:	8b 06 10 46          	mov    0x4610,%ax
    10ea:	0b c0                	or     %ax,%ax
    10ec:	74 03                	je     0x10f1
    10ee:	b8 01 00             	mov    $0x1,%ax
    10f1:	83 f0 01             	xor    $0x1,%ax
    10f4:	89 06 10 46          	mov    %ax,0x4610
    10f8:	8b 76 fc             	mov    -0x4(%bp),%si
    10fb:	8b 44 52             	mov    0x52(%si),%ax
    10fe:	0b c0                	or     %ax,%ax
    1100:	74 09                	je     0x110b
    1102:	ff 76 fc             	push   -0x4(%bp)
    1105:	e8 05 4e             	call   0x5f0d
    1108:	83 c4 02             	add    $0x2,%sp
    110b:	8b e5                	mov    %bp,%sp
    110d:	5d                   	pop    %bp
    110e:	c3                   	ret
    110f:	55                   	push   %bp
    1110:	8b ec                	mov    %sp,%bp
    1112:	83 ec 04             	sub    $0x4,%sp
    1115:	b8 01 00             	mov    $0x1,%ax
    1118:	89 06 cc 48          	mov    %ax,0x48cc
    111c:	b0 00                	mov    $0x0,%al
    111e:	89 06 ca 48          	mov    %ax,0x48ca
    1122:	8b 46 04             	mov    0x4(%bp),%ax
    1125:	89 46 fc             	mov    %ax,-0x4(%bp)
    1128:	b8 00 00             	mov    $0x0,%ax
    112b:	8b 76 fc             	mov    -0x4(%bp),%si
    112e:	89 44 12             	mov    %ax,0x12(%si)
    1131:	b8 00 00             	mov    $0x0,%ax
    1134:	8b 76 fc             	mov    -0x4(%bp),%si
    1137:	89 44 26             	mov    %ax,0x26(%si)
    113a:	8d 36 bc 48          	lea    0x48bc,%si
    113e:	8b 7e fc             	mov    -0x4(%bp),%di
    1141:	8b 45 38             	mov    0x38(%di),%ax
    1144:	89 06 c8 48          	mov    %ax,0x48c8
    1148:	d1 e0                	shl    %ax
    114a:	03 f0                	add    %ax,%si
    114c:	8b 04                	mov    (%si),%ax
    114e:	89 06 36 4b          	mov    %ax,0x4b36
    1152:	8b 06 34 4b          	mov    0x4b34,%ax
    1156:	0b c0                	or     %ax,%ax
    1158:	74 02                	je     0x115c
    115a:	eb 09                	jmp    0x1165
    115c:	b8 00 00             	mov    $0x0,%ax
    115f:	8b 76 fc             	mov    -0x4(%bp),%si
    1162:	89 44 14             	mov    %ax,0x14(%si)
    1165:	8b 76 fc             	mov    -0x4(%bp),%si
    1168:	8b 04                	mov    (%si),%ax
    116a:	50                   	push   %ax
    116b:	eb 5c                	jmp    0x11c9
    116d:	8b 06 36 4b          	mov    0x4b36,%ax
    1171:	0b c0                	or     %ax,%ax
    1173:	74 0b                	je     0x1180
    1175:	ff 76 fc             	push   -0x4(%bp)
    1178:	e8 92 4d             	call   0x5f0d
    117b:	83 c4 02             	add    $0x2,%sp
    117e:	eb 5c                	jmp    0x11dc
    1180:	8b 06 34 4b          	mov    0x4b34,%ax
    1184:	0b c0                	or     %ax,%ax
    1186:	74 02                	je     0x118a
    1188:	eb 09                	jmp    0x1193
    118a:	ff 76 fc             	push   -0x4(%bp)
    118d:	e8 e1 4b             	call   0x5d71
    1190:	83 c4 02             	add    $0x2,%sp
    1193:	eb 47                	jmp    0x11dc
    1195:	b8 00 00             	mov    $0x0,%ax
    1198:	8b 76 fc             	mov    -0x4(%bp),%si
    119b:	89 44 14             	mov    %ax,0x14(%si)
    119e:	8b 76 fc             	mov    -0x4(%bp),%si
    11a1:	8b 44 1a             	mov    0x1a(%si),%ax
    11a4:	83 f8 00             	cmp    $0x0,%ax
    11a7:	7f 13                	jg     0x11bc
    11a9:	8b 06 36 4b          	mov    0x4b36,%ax
    11ad:	0b c0                	or     %ax,%ax
    11af:	74 02                	je     0x11b3
    11b1:	eb 09                	jmp    0x11bc
    11b3:	ff 76 fc             	push   -0x4(%bp)
    11b6:	e8 15 29             	call   0x3ace
    11b9:	83 c4 02             	add    $0x2,%sp
    11bc:	eb 1e                	jmp    0x11dc
    11be:	b8 00 00             	mov    $0x0,%ax
    11c1:	8b 76 fc             	mov    -0x4(%bp),%si
    11c4:	89 44 14             	mov    %ax,0x14(%si)
    11c7:	eb 13                	jmp    0x11dc
    11c9:	e8 08 87             	call   0x98d4
    11cc:	03 00                	add    (%bx,%si),%ax
    11ce:	04 00                	add    $0x0,%al
    11d0:	07                   	pop    %es
    11d1:	00 01                	add    %al,(%bx,%di)
    11d3:	00 be 12 95          	add    %bh,-0x6aee(%bp)
    11d7:	12 6d 12             	adc    0x12(%di),%ch
    11da:	6d                   	insw   (%dx),%es:(%di)
    11db:	12 ff                	adc    %bh,%bh
    11dd:	76 fc                	jbe    0x11db
    11df:	e8 07 00             	call   0x11e9
    11e2:	83 c4 02             	add    $0x2,%sp
    11e5:	8b e5                	mov    %bp,%sp
    11e7:	5d                   	pop    %bp
    11e8:	c3                   	ret
    11e9:	55                   	push   %bp
    11ea:	8b ec                	mov    %sp,%bp
    11ec:	83 ec 16             	sub    $0x16,%sp
    11ef:	8b 46 04             	mov    0x4(%bp),%ax
    11f2:	89 46 ea             	mov    %ax,-0x16(%bp)
    11f5:	8b 76 ea             	mov    -0x16(%bp),%si
    11f8:	8b 04                	mov    (%si),%ax
    11fa:	89 46 f4             	mov    %ax,-0xc(%bp)
    11fd:	50                   	push   %ax
    11fe:	e9 48 04             	jmp    0x1649
    1201:	b8 00 00             	mov    $0x0,%ax
    1204:	8b e5                	mov    %bp,%sp
    1206:	5d                   	pop    %bp
    1207:	c3                   	ret
    1208:	8b 76 ea             	mov    -0x16(%bp),%si
    120b:	ff 4c 1a             	decw   0x1a(%si)
    120e:	e9 63 04             	jmp    0x1674
    1211:	b8 02 00             	mov    $0x2,%ax
    1214:	8b 76 ea             	mov    -0x16(%bp),%si
    1217:	8b 54 1a             	mov    0x1a(%si),%dx
    121a:	2b d0                	sub    %ax,%dx
    121c:	89 54 1a             	mov    %dx,0x1a(%si)
    121f:	8b 76 ea             	mov    -0x16(%bp),%si
    1222:	8b 44 08             	mov    0x8(%si),%ax
    1225:	83 f8 00             	cmp    $0x0,%ax
    1228:	7d 4a                	jge    0x1274
    122a:	8b 76 ea             	mov    -0x16(%bp),%si
    122d:	8b 44 06             	mov    0x6(%si),%ax
    1230:	0b c0                	or     %ax,%ax
    1232:	74 40                	je     0x1274
    1234:	8b 76 ea             	mov    -0x16(%bp),%si
    1237:	8b 44 0c             	mov    0xc(%si),%ax
    123a:	8b 76 ea             	mov    -0x16(%bp),%si
    123d:	8b 54 06             	mov    0x6(%si),%dx
    1240:	83 fa 00             	cmp    $0x0,%dx
    1243:	ba 01 00             	mov    $0x1,%dx
    1246:	7c 02                	jl     0x124a
    1248:	ff ca                	dec    %dx
    124a:	33 c2                	xor    %dx,%ax
    124c:	0b c0                	or     %ax,%ax
    124e:	74 13                	je     0x1263
    1250:	8b 76 ea             	mov    -0x16(%bp),%si
    1253:	8b 44 12             	mov    0x12(%si),%ax
    1256:	8b 76 ea             	mov    -0x16(%bp),%si
    1259:	8b 54 1a             	mov    0x1a(%si),%dx
    125c:	2b d0                	sub    %ax,%dx
    125e:	89 54 1a             	mov    %dx,0x1a(%si)
    1261:	eb 11                	jmp    0x1274
    1263:	8b 76 ea             	mov    -0x16(%bp),%si
    1266:	8b 44 12             	mov    0x12(%si),%ax
    1269:	8b 76 ea             	mov    -0x16(%bp),%si
    126c:	8b 54 1a             	mov    0x1a(%si),%dx
    126f:	03 d0                	add    %ax,%dx
    1271:	89 54 1a             	mov    %dx,0x1a(%si)
    1274:	8b 76 ea             	mov    -0x16(%bp),%si
    1277:	8b 44 1a             	mov    0x1a(%si),%ax
    127a:	83 f8 00             	cmp    $0x0,%ax
    127d:	7f 61                	jg     0x12e0
    127f:	8b 76 ea             	mov    -0x16(%bp),%si
    1282:	8b 44 08             	mov    0x8(%si),%ax
    1285:	83 f8 00             	cmp    $0x0,%ax
    1288:	7d 3c                	jge    0x12c6
    128a:	8b 76 ea             	mov    -0x16(%bp),%si
    128d:	8b 44 06             	mov    0x6(%si),%ax
    1290:	83 f8 00             	cmp    $0x0,%ax
    1293:	7d 08                	jge    0x129d
    1295:	8b 76 ea             	mov    -0x16(%bp),%si
    1298:	ff 44 06             	incw   0x6(%si)
    129b:	eb 29                	jmp    0x12c6
    129d:	8b 76 ea             	mov    -0x16(%bp),%si
    12a0:	8b 44 06             	mov    0x6(%si),%ax
    12a3:	83 f8 00             	cmp    $0x0,%ax
    12a6:	7e 08                	jle    0x12b0
    12a8:	8b 76 ea             	mov    -0x16(%bp),%si
    12ab:	ff 4c 06             	decw   0x6(%si)
    12ae:	eb 16                	jmp    0x12c6
    12b0:	8b 76 ea             	mov    -0x16(%bp),%si
    12b3:	8b 44 0c             	mov    0xc(%si),%ax
    12b6:	0b c0                	or     %ax,%ax
    12b8:	74 03                	je     0x12bd
    12ba:	b8 01 00             	mov    $0x1,%ax
    12bd:	83 f0 01             	xor    $0x1,%ax
    12c0:	8b 76 ea             	mov    -0x16(%bp),%si
    12c3:	89 44 0c             	mov    %ax,0xc(%si)
    12c6:	8b 76 ea             	mov    -0x16(%bp),%si
    12c9:	8b 44 08             	mov    0x8(%si),%ax
    12cc:	83 f8 f6             	cmp    $0xfff6,%ax
    12cf:	7e 06                	jle    0x12d7
    12d1:	8b 76 ea             	mov    -0x16(%bp),%si
    12d4:	ff 4c 08             	decw   0x8(%si)
    12d7:	b8 0a 00             	mov    $0xa,%ax
    12da:	8b 76 ea             	mov    -0x16(%bp),%si
    12dd:	89 44 1a             	mov    %ax,0x1a(%si)
    12e0:	ff 76 ea             	push   -0x16(%bp)
    12e3:	e8 41 09             	call   0x1c27
    12e6:	83 c4 02             	add    $0x2,%sp
    12e9:	ba 01 00             	mov    $0x1,%dx
    12ec:	8b ca                	mov    %dx,%cx
    12ee:	d3 e0                	shl    %cl,%ax
    12f0:	8b 76 ea             	mov    -0x16(%bp),%si
    12f3:	89 44 0a             	mov    %ax,0xa(%si)
    12f6:	8b 76 ea             	mov    -0x16(%bp),%si
    12f9:	8b 44 08             	mov    0x8(%si),%ax
    12fc:	83 f8 00             	cmp    $0x0,%ax
    12ff:	7f 0d                	jg     0x130e
    1301:	b8 28 00             	mov    $0x28,%ax
    1304:	50                   	push   %ax
    1305:	ff 76 ea             	push   -0x16(%bp)
    1308:	e8 37 14             	call   0x2742
    130b:	83 c4 04             	add    $0x4,%sp
    130e:	e9 63 03             	jmp    0x1674
    1311:	b8 01 00             	mov    $0x1,%ax
    1314:	89 46 f6             	mov    %ax,-0xa(%bp)
    1317:	eb 06                	jmp    0x131f
    1319:	b8 5c 00             	mov    $0x5c,%ax
    131c:	89 46 f6             	mov    %ax,-0xa(%bp)
    131f:	8b 76 ea             	mov    -0x16(%bp),%si
    1322:	8b 44 0a             	mov    0xa(%si),%ax
    1325:	83 f8 0c             	cmp    $0xc,%ax
    1328:	b8 01 00             	mov    $0x1,%ax
    132b:	75 02                	jne    0x132f
    132d:	ff c8                	dec    %ax
    132f:	0b c0                	or     %ax,%ax
    1331:	75 21                	jne    0x1354
    1333:	8b 76 ea             	mov    -0x16(%bp),%si
    1336:	8b 44 0e             	mov    0xe(%si),%ax
    1339:	3b 06 eb 25          	cmp    0x25eb,%ax
    133d:	b8 01 00             	mov    $0x1,%ax
    1340:	7c 02                	jl     0x1344
    1342:	ff c8                	dec    %ax
    1344:	0b c0                	or     %ax,%ax
    1346:	74 03                	je     0x134b
    1348:	b8 01 00             	mov    $0x1,%ax
    134b:	0b c0                	or     %ax,%ax
    134d:	75 05                	jne    0x1354
    134f:	b8 00 00             	mov    $0x0,%ax
    1352:	eb 03                	jmp    0x1357
    1354:	b8 01 00             	mov    $0x1,%ax
    1357:	89 46 fa             	mov    %ax,-0x6(%bp)
    135a:	0b c0                	or     %ax,%ax
    135c:	74 02                	je     0x1360
    135e:	eb 0b                	jmp    0x136b
    1360:	8b 46 f6             	mov    -0xa(%bp),%ax
    1363:	89 46 f4             	mov    %ax,-0xc(%bp)
    1366:	8b 76 ea             	mov    -0x16(%bp),%si
    1369:	89 04                	mov    %ax,(%si)
    136b:	eb 29                	jmp    0x1396
    136d:	8b 76 ea             	mov    -0x16(%bp),%si
    1370:	8b 44 04             	mov    0x4(%si),%ax
    1373:	81 f8 c8 00          	cmp    $0xc8,%ax
    1377:	b8 01 00             	mov    $0x1,%ax
    137a:	7d 02                	jge    0x137e
    137c:	ff c8                	dec    %ax
    137e:	89 46 fa             	mov    %ax,-0x6(%bp)
    1381:	0b c0                	or     %ax,%ax
    1383:	74 11                	je     0x1396
    1385:	ff 76 ea             	push   -0x16(%bp)
    1388:	e8 ed 0e             	call   0x2278
    138b:	83 c4 02             	add    $0x2,%sp
    138e:	8b 76 ea             	mov    -0x16(%bp),%si
    1391:	8b 04                	mov    (%si),%ax
    1393:	89 46 f4             	mov    %ax,-0xc(%bp)
    1396:	8b 06 26 4b          	mov    0x4b26,%ax
    139a:	0b c0                	or     %ax,%ax
    139c:	74 03                	je     0x13a1
    139e:	e9 d3 02             	jmp    0x1674
    13a1:	8b 76 ea             	mov    -0x16(%bp),%si
    13a4:	8b 44 1e             	mov    0x1e(%si),%ax
    13a7:	83 f8 00             	cmp    $0x0,%ax
    13aa:	7f 3b                	jg     0x13e7
    13ac:	8b 76 ea             	mov    -0x16(%bp),%si
    13af:	8b 44 64             	mov    0x64(%si),%ax
    13b2:	0b c0                	or     %ax,%ax
    13b4:	74 02                	je     0x13b8
    13b6:	eb 2f                	jmp    0x13e7
    13b8:	81 7e f4 01 00       	cmpw   $0x1,-0xc(%bp)
    13bd:	75 02                	jne    0x13c1
    13bf:	eb 07                	jmp    0x13c8
    13c1:	81 7e f4 07 00       	cmpw   $0x7,-0xc(%bp)
    13c6:	75 1f                	jne    0x13e7
    13c8:	ff 76 ea             	push   -0x16(%bp)
    13cb:	e8 71 0e             	call   0x223f
    13ce:	83 c4 02             	add    $0x2,%sp
    13d1:	ff 76 ea             	push   -0x16(%bp)
    13d4:	e8 82 3f             	call   0x5359
    13d7:	83 c4 02             	add    $0x2,%sp
    13da:	ff 76 ea             	push   -0x16(%bp)
    13dd:	e8 09 fe             	call   0x11e9
    13e0:	83 c4 02             	add    $0x2,%sp
    13e3:	8b e5                	mov    %bp,%sp
    13e5:	5d                   	pop    %bp
    13e6:	c3                   	ret
    13e7:	8b 76 ea             	mov    -0x16(%bp),%si
    13ea:	8b 44 0a             	mov    0xa(%si),%ax
    13ed:	89 46 ec             	mov    %ax,-0x14(%bp)
    13f0:	8b 76 ea             	mov    -0x16(%bp),%si
    13f3:	8b 44 0e             	mov    0xe(%si),%ax
    13f6:	89 46 ee             	mov    %ax,-0x12(%bp)
    13f9:	b8 00 00             	mov    $0x0,%ax
    13fc:	89 46 fc             	mov    %ax,-0x4(%bp)
    13ff:	8b 76 ea             	mov    -0x16(%bp),%si
    1402:	8b 44 12             	mov    0x12(%si),%ax
    1405:	89 46 fc             	mov    %ax,-0x4(%bp)
    1408:	0b c0                	or     %ax,%ax
    140a:	74 29                	je     0x1435
    140c:	8b 76 ea             	mov    -0x16(%bp),%si
    140f:	8b 44 0c             	mov    0xc(%si),%ax
    1412:	0b c0                	or     %ax,%ax
    1414:	74 08                	je     0x141e
    1416:	8b 46 fc             	mov    -0x4(%bp),%ax
    1419:	29 46 ec             	sub    %ax,-0x14(%bp)
    141c:	eb 06                	jmp    0x1424
    141e:	8b 46 fc             	mov    -0x4(%bp),%ax
    1421:	01 46 ec             	add    %ax,-0x14(%bp)
    1424:	b8 10 00             	mov    $0x10,%ax
    1427:	50                   	push   %ax
    1428:	8b 46 ec             	mov    -0x14(%bp),%ax
    142b:	83 c0 10             	add    $0x10,%ax
    142e:	5b                   	pop    %bx
    142f:	99                   	cwtd
    1430:	f7 fb                	idiv   %bx
    1432:	89 56 ec             	mov    %dx,-0x14(%bp)
    1435:	8b 06 e3 25          	mov    0x25e3,%ax
    1439:	83 e0 03             	and    $0x3,%ax
    143c:	0b c0                	or     %ax,%ax
    143e:	74 02                	je     0x1442
    1440:	eb 5c                	jmp    0x149e
    1442:	8b 46 fa             	mov    -0x6(%bp),%ax
    1445:	0b c0                	or     %ax,%ax
    1447:	74 02                	je     0x144b
    1449:	eb 14                	jmp    0x145f
    144b:	8b 46 ee             	mov    -0x12(%bp),%ax
    144e:	3b 06 eb 25          	cmp    0x25eb,%ax
    1452:	7d 0b                	jge    0x145f
    1454:	ff 4e ee             	decw   -0x12(%bp)
    1457:	b8 01 00             	mov    $0x1,%ax
    145a:	89 46 fc             	mov    %ax,-0x4(%bp)
    145d:	eb 3f                	jmp    0x149e
    145f:	8b 76 ea             	mov    -0x16(%bp),%si
    1462:	8b 44 10             	mov    0x10(%si),%ax
    1465:	03 06 eb 25          	add    0x25eb,%ax
    1469:	50                   	push   %ax
    146a:	8d 36 9f 09          	lea    0x99f,%si
    146e:	03 76 ec             	add    -0x14(%bp),%si
    1471:	8a 04                	mov    (%si),%al
    1473:	98                   	cbtw
    1474:	5a                   	pop    %dx
    1475:	03 d0                	add    %ax,%dx
    1477:	89 56 f8             	mov    %dx,-0x8(%bp)
    147a:	8b 46 ee             	mov    -0x12(%bp),%ax
    147d:	3b 46 f8             	cmp    -0x8(%bp),%ax
    1480:	7d 0b                	jge    0x148d
    1482:	ff 46 ee             	incw   -0x12(%bp)
    1485:	b8 01 00             	mov    $0x1,%ax
    1488:	89 46 fc             	mov    %ax,-0x4(%bp)
    148b:	eb 11                	jmp    0x149e
    148d:	8b 46 ee             	mov    -0x12(%bp),%ax
    1490:	3b 46 f8             	cmp    -0x8(%bp),%ax
    1493:	7e 09                	jle    0x149e
    1495:	ff 4e ee             	decw   -0x12(%bp)
    1498:	b8 01 00             	mov    $0x1,%ax
    149b:	89 46 fc             	mov    %ax,-0x4(%bp)
    149e:	8b 46 fc             	mov    -0x4(%bp),%ax
    14a1:	0b c0                	or     %ax,%ax
    14a3:	75 03                	jne    0x14a8
    14a5:	e9 d0 00             	jmp    0x1578
    14a8:	8b 76 ea             	mov    -0x16(%bp),%si
    14ab:	8b 44 64             	mov    0x64(%si),%ax
    14ae:	0b c0                	or     %ax,%ax
    14b0:	74 27                	je     0x14d9
    14b2:	8b 76 ea             	mov    -0x16(%bp),%si
    14b5:	8b 44 10             	mov    0x10(%si),%ax
    14b8:	0b c0                	or     %ax,%ax
    14ba:	74 02                	je     0x14be
    14bc:	eb 0a                	jmp    0x14c8
    14be:	8b 76 ea             	mov    -0x16(%bp),%si
    14c1:	8b 44 12             	mov    0x12(%si),%ax
    14c4:	0b c0                	or     %ax,%ax
    14c6:	74 09                	je     0x14d1
    14c8:	8b 06 eb 25          	mov    0x25eb,%ax
    14cc:	89 46 ee             	mov    %ax,-0x12(%bp)
    14cf:	eb 06                	jmp    0x14d7
    14d1:	b8 00 00             	mov    $0x0,%ax
    14d4:	89 46 ee             	mov    %ax,-0x12(%bp)
    14d7:	eb 26                	jmp    0x14ff
    14d9:	81 7e ee 00 00       	cmpw   $0x0,-0x12(%bp)
    14de:	7f 1f                	jg     0x14ff
    14e0:	8b 46 fa             	mov    -0x6(%bp),%ax
    14e3:	0b c0                	or     %ax,%ax
    14e5:	74 02                	je     0x14e9
    14e7:	eb 16                	jmp    0x14ff
    14e9:	ff 76 ea             	push   -0x16(%bp)
    14ec:	e8 89 0d             	call   0x2278
    14ef:	83 c4 02             	add    $0x2,%sp
    14f2:	ff 76 ea             	push   -0x16(%bp)
    14f5:	e8 f1 fc             	call   0x11e9
    14f8:	83 c4 02             	add    $0x2,%sp
    14fb:	8b e5                	mov    %bp,%sp
    14fd:	5d                   	pop    %bp
    14fe:	c3                   	ret
    14ff:	8b 46 ee             	mov    -0x12(%bp),%ax
    1502:	8b 76 ea             	mov    -0x16(%bp),%si
    1505:	89 44 0e             	mov    %ax,0xe(%si)
    1508:	8b 46 ec             	mov    -0x14(%bp),%ax
    150b:	8b 76 ea             	mov    -0x16(%bp),%si
    150e:	89 44 0a             	mov    %ax,0xa(%si)
    1511:	8b 46 fa             	mov    -0x6(%bp),%ax
    1514:	0b c0                	or     %ax,%ax
    1516:	74 22                	je     0x153a
    1518:	b8 00 00             	mov    $0x0,%ax
    151b:	8b 76 ea             	mov    -0x16(%bp),%si
    151e:	89 44 32             	mov    %ax,0x32(%si)
    1521:	8b 76 ea             	mov    -0x16(%bp),%si
    1524:	89 44 30             	mov    %ax,0x30(%si)
    1527:	8b 76 ea             	mov    -0x16(%bp),%si
    152a:	89 44 06             	mov    %ax,0x6(%si)
    152d:	8b 46 ee             	mov    -0x12(%bp),%ax
    1530:	f7 d8                	neg    %ax
    1532:	8b 76 ea             	mov    -0x16(%bp),%si
    1535:	89 44 08             	mov    %ax,0x8(%si)
    1538:	eb 3e                	jmp    0x1578
    153a:	8d 36 e5 07          	lea    0x7e5,%si
    153e:	b8 10 00             	mov    $0x10,%ax
    1541:	50                   	push   %ax
    1542:	8b 46 ec             	mov    -0x14(%bp),%ax
    1545:	5b                   	pop    %bx
    1546:	99                   	cwtd
    1547:	f7 fb                	idiv   %bx
    1549:	d1 e2                	shl    %dx
    154b:	03 f2                	add    %dx,%si
    154d:	8b 04                	mov    (%si),%ax
    154f:	f7 6e ee             	imulw  -0x12(%bp)
    1552:	50                   	push   %ax
    1553:	8d 36 e5 07          	lea    0x7e5,%si
    1557:	b8 10 00             	mov    $0x10,%ax
    155a:	50                   	push   %ax
    155b:	8b 46 ec             	mov    -0x14(%bp),%ax
    155e:	83 c0 04             	add    $0x4,%ax
    1561:	5b                   	pop    %bx
    1562:	99                   	cwtd
    1563:	f7 fb                	idiv   %bx
    1565:	d1 e2                	shl    %dx
    1567:	03 f2                	add    %dx,%si
    1569:	8b 04                	mov    (%si),%ax
    156b:	f7 6e ee             	imulw  -0x12(%bp)
    156e:	50                   	push   %ax
    156f:	ff 76 ea             	push   -0x16(%bp)
    1572:	e8 b9 ef             	call   0x52e
    1575:	83 c4 06             	add    $0x6,%sp
    1578:	8b 46 fa             	mov    -0x6(%bp),%ax
    157b:	0b c0                	or     %ax,%ax
    157d:	74 44                	je     0x15c3
    157f:	8b 76 ea             	mov    -0x16(%bp),%si
    1582:	ff 4c 1a             	decw   0x1a(%si)
    1585:	8b 44 1a             	mov    0x1a(%si),%ax
    1588:	0b c0                	or     %ax,%ax
    158a:	74 02                	je     0x158e
    158c:	eb 35                	jmp    0x15c3
    158e:	8b 76 ea             	mov    -0x16(%bp),%si
    1591:	8b 44 0c             	mov    0xc(%si),%ax
    1594:	0b c0                	or     %ax,%ax
    1596:	74 03                	je     0x159b
    1598:	b8 01 00             	mov    $0x1,%ax
    159b:	83 f0 01             	xor    $0x1,%ax
    159e:	8b 76 ea             	mov    -0x16(%bp),%si
    15a1:	89 44 0c             	mov    %ax,0xc(%si)
    15a4:	b8 10 00             	mov    $0x10,%ax
    15a7:	50                   	push   %ax
    15a8:	b0 18                	mov    $0x18,%al
    15aa:	8b 76 ea             	mov    -0x16(%bp),%si
    15ad:	2b 44 0a             	sub    0xa(%si),%ax
    15b0:	5b                   	pop    %bx
    15b1:	99                   	cwtd
    15b2:	f7 fb                	idiv   %bx
    15b4:	8b 76 ea             	mov    -0x16(%bp),%si
    15b7:	89 54 0a             	mov    %dx,0xa(%si)
    15ba:	b8 06 00             	mov    $0x6,%ax
    15bd:	8b 76 ea             	mov    -0x16(%bp),%si
    15c0:	89 44 1a             	mov    %ax,0x1a(%si)
    15c3:	8b 76 ea             	mov    -0x16(%bp),%si
    15c6:	8b 44 14             	mov    0x14(%si),%ax
    15c9:	0b c0                	or     %ax,%ax
    15cb:	74 0d                	je     0x15da
    15cd:	b8 00 00             	mov    $0x0,%ax
    15d0:	50                   	push   %ax
    15d1:	ff 76 ea             	push   -0x16(%bp)
    15d4:	e8 ce 28             	call   0x3ea5
    15d7:	83 c4 04             	add    $0x4,%sp
    15da:	8b 76 ea             	mov    -0x16(%bp),%si
    15dd:	8b 44 26             	mov    0x26(%si),%ax
    15e0:	0b c0                	or     %ax,%ax
    15e2:	74 09                	je     0x15ed
    15e4:	ff 76 ea             	push   -0x16(%bp)
    15e7:	e8 1b 2b             	call   0x4105
    15ea:	83 c4 02             	add    $0x2,%sp
    15ed:	8b 06 cc 48          	mov    0x48cc,%ax
    15f1:	0b c0                	or     %ax,%ax
    15f3:	74 02                	je     0x15f7
    15f5:	eb 3d                	jmp    0x1634
    15f7:	8b 06 ca 48          	mov    0x48ca,%ax
    15fb:	0b c0                	or     %ax,%ax
    15fd:	74 24                	je     0x1623
    15ff:	b8 84 03             	mov    $0x384,%ax
    1602:	50                   	push   %ax
    1603:	8b 76 ea             	mov    -0x16(%bp),%si
    1606:	8b 44 1e             	mov    0x1e(%si),%ax
    1609:	5b                   	pop    %bx
    160a:	99                   	cwtd
    160b:	f7 fb                	idiv   %bx
    160d:	8b 76 ea             	mov    -0x16(%bp),%si
    1610:	8b 44 0e             	mov    0xe(%si),%ax
    1613:	3b c2                	cmp    %dx,%ax
    1615:	7e 0c                	jle    0x1623
    1617:	e8 89 23             	call   0x39a3
    161a:	ff 76 ea             	push   -0x16(%bp)
    161d:	e8 95 20             	call   0x36b5
    1620:	83 c4 02             	add    $0x2,%sp
    1623:	8b 76 ea             	mov    -0x16(%bp),%si
    1626:	8b 44 0e             	mov    0xe(%si),%ax
    1629:	8b 76 ea             	mov    -0x16(%bp),%si
    162c:	8b 54 1e             	mov    0x1e(%si),%dx
    162f:	2b d0                	sub    %ax,%dx
    1631:	89 54 1e             	mov    %dx,0x1e(%si)
    1634:	8b 76 ea             	mov    -0x16(%bp),%si
    1637:	8b 44 0e             	mov    0xe(%si),%ax
    163a:	0b c0                	or     %ax,%ax
    163c:	74 09                	je     0x1647
    163e:	b8 00 00             	mov    $0x0,%ax
    1641:	8b 76 ea             	mov    -0x16(%bp),%si
    1644:	89 44 64             	mov    %ax,0x64(%si)
    1647:	eb 2b                	jmp    0x1674
    1649:	e8 88 82             	call   0x98d4
    164c:	09 00                	or     %ax,(%bx,%si)
    164e:	5c                   	pop    %sp
    164f:	00 01                	add    %al,(%bx,%di)
    1651:	00 5e 00             	add    %bl,0x0(%bp)
    1654:	07                   	pop    %es
    1655:	00 05                	add    %al,(%di)
    1657:	00 5d 00             	add    %bl,0x0(%di)
    165a:	04 00                	add    $0x0,%al
    165c:	00 00                	add    %al,(%bx,%si)
    165e:	5b                   	pop    %bx
    165f:	00 74 17             	add    %dh,0x17(%si)
    1662:	6d                   	insw   (%dx),%es:(%di)
    1663:	14 6d                	adc    $0x6d,%al
    1665:	14 19                	adc    $0x19,%al
    1667:	14 11                	adc    $0x11,%al
    1669:	14 11                	adc    $0x11,%al
    166b:	13 08                	adc    (%bx,%si),%cx
    166d:	13 08                	adc    (%bx,%si),%cx
    166f:	13 01                	adc    (%bx,%di),%ax
    1671:	13 01                	adc    (%bx,%di),%ax
    1673:	13 81 3e 36          	adc    0x363e(%bx,%di),%ax
    1677:	4b                   	dec    %bx
    1678:	01 00                	add    %ax,(%bx,%si)
    167a:	75 2f                	jne    0x16ab
    167c:	8b 06 ca 48          	mov    0x48ca,%ax
    1680:	0b c0                	or     %ax,%ax
    1682:	74 27                	je     0x16ab
    1684:	8b 06 26 4b          	mov    0x4b26,%ax
    1688:	0b c0                	or     %ax,%ax
    168a:	74 1f                	je     0x16ab
    168c:	8d 36 1b 1f          	lea    0x1f1b,%si
    1690:	bb 40 00             	mov    $0x40,%bx
    1693:	b8 12 00             	mov    $0x12,%ax
    1696:	50                   	push   %ax
    1697:	8b 06 c4 48          	mov    0x48c4,%ax
    169b:	59                   	pop    %cx
    169c:	99                   	cwtd
    169d:	f7 f9                	idiv   %cx
    169f:	f7 eb                	imul   %bx
    16a1:	03 f0                	add    %ax,%si
    16a3:	8b 7e ea             	mov    -0x16(%bp),%di
    16a6:	89 75 4e             	mov    %si,0x4e(%di)
    16a9:	eb 69                	jmp    0x1714
    16ab:	8b 76 ea             	mov    -0x16(%bp),%si
    16ae:	8b 04                	mov    (%si),%ax
    16b0:	83 f8 5b             	cmp    $0x5b,%ax
    16b3:	75 05                	jne    0x16ba
    16b5:	b8 00 00             	mov    $0x0,%ax
    16b8:	eb 54                	jmp    0x170e
    16ba:	8b 76 ea             	mov    -0x16(%bp),%si
    16bd:	8b 04                	mov    (%si),%ax
    16bf:	83 f8 05             	cmp    $0x5,%ax
    16c2:	75 2a                	jne    0x16ee
    16c4:	8b 76 ea             	mov    -0x16(%bp),%si
    16c7:	8b 44 06             	mov    0x6(%si),%ax
    16ca:	0b c0                	or     %ax,%ax
    16cc:	74 02                	je     0x16d0
    16ce:	eb 1e                	jmp    0x16ee
    16d0:	8b 76 ea             	mov    -0x16(%bp),%si
    16d3:	8b 44 08             	mov    0x8(%si),%ax
    16d6:	83 f8 00             	cmp    $0x0,%ax
    16d9:	7d 13                	jge    0x16ee
    16db:	8d 36 9b 1e          	lea    0x1e9b,%si
    16df:	bb 40 00             	mov    $0x40,%bx
    16e2:	8b 7e ea             	mov    -0x16(%bp),%di
    16e5:	8b 45 0c             	mov    0xc(%di),%ax
    16e8:	f7 eb                	imul   %bx
    16ea:	03 f0                	add    %ax,%si
    16ec:	eb 1e                	jmp    0x170c
    16ee:	8d 36 9b 16          	lea    0x169b,%si
    16f2:	bb 00 04             	mov    $0x400,%bx
    16f5:	8b 7e ea             	mov    -0x16(%bp),%di
    16f8:	8b 45 0c             	mov    0xc(%di),%ax
    16fb:	f7 eb                	imul   %bx
    16fd:	03 f0                	add    %ax,%si
    16ff:	bb 40 00             	mov    $0x40,%bx
    1702:	8b 7e ea             	mov    -0x16(%bp),%di
    1705:	8b 45 0a             	mov    0xa(%di),%ax
    1708:	f7 eb                	imul   %bx
    170a:	03 f0                	add    %ax,%si
    170c:	8b c6                	mov    %si,%ax
    170e:	8b 76 ea             	mov    -0x16(%bp),%si
    1711:	89 44 4e             	mov    %ax,0x4e(%si)
    1714:	8d 76 f2             	lea    -0xe(%bp),%si
    1717:	56                   	push   %si
    1718:	8d 76 f0             	lea    -0x10(%bp),%si
    171b:	56                   	push   %si
    171c:	ff 76 ea             	push   -0x16(%bp)
    171f:	e8 bf ed             	call   0x4e1
    1722:	83 c4 06             	add    $0x6,%sp
    1725:	81 7e f0 00 00       	cmpw   $0x0,-0x10(%bp)
    172a:	7d 0e                	jge    0x173a
    172c:	b8 00 00             	mov    $0x0,%ax
    172f:	8b 76 ea             	mov    -0x16(%bp),%si
    1732:	89 44 02             	mov    %ax,0x2(%si)
    1735:	89 46 f0             	mov    %ax,-0x10(%bp)
    1738:	eb 13                	jmp    0x174d
    173a:	81 7e f0 a8 0b       	cmpw   $0xba8,-0x10(%bp)
    173f:	7c 0c                	jl     0x174d
    1741:	b8 a8 0b             	mov    $0xba8,%ax
    1744:	8b 76 ea             	mov    -0x16(%bp),%si
    1747:	89 44 02             	mov    %ax,0x2(%si)
    174a:	89 46 f0             	mov    %ax,-0x10(%bp)
    174d:	8b 06 cc 48          	mov    0x48cc,%ax
    1751:	0b c0                	or     %ax,%ax
    1753:	74 02                	je     0x1757
    1755:	eb 33                	jmp    0x178a
    1757:	8b 76 ea             	mov    -0x16(%bp),%si
    175a:	8b 04                	mov    (%si),%ax
    175c:	83 f8 01             	cmp    $0x1,%ax
    175f:	75 02                	jne    0x1763
    1761:	eb 0a                	jmp    0x176d
    1763:	8b 76 ea             	mov    -0x16(%bp),%si
    1766:	8b 04                	mov    (%si),%ax
    1768:	83 f8 07             	cmp    $0x7,%ax
    176b:	75 1d                	jne    0x178a
    176d:	8d 36 bc 48          	lea    0x48bc,%si
    1771:	8b 06 c6 48          	mov    0x48c6,%ax
    1775:	d1 e0                	shl    %ax
    1777:	03 f0                	add    %ax,%si
    1779:	8b 04                	mov    (%si),%ax
    177b:	0b c0                	or     %ax,%ax
    177d:	74 02                	je     0x1781
    177f:	eb 09                	jmp    0x178a
    1781:	ff 76 ea             	push   -0x16(%bp)
    1784:	e8 bb 00             	call   0x1842
    1787:	83 c4 02             	add    $0x2,%sp
    178a:	ff 76 ea             	push   -0x16(%bp)
    178d:	e8 dc 0b             	call   0x236c
    1790:	83 c4 02             	add    $0x2,%sp
    1793:	8b 76 ea             	mov    -0x16(%bp),%si
    1796:	ff 74 48             	push   0x48(%si)
    1799:	ff 76 ea             	push   -0x16(%bp)
    179c:	e8 48 0b             	call   0x22e7
    179f:	83 c4 04             	add    $0x4,%sp
    17a2:	8b 76 ea             	mov    -0x16(%bp),%si
    17a5:	8b 44 50             	mov    0x50(%si),%ax
    17a8:	0b c0                	or     %ax,%ax
    17aa:	74 06                	je     0x17b2
    17ac:	8b 76 ea             	mov    -0x16(%bp),%si
    17af:	ff 4c 50             	decw   0x50(%si)
    17b2:	8b 06 cc 48          	mov    0x48cc,%ax
    17b6:	0b c0                	or     %ax,%ax
    17b8:	74 02                	je     0x17bc
    17ba:	eb 1d                	jmp    0x17d9
    17bc:	8b 76 ea             	mov    -0x16(%bp),%si
    17bf:	8b 44 64             	mov    0x64(%si),%ax
    17c2:	0b c0                	or     %ax,%ax
    17c4:	74 13                	je     0x17d9
    17c6:	8b 76 ea             	mov    -0x16(%bp),%si
    17c9:	8b 04                	mov    (%si),%ax
    17cb:	83 f8 01             	cmp    $0x1,%ax
    17ce:	75 09                	jne    0x17d9
    17d0:	ff 76 ea             	push   -0x16(%bp)
    17d3:	e8 62 01             	call   0x1938
    17d6:	83 c4 02             	add    $0x2,%sp
    17d9:	81 7e f2 c8 00       	cmpw   $0xc8,-0xe(%bp)
    17de:	7d 5b                	jge    0x183b
    17e0:	81 7e f2 00 00       	cmpw   $0x0,-0xe(%bp)
    17e5:	7c 54                	jl     0x183b
    17e7:	8b 76 ea             	mov    -0x16(%bp),%si
    17ea:	8b 04                	mov    (%si),%ax
    17ec:	83 f8 05             	cmp    $0x5,%ax
    17ef:	75 09                	jne    0x17fa
    17f1:	ff 76 ea             	push   -0x16(%bp)
    17f4:	e8 56 2f             	call   0x474d
    17f7:	83 c4 02             	add    $0x2,%sp
    17fa:	e8 a6 21             	call   0x39a3
    17fd:	ff 76 ea             	push   -0x16(%bp)
    1800:	e8 95 3f             	call   0x5798
    1803:	83 c4 02             	add    $0x2,%sp
    1806:	8b 06 ca 48          	mov    0x48ca,%ax
    180a:	0b c0                	or     %ax,%ax
    180c:	74 03                	je     0x1811
    180e:	b8 01 00             	mov    $0x1,%ax
    1811:	0b c0                	or     %ax,%ax
    1813:	75 1f                	jne    0x1834
    1815:	8b 76 ea             	mov    -0x16(%bp),%si
    1818:	8b 04                	mov    (%si),%ax
    181a:	83 f8 5b             	cmp    $0x5b,%ax
    181d:	b8 01 00             	mov    $0x1,%ax
    1820:	7c 02                	jl     0x1824
    1822:	ff c8                	dec    %ax
    1824:	0b c0                	or     %ax,%ax
    1826:	74 03                	je     0x182b
    1828:	b8 01 00             	mov    $0x1,%ax
    182b:	0b c0                	or     %ax,%ax
    182d:	75 05                	jne    0x1834
    182f:	b8 00 00             	mov    $0x0,%ax
    1832:	eb 03                	jmp    0x1837
    1834:	b8 01 00             	mov    $0x1,%ax
    1837:	8b e5                	mov    %bp,%sp
    1839:	5d                   	pop    %bp
    183a:	c3                   	ret
    183b:	b8 00 00             	mov    $0x0,%ax
    183e:	8b e5                	mov    %bp,%sp
    1840:	5d                   	pop    %bp
    1841:	c3                   	ret
    1842:	55                   	push   %bp
    1843:	8b ec                	mov    %sp,%bp
    1845:	83 ec 0e             	sub    $0xe,%sp
    1848:	8b 46 04             	mov    0x4(%bp),%ax
    184b:	89 46 f2             	mov    %ax,-0xe(%bp)
    184e:	8b 06 d8 47          	mov    0x47d8,%ax
    1852:	83 c0 6a             	add    $0x6a,%ax
    1855:	89 46 f4             	mov    %ax,-0xc(%bp)
    1858:	8b 76 f2             	mov    -0xe(%bp),%si
    185b:	8b 44 02             	mov    0x2(%si),%ax
    185e:	89 46 fa             	mov    %ax,-0x6(%bp)
    1861:	8b 76 f2             	mov    -0xe(%bp),%si
    1864:	8b 74 20             	mov    0x20(%si),%si
    1867:	8b 44 2a             	mov    0x2a(%si),%ax
    186a:	89 46 fe             	mov    %ax,-0x2(%bp)
    186d:	b8 01 00             	mov    $0x1,%ax
    1870:	89 46 f8             	mov    %ax,-0x8(%bp)
    1873:	8b 76 f4             	mov    -0xc(%bp),%si
    1876:	8b 44 60             	mov    0x60(%si),%ax
    1879:	83 f8 01             	cmp    $0x1,%ax
    187c:	74 03                	je     0x1881
    187e:	e9 b3 00             	jmp    0x1934
    1881:	8b 76 f4             	mov    -0xc(%bp),%si
    1884:	8b 74 20             	mov    0x20(%si),%si
    1887:	8b 44 2a             	mov    0x2a(%si),%ax
    188a:	3b 46 fe             	cmp    -0x2(%bp),%ax
    188d:	75 03                	jne    0x1892
    188f:	e9 97 00             	jmp    0x1929
    1892:	8d 06 a3 57          	lea    0x57a3,%ax
    1896:	50                   	push   %ax
    1897:	8b 76 f4             	mov    -0xc(%bp),%si
    189a:	ff 74 44             	push   0x44(%si)
    189d:	e8 7a 3c             	call   0x551a
    18a0:	83 c4 04             	add    $0x4,%sp
    18a3:	0b c0                	or     %ax,%ax
    18a5:	75 03                	jne    0x18aa
    18a7:	e9 7f 00             	jmp    0x1929
    18aa:	81 3e ad 25 02 00    	cmpw   $0x2,0x25ad
    18b0:	74 02                	je     0x18b4
    18b2:	eb 24                	jmp    0x18d8
    18b4:	8d 36 d1 07          	lea    0x7d1,%si
    18b8:	8b 46 f8             	mov    -0x8(%bp),%ax
    18bb:	d1 e0                	shl    %ax
    18bd:	03 f0                	add    %ax,%si
    18bf:	8b 04                	mov    (%si),%ax
    18c1:	3b 46 fa             	cmp    -0x6(%bp),%ax
    18c4:	7f 63                	jg     0x1929
    18c6:	8d 36 d9 07          	lea    0x7d9,%si
    18ca:	8b 46 f8             	mov    -0x8(%bp),%ax
    18cd:	d1 e0                	shl    %ax
    18cf:	03 f0                	add    %ax,%si
    18d1:	8b 04                	mov    (%si),%ax
    18d3:	3b 46 fa             	cmp    -0x6(%bp),%ax
    18d6:	7c 51                	jl     0x1929
    18d8:	8d 36 b4 48          	lea    0x48b4,%si
    18dc:	8b 46 f8             	mov    -0x8(%bp),%ax
    18df:	d1 e0                	shl    %ax
    18e1:	03 f0                	add    %ax,%si
    18e3:	8b 34                	mov    (%si),%si
    18e5:	89 76 f6             	mov    %si,-0xa(%bp)
    18e8:	0b f6                	or     %si,%si
    18ea:	74 02                	je     0x18ee
    18ec:	eb 02                	jmp    0x18f0
    18ee:	eb 29                	jmp    0x1919
    18f0:	8b 76 f6             	mov    -0xa(%bp),%si
    18f3:	8b 44 02             	mov    0x2(%si),%ax
    18f6:	8b 76 f4             	mov    -0xc(%bp),%si
    18f9:	2b 44 02             	sub    0x2(%si),%ax
    18fc:	50                   	push   %ax
    18fd:	e8 23 48             	call   0x6123
    1900:	83 c4 02             	add    $0x2,%sp
    1903:	50                   	push   %ax
    1904:	8b 46 fa             	mov    -0x6(%bp),%ax
    1907:	8b 76 f4             	mov    -0xc(%bp),%si
    190a:	2b 44 02             	sub    0x2(%si),%ax
    190d:	50                   	push   %ax
    190e:	e8 12 48             	call   0x6123
    1911:	83 c4 02             	add    $0x2,%sp
    1914:	5a                   	pop    %dx
    1915:	3b c2                	cmp    %dx,%ax
    1917:	7d 10                	jge    0x1929
    1919:	8b 46 f2             	mov    -0xe(%bp),%ax
    191c:	8d 36 b4 48          	lea    0x48b4,%si
    1920:	8b 56 f8             	mov    -0x8(%bp),%dx
    1923:	d1 e2                	shl    %dx
    1925:	03 f2                	add    %dx,%si
    1927:	89 04                	mov    %ax,(%si)
    1929:	ff 46 f8             	incw   -0x8(%bp)
    192c:	81 46 f4 6a 00       	addw   $0x6a,-0xc(%bp)
    1931:	e9 3f ff             	jmp    0x1873
    1934:	8b e5                	mov    %bp,%sp
    1936:	5d                   	pop    %bp
    1937:	c3                   	ret
    1938:	55                   	push   %bp
    1939:	8b ec                	mov    %sp,%bp
    193b:	83 ec 02             	sub    $0x2,%sp
    193e:	8b 46 04             	mov    0x4(%bp),%ax
    1941:	89 46 fe             	mov    %ax,-0x2(%bp)
    1944:	e8 5c 20             	call   0x39a3
    1947:	b8 28 23             	mov    $0x2328,%ax
    194a:	50                   	push   %ax
    194b:	8b 46 fe             	mov    -0x2(%bp),%ax
    194e:	83 c0 1e             	add    $0x1e,%ax
    1951:	50                   	push   %ax
    1952:	e8 50 00             	call   0x19a5
    1955:	83 c4 04             	add    $0x4,%sp
    1958:	0b c0                	or     %ax,%ax
    195a:	74 09                	je     0x1965
    195c:	ff 76 fe             	push   -0x2(%bp)
    195f:	e8 53 1d             	call   0x36b5
    1962:	83 c4 02             	add    $0x2,%sp
    1965:	b8 c8 00             	mov    $0xc8,%ax
    1968:	50                   	push   %ax
    1969:	8b 46 fe             	mov    -0x2(%bp),%ax
    196c:	83 c0 18             	add    $0x18,%ax
    196f:	50                   	push   %ax
    1970:	e8 32 00             	call   0x19a5
    1973:	83 c4 04             	add    $0x4,%sp
    1976:	0b c0                	or     %ax,%ax
    1978:	74 09                	je     0x1983
    197a:	ff 76 fe             	push   -0x2(%bp)
    197d:	e8 83 1d             	call   0x3703
    1980:	83 c4 02             	add    $0x2,%sp
    1983:	b8 05 00             	mov    $0x5,%ax
    1986:	50                   	push   %ax
    1987:	8b 46 fe             	mov    -0x2(%bp),%ax
    198a:	83 c0 28             	add    $0x28,%ax
    198d:	50                   	push   %ax
    198e:	e8 14 00             	call   0x19a5
    1991:	83 c4 04             	add    $0x4,%sp
    1994:	0b c0                	or     %ax,%ax
    1996:	74 09                	je     0x19a1
    1998:	ff 76 fe             	push   -0x2(%bp)
    199b:	e8 40 1d             	call   0x36de
    199e:	83 c4 02             	add    $0x2,%sp
    19a1:	8b e5                	mov    %bp,%sp
    19a3:	5d                   	pop    %bp
    19a4:	c3                   	ret
    19a5:	55                   	push   %bp
    19a6:	8b ec                	mov    %sp,%bp
    19a8:	83 ec 02             	sub    $0x2,%sp
    19ab:	b8 00 00             	mov    $0x0,%ax
    19ae:	89 46 fe             	mov    %ax,-0x2(%bp)
    19b1:	8b 76 04             	mov    0x4(%bp),%si
    19b4:	8b 04                	mov    (%si),%ax
    19b6:	3b 46 06             	cmp    0x6(%bp),%ax
    19b9:	75 07                	jne    0x19c2
    19bb:	8b 46 fe             	mov    -0x2(%bp),%ax
    19be:	8b e5                	mov    %bp,%sp
    19c0:	5d                   	pop    %bp
    19c1:	c3                   	ret
    19c2:	81 7e 06 14 00       	cmpw   $0x14,0x6(%bp)
    19c7:	7d 20                	jge    0x19e9
    19c9:	b8 14 00             	mov    $0x14,%ax
    19cc:	50                   	push   %ax
    19cd:	8b 06 e3 25          	mov    0x25e3,%ax
    19d1:	5b                   	pop    %bx
    19d2:	99                   	cwtd
    19d3:	f7 fb                	idiv   %bx
    19d5:	0b d2                	or     %dx,%dx
    19d7:	74 02                	je     0x19db
    19d9:	eb 0c                	jmp    0x19e7
    19db:	8b 76 04             	mov    0x4(%bp),%si
    19de:	ff 04                	incw   (%si)
    19e0:	8b 06 ca 48          	mov    0x48ca,%ax
    19e4:	89 46 fe             	mov    %ax,-0x2(%bp)
    19e7:	eb 1b                	jmp    0x1a04
    19e9:	b8 64 00             	mov    $0x64,%ax
    19ec:	50                   	push   %ax
    19ed:	8b 46 06             	mov    0x6(%bp),%ax
    19f0:	5b                   	pop    %bx
    19f1:	99                   	cwtd
    19f2:	f7 fb                	idiv   %bx
    19f4:	8b 76 04             	mov    0x4(%bp),%si
    19f7:	8b 14                	mov    (%si),%dx
    19f9:	03 d0                	add    %ax,%dx
    19fb:	89 14                	mov    %dx,(%si)
    19fd:	8b 06 ca 48          	mov    0x48ca,%ax
    1a01:	89 46 fe             	mov    %ax,-0x2(%bp)
    1a04:	8b 76 04             	mov    0x4(%bp),%si
    1a07:	8b 04                	mov    (%si),%ax
    1a09:	3b 46 06             	cmp    0x6(%bp),%ax
    1a0c:	7e 08                	jle    0x1a16
    1a0e:	8b 46 06             	mov    0x6(%bp),%ax
    1a11:	8b 76 04             	mov    0x4(%bp),%si
    1a14:	89 04                	mov    %ax,(%si)
    1a16:	8b 46 fe             	mov    -0x2(%bp),%ax
    1a19:	8b e5                	mov    %bp,%sp
    1a1b:	5d                   	pop    %bp
    1a1c:	c3                   	ret
    1a1d:	55                   	push   %bp
    1a1e:	8b ec                	mov    %sp,%bp
    1a20:	83 ec 06             	sub    $0x6,%sp
    1a23:	8b 46 04             	mov    0x4(%bp),%ax
    1a26:	89 46 fa             	mov    %ax,-0x6(%bp)
    1a29:	ff 76 fa             	push   -0x6(%bp)
    1a2c:	e8 3d 09             	call   0x236c
    1a2f:	83 c4 02             	add    $0x2,%sp
    1a32:	8b 76 fa             	mov    -0x6(%bp),%si
    1a35:	ff 4c 1e             	decw   0x1e(%si)
    1a38:	8b 44 1e             	mov    0x1e(%si),%ax
    1a3b:	0b c0                	or     %ax,%ax
    1a3d:	74 02                	je     0x1a41
    1a3f:	eb 10                	jmp    0x1a51
    1a41:	ff 76 fa             	push   -0x6(%bp)
    1a44:	e8 a5 42             	call   0x5cec
    1a47:	83 c4 02             	add    $0x2,%sp
    1a4a:	b8 00 00             	mov    $0x0,%ax
    1a4d:	8b e5                	mov    %bp,%sp
    1a4f:	5d                   	pop    %bp
    1a50:	c3                   	ret
    1a51:	8d 76 fe             	lea    -0x2(%bp),%si
    1a54:	56                   	push   %si
    1a55:	8d 76 fc             	lea    -0x4(%bp),%si
    1a58:	56                   	push   %si
    1a59:	ff 76 fa             	push   -0x6(%bp)
    1a5c:	e8 82 ea             	call   0x4e1
    1a5f:	83 c4 06             	add    $0x6,%sp
    1a62:	81 7e fe c8 00       	cmpw   $0xc8,-0x2(%bp)
    1a67:	7c 02                	jl     0x1a6b
    1a69:	eb 12                	jmp    0x1a7d
    1a6b:	8d 36 69 52          	lea    0x5269,%si
    1a6f:	03 76 fc             	add    -0x4(%bp),%si
    1a72:	8a 04                	mov    (%si),%al
    1a74:	81 e0 ff 00          	and    $0xff,%ax
    1a78:	3b 46 fe             	cmp    -0x2(%bp),%ax
    1a7b:	7c 02                	jl     0x1a7f
    1a7d:	eb 07                	jmp    0x1a86
    1a7f:	81 7e fc 00 00       	cmpw   $0x0,-0x4(%bp)
    1a84:	7d 02                	jge    0x1a88
    1a86:	eb 07                	jmp    0x1a8f
    1a88:	81 7e fc b8 0b       	cmpw   $0xbb8,-0x4(%bp)
    1a8d:	7c 10                	jl     0x1a9f
    1a8f:	ff 76 fa             	push   -0x6(%bp)
    1a92:	e8 57 42             	call   0x5cec
    1a95:	83 c4 02             	add    $0x2,%sp
    1a98:	b8 00 00             	mov    $0x0,%ax
    1a9b:	8b e5                	mov    %bp,%sp
    1a9d:	5d                   	pop    %bp
    1a9e:	c3                   	ret
    1a9f:	8b 76 fa             	mov    -0x6(%bp),%si
    1aa2:	ff 74 48             	push   0x48(%si)
    1aa5:	ff 76 fa             	push   -0x6(%bp)
    1aa8:	e8 3c 08             	call   0x22e7
    1aab:	83 c4 04             	add    $0x4,%sp
    1aae:	b8 83 00             	mov    $0x83,%ax
    1ab1:	8b 76 fa             	mov    -0x6(%bp),%si
    1ab4:	89 44 4e             	mov    %ax,0x4e(%si)
    1ab7:	b8 01 00             	mov    $0x1,%ax
    1aba:	8b e5                	mov    %bp,%sp
    1abc:	5d                   	pop    %bp
    1abd:	c3                   	ret
    1abe:	55                   	push   %bp
    1abf:	8b ec                	mov    %sp,%bp
    1ac1:	83 ec 0e             	sub    $0xe,%sp
    1ac4:	8b 46 04             	mov    0x4(%bp),%ax
    1ac7:	89 46 f2             	mov    %ax,-0xe(%bp)
    1aca:	ff 76 f2             	push   -0xe(%bp)
    1acd:	e8 9c 08             	call   0x236c
    1ad0:	83 c4 02             	add    $0x2,%sp
    1ad3:	8b 76 f2             	mov    -0xe(%bp),%si
    1ad6:	8b 44 1e             	mov    0x1e(%si),%ax
    1ad9:	83 f8 00             	cmp    $0x0,%ax
    1adc:	7d 24                	jge    0x1b02
    1ade:	ff 76 f2             	push   -0xe(%bp)
    1ae1:	e8 08 42             	call   0x5cec
    1ae4:	83 c4 02             	add    $0x2,%sp
    1ae7:	b8 5b 00             	mov    $0x5b,%ax
    1aea:	8b 76 f2             	mov    -0xe(%bp),%si
    1aed:	89 04                	mov    %ax,(%si)
    1aef:	e8 b1 1e             	call   0x39a3
    1af2:	ff 76 f2             	push   -0xe(%bp)
    1af5:	e8 a0 3c             	call   0x5798
    1af8:	83 c4 02             	add    $0x2,%sp
    1afb:	b8 00 00             	mov    $0x0,%ax
    1afe:	8b e5                	mov    %bp,%sp
    1b00:	5d                   	pop    %bp
    1b01:	c3                   	ret
    1b02:	8b 76 f2             	mov    -0xe(%bp),%si
    1b05:	ff 4c 1e             	decw   0x1e(%si)
    1b08:	8b 44 1e             	mov    0x1e(%si),%ax
    1b0b:	0b c0                	or     %ax,%ax
    1b0d:	74 02                	je     0x1b11
    1b0f:	eb 49                	jmp    0x1b5a
    1b11:	8b 76 f2             	mov    -0xe(%bp),%si
    1b14:	8b 44 08             	mov    0x8(%si),%ax
    1b17:	83 f8 00             	cmp    $0x0,%ax
    1b1a:	7d 24                	jge    0x1b40
    1b1c:	8b 76 f2             	mov    -0xe(%bp),%si
    1b1f:	8b 44 06             	mov    0x6(%si),%ax
    1b22:	83 f8 00             	cmp    $0x0,%ax
    1b25:	7d 08                	jge    0x1b2f
    1b27:	8b 76 f2             	mov    -0xe(%bp),%si
    1b2a:	ff 44 06             	incw   0x6(%si)
    1b2d:	eb 11                	jmp    0x1b40
    1b2f:	8b 76 f2             	mov    -0xe(%bp),%si
    1b32:	8b 44 06             	mov    0x6(%si),%ax
    1b35:	83 f8 00             	cmp    $0x0,%ax
    1b38:	7e 06                	jle    0x1b40
    1b3a:	8b 76 f2             	mov    -0xe(%bp),%si
    1b3d:	ff 4c 06             	decw   0x6(%si)
    1b40:	8b 76 f2             	mov    -0xe(%bp),%si
    1b43:	8b 44 08             	mov    0x8(%si),%ax
    1b46:	83 f8 f6             	cmp    $0xfff6,%ax
    1b49:	7e 06                	jle    0x1b51
    1b4b:	8b 76 f2             	mov    -0xe(%bp),%si
    1b4e:	ff 4c 08             	decw   0x8(%si)
    1b51:	b8 05 00             	mov    $0x5,%ax
    1b54:	8b 76 f2             	mov    -0xe(%bp),%si
    1b57:	89 44 1e             	mov    %ax,0x1e(%si)
    1b5a:	8b 76 f2             	mov    -0xe(%bp),%si
    1b5d:	8b 44 08             	mov    0x8(%si),%ax
    1b60:	83 f8 00             	cmp    $0x0,%ax
    1b63:	7f 0d                	jg     0x1b72
    1b65:	b8 14 00             	mov    $0x14,%ax
    1b68:	50                   	push   %ax
    1b69:	ff 76 f2             	push   -0xe(%bp)
    1b6c:	e8 d3 0b             	call   0x2742
    1b6f:	83 c4 04             	add    $0x4,%sp
    1b72:	8d 76 f6             	lea    -0xa(%bp),%si
    1b75:	56                   	push   %si
    1b76:	8d 76 f4             	lea    -0xc(%bp),%si
    1b79:	56                   	push   %si
    1b7a:	ff 76 f2             	push   -0xe(%bp)
    1b7d:	e8 61 e9             	call   0x4e1
    1b80:	83 c4 06             	add    $0x6,%sp
    1b83:	81 7e f6 00 00       	cmpw   $0x0,-0xa(%bp)
    1b88:	7d 02                	jge    0x1b8c
    1b8a:	eb 07                	jmp    0x1b93
    1b8c:	81 7e f4 00 00       	cmpw   $0x0,-0xc(%bp)
    1b91:	7d 02                	jge    0x1b95
    1b93:	eb 07                	jmp    0x1b9c
    1b95:	81 7e f4 b8 0b       	cmpw   $0xbb8,-0xc(%bp)
    1b9a:	7c 2d                	jl     0x1bc9
    1b9c:	ff 76 f2             	push   -0xe(%bp)
    1b9f:	e8 4a 41             	call   0x5cec
    1ba2:	83 c4 02             	add    $0x2,%sp
    1ba5:	ff 76 f2             	push   -0xe(%bp)
    1ba8:	e8 f3 0c             	call   0x289e
    1bab:	83 c4 02             	add    $0x2,%sp
    1bae:	b8 5b 00             	mov    $0x5b,%ax
    1bb1:	8b 76 f2             	mov    -0xe(%bp),%si
    1bb4:	89 04                	mov    %ax,(%si)
    1bb6:	e8 ea 1d             	call   0x39a3
    1bb9:	ff 76 f2             	push   -0xe(%bp)
    1bbc:	e8 d9 3b             	call   0x5798
    1bbf:	83 c4 02             	add    $0x2,%sp
    1bc2:	b8 00 00             	mov    $0x0,%ax
    1bc5:	8b e5                	mov    %bp,%sp
    1bc7:	5d                   	pop    %bp
    1bc8:	c3                   	ret
    1bc9:	81 7e f6 c8 00       	cmpw   $0xc8,-0xa(%bp)
    1bce:	7c 16                	jl     0x1be6
    1bd0:	8b 76 f2             	mov    -0xe(%bp),%si
    1bd3:	ff 74 48             	push   0x48(%si)
    1bd6:	ff 76 f2             	push   -0xe(%bp)
    1bd9:	e8 0b 07             	call   0x22e7
    1bdc:	83 c4 04             	add    $0x4,%sp
    1bdf:	b8 00 00             	mov    $0x0,%ax
    1be2:	8b e5                	mov    %bp,%sp
    1be4:	5d                   	pop    %bp
    1be5:	c3                   	ret
    1be6:	8b 76 f2             	mov    -0xe(%bp),%si
    1be9:	ff 74 48             	push   0x48(%si)
    1bec:	ff 76 f2             	push   -0xe(%bp)
    1bef:	e8 f5 06             	call   0x22e7
    1bf2:	83 c4 04             	add    $0x4,%sp
    1bf5:	8d 36 91 20          	lea    0x2091,%si
    1bf9:	ff f6                	push   %si
    1bfb:	bb 10 00             	mov    $0x10,%bx
    1bfe:	53                   	push   %bx
    1bff:	ff 76 f2             	push   -0xe(%bp)
    1c02:	e8 22 00             	call   0x1c27
    1c05:	83 c4 02             	add    $0x2,%sp
    1c08:	5a                   	pop    %dx
    1c09:	f7 ea                	imul   %dx
    1c0b:	5e                   	pop    %si
    1c0c:	03 f0                	add    %ax,%si
    1c0e:	8b 7e f2             	mov    -0xe(%bp),%di
    1c11:	89 75 4e             	mov    %si,0x4e(%di)
    1c14:	e8 8c 1d             	call   0x39a3
    1c17:	ff 76 f2             	push   -0xe(%bp)
    1c1a:	e8 7b 3b             	call   0x5798
    1c1d:	83 c4 02             	add    $0x2,%sp
    1c20:	b8 01 00             	mov    $0x1,%ax
    1c23:	8b e5                	mov    %bp,%sp
    1c25:	5d                   	pop    %bp
    1c26:	c3                   	ret
    1c27:	55                   	push   %bp
    1c28:	8b ec                	mov    %sp,%bp
    1c2a:	83 ec 04             	sub    $0x4,%sp
    1c2d:	8b 76 04             	mov    0x4(%bp),%si
    1c30:	8b 44 06             	mov    0x6(%si),%ax
    1c33:	89 46 fc             	mov    %ax,-0x4(%bp)
    1c36:	8b 76 04             	mov    0x4(%bp),%si
    1c39:	8b 44 08             	mov    0x8(%si),%ax
    1c3c:	89 46 fe             	mov    %ax,-0x2(%bp)
    1c3f:	81 7e fc 00 00       	cmpw   $0x0,-0x4(%bp)
    1c44:	75 25                	jne    0x1c6b
    1c46:	81 7e fe 00 00       	cmpw   $0x0,-0x2(%bp)
    1c4b:	7d 07                	jge    0x1c54
    1c4d:	b8 06 00             	mov    $0x6,%ax
    1c50:	8b e5                	mov    %bp,%sp
    1c52:	5d                   	pop    %bp
    1c53:	c3                   	ret
    1c54:	81 7e fe 00 00       	cmpw   $0x0,-0x2(%bp)
    1c59:	7e 07                	jle    0x1c62
    1c5b:	b8 02 00             	mov    $0x2,%ax
    1c5e:	8b e5                	mov    %bp,%sp
    1c60:	5d                   	pop    %bp
    1c61:	c3                   	ret
    1c62:	b8 06 00             	mov    $0x6,%ax
    1c65:	8b e5                	mov    %bp,%sp
    1c67:	5d                   	pop    %bp
    1c68:	c3                   	ret
    1c69:	eb 4f                	jmp    0x1cba
    1c6b:	81 7e fc 00 00       	cmpw   $0x0,-0x4(%bp)
    1c70:	7e 25                	jle    0x1c97
    1c72:	81 7e fe 00 00       	cmpw   $0x0,-0x2(%bp)
    1c77:	7d 07                	jge    0x1c80
    1c79:	b8 07 00             	mov    $0x7,%ax
    1c7c:	8b e5                	mov    %bp,%sp
    1c7e:	5d                   	pop    %bp
    1c7f:	c3                   	ret
    1c80:	81 7e fe 00 00       	cmpw   $0x0,-0x2(%bp)
    1c85:	7e 07                	jle    0x1c8e
    1c87:	b8 01 00             	mov    $0x1,%ax
    1c8a:	8b e5                	mov    %bp,%sp
    1c8c:	5d                   	pop    %bp
    1c8d:	c3                   	ret
    1c8e:	b8 00 00             	mov    $0x0,%ax
    1c91:	8b e5                	mov    %bp,%sp
    1c93:	5d                   	pop    %bp
    1c94:	c3                   	ret
    1c95:	eb 23                	jmp    0x1cba
    1c97:	81 7e fe 00 00       	cmpw   $0x0,-0x2(%bp)
    1c9c:	7d 07                	jge    0x1ca5
    1c9e:	b8 05 00             	mov    $0x5,%ax
    1ca1:	8b e5                	mov    %bp,%sp
    1ca3:	5d                   	pop    %bp
    1ca4:	c3                   	ret
    1ca5:	81 7e fe 00 00       	cmpw   $0x0,-0x2(%bp)
    1caa:	7e 07                	jle    0x1cb3
    1cac:	b8 03 00             	mov    $0x3,%ax
    1caf:	8b e5                	mov    %bp,%sp
    1cb1:	5d                   	pop    %bp
    1cb2:	c3                   	ret
    1cb3:	b8 04 00             	mov    $0x4,%ax
    1cb6:	8b e5                	mov    %bp,%sp
    1cb8:	5d                   	pop    %bp
    1cb9:	c3                   	ret
    1cba:	8b e5                	mov    %bp,%sp
    1cbc:	5d                   	pop    %bp
    1cbd:	c3                   	ret
    1cbe:	55                   	push   %bp
    1cbf:	8b ec                	mov    %sp,%bp
    1cc1:	83 ec 04             	sub    $0x4,%sp
    1cc4:	8b 06 d8 47          	mov    0x47d8,%ax
    1cc8:	89 46 fe             	mov    %ax,-0x2(%bp)
    1ccb:	b8 00 00             	mov    $0x0,%ax
    1cce:	8b 76 04             	mov    0x4(%bp),%si
    1cd1:	89 44 14             	mov    %ax,0x14(%si)
    1cd4:	8b 06 e7 25          	mov    0x25e7,%ax
    1cd8:	0b c0                	or     %ax,%ax
    1cda:	75 03                	jne    0x1cdf
    1cdc:	e9 88 00             	jmp    0x1d67
    1cdf:	8b 76 04             	mov    0x4(%bp),%si
    1ce2:	8b 04                	mov    (%si),%ax
    1ce4:	83 f8 06             	cmp    $0x6,%ax
    1ce7:	74 03                	je     0x1cec
    1ce9:	e9 7b 00             	jmp    0x1d67
    1cec:	8b 76 fe             	mov    -0x2(%bp),%si
    1cef:	8b 04                	mov    (%si),%ax
    1cf1:	83 f8 01             	cmp    $0x1,%ax
    1cf4:	75 02                	jne    0x1cf8
    1cf6:	eb 0a                	jmp    0x1d02
    1cf8:	8b 76 fe             	mov    -0x2(%bp),%si
    1cfb:	8b 04                	mov    (%si),%ax
    1cfd:	83 f8 07             	cmp    $0x7,%ax
    1d00:	75 65                	jne    0x1d67
    1d02:	8b 76 fe             	mov    -0x2(%bp),%si
    1d05:	8b 7e 04             	mov    0x4(%bp),%di
    1d08:	8b 45 2a             	mov    0x2a(%di),%ax
    1d0b:	3b 44 2a             	cmp    0x2a(%si),%ax
    1d0e:	74 57                	je     0x1d67
    1d10:	81 3e e7 25 01 00    	cmpw   $0x1,0x25e7
    1d16:	7e 02                	jle    0x1d1a
    1d18:	eb 0b                	jmp    0x1d25
    1d1a:	8b 06 e3 25          	mov    0x25e3,%ax
    1d1e:	83 e0 01             	and    $0x1,%ax
    1d21:	0b c0                	or     %ax,%ax
    1d23:	74 42                	je     0x1d67
    1d25:	8b 76 fe             	mov    -0x2(%bp),%si
    1d28:	ff 74 04             	push   0x4(%si)
    1d2b:	8b 76 fe             	mov    -0x2(%bp),%si
    1d2e:	ff 74 02             	push   0x2(%si)
    1d31:	8b 76 04             	mov    0x4(%bp),%si
    1d34:	ff 74 04             	push   0x4(%si)
    1d37:	8b 76 04             	mov    0x4(%bp),%si
    1d3a:	ff 74 02             	push   0x2(%si)
    1d3d:	e8 2b 4a             	call   0x676b
    1d40:	83 c4 08             	add    $0x8,%sp
    1d43:	89 46 fc             	mov    %ax,-0x4(%bp)
    1d46:	83 f8 00             	cmp    $0x0,%ax
    1d49:	7e 1c                	jle    0x1d67
    1d4b:	8b 46 fc             	mov    -0x4(%bp),%ax
    1d4e:	3b 06 ed 25          	cmp    0x25ed,%ax
    1d52:	7d 13                	jge    0x1d67
    1d54:	8b 46 fe             	mov    -0x2(%bp),%ax
    1d57:	8b 76 04             	mov    0x4(%bp),%si
    1d5a:	89 44 14             	mov    %ax,0x14(%si)
    1d5d:	50                   	push   %ax
    1d5e:	ff 76 04             	push   0x4(%bp)
    1d61:	e8 41 21             	call   0x3ea5
    1d64:	83 c4 04             	add    $0x4,%sp
    1d67:	8b 76 04             	mov    0x4(%bp),%si
    1d6a:	ff 4c 1a             	decw   0x1a(%si)
    1d6d:	8b 44 1a             	mov    0x1a(%si),%ax
    1d70:	83 f8 00             	cmp    $0x0,%ax
    1d73:	7d 09                	jge    0x1d7e
    1d75:	b8 00 00             	mov    $0x0,%ax
    1d78:	8b 76 04             	mov    0x4(%bp),%si
    1d7b:	89 44 1a             	mov    %ax,0x1a(%si)
    1d7e:	8b 76 04             	mov    0x4(%bp),%si
    1d81:	8b 04                	mov    (%si),%ax
    1d83:	83 f8 06             	cmp    $0x6,%ax
    1d86:	75 13                	jne    0x1d9b
    1d88:	8d 36 11 21          	lea    0x2111,%si
    1d8c:	bb 40 00             	mov    $0x40,%bx
    1d8f:	8b 7e 04             	mov    0x4(%bp),%di
    1d92:	8b 45 0c             	mov    0xc(%di),%ax
    1d95:	f7 eb                	imul   %bx
    1d97:	03 f0                	add    %ax,%si
    1d99:	eb 06                	jmp    0x1da1
    1d9b:	8d 06 11 22          	lea    0x2211,%ax
    1d9f:	8b f0                	mov    %ax,%si
    1da1:	8b 7e 04             	mov    0x4(%bp),%di
    1da4:	89 75 4e             	mov    %si,0x4e(%di)
    1da7:	b8 01 00             	mov    $0x1,%ax
    1daa:	8b e5                	mov    %bp,%sp
    1dac:	5d                   	pop    %bp
    1dad:	c3                   	ret
    1dae:	55                   	push   %bp
    1daf:	8b ec                	mov    %sp,%bp
    1db1:	83 ec 08             	sub    $0x8,%sp
    1db4:	8b 46 04             	mov    0x4(%bp),%ax
    1db7:	89 46 f8             	mov    %ax,-0x8(%bp)
    1dba:	8b 76 f8             	mov    -0x8(%bp),%si
    1dbd:	8b 44 0c             	mov    0xc(%si),%ax
    1dc0:	89 46 fe             	mov    %ax,-0x2(%bp)
    1dc3:	ff 76 f8             	push   -0x8(%bp)
    1dc6:	e8 a3 05             	call   0x236c
    1dc9:	83 c4 02             	add    $0x2,%sp
    1dcc:	8b 76 f8             	mov    -0x8(%bp),%si
    1dcf:	8b 44 1e             	mov    0x1e(%si),%ax
    1dd2:	83 f8 00             	cmp    $0x0,%ax
    1dd5:	7d 20                	jge    0x1df7
    1dd7:	8b 46 fe             	mov    -0x2(%bp),%ax
    1dda:	0b c0                	or     %ax,%ax
    1ddc:	74 09                	je     0x1de7
    1dde:	ff 76 f8             	push   -0x8(%bp)
    1de1:	e8 ba 0a             	call   0x289e
    1de4:	83 c4 02             	add    $0x2,%sp
    1de7:	ff 76 f8             	push   -0x8(%bp)
    1dea:	e8 ff 3e             	call   0x5cec
    1ded:	83 c4 02             	add    $0x2,%sp
    1df0:	b8 00 00             	mov    $0x0,%ax
    1df3:	8b e5                	mov    %bp,%sp
    1df5:	5d                   	pop    %bp
    1df6:	c3                   	ret
    1df7:	8b 76 f8             	mov    -0x8(%bp),%si
    1dfa:	ff 4c 1e             	decw   0x1e(%si)
    1dfd:	8b 44 1e             	mov    0x1e(%si),%ax
    1e00:	0b c0                	or     %ax,%ax
    1e02:	74 02                	je     0x1e06
    1e04:	eb 71                	jmp    0x1e77
    1e06:	8b 76 f8             	mov    -0x8(%bp),%si
    1e09:	8b 44 08             	mov    0x8(%si),%ax
    1e0c:	83 f8 00             	cmp    $0x0,%ax
    1e0f:	7d 24                	jge    0x1e35
    1e11:	8b 76 f8             	mov    -0x8(%bp),%si
    1e14:	8b 44 06             	mov    0x6(%si),%ax
    1e17:	83 f8 00             	cmp    $0x0,%ax
    1e1a:	7d 08                	jge    0x1e24
    1e1c:	8b 76 f8             	mov    -0x8(%bp),%si
    1e1f:	ff 44 06             	incw   0x6(%si)
    1e22:	eb 11                	jmp    0x1e35
    1e24:	8b 76 f8             	mov    -0x8(%bp),%si
    1e27:	8b 44 06             	mov    0x6(%si),%ax
    1e2a:	83 f8 00             	cmp    $0x0,%ax
    1e2d:	7e 06                	jle    0x1e35
    1e2f:	8b 76 f8             	mov    -0x8(%bp),%si
    1e32:	ff 4c 06             	decw   0x6(%si)
    1e35:	8b 76 f8             	mov    -0x8(%bp),%si
    1e38:	8b 44 0c             	mov    0xc(%si),%ax
    1e3b:	0b c0                	or     %ax,%ax
    1e3d:	74 0d                	je     0x1e4c
    1e3f:	8b 76 f8             	mov    -0x8(%bp),%si
    1e42:	8b 44 08             	mov    0x8(%si),%ax
    1e45:	83 f8 f6             	cmp    $0xfff6,%ax
    1e48:	7e 02                	jle    0x1e4c
    1e4a:	eb 1c                	jmp    0x1e68
    1e4c:	8b 76 f8             	mov    -0x8(%bp),%si
    1e4f:	8b 44 0c             	mov    0xc(%si),%ax
    1e52:	0b c0                	or     %ax,%ax
    1e54:	74 02                	je     0x1e58
    1e56:	eb 16                	jmp    0x1e6e
    1e58:	8b 06 eb 25          	mov    0x25eb,%ax
    1e5c:	f7 d8                	neg    %ax
    1e5e:	8b 76 f8             	mov    -0x8(%bp),%si
    1e61:	8b 54 08             	mov    0x8(%si),%dx
    1e64:	3b d0                	cmp    %ax,%dx
    1e66:	7e 06                	jle    0x1e6e
    1e68:	8b 76 f8             	mov    -0x8(%bp),%si
    1e6b:	ff 4c 08             	decw   0x8(%si)
    1e6e:	b8 03 00             	mov    $0x3,%ax
    1e71:	8b 76 f8             	mov    -0x8(%bp),%si
    1e74:	89 44 1e             	mov    %ax,0x1e(%si)
    1e77:	8d 76 fc             	lea    -0x4(%bp),%si
    1e7a:	56                   	push   %si
    1e7b:	8d 76 fa             	lea    -0x6(%bp),%si
    1e7e:	56                   	push   %si
    1e7f:	ff 76 f8             	push   -0x8(%bp)
    1e82:	e8 5c e6             	call   0x4e1
    1e85:	83 c4 06             	add    $0x6,%sp
    1e88:	8d 36 69 52          	lea    0x5269,%si
    1e8c:	03 76 fa             	add    -0x6(%bp),%si
    1e8f:	8a 04                	mov    (%si),%al
    1e91:	81 e0 ff 00          	and    $0xff,%ax
    1e95:	3b 46 fc             	cmp    -0x4(%bp),%ax
    1e98:	7c 02                	jl     0x1e9c
    1e9a:	eb 07                	jmp    0x1ea3
    1e9c:	81 7e fa 00 00       	cmpw   $0x0,-0x6(%bp)
    1ea1:	7d 02                	jge    0x1ea5
    1ea3:	eb 07                	jmp    0x1eac
    1ea5:	81 7e fa b8 0b       	cmpw   $0xbb8,-0x6(%bp)
    1eaa:	7c 20                	jl     0x1ecc
    1eac:	8b 46 fe             	mov    -0x2(%bp),%ax
    1eaf:	0b c0                	or     %ax,%ax
    1eb1:	74 09                	je     0x1ebc
    1eb3:	ff 76 f8             	push   -0x8(%bp)
    1eb6:	e8 e5 09             	call   0x289e
    1eb9:	83 c4 02             	add    $0x2,%sp
    1ebc:	ff 76 f8             	push   -0x8(%bp)
    1ebf:	e8 2a 3e             	call   0x5cec
    1ec2:	83 c4 02             	add    $0x2,%sp
    1ec5:	b8 00 00             	mov    $0x0,%ax
    1ec8:	8b e5                	mov    %bp,%sp
    1eca:	5d                   	pop    %bp
    1ecb:	c3                   	ret
    1ecc:	8b 76 f8             	mov    -0x8(%bp),%si
    1ecf:	ff 44 1a             	incw   0x1a(%si)
    1ed2:	81 7e fc c8 00       	cmpw   $0xc8,-0x4(%bp)
    1ed7:	7c 16                	jl     0x1eef
    1ed9:	8b 76 f8             	mov    -0x8(%bp),%si
    1edc:	ff 74 48             	push   0x48(%si)
    1edf:	ff 76 f8             	push   -0x8(%bp)
    1ee2:	e8 02 04             	call   0x22e7
    1ee5:	83 c4 04             	add    $0x4,%sp
    1ee8:	b8 00 00             	mov    $0x0,%ax
    1eeb:	8b e5                	mov    %bp,%sp
    1eed:	5d                   	pop    %bp
    1eee:	c3                   	ret
    1eef:	8b 76 f8             	mov    -0x8(%bp),%si
    1ef2:	ff 74 48             	push   0x48(%si)
    1ef5:	ff 76 f8             	push   -0x8(%bp)
    1ef8:	e8 ec 03             	call   0x22e7
    1efb:	83 c4 04             	add    $0x4,%sp
    1efe:	8d 36 51 22          	lea    0x2251,%si
    1f02:	bb 10 00             	mov    $0x10,%bx
    1f05:	8b 7e f8             	mov    -0x8(%bp),%di
    1f08:	8b 45 0c             	mov    0xc(%di),%ax
    1f0b:	f7 eb                	imul   %bx
    1f0d:	03 f0                	add    %ax,%si
    1f0f:	8b 7e f8             	mov    -0x8(%bp),%di
    1f12:	89 75 4e             	mov    %si,0x4e(%di)
    1f15:	b8 01 00             	mov    $0x1,%ax
    1f18:	8b e5                	mov    %bp,%sp
    1f1a:	5d                   	pop    %bp
    1f1b:	c3                   	ret
    1f1c:	55                   	push   %bp
    1f1d:	8b ec                	mov    %sp,%bp
    1f1f:	83 ec 04             	sub    $0x4,%sp
    1f22:	8b 46 04             	mov    0x4(%bp),%ax
    1f25:	89 46 fc             	mov    %ax,-0x4(%bp)
    1f28:	8b 76 fc             	mov    -0x4(%bp),%si
    1f2b:	ff 4c 1e             	decw   0x1e(%si)
    1f2e:	8b 44 1e             	mov    0x1e(%si),%ax
    1f31:	0b c0                	or     %ax,%ax
    1f33:	74 02                	je     0x1f37
    1f35:	eb 02                	jmp    0x1f39
    1f37:	eb 17                	jmp    0x1f50
    1f39:	8b 76 fc             	mov    -0x4(%bp),%si
    1f3c:	8b 74 20             	mov    0x20(%si),%si
    1f3f:	8b 04                	mov    (%si),%ax
    1f41:	89 46 fe             	mov    %ax,-0x2(%bp)
    1f44:	83 f8 05             	cmp    $0x5,%ax
    1f47:	74 17                	je     0x1f60
    1f49:	81 7e fe 04 00       	cmpw   $0x4,-0x2(%bp)
    1f4e:	74 10                	je     0x1f60
    1f50:	ff 76 fc             	push   -0x4(%bp)
    1f53:	e8 96 3d             	call   0x5cec
    1f56:	83 c4 02             	add    $0x2,%sp
    1f59:	b8 00 00             	mov    $0x0,%ax
    1f5c:	8b e5                	mov    %bp,%sp
    1f5e:	5d                   	pop    %bp
    1f5f:	c3                   	ret
    1f60:	8b 76 fc             	mov    -0x4(%bp),%si
    1f63:	8b 44 2a             	mov    0x2a(%si),%ax
    1f66:	81 c0 80 00          	add    $0x80,%ax
    1f6a:	8b 76 fc             	mov    -0x4(%bp),%si
    1f6d:	89 44 4e             	mov    %ax,0x4e(%si)
    1f70:	b8 01 00             	mov    $0x1,%ax
    1f73:	8b e5                	mov    %bp,%sp
    1f75:	5d                   	pop    %bp
    1f76:	c3                   	ret
    1f77:	55                   	push   %bp
    1f78:	8b ec                	mov    %sp,%bp
    1f7a:	83 ec 06             	sub    $0x6,%sp
    1f7d:	8b 46 04             	mov    0x4(%bp),%ax
    1f80:	89 46 fa             	mov    %ax,-0x6(%bp)
    1f83:	ff 76 fa             	push   -0x6(%bp)
    1f86:	e8 e3 03             	call   0x236c
    1f89:	83 c4 02             	add    $0x2,%sp
    1f8c:	8b 76 fa             	mov    -0x6(%bp),%si
    1f8f:	8b 44 1e             	mov    0x1e(%si),%ax
    1f92:	83 f8 ff             	cmp    $0xffff,%ax
    1f95:	75 1c                	jne    0x1fb3
    1f97:	e8 09 1a             	call   0x39a3
    1f9a:	ff 76 fa             	push   -0x6(%bp)
    1f9d:	e8 f8 37             	call   0x5798
    1fa0:	83 c4 02             	add    $0x2,%sp
    1fa3:	ff 76 fa             	push   -0x6(%bp)
    1fa6:	e8 43 3d             	call   0x5cec
    1fa9:	83 c4 02             	add    $0x2,%sp
    1fac:	b8 00 00             	mov    $0x0,%ax
    1faf:	8b e5                	mov    %bp,%sp
    1fb1:	5d                   	pop    %bp
    1fb2:	c3                   	ret
    1fb3:	8b 76 fa             	mov    -0x6(%bp),%si
    1fb6:	ff 4c 1e             	decw   0x1e(%si)
    1fb9:	8b 44 1e             	mov    0x1e(%si),%ax
    1fbc:	0b c0                	or     %ax,%ax
    1fbe:	74 02                	je     0x1fc2
    1fc0:	eb 1f                	jmp    0x1fe1
    1fc2:	8b 76 fa             	mov    -0x6(%bp),%si
    1fc5:	8b 44 0c             	mov    0xc(%si),%ax
    1fc8:	0b c0                	or     %ax,%ax
    1fca:	74 03                	je     0x1fcf
    1fcc:	b8 01 00             	mov    $0x1,%ax
    1fcf:	83 f0 01             	xor    $0x1,%ax
    1fd2:	8b 76 fa             	mov    -0x6(%bp),%si
    1fd5:	89 44 0c             	mov    %ax,0xc(%si)
    1fd8:	b8 05 00             	mov    $0x5,%ax
    1fdb:	8b 76 fa             	mov    -0x6(%bp),%si
    1fde:	89 44 1e             	mov    %ax,0x1e(%si)
    1fe1:	8b 76 fa             	mov    -0x6(%bp),%si
    1fe4:	8b 44 02             	mov    0x2(%si),%ax
    1fe7:	81 f8 72 01          	cmp    $0x172,%ax
    1feb:	7d 02                	jge    0x1fef
    1fed:	eb 0c                	jmp    0x1ffb
    1fef:	8b 76 fa             	mov    -0x6(%bp),%si
    1ff2:	8b 44 02             	mov    0x2(%si),%ax
    1ff5:	81 f8 46 0a          	cmp    $0xa46,%ax
    1ff9:	7e 0e                	jle    0x2009
    1ffb:	8b 76 fa             	mov    -0x6(%bp),%si
    1ffe:	8b 44 06             	mov    0x6(%si),%ax
    2001:	f7 d8                	neg    %ax
    2003:	8b 76 fa             	mov    -0x6(%bp),%si
    2006:	89 44 06             	mov    %ax,0x6(%si)
    2009:	8d 76 fe             	lea    -0x2(%bp),%si
    200c:	56                   	push   %si
    200d:	8d 76 fc             	lea    -0x4(%bp),%si
    2010:	56                   	push   %si
    2011:	ff 76 fa             	push   -0x6(%bp)
    2014:	e8 ca e4             	call   0x4e1
    2017:	83 c4 06             	add    $0x6,%sp
    201a:	8b 76 fa             	mov    -0x6(%bp),%si
    201d:	ff 74 48             	push   0x48(%si)
    2020:	ff 76 fa             	push   -0x6(%bp)
    2023:	e8 c1 02             	call   0x22e7
    2026:	83 c4 04             	add    $0x4,%sp
    2029:	8d 36 d1 22          	lea    0x22d1,%si
    202d:	bb 40 00             	mov    $0x40,%bx
    2030:	8b 7e fa             	mov    -0x6(%bp),%di
    2033:	8b 45 0c             	mov    0xc(%di),%ax
    2036:	f7 eb                	imul   %bx
    2038:	03 f0                	add    %ax,%si
    203a:	8b 7e fa             	mov    -0x6(%bp),%di
    203d:	89 75 4e             	mov    %si,0x4e(%di)
    2040:	e8 60 19             	call   0x39a3
    2043:	ff 76 fa             	push   -0x6(%bp)
    2046:	e8 4f 37             	call   0x5798
    2049:	83 c4 02             	add    $0x2,%sp
    204c:	b8 01 00             	mov    $0x1,%ax
    204f:	8b e5                	mov    %bp,%sp
    2051:	5d                   	pop    %bp
    2052:	c3                   	ret
    2053:	55                   	push   %bp
    2054:	8b ec                	mov    %sp,%bp
    2056:	83 ec 06             	sub    $0x6,%sp
    2059:	8b 46 04             	mov    0x4(%bp),%ax
    205c:	89 46 fa             	mov    %ax,-0x6(%bp)
    205f:	ff 76 fa             	push   -0x6(%bp)
    2062:	e8 07 03             	call   0x236c
    2065:	83 c4 02             	add    $0x2,%sp
    2068:	8b 76 fa             	mov    -0x6(%bp),%si
    206b:	8b 44 1e             	mov    0x1e(%si),%ax
    206e:	83 f8 ff             	cmp    $0xffff,%ax
    2071:	75 10                	jne    0x2083
    2073:	ff 76 fa             	push   -0x6(%bp)
    2076:	e8 73 3c             	call   0x5cec
    2079:	83 c4 02             	add    $0x2,%sp
    207c:	b8 00 00             	mov    $0x0,%ax
    207f:	8b e5                	mov    %bp,%sp
    2081:	5d                   	pop    %bp
    2082:	c3                   	ret
    2083:	8b 76 fa             	mov    -0x6(%bp),%si
    2086:	8b 44 1e             	mov    0x1e(%si),%ax
    2089:	83 f8 fe             	cmp    $0xfffe,%ax
    208c:	75 29                	jne    0x20b7
    208e:	8b 76 fa             	mov    -0x6(%bp),%si
    2091:	8b 44 08             	mov    0x8(%si),%ax
    2094:	f7 d8                	neg    %ax
    2096:	8b 76 fa             	mov    -0x6(%bp),%si
    2099:	89 44 08             	mov    %ax,0x8(%si)
    209c:	8b 06 e3 25          	mov    0x25e3,%ax
    20a0:	83 e0 07             	and    $0x7,%ax
    20a3:	83 e8 04             	sub    $0x4,%ax
    20a6:	8b 76 fa             	mov    -0x6(%bp),%si
    20a9:	89 44 06             	mov    %ax,0x6(%si)
    20ac:	b8 04 00             	mov    $0x4,%ax
    20af:	8b 76 fa             	mov    -0x6(%bp),%si
    20b2:	89 44 1e             	mov    %ax,0x1e(%si)
    20b5:	eb 2e                	jmp    0x20e5
    20b7:	8b 76 fa             	mov    -0x6(%bp),%si
    20ba:	ff 4c 1e             	decw   0x1e(%si)
    20bd:	8b 44 1e             	mov    0x1e(%si),%ax
    20c0:	0b c0                	or     %ax,%ax
    20c2:	74 02                	je     0x20c6
    20c4:	eb 1f                	jmp    0x20e5
    20c6:	8b 76 fa             	mov    -0x6(%bp),%si
    20c9:	8b 44 0c             	mov    0xc(%si),%ax
    20cc:	0b c0                	or     %ax,%ax
    20ce:	74 03                	je     0x20d3
    20d0:	b8 01 00             	mov    $0x1,%ax
    20d3:	83 f0 01             	xor    $0x1,%ax
    20d6:	8b 76 fa             	mov    -0x6(%bp),%si
    20d9:	89 44 0c             	mov    %ax,0xc(%si)
    20dc:	b8 04 00             	mov    $0x4,%ax
    20df:	8b 76 fa             	mov    -0x6(%bp),%si
    20e2:	89 44 1e             	mov    %ax,0x1e(%si)
    20e5:	8d 76 fe             	lea    -0x2(%bp),%si
    20e8:	56                   	push   %si
    20e9:	8d 76 fc             	lea    -0x4(%bp),%si
    20ec:	56                   	push   %si
    20ed:	ff 76 fa             	push   -0x6(%bp)
    20f0:	e8 ee e3             	call   0x4e1
    20f3:	83 c4 06             	add    $0x6,%sp
    20f6:	81 7e fe c8 00       	cmpw   $0xc8,-0x2(%bp)
    20fb:	7c 02                	jl     0x20ff
    20fd:	eb 12                	jmp    0x2111
    20ff:	8d 36 69 52          	lea    0x5269,%si
    2103:	03 76 fc             	add    -0x4(%bp),%si
    2106:	8a 04                	mov    (%si),%al
    2108:	81 e0 ff 00          	and    $0xff,%ax
    210c:	3b 46 fe             	cmp    -0x2(%bp),%ax
    210f:	7c 02                	jl     0x2113
    2111:	eb 07                	jmp    0x211a
    2113:	81 7e fc 00 00       	cmpw   $0x0,-0x4(%bp)
    2118:	7d 02                	jge    0x211c
    211a:	eb 07                	jmp    0x2123
    211c:	81 7e fc b8 0b       	cmpw   $0xbb8,-0x4(%bp)
    2121:	7c 30                	jl     0x2153
    2123:	8b 76 fa             	mov    -0x6(%bp),%si
    2126:	8b 44 08             	mov    0x8(%si),%ax
    2129:	8b 76 fa             	mov    -0x6(%bp),%si
    212c:	8b 54 04             	mov    0x4(%si),%dx
    212f:	2b d0                	sub    %ax,%dx
    2131:	89 54 04             	mov    %dx,0x4(%si)
    2134:	b8 fe ff             	mov    $0xfffe,%ax
    2137:	8b 76 fa             	mov    -0x6(%bp),%si
    213a:	89 44 1e             	mov    %ax,0x1e(%si)
    213d:	8b 76 fa             	mov    -0x6(%bp),%si
    2140:	ff 74 48             	push   0x48(%si)
    2143:	ff 76 fa             	push   -0x6(%bp)
    2146:	e8 9e 01             	call   0x22e7
    2149:	83 c4 04             	add    $0x4,%sp
    214c:	b8 00 00             	mov    $0x0,%ax
    214f:	8b e5                	mov    %bp,%sp
    2151:	5d                   	pop    %bp
    2152:	c3                   	ret
    2153:	8b 76 fa             	mov    -0x6(%bp),%si
    2156:	ff 74 48             	push   0x48(%si)
    2159:	ff 76 fa             	push   -0x6(%bp)
    215c:	e8 88 01             	call   0x22e7
    215f:	83 c4 04             	add    $0x4,%sp
    2162:	8d 36 51 23          	lea    0x2351,%si
    2166:	8b 7e fa             	mov    -0x6(%bp),%di
    2169:	8b 45 0c             	mov    0xc(%di),%ax
    216c:	d1 e0                	shl    %ax
    216e:	03 f0                	add    %ax,%si
    2170:	8b 7e fa             	mov    -0x6(%bp),%di
    2173:	89 75 4e             	mov    %si,0x4e(%di)
    2176:	b8 01 00             	mov    $0x1,%ax
    2179:	8b e5                	mov    %bp,%sp
    217b:	5d                   	pop    %bp
    217c:	c3                   	ret
    217d:	55                   	push   %bp
    217e:	8b ec                	mov    %sp,%bp
    2180:	8d 36 55 23          	lea    0x2355,%si
    2184:	bb 40 00             	mov    $0x40,%bx
    2187:	8b 7e 04             	mov    0x4(%bp),%di
    218a:	8b 05                	mov    (%di),%ax
    218c:	83 f8 06             	cmp    $0x6,%ax
    218f:	b8 01 00             	mov    $0x1,%ax
    2192:	75 02                	jne    0x2196
    2194:	ff c8                	dec    %ax
    2196:	f7 eb                	imul   %bx
    2198:	03 f0                	add    %ax,%si
    219a:	8b 7e 04             	mov    0x4(%bp),%di
    219d:	89 75 4e             	mov    %si,0x4e(%di)
    21a0:	b8 01 00             	mov    $0x1,%ax
    21a3:	8b e5                	mov    %bp,%sp
    21a5:	5d                   	pop    %bp
    21a6:	c3                   	ret
    21a7:	55                   	push   %bp
    21a8:	8b ec                	mov    %sp,%bp
    21aa:	83 ec 02             	sub    $0x2,%sp
    21ad:	8b 46 04             	mov    0x4(%bp),%ax
    21b0:	89 46 fe             	mov    %ax,-0x2(%bp)
    21b3:	8b 76 fe             	mov    -0x2(%bp),%si
    21b6:	8b 44 06             	mov    0x6(%si),%ax
    21b9:	83 f8 00             	cmp    $0x0,%ax
    21bc:	7d 19                	jge    0x21d7
    21be:	b8 10 00             	mov    $0x10,%ax
    21c1:	50                   	push   %ax
    21c2:	8b 76 fe             	mov    -0x2(%bp),%si
    21c5:	8b 44 0a             	mov    0xa(%si),%ax
    21c8:	83 c0 02             	add    $0x2,%ax
    21cb:	5b                   	pop    %bx
    21cc:	99                   	cwtd
    21cd:	f7 fb                	idiv   %bx
    21cf:	8b 76 fe             	mov    -0x2(%bp),%si
    21d2:	89 54 0a             	mov    %dx,0xa(%si)
    21d5:	eb 1a                	jmp    0x21f1
    21d7:	b8 10 00             	mov    $0x10,%ax
    21da:	50                   	push   %ax
    21db:	8b 76 fe             	mov    -0x2(%bp),%si
    21de:	8b 44 0a             	mov    0xa(%si),%ax
    21e1:	83 c0 10             	add    $0x10,%ax
    21e4:	83 e8 02             	sub    $0x2,%ax
    21e7:	5b                   	pop    %bx
    21e8:	99                   	cwtd
    21e9:	f7 fb                	idiv   %bx
    21eb:	8b 76 fe             	mov    -0x2(%bp),%si
    21ee:	89 54 0a             	mov    %dx,0xa(%si)
    21f1:	8b 76 fe             	mov    -0x2(%bp),%si
    21f4:	8b 04                	mov    (%si),%ax
    21f6:	83 f8 5c             	cmp    $0x5c,%ax
    21f9:	7c 05                	jl     0x2200
    21fb:	b8 5d 00             	mov    $0x5d,%ax
    21fe:	eb 03                	jmp    0x2203
    2200:	b8 04 00             	mov    $0x4,%ax
    2203:	8b 76 fe             	mov    -0x2(%bp),%si
    2206:	89 04                	mov    %ax,(%si)
    2208:	b8 00 00             	mov    $0x0,%ax
    220b:	8b 76 fe             	mov    -0x2(%bp),%si
    220e:	89 44 64             	mov    %ax,0x64(%si)
    2211:	b8 00 00             	mov    $0x0,%ax
    2214:	8b 76 fe             	mov    -0x2(%bp),%si
    2217:	89 44 0e             	mov    %ax,0xe(%si)
    221a:	8b 76 fe             	mov    -0x2(%bp),%si
    221d:	89 44 32             	mov    %ax,0x32(%si)
    2220:	8b 76 fe             	mov    -0x2(%bp),%si
    2223:	89 44 30             	mov    %ax,0x30(%si)
    2226:	8b 76 fe             	mov    -0x2(%bp),%si
    2229:	89 44 08             	mov    %ax,0x8(%si)
    222c:	8b 76 fe             	mov    -0x2(%bp),%si
    222f:	89 44 06             	mov    %ax,0x6(%si)
    2232:	b8 0a 00             	mov    $0xa,%ax
    2235:	8b 76 fe             	mov    -0x2(%bp),%si
    2238:	89 44 1a             	mov    %ax,0x1a(%si)
    223b:	8b e5                	mov    %bp,%sp
    223d:	5d                   	pop    %bp
    223e:	c3                   	ret
    223f:	55                   	push   %bp
    2240:	8b ec                	mov    %sp,%bp
    2242:	83 ec 02             	sub    $0x2,%sp
    2245:	8b 46 04             	mov    0x4(%bp),%ax
    2248:	89 46 fe             	mov    %ax,-0x2(%bp)
    224b:	b8 00 00             	mov    $0x0,%ax
    224e:	8b 76 fe             	mov    -0x2(%bp),%si
    2251:	89 44 32             	mov    %ax,0x32(%si)
    2254:	8b 76 fe             	mov    -0x2(%bp),%si
    2257:	89 44 30             	mov    %ax,0x30(%si)
    225a:	b8 0a 00             	mov    $0xa,%ax
    225d:	8b 76 fe             	mov    -0x2(%bp),%si
    2260:	89 44 1a             	mov    %ax,0x1a(%si)
    2263:	b8 05 00             	mov    $0x5,%ax
    2266:	8b 76 fe             	mov    -0x2(%bp),%si
    2269:	89 04                	mov    %ax,(%si)
    226b:	b8 00 00             	mov    $0x0,%ax
    226e:	8b 76 fe             	mov    -0x2(%bp),%si
    2271:	89 44 64             	mov    %ax,0x64(%si)
    2274:	8b e5                	mov    %bp,%sp
    2276:	5d                   	pop    %bp
    2277:	c3                   	ret
    2278:	55                   	push   %bp
    2279:	8b ec                	mov    %sp,%bp
    227b:	83 ec 02             	sub    $0x2,%sp
    227e:	8b 46 04             	mov    0x4(%bp),%ax
    2281:	89 46 fe             	mov    %ax,-0x2(%bp)
    2284:	b8 00 00             	mov    $0x0,%ax
    2287:	8b 76 fe             	mov    -0x2(%bp),%si
    228a:	89 44 06             	mov    %ax,0x6(%si)
    228d:	8b 76 fe             	mov    -0x2(%bp),%si
    2290:	89 44 0c             	mov    %ax,0xc(%si)
    2293:	8b 76 fe             	mov    -0x2(%bp),%si
    2296:	89 44 32             	mov    %ax,0x32(%si)
    2299:	8b 76 fe             	mov    -0x2(%bp),%si
    229c:	89 44 30             	mov    %ax,0x30(%si)
    229f:	b8 0e 00             	mov    $0xe,%ax
    22a2:	8b 76 fe             	mov    -0x2(%bp),%si
    22a5:	89 44 0a             	mov    %ax,0xa(%si)
    22a8:	b8 00 00             	mov    $0x0,%ax
    22ab:	8b 76 fe             	mov    -0x2(%bp),%si
    22ae:	89 44 0e             	mov    %ax,0xe(%si)
    22b1:	b8 00 00             	mov    $0x0,%ax
    22b4:	8b 76 fe             	mov    -0x2(%bp),%si
    22b7:	89 44 08             	mov    %ax,0x8(%si)
    22ba:	b8 06 00             	mov    $0x6,%ax
    22bd:	8b 76 fe             	mov    -0x2(%bp),%si
    22c0:	89 44 1a             	mov    %ax,0x1a(%si)
    22c3:	8b 76 fe             	mov    -0x2(%bp),%si
    22c6:	8b 04                	mov    (%si),%ax
    22c8:	83 f8 5c             	cmp    $0x5c,%ax
    22cb:	7c 05                	jl     0x22d2
    22cd:	b8 5e 00             	mov    $0x5e,%ax
    22d0:	eb 03                	jmp    0x22d5
    22d2:	b8 07 00             	mov    $0x7,%ax
    22d5:	8b 76 fe             	mov    -0x2(%bp),%si
    22d8:	89 04                	mov    %ax,(%si)
    22da:	b8 00 00             	mov    $0x0,%ax
    22dd:	8b 76 fe             	mov    -0x2(%bp),%si
    22e0:	89 44 64             	mov    %ax,0x64(%si)
    22e3:	8b e5                	mov    %bp,%sp
    22e5:	5d                   	pop    %bp
    22e6:	c3                   	ret
    22e7:	55                   	push   %bp
    22e8:	8b ec                	mov    %sp,%bp
    22ea:	83 ec 04             	sub    $0x4,%sp
    22ed:	8b 46 06             	mov    0x6(%bp),%ax
    22f0:	89 46 fc             	mov    %ax,-0x4(%bp)
    22f3:	8b 76 04             	mov    0x4(%bp),%si
    22f6:	8b 44 02             	mov    0x2(%si),%ax
    22f9:	89 46 fe             	mov    %ax,-0x2(%bp)
    22fc:	8b 76 fc             	mov    -0x4(%bp),%si
    22ff:	8b 44 02             	mov    0x2(%si),%ax
    2302:	3b 46 fe             	cmp    -0x2(%bp),%ax
    2305:	7e 18                	jle    0x231f
    2307:	8b 76 fc             	mov    -0x4(%bp),%si
    230a:	8b 74 4a             	mov    0x4a(%si),%si
    230d:	89 76 fc             	mov    %si,-0x4(%bp)
    2310:	8b 76 fc             	mov    -0x4(%bp),%si
    2313:	8b 44 02             	mov    0x2(%si),%ax
    2316:	3b 46 fe             	cmp    -0x2(%bp),%ax
    2319:	7e 02                	jle    0x231d
    231b:	eb ea                	jmp    0x2307
    231d:	eb 1f                	jmp    0x233e
    231f:	8b 76 fc             	mov    -0x4(%bp),%si
    2322:	8b 44 02             	mov    0x2(%si),%ax
    2325:	3b 46 fe             	cmp    -0x2(%bp),%ax
    2328:	7f 0b                	jg     0x2335
    232a:	8b 76 fc             	mov    -0x4(%bp),%si
    232d:	8b 74 48             	mov    0x48(%si),%si
    2330:	89 76 fc             	mov    %si,-0x4(%bp)
    2333:	eb ea                	jmp    0x231f
    2335:	8b 76 fc             	mov    -0x4(%bp),%si
    2338:	8b 74 4a             	mov    0x4a(%si),%si
    233b:	89 76 fc             	mov    %si,-0x4(%bp)
    233e:	8b 76 fc             	mov    -0x4(%bp),%si
    2341:	8b 74 48             	mov    0x48(%si),%si
    2344:	8b 7e 04             	mov    0x4(%bp),%di
    2347:	89 75 48             	mov    %si,0x48(%di)
    234a:	8b 46 fc             	mov    -0x4(%bp),%ax
    234d:	8b 76 04             	mov    0x4(%bp),%si
    2350:	89 44 4a             	mov    %ax,0x4a(%si)
    2353:	8b 46 04             	mov    0x4(%bp),%ax
    2356:	8b 76 fc             	mov    -0x4(%bp),%si
    2359:	8b 74 48             	mov    0x48(%si),%si
    235c:	89 44 4a             	mov    %ax,0x4a(%si)
    235f:	8b 46 04             	mov    0x4(%bp),%ax
    2362:	8b 76 fc             	mov    -0x4(%bp),%si
    2365:	89 44 48             	mov    %ax,0x48(%si)
    2368:	8b e5                	mov    %bp,%sp
    236a:	5d                   	pop    %bp
    236b:	c3                   	ret
    236c:	55                   	push   %bp
    236d:	8b ec                	mov    %sp,%bp
    236f:	83 ec 02             	sub    $0x2,%sp
    2372:	8b 46 04             	mov    0x4(%bp),%ax
    2375:	89 46 fe             	mov    %ax,-0x2(%bp)
    2378:	8b 76 fe             	mov    -0x2(%bp),%si
    237b:	8b 74 4a             	mov    0x4a(%si),%si
    237e:	8b 7e fe             	mov    -0x2(%bp),%di
    2381:	8b 7d 48             	mov    0x48(%di),%di
    2384:	89 75 4a             	mov    %si,0x4a(%di)
    2387:	8b 76 fe             	mov    -0x2(%bp),%si
    238a:	8b 74 48             	mov    0x48(%si),%si
    238d:	8b 7e fe             	mov    -0x2(%bp),%di
    2390:	8b 7d 4a             	mov    0x4a(%di),%di
    2393:	89 75 48             	mov    %si,0x48(%di)
    2396:	8b e5                	mov    %bp,%sp
    2398:	5d                   	pop    %bp
    2399:	c3                   	ret
    239a:	55                   	push   %bp
    239b:	8b ec                	mov    %sp,%bp
    239d:	83 ec 04             	sub    $0x4,%sp
    23a0:	b8 00 00             	mov    $0x0,%ax
    23a3:	89 46 fe             	mov    %ax,-0x2(%bp)
    23a6:	8d 06 48 4b          	lea    0x4b48,%ax
    23aa:	89 46 fc             	mov    %ax,-0x4(%bp)
    23ad:	81 7e fe 63 00       	cmpw   $0x63,-0x2(%bp)
    23b2:	7d 16                	jge    0x23ca
    23b4:	8b 46 fc             	mov    -0x4(%bp),%ax
    23b7:	83 c0 08             	add    $0x8,%ax
    23ba:	8b 76 fc             	mov    -0x4(%bp),%si
    23bd:	89 44 04             	mov    %ax,0x4(%si)
    23c0:	ff 46 fe             	incw   -0x2(%bp)
    23c3:	81 46 fc 08 00       	addw   $0x8,-0x4(%bp)
    23c8:	eb e3                	jmp    0x23ad
    23ca:	b8 00 00             	mov    $0x0,%ax
    23cd:	8b 76 fc             	mov    -0x4(%bp),%si
    23d0:	89 44 04             	mov    %ax,0x4(%si)
    23d3:	b8 00 00             	mov    $0x0,%ax
    23d6:	89 06 68 4e          	mov    %ax,0x4e68
    23da:	8d 06 48 4b          	lea    0x4b48,%ax
    23de:	89 06 6a 4e          	mov    %ax,0x4e6a
    23e2:	8b e5                	mov    %bp,%sp
    23e4:	5d                   	pop    %bp
    23e5:	c3                   	ret
    23e6:	55                   	push   %bp
    23e7:	8b ec                	mov    %sp,%bp
    23e9:	8b 46 04             	mov    0x4(%bp),%ax
    23ec:	3b 06 af 09          	cmp    0x9af,%ax
    23f0:	7d 17                	jge    0x2409
    23f2:	8b 46 04             	mov    0x4(%bp),%ax
    23f5:	89 06 af 09          	mov    %ax,0x9af
    23f9:	8b 46 06             	mov    0x6(%bp),%ax
    23fc:	89 06 b1 09          	mov    %ax,0x9b1
    2400:	8b 46 08             	mov    0x8(%bp),%ax
    2403:	89 06 b3 09          	mov    %ax,0x9b3
    2407:	eb 20                	jmp    0x2429
    2409:	8b 46 04             	mov    0x4(%bp),%ax
    240c:	3b 06 af 09          	cmp    0x9af,%ax
    2410:	75 17                	jne    0x2429
    2412:	8b 46 06             	mov    0x6(%bp),%ax
    2415:	3b 06 b1 09          	cmp    0x9b1,%ax
    2419:	7d 0e                	jge    0x2429
    241b:	8b 46 06             	mov    0x6(%bp),%ax
    241e:	89 06 b1 09          	mov    %ax,0x9b1
    2422:	8b 46 08             	mov    0x8(%bp),%ax
    2425:	89 06 b3 09          	mov    %ax,0x9b3
    2429:	8b e5                	mov    %bp,%sp
    242b:	5d                   	pop    %bp
    242c:	c3                   	ret
    242d:	55                   	push   %bp
    242e:	8b ec                	mov    %sp,%bp
    2430:	83 ec 02             	sub    $0x2,%sp
    2433:	e8 0f 32             	call   0x5645
    2436:	8b 06 68 4e          	mov    0x4e68,%ax
    243a:	89 46 fe             	mov    %ax,-0x2(%bp)
    243d:	8b 46 fe             	mov    -0x2(%bp),%ax
    2440:	0b c0                	or     %ax,%ax
    2442:	74 1e                	je     0x2462
    2444:	8b 76 fe             	mov    -0x2(%bp),%si
    2447:	8b 44 02             	mov    0x2(%si),%ax
    244a:	f7 26 6c 4e          	mulw   0x4e6c
    244e:	8b 76 fe             	mov    -0x2(%bp),%si
    2451:	8b 14                	mov    (%si),%dx
    2453:	03 d0                	add    %ax,%dx
    2455:	89 14                	mov    %dx,(%si)
    2457:	8b 76 fe             	mov    -0x2(%bp),%si
    245a:	8b 74 04             	mov    0x4(%si),%si
    245d:	89 76 fe             	mov    %si,-0x2(%bp)
    2460:	eb db                	jmp    0x243d
    2462:	b8 00 00             	mov    $0x0,%ax
    2465:	89 06 6c 4e          	mov    %ax,0x4e6c
    2469:	89 06 7a 4e          	mov    %ax,0x4e7a
    246d:	8b 06 af 09          	mov    0x9af,%ax
    2471:	50                   	push   %ax
    2472:	e9 0b 01             	jmp    0x2580
    2475:	e8 ff 04             	call   0x2977
    2478:	b8 00 00             	mov    $0x0,%ax
    247b:	89 06 b7 09          	mov    %ax,0x9b7
    247f:	89 06 b9 09          	mov    %ax,0x9b9
    2483:	e9 25 01             	jmp    0x25ab
    2486:	81 3e b1 09 00 00    	cmpw   $0x0,0x9b1
    248c:	75 0c                	jne    0x249a
    248e:	b8 00 f0             	mov    $0xf000,%ax
    2491:	50                   	push   %ax
    2492:	e8 4f 04             	call   0x28e4
    2495:	83 c4 02             	add    $0x2,%sp
    2498:	eb 14                	jmp    0x24ae
    249a:	bb 00 10             	mov    $0x1000,%bx
    249d:	8b 06 b1 09          	mov    0x9b1,%ax
    24a1:	f7 eb                	imul   %bx
    24a3:	81 c0 00 d0          	add    $0xd000,%ax
    24a7:	50                   	push   %ax
    24a8:	e8 39 04             	call   0x28e4
    24ab:	83 c4 02             	add    $0x2,%sp
    24ae:	b8 00 00             	mov    $0x0,%ax
    24b1:	89 06 b7 09          	mov    %ax,0x9b7
    24b5:	89 06 b9 09          	mov    %ax,0x9b9
    24b9:	e9 ef 00             	jmp    0x25ab
    24bc:	8b 06 b3 09          	mov    0x9b3,%ax
    24c0:	3b 06 b7 09          	cmp    0x9b7,%ax
    24c4:	75 03                	jne    0x24c9
    24c6:	e9 e2 00             	jmp    0x25ab
    24c9:	8d 06 f4 26          	lea    0x26f4,%ax
    24cd:	89 06 b9 09          	mov    %ax,0x9b9
    24d1:	8b 06 b3 09          	mov    0x9b3,%ax
    24d5:	89 06 b7 09          	mov    %ax,0x9b7
    24d9:	e8 18 01             	call   0x25f4
    24dc:	e9 cc 00             	jmp    0x25ab
    24df:	8b 06 b3 09          	mov    0x9b3,%ax
    24e3:	3b 06 b7 09          	cmp    0x9b7,%ax
    24e7:	75 03                	jne    0x24ec
    24e9:	e9 bf 00             	jmp    0x25ab
    24ec:	8d 06 f4 26          	lea    0x26f4,%ax
    24f0:	89 06 b9 09          	mov    %ax,0x9b9
    24f4:	8b 06 b3 09          	mov    0x9b3,%ax
    24f8:	89 06 b7 09          	mov    %ax,0x9b7
    24fc:	e8 f5 00             	call   0x25f4
    24ff:	e9 a9 00             	jmp    0x25ab
    2502:	b8 02 00             	mov    $0x2,%ax
    2505:	50                   	push   %ax
    2506:	e8 a3 04             	call   0x29ac
    2509:	83 c4 02             	add    $0x2,%sp
    250c:	0b c0                	or     %ax,%ax
    250e:	74 05                	je     0x2515
    2510:	b8 00 90             	mov    $0x9000,%ax
    2513:	eb 03                	jmp    0x2518
    2515:	b8 00 f0             	mov    $0xf000,%ax
    2518:	50                   	push   %ax
    2519:	e8 c8 03             	call   0x28e4
    251c:	83 c4 02             	add    $0x2,%sp
    251f:	b8 00 00             	mov    $0x0,%ax
    2522:	89 06 b7 09          	mov    %ax,0x9b7
    2526:	89 06 b9 09          	mov    %ax,0x9b9
    252a:	e9 7e 00             	jmp    0x25ab
    252d:	ff 36 74 4e          	push   0x4e74
    2531:	e8 b0 03             	call   0x28e4
    2534:	83 c4 02             	add    $0x2,%sp
    2537:	b8 00 00             	mov    $0x0,%ax
    253a:	89 06 b9 09          	mov    %ax,0x9b9
    253e:	89 06 b7 09          	mov    %ax,0x9b7
    2542:	eb 67                	jmp    0x25ab
    2544:	b8 00 10             	mov    $0x1000,%ax
    2547:	50                   	push   %ax
    2548:	e8 99 03             	call   0x28e4
    254b:	83 c4 02             	add    $0x2,%sp
    254e:	8d 06 22 27          	lea    0x2722,%ax
    2552:	89 06 b9 09          	mov    %ax,0x9b9
    2556:	b8 00 00             	mov    $0x0,%ax
    2559:	89 06 b7 09          	mov    %ax,0x9b7
    255d:	eb 4c                	jmp    0x25ab
    255f:	b8 00 00             	mov    $0x0,%ax
    2562:	89 06 7e 4e          	mov    %ax,0x4e7e
    2566:	89 06 7c 4e          	mov    %ax,0x4e7c
    256a:	e8 70 01             	call   0x26dd
    256d:	b8 00 00             	mov    $0x0,%ax
    2570:	89 06 b9 09          	mov    %ax,0x9b9
    2574:	89 06 b7 09          	mov    %ax,0x9b7
    2578:	b0 01                	mov    $0x1,%al
    257a:	89 06 7a 4e          	mov    %ax,0x4e7a
    257e:	eb 2b                	jmp    0x25ab
    2580:	e8 51 73             	call   0x98d4
    2583:	09 00                	or     %ax,(%bx,%si)
    2585:	05 00 1e             	add    $0x1e00,%ax
    2588:	00 0a                	add    %cl,(%bp,%si)
    258a:	00 32                	add    %dh,(%bp,%si)
    258c:	00 28                	add    %ch,(%bx,%si)
    258e:	00 14                	add    %dl,(%si)
    2590:	00 3c                	add    %bh,(%si)
    2592:	00 ff                	add    %bh,%bh
    2594:	7f 00                	jg     0x2596
    2596:	00 75 25             	add    %dh,0x25(%di)
    2599:	5f                   	pop    %di
    259a:	26 44                	es inc %sp
    259c:	26 2d 26 02          	es sub $0x226,%ax
    25a0:	26 df 25             	fbld   %es:(%di)
    25a3:	bc 25 86             	mov    $0x8625,%sp
    25a6:	25 75 25             	and    $0x2575,%ax
    25a9:	75 25                	jne    0x25d0
    25ab:	e8 95 30             	call   0x5643
    25ae:	b8 ff 7f             	mov    $0x7fff,%ax
    25b1:	89 06 b1 09          	mov    %ax,0x9b1
    25b5:	89 06 af 09          	mov    %ax,0x9af
    25b9:	8b e5                	mov    %bp,%sp
    25bb:	5d                   	pop    %bp
    25bc:	c3                   	ret
    25bd:	55                   	push   %bp
    25be:	8b ec                	mov    %sp,%bp
    25c0:	ff 06 6c 4e          	incw   0x4e6c
    25c4:	8b 06 b5 09          	mov    0x9b5,%ax
    25c8:	0b c0                	or     %ax,%ax
    25ca:	74 0e                	je     0x25da
    25cc:	8b 06 b9 09          	mov    0x9b9,%ax
    25d0:	0b c0                	or     %ax,%ax
    25d2:	74 06                	je     0x25da
    25d4:	8b 36 b9 09          	mov    0x9b9,%si
    25d8:	ff d6                	call   *%si
    25da:	8b 06 6e 4e          	mov    0x4e6e,%ax
    25de:	0b c0                	or     %ax,%ax
    25e0:	74 03                	je     0x25e5
    25e2:	e8 6a 00             	call   0x264f
    25e5:	8b 06 7a 4e          	mov    0x4e7a,%ax
    25e9:	0b c0                	or     %ax,%ax
    25eb:	74 03                	je     0x25f0
    25ed:	e8 d2 00             	call   0x26c2
    25f0:	8b e5                	mov    %bp,%sp
    25f2:	5d                   	pop    %bp
    25f3:	c3                   	ret
    25f4:	55                   	push   %bp
    25f5:	8b ec                	mov    %sp,%bp
    25f7:	83 ec 02             	sub    $0x2,%sp
    25fa:	8b 36 b7 09          	mov    0x9b7,%si
    25fe:	8b 74 66             	mov    0x66(%si),%si
    2601:	89 76 fe             	mov    %si,-0x2(%bp)
    2604:	8b 76 fe             	mov    -0x2(%bp),%si
    2607:	8b 04                	mov    (%si),%ax
    2609:	50                   	push   %ax
    260a:	8b 76 fe             	mov    -0x2(%bp),%si
    260d:	8b 44 02             	mov    0x2(%si),%ax
    2610:	f7 26 6c 4e          	mulw   0x4e6c
    2614:	5a                   	pop    %dx
    2615:	03 d0                	add    %ax,%dx
    2617:	52                   	push   %dx
    2618:	e8 c9 02             	call   0x28e4
    261b:	83 c4 02             	add    $0x2,%sp
    261e:	8b e5                	mov    %bp,%sp
    2620:	5d                   	pop    %bp
    2621:	c3                   	ret
    2622:	55                   	push   %bp
    2623:	8b ec                	mov    %sp,%bp
    2625:	81 3e b5 09 00 f0    	cmpw   $0xf000,0x9b5
    262b:	75 0c                	jne    0x2639
    262d:	ff 36 92 4e          	push   0x4e92
    2631:	e8 b0 02             	call   0x28e4
    2634:	83 c4 02             	add    $0x2,%sp
    2637:	eb 12                	jmp    0x264b
    2639:	8b 06 b5 09          	mov    0x9b5,%ax
    263d:	89 06 92 4e          	mov    %ax,0x4e92
    2641:	b8 00 f0             	mov    $0xf000,%ax
    2644:	50                   	push   %ax
    2645:	e8 9c 02             	call   0x28e4
    2648:	83 c4 02             	add    $0x2,%sp
    264b:	8b e5                	mov    %bp,%sp
    264d:	5d                   	pop    %bp
    264e:	c3                   	ret
    264f:	55                   	push   %bp
    2650:	8b ec                	mov    %sp,%bp
    2652:	ff 0e 76 4e          	decw   0x4e76
    2656:	8b 06 76 4e          	mov    0x4e76,%ax
    265a:	83 f8 00             	cmp    $0x0,%ax
    265d:	7c 04                	jl     0x2663
    265f:	8b e5                	mov    %bp,%sp
    2661:	5d                   	pop    %bp
    2662:	c3                   	ret
    2663:	e8 04 00             	call   0x266a
    2666:	8b e5                	mov    %bp,%sp
    2668:	5d                   	pop    %bp
    2669:	c3                   	ret
    266a:	55                   	push   %bp
    266b:	8b ec                	mov    %sp,%bp
    266d:	8b 06 72 4e          	mov    0x4e72,%ax
    2671:	89 06 88 4e          	mov    %ax,0x4e88
    2675:	8b 06 70 4e          	mov    0x4e70,%ax
    2679:	89 06 8a 4e          	mov    %ax,0x4e8a
    267d:	8d 06 bb 09          	lea    0x9bb,%ax
    2681:	89 06 86 4e          	mov    %ax,0x4e86
    2685:	8b 06 78 4e          	mov    0x4e78,%ax
    2689:	89 06 90 4e          	mov    %ax,0x4e90
    268d:	e8 4f 03             	call   0x29df
    2690:	8b 06 88 4e          	mov    0x4e88,%ax
    2694:	89 06 72 4e          	mov    %ax,0x4e72
    2698:	8b 06 8a 4e          	mov    0x4e8a,%ax
    269c:	89 06 70 4e          	mov    %ax,0x4e70
    26a0:	8b 06 8c 4e          	mov    0x4e8c,%ax
    26a4:	89 06 74 4e          	mov    %ax,0x4e74
    26a8:	e8 9a 2f             	call   0x5645
    26ab:	8b 06 8e 4e          	mov    0x4e8e,%ax
    26af:	01 06 76 4e          	add    %ax,0x4e76
    26b3:	e8 8d 2f             	call   0x5643
    26b6:	8b 06 90 4e          	mov    0x4e90,%ax
    26ba:	89 06 78 4e          	mov    %ax,0x4e78
    26be:	8b e5                	mov    %bp,%sp
    26c0:	5d                   	pop    %bp
    26c1:	c3                   	ret
    26c2:	55                   	push   %bp
    26c3:	8b ec                	mov    %sp,%bp
    26c5:	ff 0e 82 4e          	decw   0x4e82
    26c9:	8b 06 82 4e          	mov    0x4e82,%ax
    26cd:	83 f8 00             	cmp    $0x0,%ax
    26d0:	7c 04                	jl     0x26d6
    26d2:	8b e5                	mov    %bp,%sp
    26d4:	5d                   	pop    %bp
    26d5:	c3                   	ret
    26d6:	e8 04 00             	call   0x26dd
    26d9:	8b e5                	mov    %bp,%sp
    26db:	5d                   	pop    %bp
    26dc:	c3                   	ret
    26dd:	55                   	push   %bp
    26de:	8b ec                	mov    %sp,%bp
    26e0:	8b 06 7e 4e          	mov    0x4e7e,%ax
    26e4:	89 06 88 4e          	mov    %ax,0x4e88
    26e8:	8b 06 7c 4e          	mov    0x4e7c,%ax
    26ec:	89 06 8a 4e          	mov    %ax,0x4e8a
    26f0:	8d 06 bb 09          	lea    0x9bb,%ax
    26f4:	89 06 86 4e          	mov    %ax,0x4e86
    26f8:	8b 06 84 4e          	mov    0x4e84,%ax
    26fc:	89 06 90 4e          	mov    %ax,0x4e90
    2700:	e8 dc 02             	call   0x29df
    2703:	8b 06 88 4e          	mov    0x4e88,%ax
    2707:	89 06 7e 4e          	mov    %ax,0x4e7e
    270b:	8b 06 8a 4e          	mov    0x4e8a,%ax
    270f:	89 06 7c 4e          	mov    %ax,0x4e7c
    2713:	8b 06 8c 4e          	mov    0x4e8c,%ax
    2717:	89 06 80 4e          	mov    %ax,0x4e80
    271b:	e8 27 2f             	call   0x5645
    271e:	8b 06 8e 4e          	mov    0x4e8e,%ax
    2722:	01 06 82 4e          	add    %ax,0x4e82
    2726:	e8 1a 2f             	call   0x5643
    2729:	8b 06 90 4e          	mov    0x4e90,%ax
    272d:	89 06 84 4e          	mov    %ax,0x4e84
    2731:	e8 43 02             	call   0x2977
    2734:	ff 36 80 4e          	push   0x4e80
    2738:	e8 a9 01             	call   0x28e4
    273b:	83 c4 02             	add    $0x2,%sp
    273e:	8b e5                	mov    %bp,%sp
    2740:	5d                   	pop    %bp
    2741:	c3                   	ret
    2742:	55                   	push   %bp
    2743:	8b ec                	mov    %sp,%bp
    2745:	83 ec 02             	sub    $0x2,%sp
    2748:	8b 76 04             	mov    0x4(%bp),%si
    274b:	8b 74 66             	mov    0x66(%si),%si
    274e:	0b f6                	or     %si,%si
    2750:	74 04                	je     0x2756
    2752:	8b e5                	mov    %bp,%sp
    2754:	5d                   	pop    %bp
    2755:	c3                   	ret
    2756:	8b 76 04             	mov    0x4(%bp),%si
    2759:	8b 44 60             	mov    0x60(%si),%ax
    275c:	83 f8 05             	cmp    $0x5,%ax
    275f:	75 2e                	jne    0x278f
    2761:	e8 e1 2e             	call   0x5645
    2764:	ff 06 6e 4e          	incw   0x4e6e
    2768:	8b 06 6e 4e          	mov    0x4e6e,%ax
    276c:	83 f8 01             	cmp    $0x1,%ax
    276f:	75 0e                	jne    0x277f
    2771:	b8 00 00             	mov    $0x0,%ax
    2774:	89 06 72 4e          	mov    %ax,0x4e72
    2778:	89 06 70 4e          	mov    %ax,0x4e70
    277c:	e8 eb fe             	call   0x266a
    277f:	b8 01 00             	mov    $0x1,%ax
    2782:	8b 76 04             	mov    0x4(%bp),%si
    2785:	89 44 66             	mov    %ax,0x66(%si)
    2788:	e8 b8 2e             	call   0x5643
    278b:	8b e5                	mov    %bp,%sp
    278d:	5d                   	pop    %bp
    278e:	c3                   	ret
    278f:	e8 5b 00             	call   0x27ed
    2792:	89 46 fe             	mov    %ax,-0x2(%bp)
    2795:	0b c0                	or     %ax,%ax
    2797:	74 50                	je     0x27e9
    2799:	e8 a9 2e             	call   0x5645
    279c:	8b 46 06             	mov    0x6(%bp),%ax
    279f:	50                   	push   %ax
    27a0:	eb 28                	jmp    0x27ca
    27a2:	b8 00 03             	mov    $0x300,%ax
    27a5:	8b 76 fe             	mov    -0x2(%bp),%si
    27a8:	89 04                	mov    %ax,(%si)
    27aa:	b8 08 00             	mov    $0x8,%ax
    27ad:	8b 76 fe             	mov    -0x2(%bp),%si
    27b0:	89 44 02             	mov    %ax,0x2(%si)
    27b3:	eb 24                	jmp    0x27d9
    27b5:	b8 00 12             	mov    $0x1200,%ax
    27b8:	8b 76 fe             	mov    -0x2(%bp),%si
    27bb:	89 04                	mov    %ax,(%si)
    27bd:	b8 f8 ff             	mov    $0xfff8,%ax
    27c0:	8b 76 fe             	mov    -0x2(%bp),%si
    27c3:	89 44 02             	mov    %ax,0x2(%si)
    27c6:	eb 11                	jmp    0x27d9
    27c8:	eb 0f                	jmp    0x27d9
    27ca:	e8 07 71             	call   0x98d4
    27cd:	02 00                	add    (%bx,%si),%al
    27cf:	28 00                	sub    %al,(%bx,%si)
    27d1:	14 00                	adc    $0x0,%al
    27d3:	c8 28 b5 28          	enter  $0xb528,$0x28
    27d7:	a2 28 8b             	mov    %al,0x8b28
    27da:	46                   	inc    %si
    27db:	fe 8b 76 04          	decb   0x476(%bp,%di)
    27df:	89 44 66             	mov    %ax,0x66(%si)
    27e2:	e8 5e 2e             	call   0x5643
    27e5:	8b e5                	mov    %bp,%sp
    27e7:	5d                   	pop    %bp
    27e8:	c3                   	ret
    27e9:	8b e5                	mov    %bp,%sp
    27eb:	5d                   	pop    %bp
    27ec:	c3                   	ret
    27ed:	55                   	push   %bp
    27ee:	8b ec                	mov    %sp,%bp
    27f0:	83 ec 02             	sub    $0x2,%sp
    27f3:	8b 06 6a 4e          	mov    0x4e6a,%ax
    27f7:	0b c0                	or     %ax,%ax
    27f9:	74 02                	je     0x27fd
    27fb:	eb 07                	jmp    0x2804
    27fd:	b8 00 00             	mov    $0x0,%ax
    2800:	8b e5                	mov    %bp,%sp
    2802:	5d                   	pop    %bp
    2803:	c3                   	ret
    2804:	8b 06 6a 4e          	mov    0x4e6a,%ax
    2808:	89 46 fe             	mov    %ax,-0x2(%bp)
    280b:	8b 76 fe             	mov    -0x2(%bp),%si
    280e:	8b 74 04             	mov    0x4(%si),%si
    2811:	89 36 6a 4e          	mov    %si,0x4e6a
    2815:	8b 06 68 4e          	mov    0x4e68,%ax
    2819:	8b 76 fe             	mov    -0x2(%bp),%si
    281c:	89 44 04             	mov    %ax,0x4(%si)
    281f:	b8 00 00             	mov    $0x0,%ax
    2822:	8b 76 fe             	mov    -0x2(%bp),%si
    2825:	89 44 06             	mov    %ax,0x6(%si)
    2828:	8b 06 68 4e          	mov    0x4e68,%ax
    282c:	0b c0                	or     %ax,%ax
    282e:	74 0a                	je     0x283a
    2830:	8b 46 fe             	mov    -0x2(%bp),%ax
    2833:	8b 36 68 4e          	mov    0x4e68,%si
    2837:	89 44 06             	mov    %ax,0x6(%si)
    283a:	8b 46 fe             	mov    -0x2(%bp),%ax
    283d:	89 06 68 4e          	mov    %ax,0x4e68
    2841:	8b e5                	mov    %bp,%sp
    2843:	5d                   	pop    %bp
    2844:	c3                   	ret
    2845:	55                   	push   %bp
    2846:	8b ec                	mov    %sp,%bp
    2848:	83 ec 02             	sub    $0x2,%sp
    284b:	8b 76 04             	mov    0x4(%bp),%si
    284e:	8b 74 06             	mov    0x6(%si),%si
    2851:	89 76 fe             	mov    %si,-0x2(%bp)
    2854:	0b f6                	or     %si,%si
    2856:	74 0e                	je     0x2866
    2858:	8b 76 04             	mov    0x4(%bp),%si
    285b:	8b 74 04             	mov    0x4(%si),%si
    285e:	8b 7e fe             	mov    -0x2(%bp),%di
    2861:	89 75 04             	mov    %si,0x4(%di)
    2864:	eb 0a                	jmp    0x2870
    2866:	8b 76 04             	mov    0x4(%bp),%si
    2869:	8b 74 04             	mov    0x4(%si),%si
    286c:	89 36 68 4e          	mov    %si,0x4e68
    2870:	8b 76 04             	mov    0x4(%bp),%si
    2873:	8b 74 04             	mov    0x4(%si),%si
    2876:	89 76 fe             	mov    %si,-0x2(%bp)
    2879:	0b f6                	or     %si,%si
    287b:	74 0c                	je     0x2889
    287d:	8b 76 04             	mov    0x4(%bp),%si
    2880:	8b 74 06             	mov    0x6(%si),%si
    2883:	8b 7e fe             	mov    -0x2(%bp),%di
    2886:	89 75 06             	mov    %si,0x6(%di)
    2889:	8b 06 6a 4e          	mov    0x4e6a,%ax
    288d:	8b 76 04             	mov    0x4(%bp),%si
    2890:	89 44 04             	mov    %ax,0x4(%si)
    2893:	8b 46 04             	mov    0x4(%bp),%ax
    2896:	89 06 6a 4e          	mov    %ax,0x4e6a
    289a:	8b e5                	mov    %bp,%sp
    289c:	5d                   	pop    %bp
    289d:	c3                   	ret
    289e:	55                   	push   %bp
    289f:	8b ec                	mov    %sp,%bp
    28a1:	83 ec 02             	sub    $0x2,%sp
    28a4:	8b 76 04             	mov    0x4(%bp),%si
    28a7:	8b 74 66             	mov    0x66(%si),%si
    28aa:	89 76 fe             	mov    %si,-0x2(%bp)
    28ad:	0b f6                	or     %si,%si
    28af:	74 02                	je     0x28b3
    28b1:	eb 04                	jmp    0x28b7
    28b3:	8b e5                	mov    %bp,%sp
    28b5:	5d                   	pop    %bp
    28b6:	c3                   	ret
    28b7:	e8 8b 2d             	call   0x5645
    28ba:	8b 76 04             	mov    0x4(%bp),%si
    28bd:	8b 44 60             	mov    0x60(%si),%ax
    28c0:	83 f8 05             	cmp    $0x5,%ax
    28c3:	75 06                	jne    0x28cb
    28c5:	ff 0e 6e 4e          	decw   0x4e6e
    28c9:	eb 09                	jmp    0x28d4
    28cb:	ff 76 fe             	push   -0x2(%bp)
    28ce:	e8 74 ff             	call   0x2845
    28d1:	83 c4 02             	add    $0x2,%sp
    28d4:	b8 00 00             	mov    $0x0,%ax
    28d7:	8b 76 04             	mov    0x4(%bp),%si
    28da:	89 44 66             	mov    %ax,0x66(%si)
    28dd:	e8 63 2d             	call   0x5643
    28e0:	8b e5                	mov    %bp,%sp
    28e2:	5d                   	pop    %bp
    28e3:	c3                   	ret
    28e4:	55                   	push   %bp
    28e5:	8b ec                	mov    %sp,%bp
    28e7:	8b 06 10 46          	mov    0x4610,%ax
    28eb:	0b c0                	or     %ax,%ax
    28ed:	74 02                	je     0x28f1
    28ef:	eb 04                	jmp    0x28f5
    28f1:	8b e5                	mov    %bp,%sp
    28f3:	5d                   	pop    %bp
    28f4:	c3                   	ret
    28f5:	8b 06 b5 09          	mov    0x9b5,%ax
    28f9:	3b 46 04             	cmp    0x4(%bp),%ax
    28fc:	75 04                	jne    0x2902
    28fe:	8b e5                	mov    %bp,%sp
    2900:	5d                   	pop    %bp
    2901:	c3                   	ret
    2902:	8b 06 b5 09          	mov    0x9b5,%ax
    2906:	0b c0                	or     %ax,%ax
    2908:	74 02                	je     0x290c
    290a:	eb 0d                	jmp    0x2919
    290c:	b8 b6 00             	mov    $0xb6,%ax
    290f:	50                   	push   %ax
    2910:	b0 43                	mov    $0x43,%al
    2912:	50                   	push   %ax
    2913:	e8 f1 6f             	call   0x9907
    2916:	83 c4 04             	add    $0x4,%sp
    2919:	8b 46 04             	mov    0x4(%bp),%ax
    291c:	81 e0 ff 00          	and    $0xff,%ax
    2920:	50                   	push   %ax
    2921:	b8 42 00             	mov    $0x42,%ax
    2924:	50                   	push   %ax
    2925:	e8 df 6f             	call   0x9907
    2928:	83 c4 04             	add    $0x4,%sp
    292b:	8b 46 04             	mov    0x4(%bp),%ax
    292e:	ba 08 00             	mov    $0x8,%dx
    2931:	8b ca                	mov    %dx,%cx
    2933:	d3 e8                	shr    %cl,%ax
    2935:	50                   	push   %ax
    2936:	b8 42 00             	mov    $0x42,%ax
    2939:	50                   	push   %ax
    293a:	e8 ca 6f             	call   0x9907
    293d:	83 c4 04             	add    $0x4,%sp
    2940:	8b 06 b5 09          	mov    0x9b5,%ax
    2944:	0b c0                	or     %ax,%ax
    2946:	74 02                	je     0x294a
    2948:	eb 1b                	jmp    0x2965
    294a:	b8 03 00             	mov    $0x3,%ax
    294d:	50                   	push   %ax
    294e:	b0 61                	mov    $0x61,%al
    2950:	50                   	push   %ax
    2951:	e8 58 6c             	call   0x95ac
    2954:	83 c4 02             	add    $0x2,%sp
    2957:	5a                   	pop    %dx
    2958:	0b d0                	or     %ax,%dx
    295a:	52                   	push   %dx
    295b:	b8 61 00             	mov    $0x61,%ax
    295e:	50                   	push   %ax
    295f:	e8 a5 6f             	call   0x9907
    2962:	83 c4 04             	add    $0x4,%sp
    2965:	8b 46 04             	mov    0x4(%bp),%ax
    2968:	89 06 b5 09          	mov    %ax,0x9b5
    296c:	8b 46 04             	mov    0x4(%bp),%ax
    296f:	89 06 0e 46          	mov    %ax,0x460e
    2973:	8b e5                	mov    %bp,%sp
    2975:	5d                   	pop    %bp
    2976:	c3                   	ret
    2977:	55                   	push   %bp
    2978:	8b ec                	mov    %sp,%bp
    297a:	8b 06 b5 09          	mov    0x9b5,%ax
    297e:	0b c0                	or     %ax,%ax
    2980:	74 26                	je     0x29a8
    2982:	b8 fc 00             	mov    $0xfc,%ax
    2985:	50                   	push   %ax
    2986:	b0 61                	mov    $0x61,%al
    2988:	50                   	push   %ax
    2989:	e8 20 6c             	call   0x95ac
    298c:	83 c4 02             	add    $0x2,%sp
    298f:	5a                   	pop    %dx
    2990:	23 d0                	and    %ax,%dx
    2992:	52                   	push   %dx
    2993:	b8 61 00             	mov    $0x61,%ax
    2996:	50                   	push   %ax
    2997:	e8 6d 6f             	call   0x9907
    299a:	83 c4 04             	add    $0x4,%sp
    299d:	b8 00 00             	mov    $0x0,%ax
    29a0:	89 06 b5 09          	mov    %ax,0x9b5
    29a4:	89 06 0e 46          	mov    %ax,0x460e
    29a8:	8b e5                	mov    %bp,%sp
    29aa:	5d                   	pop    %bp
    29ab:	c3                   	ret
    29ac:	55                   	push   %bp
    29ad:	8b ec                	mov    %sp,%bp
    29af:	81 3e 2d 0a 32 00    	cmpw   $0x32,0xa2d
    29b5:	7c 07                	jl     0x29be
    29b7:	b8 00 00             	mov    $0x0,%ax
    29ba:	89 06 2d 0a          	mov    %ax,0xa2d
    29be:	8b 46 04             	mov    0x4(%bp),%ax
    29c1:	50                   	push   %ax
    29c2:	8d 36 c9 09          	lea    0x9c9,%si
    29c6:	8b 06 2d 0a          	mov    0xa2d,%ax
    29ca:	ff 06 2d 0a          	incw   0xa2d
    29ce:	d1 e0                	shl    %ax
    29d0:	03 f0                	add    %ax,%si
    29d2:	8b 04                	mov    (%si),%ax
    29d4:	5b                   	pop    %bx
    29d5:	33 d2                	xor    %dx,%dx
    29d7:	f7 f3                	div    %bx
    29d9:	8b c2                	mov    %dx,%ax
    29db:	8b e5                	mov    %bp,%sp
    29dd:	5d                   	pop    %bp
    29de:	c3                   	ret
    29df:	55                   	push   %bp
    29e0:	8b ec                	mov    %sp,%bp
    29e2:	83 ec 02             	sub    $0x2,%sp
    29e5:	b8 01 00             	mov    $0x1,%ax
    29e8:	89 46 fe             	mov    %ax,-0x2(%bp)
    29eb:	b0 00                	mov    $0x0,%al
    29ed:	89 06 9e 4e          	mov    %ax,0x4e9e
    29f1:	89 06 94 4e          	mov    %ax,0x4e94
    29f5:	b0 02                	mov    $0x2,%al
    29f7:	89 06 a9 4e          	mov    %ax,0x4ea9
    29fb:	b8 00 01             	mov    $0x100,%ax
    29fe:	89 06 a7 4e          	mov    %ax,0x4ea7
    2a02:	b8 01 00             	mov    $0x1,%ax
    2a05:	0b c0                	or     %ax,%ax
    2a07:	75 03                	jne    0x2a0c
    2a09:	e9 5d 01             	jmp    0x2b69
    2a0c:	8b 06 88 4e          	mov    0x4e88,%ax
    2a10:	0b c0                	or     %ax,%ax
    2a12:	74 02                	je     0x2a16
    2a14:	eb 11                	jmp    0x2a27
    2a16:	8b 06 8a 4e          	mov    0x4e8a,%ax
    2a1a:	0b c0                	or     %ax,%ax
    2a1c:	74 02                	je     0x2a20
    2a1e:	eb 07                	jmp    0x2a27
    2a20:	b8 00 01             	mov    $0x100,%ax
    2a23:	89 06 90 4e          	mov    %ax,0x4e90
    2a27:	8b 36 86 4e          	mov    0x4e86,%si
    2a2b:	8b 06 88 4e          	mov    0x4e88,%ax
    2a2f:	d1 e0                	shl    %ax
    2a31:	03 f0                	add    %ax,%si
    2a33:	8b 34                	mov    (%si),%si
    2a35:	8b 06 8a 4e          	mov    0x4e8a,%ax
    2a39:	ff 06 8a 4e          	incw   0x4e8a
    2a3d:	03 f0                	add    %ax,%si
    2a3f:	8a 04                	mov    (%si),%al
    2a41:	98                   	cbtw
    2a42:	50                   	push   %ax
    2a43:	e8 6d 6c             	call   0x96b3
    2a46:	83 c4 02             	add    $0x2,%sp
    2a49:	88 06 a5 4e          	mov    %al,0x4ea5
    2a4d:	98                   	cbtw
    2a4e:	0b c0                	or     %ax,%ax
    2a50:	74 02                	je     0x2a54
    2a52:	eb 3d                	jmp    0x2a91
    2a54:	8b 36 86 4e          	mov    0x4e86,%si
    2a58:	ff 06 88 4e          	incw   0x4e88
    2a5c:	8b 06 88 4e          	mov    0x4e88,%ax
    2a60:	d1 e0                	shl    %ax
    2a62:	03 f0                	add    %ax,%si
    2a64:	8b 34                	mov    (%si),%si
    2a66:	b8 00 00             	mov    $0x0,%ax
    2a69:	89 06 8a 4e          	mov    %ax,0x4e8a
    2a6d:	03 f0                	add    %ax,%si
    2a6f:	8a 04                	mov    (%si),%al
    2a71:	98                   	cbtw
    2a72:	88 06 a5 4e          	mov    %al,0x4ea5
    2a76:	98                   	cbtw
    2a77:	0b c0                	or     %ax,%ax
    2a79:	74 02                	je     0x2a7d
    2a7b:	eb 07                	jmp    0x2a84
    2a7d:	b8 00 00             	mov    $0x0,%ax
    2a80:	89 06 88 4e          	mov    %ax,0x4e88
    2a84:	8b 46 fe             	mov    -0x2(%bp),%ax
    2a87:	0b c0                	or     %ax,%ax
    2a89:	74 03                	je     0x2a8e
    2a8b:	e9 74 ff             	jmp    0x2a02
    2a8e:	e9 d8 00             	jmp    0x2b69
    2a91:	b8 00 00             	mov    $0x0,%ax
    2a94:	89 46 fe             	mov    %ax,-0x2(%bp)
    2a97:	8a 06 a5 4e          	mov    0x4ea5,%al
    2a9b:	98                   	cbtw
    2a9c:	98                   	cbtw
    2a9d:	83 f8 2f             	cmp    $0x2f,%ax
    2aa0:	75 03                	jne    0x2aa5
    2aa2:	e9 c4 00             	jmp    0x2b69
    2aa5:	8a 06 a5 4e          	mov    0x4ea5,%al
    2aa9:	98                   	cbtw
    2aaa:	98                   	cbtw
    2aab:	50                   	push   %ax
    2aac:	e8 02 6d             	call   0x97b1
    2aaf:	83 c4 02             	add    $0x2,%sp
    2ab2:	89 06 96 4e          	mov    %ax,0x4e96
    2ab6:	0b c0                	or     %ax,%ax
    2ab8:	74 24                	je     0x2ade
    2aba:	8d 36 2f 0a          	lea    0xa2f,%si
    2abe:	8a 06 a5 4e          	mov    0x4ea5,%al
    2ac2:	98                   	cbtw
    2ac3:	98                   	cbtw
    2ac4:	83 e8 41             	sub    $0x41,%ax
    2ac7:	d1 e0                	shl    %ax
    2ac9:	03 f0                	add    %ax,%si
    2acb:	8b 04                	mov    (%si),%ax
    2acd:	89 06 9c 4e          	mov    %ax,0x4e9c
    2ad1:	8a 06 a5 4e          	mov    0x4ea5,%al
    2ad5:	98                   	cbtw
    2ad6:	98                   	cbtw
    2ad7:	88 06 a6 4e          	mov    %al,0x4ea6
    2adb:	e9 88 00             	jmp    0x2b66
    2ade:	8a 06 a5 4e          	mov    0x4ea5,%al
    2ae2:	98                   	cbtw
    2ae3:	98                   	cbtw
    2ae4:	50                   	push   %ax
    2ae5:	eb 64                	jmp    0x2b4b
    2ae7:	b8 01 00             	mov    $0x1,%ax
    2aea:	8b 16 90 4e          	mov    0x4e90,%dx
    2aee:	8b c8                	mov    %ax,%cx
    2af0:	d3 e2                	shl    %cl,%dx
    2af2:	89 16 90 4e          	mov    %dx,0x4e90
    2af6:	eb 6e                	jmp    0x2b66
    2af8:	b8 01 00             	mov    $0x1,%ax
    2afb:	8b 16 90 4e          	mov    0x4e90,%dx
    2aff:	8b c8                	mov    %ax,%cx
    2b01:	d3 fa                	sar    %cl,%dx
    2b03:	89 16 90 4e          	mov    %dx,0x4e90
    2b07:	eb 5d                	jmp    0x2b66
    2b09:	ff 06 9e 4e          	incw   0x4e9e
    2b0d:	eb 57                	jmp    0x2b66
    2b0f:	ff 0e 9e 4e          	decw   0x4e9e
    2b13:	eb 51                	jmp    0x2b66
    2b15:	b8 03 00             	mov    $0x3,%ax
    2b18:	89 06 a9 4e          	mov    %ax,0x4ea9
    2b1c:	eb 48                	jmp    0x2b66
    2b1e:	8a 06 a5 4e          	mov    0x4ea5,%al
    2b22:	98                   	cbtw
    2b23:	98                   	cbtw
    2b24:	50                   	push   %ax
    2b25:	e8 b9 6b             	call   0x96e1
    2b28:	83 c4 02             	add    $0x2,%sp
    2b2b:	89 06 96 4e          	mov    %ax,0x4e96
    2b2f:	0b c0                	or     %ax,%ax
    2b31:	74 16                	je     0x2b49
    2b33:	8a 06 a5 4e          	mov    0x4ea5,%al
    2b37:	98                   	cbtw
    2b38:	98                   	cbtw
    2b39:	8d 36 a0 4e          	lea    0x4ea0,%si
    2b3d:	8b 16 94 4e          	mov    0x4e94,%dx
    2b41:	ff 06 94 4e          	incw   0x4e94
    2b45:	03 f2                	add    %dx,%si
    2b47:	88 04                	mov    %al,(%si)
    2b49:	eb 1b                	jmp    0x2b66
    2b4b:	e8 86 6d             	call   0x98d4
    2b4e:	05 00 2e             	add    $0x2e00,%ax
    2b51:	00 2d                	add    %ch,(%di)
    2b53:	00 2b                	add    %ch,(%bp,%di)
    2b55:	00 3c                	add    %bh,(%si)
    2b57:	00 3e 00 1e          	add    %bh,0x1e00
    2b5b:	2c 15                	sub    $0x15,%al
    2b5d:	2c 0f                	sub    $0xf,%al
    2b5f:	2c 09                	sub    $0x9,%al
    2b61:	2c f8                	sub    $0xf8,%al
    2b63:	2b e7                	sub    %di,%sp
    2b65:	2b e9                	sub    %cx,%bp
    2b67:	99                   	cwtd
    2b68:	fe                   	(bad)
    2b69:	b8 00 00             	mov    $0x0,%ax
    2b6c:	8d 36 a0 4e          	lea    0x4ea0,%si
    2b70:	03 36 94 4e          	add    0x4e94,%si
    2b74:	88 04                	mov    %al,(%si)
    2b76:	8d 06 a0 4e          	lea    0x4ea0,%ax
    2b7a:	50                   	push   %ax
    2b7b:	e8 72 6a             	call   0x95f0
    2b7e:	83 c4 02             	add    $0x2,%sp
    2b81:	89 06 9a 4e          	mov    %ax,0x4e9a
    2b85:	81 3e 9a 4e 00 00    	cmpw   $0x0,0x4e9a
    2b8b:	7f 07                	jg     0x2b94
    2b8d:	b8 04 00             	mov    $0x4,%ax
    2b90:	89 06 9a 4e          	mov    %ax,0x4e9a
    2b94:	bb 3c 00             	mov    $0x3c,%bx
    2b97:	8b 06 9a 4e          	mov    0x4e9a,%ax
    2b9b:	f7 eb                	imul   %bx
    2b9d:	50                   	push   %ax
    2b9e:	bb a0 05             	mov    $0x5a0,%bx
    2ba1:	8b 06 a9 4e          	mov    0x4ea9,%ax
    2ba5:	f7 eb                	imul   %bx
    2ba7:	5b                   	pop    %bx
    2ba8:	99                   	cwtd
    2ba9:	f7 fb                	idiv   %bx
    2bab:	ba 01 00             	mov    $0x1,%dx
    2bae:	8b ca                	mov    %dx,%cx
    2bb0:	d3 f8                	sar    %cl,%ax
    2bb2:	89 06 9a 4e          	mov    %ax,0x4e9a
    2bb6:	8a 06 a6 4e          	mov    0x4ea6,%al
    2bba:	98                   	cbtw
    2bbb:	98                   	cbtw
    2bbc:	83 f8 52             	cmp    $0x52,%ax
    2bbf:	75 09                	jne    0x2bca
    2bc1:	b8 00 7d             	mov    $0x7d00,%ax
    2bc4:	89 06 98 4e          	mov    %ax,0x4e98
    2bc8:	eb 66                	jmp    0x2c30
    2bca:	8b 06 9e 4e          	mov    0x4e9e,%ax
    2bce:	01 06 9c 4e          	add    %ax,0x4e9c
    2bd2:	81 3e 9c 4e 00 00    	cmpw   $0x0,0x4e9c
    2bd8:	7d 17                	jge    0x2bf1
    2bda:	81 06 9c 4e 0c 00    	addw   $0xc,0x4e9c
    2be0:	b8 01 00             	mov    $0x1,%ax
    2be3:	8b 16 a7 4e          	mov    0x4ea7,%dx
    2be7:	8b c8                	mov    %ax,%cx
    2be9:	d3 fa                	sar    %cl,%dx
    2beb:	89 16 a7 4e          	mov    %dx,0x4ea7
    2bef:	eb e1                	jmp    0x2bd2
    2bf1:	81 3e 9c 4e 0c 00    	cmpw   $0xc,0x4e9c
    2bf7:	7c 17                	jl     0x2c10
    2bf9:	81 2e 9c 4e 0c 00    	subw   $0xc,0x4e9c
    2bff:	b8 01 00             	mov    $0x1,%ax
    2c02:	8b 16 a7 4e          	mov    0x4ea7,%dx
    2c06:	8b c8                	mov    %ax,%cx
    2c08:	d3 e2                	shl    %cl,%dx
    2c0a:	89 16 a7 4e          	mov    %dx,0x4ea7
    2c0e:	eb e1                	jmp    0x2bf1
    2c10:	ff 36 a7 4e          	push   0x4ea7
    2c14:	ff 36 90 4e          	push   0x4e90
    2c18:	8d 36 3d 0a          	lea    0xa3d,%si
    2c1c:	8b 06 9c 4e          	mov    0x4e9c,%ax
    2c20:	d1 e0                	shl    %ax
    2c22:	03 f0                	add    %ax,%si
    2c24:	ff 34                	push   (%si)
    2c26:	e8 31 d9             	call   0x55a
    2c29:	83 c4 06             	add    $0x6,%sp
    2c2c:	89 06 98 4e          	mov    %ax,0x4e98
    2c30:	ff 36 98 4e          	push   0x4e98
    2c34:	b8 38 4f             	mov    $0x4f38,%ax
    2c37:	ba 14 00             	mov    $0x14,%dx
    2c3a:	52                   	push   %dx
    2c3b:	50                   	push   %ax
    2c3c:	e8 38 d9             	call   0x577
    2c3f:	83 c4 06             	add    $0x6,%sp
    2c42:	89 06 8c 4e          	mov    %ax,0x4e8c
    2c46:	8b 06 9a 4e          	mov    0x4e9a,%ax
    2c4a:	89 06 8e 4e          	mov    %ax,0x4e8e
    2c4e:	8b e5                	mov    %bp,%sp
    2c50:	5d                   	pop    %bp
    2c51:	c3                   	ret
    2c52:	55                   	push   %bp
    2c53:	8b ec                	mov    %sp,%bp
    2c55:	83 ec 1e             	sub    $0x1e,%sp
    2c58:	8d 76 f2             	lea    -0xe(%bp),%si
    2c5b:	56                   	push   %si
    2c5c:	e8 e2 6e             	call   0x9b41
    2c5f:	83 c4 02             	add    $0x2,%sp
    2c62:	8b 06 55 0a          	mov    0xa55,%ax
    2c66:	0b c0                	or     %ax,%ax
    2c68:	74 31                	je     0x2c9b
    2c6a:	b8 00 00             	mov    $0x0,%ax
    2c6d:	89 06 55 0a          	mov    %ax,0xa55
    2c71:	ff 76 f6             	push   -0xa(%bp)
    2c74:	e8 f8 2c             	call   0x596f
    2c77:	83 c4 02             	add    $0x2,%sp
    2c7a:	ff 76 f2             	push   -0xe(%bp)
    2c7d:	ff 76 f2             	push   -0xe(%bp)
    2c80:	8d 06 68 5a          	lea    0x5a68,%ax
    2c84:	50                   	push   %ax
    2c85:	b8 22 00             	mov    $0x22,%ax
    2c88:	50                   	push   %ax
    2c89:	e8 c6 ff             	call   0x2c52
    2c8c:	83 c4 08             	add    $0x8,%sp
    2c8f:	83 f8 ff             	cmp    $0xffff,%ax
    2c92:	75 07                	jne    0x2c9b
    2c94:	b8 ff ff             	mov    $0xffff,%ax
    2c97:	8b e5                	mov    %bp,%sp
    2c99:	5d                   	pop    %bp
    2c9a:	c3                   	ret
    2c9b:	b8 00 00             	mov    $0x0,%ax
    2c9e:	89 46 fe             	mov    %ax,-0x2(%bp)
    2ca1:	81 7e fe 0a 00       	cmpw   $0xa,-0x2(%bp)
    2ca6:	7d 1e                	jge    0x2cc6
    2ca8:	8d 36 ab 4e          	lea    0x4eab,%si
    2cac:	bb 0c 00             	mov    $0xc,%bx
    2caf:	8b 46 fe             	mov    -0x2(%bp),%ax
    2cb2:	f7 eb                	imul   %bx
    2cb4:	03 f0                	add    %ax,%si
    2cb6:	8b 44 08             	mov    0x8(%si),%ax
    2cb9:	0b c0                	or     %ax,%ax
    2cbb:	74 02                	je     0x2cbf
    2cbd:	eb 02                	jmp    0x2cc1
    2cbf:	eb 05                	jmp    0x2cc6
    2cc1:	ff 46 fe             	incw   -0x2(%bp)
    2cc4:	eb db                	jmp    0x2ca1
    2cc6:	81 7e fe 0a 00       	cmpw   $0xa,-0x2(%bp)
    2ccb:	75 07                	jne    0x2cd4
    2ccd:	b8 ff ff             	mov    $0xffff,%ax
    2cd0:	8b e5                	mov    %bp,%sp
    2cd2:	5d                   	pop    %bp
    2cd3:	c3                   	ret
    2cd4:	8b 46 04             	mov    0x4(%bp),%ax
    2cd7:	83 c0 01             	add    $0x1,%ax
    2cda:	50                   	push   %ax
    2cdb:	8d 36 ab 4e          	lea    0x4eab,%si
    2cdf:	bb 0c 00             	mov    $0xc,%bx
    2ce2:	8b 46 fe             	mov    -0x2(%bp),%ax
    2ce5:	f7 eb                	imul   %bx
    2ce7:	03 f0                	add    %ax,%si
    2ce9:	58                   	pop    %ax
    2cea:	89 44 08             	mov    %ax,0x8(%si)
    2ced:	8b 46 04             	mov    0x4(%bp),%ax
    2cf0:	d1 e0                	shl    %ax
    2cf2:	d1 e0                	shl    %ax
    2cf4:	89 46 fc             	mov    %ax,-0x4(%bp)
    2cf7:	b8 00 00             	mov    $0x0,%ax
    2cfa:	50                   	push   %ax
    2cfb:	ff 76 fc             	push   -0x4(%bp)
    2cfe:	e8 26 6e             	call   0x9b27
    2d01:	83 c4 04             	add    $0x4,%sp
    2d04:	50                   	push   %ax
    2d05:	8d 36 ab 4e          	lea    0x4eab,%si
    2d09:	bb 0c 00             	mov    $0xc,%bx
    2d0c:	8b 46 fe             	mov    -0x2(%bp),%ax
    2d0f:	f7 eb                	imul   %bx
    2d11:	03 f0                	add    %ax,%si
    2d13:	58                   	pop    %ax
    2d14:	89 44 04             	mov    %ax,0x4(%si)
    2d17:	b8 00 00             	mov    $0x0,%ax
    2d1a:	50                   	push   %ax
    2d1b:	8b 46 fc             	mov    -0x4(%bp),%ax
    2d1e:	83 c0 02             	add    $0x2,%ax
    2d21:	50                   	push   %ax
    2d22:	e8 02 6e             	call   0x9b27
    2d25:	83 c4 04             	add    $0x4,%sp
    2d28:	50                   	push   %ax
    2d29:	8d 36 ab 4e          	lea    0x4eab,%si
    2d2d:	bb 0c 00             	mov    $0xc,%bx
    2d30:	8b 46 fe             	mov    -0x2(%bp),%ax
    2d33:	f7 eb                	imul   %bx
    2d35:	03 f0                	add    %ax,%si
    2d37:	58                   	pop    %ax
    2d38:	89 44 06             	mov    %ax,0x6(%si)
    2d3b:	8b 46 06             	mov    0x6(%bp),%ax
    2d3e:	50                   	push   %ax
    2d3f:	8d 36 ab 4e          	lea    0x4eab,%si
    2d43:	bb 0c 00             	mov    $0xc,%bx
    2d46:	8b 46 fe             	mov    -0x2(%bp),%ax
    2d49:	f7 eb                	imul   %bx
    2d4b:	03 f0                	add    %ax,%si
    2d4d:	58                   	pop    %ax
    2d4e:	89 04                	mov    %ax,(%si)
    2d50:	8b 46 08             	mov    0x8(%bp),%ax
    2d53:	50                   	push   %ax
    2d54:	8d 36 ab 4e          	lea    0x4eab,%si
    2d58:	bb 0c 00             	mov    $0xc,%bx
    2d5b:	8b 46 fe             	mov    -0x2(%bp),%ax
    2d5e:	f7 eb                	imul   %bx
    2d60:	03 f0                	add    %ax,%si
    2d62:	58                   	pop    %ax
    2d63:	89 44 02             	mov    %ax,0x2(%si)
    2d66:	8b 46 0a             	mov    0xa(%bp),%ax
    2d69:	50                   	push   %ax
    2d6a:	8d 36 ab 4e          	lea    0x4eab,%si
    2d6e:	bb 0c 00             	mov    $0xc,%bx
    2d71:	8b 46 fe             	mov    -0x2(%bp),%ax
    2d74:	f7 eb                	imul   %bx
    2d76:	03 f0                	add    %ax,%si
    2d78:	58                   	pop    %ax
    2d79:	89 44 0a             	mov    %ax,0xa(%si)
    2d7c:	8d 06 9b 59          	lea    0x599b,%ax
    2d80:	89 46 fa             	mov    %ax,-0x6(%bp)
    2d83:	8d 36 ab 4e          	lea    0x4eab,%si
    2d87:	bb 0c 00             	mov    $0xc,%bx
    2d8a:	8b 46 fe             	mov    -0x2(%bp),%ax
    2d8d:	f7 eb                	imul   %bx
    2d8f:	03 f0                	add    %ax,%si
    2d91:	8b 44 08             	mov    0x8(%si),%ax
    2d94:	83 e8 01             	sub    $0x1,%ax
    2d97:	d1 e0                	shl    %ax
    2d99:	d1 e0                	shl    %ax
    2d9b:	89 46 fc             	mov    %ax,-0x4(%bp)
    2d9e:	8b 46 fa             	mov    -0x6(%bp),%ax
    2da1:	8b 56 fe             	mov    -0x2(%bp),%dx
    2da4:	d1 e2                	shl    %dx
    2da6:	d1 e2                	shl    %dx
    2da8:	d1 e2                	shl    %dx
    2daa:	03 c2                	add    %dx,%ax
    2dac:	50                   	push   %ax
    2dad:	b8 00 00             	mov    $0x0,%ax
    2db0:	50                   	push   %ax
    2db1:	ff 76 fc             	push   -0x4(%bp)
    2db4:	e8 73 6c             	call   0x9a2a
    2db7:	83 c4 06             	add    $0x6,%sp
    2dba:	ff 76 f2             	push   -0xe(%bp)
    2dbd:	b8 00 00             	mov    $0x0,%ax
    2dc0:	50                   	push   %ax
    2dc1:	8b 46 fc             	mov    -0x4(%bp),%ax
    2dc4:	83 c0 02             	add    $0x2,%ax
    2dc7:	50                   	push   %ax
    2dc8:	e8 5f 6c             	call   0x9a2a
    2dcb:	83 c4 06             	add    $0x6,%sp
    2dce:	8b 46 fe             	mov    -0x2(%bp),%ax
    2dd1:	8b e5                	mov    %bp,%sp
    2dd3:	5d                   	pop    %bp
    2dd4:	c3                   	ret
    2dd5:	55                   	push   %bp
    2dd6:	8b ec                	mov    %sp,%bp
    2dd8:	83 ec 12             	sub    $0x12,%sp
    2ddb:	81 7e 04 00 00       	cmpw   $0x0,0x4(%bp)
    2de0:	7d 02                	jge    0x2de4
    2de2:	eb 07                	jmp    0x2deb
    2de4:	81 7e 04 0a 00       	cmpw   $0xa,0x4(%bp)
    2de9:	7c 02                	jl     0x2ded
    2deb:	eb 16                	jmp    0x2e03
    2ded:	8d 36 ab 4e          	lea    0x4eab,%si
    2df1:	bb 0c 00             	mov    $0xc,%bx
    2df4:	8b 46 04             	mov    0x4(%bp),%ax
    2df7:	f7 eb                	imul   %bx
    2df9:	03 f0                	add    %ax,%si
    2dfb:	8b 44 08             	mov    0x8(%si),%ax
    2dfe:	83 f8 00             	cmp    $0x0,%ax
    2e01:	75 07                	jne    0x2e0a
    2e03:	b8 ff ff             	mov    $0xffff,%ax
    2e06:	8b e5                	mov    %bp,%sp
    2e08:	5d                   	pop    %bp
    2e09:	c3                   	ret
    2e0a:	8d 36 ab 4e          	lea    0x4eab,%si
    2e0e:	bb 0c 00             	mov    $0xc,%bx
    2e11:	8b 46 04             	mov    0x4(%bp),%ax
    2e14:	f7 eb                	imul   %bx
    2e16:	03 f0                	add    %ax,%si
    2e18:	8b 44 08             	mov    0x8(%si),%ax
    2e1b:	83 e8 01             	sub    $0x1,%ax
    2e1e:	d1 e0                	shl    %ax
    2e20:	d1 e0                	shl    %ax
    2e22:	89 46 fe             	mov    %ax,-0x2(%bp)
    2e25:	8d 36 ab 4e          	lea    0x4eab,%si
    2e29:	bb 0c 00             	mov    $0xc,%bx
    2e2c:	8b 46 04             	mov    0x4(%bp),%ax
    2e2f:	f7 eb                	imul   %bx
    2e31:	03 f0                	add    %ax,%si
    2e33:	ff 74 04             	push   0x4(%si)
    2e36:	b8 00 00             	mov    $0x0,%ax
    2e39:	50                   	push   %ax
    2e3a:	ff 76 fe             	push   -0x2(%bp)
    2e3d:	e8 ea 6b             	call   0x9a2a
    2e40:	83 c4 06             	add    $0x6,%sp
    2e43:	8d 36 ab 4e          	lea    0x4eab,%si
    2e47:	bb 0c 00             	mov    $0xc,%bx
    2e4a:	8b 46 04             	mov    0x4(%bp),%ax
    2e4d:	f7 eb                	imul   %bx
    2e4f:	03 f0                	add    %ax,%si
    2e51:	ff 74 06             	push   0x6(%si)
    2e54:	b8 00 00             	mov    $0x0,%ax
    2e57:	50                   	push   %ax
    2e58:	8b 46 fe             	mov    -0x2(%bp),%ax
    2e5b:	83 c0 02             	add    $0x2,%ax
    2e5e:	50                   	push   %ax
    2e5f:	e8 c8 6b             	call   0x9a2a
    2e62:	83 c4 06             	add    $0x6,%sp
    2e65:	b8 00 00             	mov    $0x0,%ax
    2e68:	50                   	push   %ax
    2e69:	8d 36 ab 4e          	lea    0x4eab,%si
    2e6d:	bb 0c 00             	mov    $0xc,%bx
    2e70:	8b 46 04             	mov    0x4(%bp),%ax
    2e73:	f7 eb                	imul   %bx
    2e75:	03 f0                	add    %ax,%si
    2e77:	58                   	pop    %ax
    2e78:	89 44 08             	mov    %ax,0x8(%si)
    2e7b:	8b 46 04             	mov    0x4(%bp),%ax
    2e7e:	8b e5                	mov    %bp,%sp
    2e80:	5d                   	pop    %bp
    2e81:	c3                   	ret
    2e82:	55                   	push   %bp
    2e83:	8b ec                	mov    %sp,%bp
    2e85:	83 ec 1a             	sub    $0x1a,%sp
    2e88:	b8 00 00             	mov    $0x0,%ax
    2e8b:	89 46 e6             	mov    %ax,-0x1a(%bp)
    2e8e:	89 46 e8             	mov    %ax,-0x18(%bp)
    2e91:	89 46 ea             	mov    %ax,-0x16(%bp)
    2e94:	89 46 ec             	mov    %ax,-0x14(%bp)
    2e97:	89 46 ee             	mov    %ax,-0x12(%bp)
    2e9a:	89 46 f0             	mov    %ax,-0x10(%bp)
    2e9d:	8d 06 13 01          	lea    0x113,%ax
    2ea1:	89 46 fe             	mov    %ax,-0x2(%bp)
    2ea4:	8d 76 f6             	lea    -0xa(%bp),%si
    2ea7:	56                   	push   %si
    2ea8:	e8 96 6c             	call   0x9b41
    2eab:	83 c4 02             	add    $0x2,%sp
    2eae:	8b 46 fa             	mov    -0x6(%bp),%ax
    2eb1:	89 06 23 4f          	mov    %ax,0x4f23
    2eb5:	8d 36 cd 07          	lea    0x7cd,%si
    2eb9:	56                   	push   %si
    2eba:	8d 36 2a 4b          	lea    0x4b2a,%si
    2ebe:	56                   	push   %si
    2ebf:	8d 36 2c 4b          	lea    0x4b2c,%si
    2ec3:	56                   	push   %si
    2ec4:	8d 36 16 46          	lea    0x4616,%si
    2ec8:	56                   	push   %si
    2ec9:	8d 76 f0             	lea    -0x10(%bp),%si
    2ecc:	56                   	push   %si
    2ecd:	8d 36 14 46          	lea    0x4614,%si
    2ed1:	56                   	push   %si
    2ed2:	8d 76 ee             	lea    -0x12(%bp),%si
    2ed5:	56                   	push   %si
    2ed6:	8d 76 ec             	lea    -0x14(%bp),%si
    2ed9:	56                   	push   %si
    2eda:	8d 76 ea             	lea    -0x16(%bp),%si
    2edd:	56                   	push   %si
    2ede:	8d 76 e8             	lea    -0x18(%bp),%si
    2ee1:	56                   	push   %si
    2ee2:	8d 36 e7 25          	lea    0x25e7,%si
    2ee6:	56                   	push   %si
    2ee7:	8d 36 12 46          	lea    0x4612,%si
    2eeb:	56                   	push   %si
    2eec:	8d 36 10 46          	lea    0x4610,%si
    2ef0:	56                   	push   %si
    2ef1:	8d 76 fe             	lea    -0x2(%bp),%si
    2ef4:	56                   	push   %si
    2ef5:	8d 36 e3 07          	lea    0x7e3,%si
    2ef9:	56                   	push   %si
    2efa:	8d 36 08 46          	lea    0x4608,%si
    2efe:	56                   	push   %si
    2eff:	8d 36 06 46          	lea    0x4606,%si
    2f03:	56                   	push   %si
    2f04:	8d 76 e6             	lea    -0x1a(%bp),%si
    2f07:	56                   	push   %si
    2f08:	8d 36 dd 23          	lea    0x23dd,%si
    2f0c:	56                   	push   %si
    2f0d:	8d 36 db 23          	lea    0x23db,%si
    2f11:	56                   	push   %si
    2f12:	8d 06 23 01          	lea    0x123,%ax
    2f16:	50                   	push   %ax
    2f17:	ff 76 06             	push   0x6(%bp)
    2f1a:	ff 76 04             	push   0x4(%bp)
    2f1d:	e8 8e 56             	call   0x85ae
    2f20:	83 c4 2e             	add    $0x2e,%sp
    2f23:	8b 06 10 46          	mov    0x4610,%ax
    2f27:	0b c0                	or     %ax,%ax
    2f29:	74 03                	je     0x2f2e
    2f2b:	b8 01 00             	mov    $0x1,%ax
    2f2e:	83 f0 01             	xor    $0x1,%ax
    2f31:	89 06 10 46          	mov    %ax,0x4610
    2f35:	8b 46 ea             	mov    -0x16(%bp),%ax
    2f38:	03 46 e8             	add    -0x18(%bp),%ax
    2f3b:	03 46 ec             	add    -0x14(%bp),%ax
    2f3e:	03 46 ee             	add    -0x12(%bp),%ax
    2f41:	89 46 f2             	mov    %ax,-0xe(%bp)
    2f44:	83 f8 01             	cmp    $0x1,%ax
    2f47:	7e 15                	jle    0x2f5e
    2f49:	8d 06 4c 01          	lea    0x14c,%ax
    2f4d:	50                   	push   %ax
    2f4e:	e8 36 d6             	call   0x587
    2f51:	83 c4 02             	add    $0x2,%sp
    2f54:	b8 01 00             	mov    $0x1,%ax
    2f57:	50                   	push   %ax
    2f58:	e8 ca d1             	call   0x125
    2f5b:	83 c4 02             	add    $0x2,%sp
    2f5e:	8b 46 f0             	mov    -0x10(%bp),%ax
    2f61:	03 06 14 46          	add    0x4614,%ax
    2f65:	89 46 f4             	mov    %ax,-0xc(%bp)
    2f68:	83 f8 01             	cmp    $0x1,%ax
    2f6b:	7e 15                	jle    0x2f82
    2f6d:	8d 06 7d 01          	lea    0x17d,%ax
    2f71:	50                   	push   %ax
    2f72:	e8 12 d6             	call   0x587
    2f75:	83 c4 02             	add    $0x2,%sp
    2f78:	b8 01 00             	mov    $0x1,%ax
    2f7b:	50                   	push   %ax
    2f7c:	e8 a6 d1             	call   0x125
    2f7f:	83 c4 02             	add    $0x2,%sp
    2f82:	8b 46 f2             	mov    -0xe(%bp),%ax
    2f85:	0b c0                	or     %ax,%ax
    2f87:	74 0e                	je     0x2f97
    2f89:	8b 46 f4             	mov    -0xc(%bp),%ax
    2f8c:	0b c0                	or     %ax,%ax
    2f8e:	74 07                	je     0x2f97
    2f90:	b8 01 00             	mov    $0x1,%ax
    2f93:	89 06 0c 46          	mov    %ax,0x460c
    2f97:	e8 b9 01             	call   0x3153
    2f9a:	ff 36 2e 4b          	push   0x4b2e
    2f9e:	e8 7d 53             	call   0x831e
    2fa1:	83 c4 02             	add    $0x2,%sp
    2fa4:	89 06 2e 4b          	mov    %ax,0x4b2e
    2fa8:	e8 ef f3             	call   0x239a
    2fab:	e8 97 26             	call   0x5645
    2fae:	ff 76 fa             	push   -0x6(%bp)
    2fb1:	ff 76 f6             	push   -0xa(%bp)
    2fb4:	8d 06 fb 02          	lea    0x2fb,%ax
    2fb8:	50                   	push   %ax
    2fb9:	b8 1b 00             	mov    $0x1b,%ax
    2fbc:	50                   	push   %ax
    2fbd:	e8 92 fc             	call   0x2c52
    2fc0:	83 c4 08             	add    $0x8,%sp
    2fc3:	ff 76 fa             	push   -0x6(%bp)
    2fc6:	ff 76 f6             	push   -0xa(%bp)
    2fc9:	8d 06 a7 05          	lea    0x5a7,%ax
    2fcd:	50                   	push   %ax
    2fce:	b8 1c 00             	mov    $0x1c,%ax
    2fd1:	50                   	push   %ax
    2fd2:	e8 7d fc             	call   0x2c52
    2fd5:	83 c4 08             	add    $0x8,%sp
    2fd8:	e8 53 25             	call   0x552e
    2fdb:	e8 65 26             	call   0x5643
    2fde:	8b 46 f2             	mov    -0xe(%bp),%ax
    2fe1:	0b c0                	or     %ax,%ax
    2fe3:	74 2d                	je     0x3012
    2fe5:	8b 46 e8             	mov    -0x18(%bp),%ax
    2fe8:	0b c0                	or     %ax,%ax
    2fea:	74 05                	je     0x2ff1
    2fec:	b8 00 00             	mov    $0x0,%ax
    2fef:	eb 1b                	jmp    0x300c
    2ff1:	8b 46 ea             	mov    -0x16(%bp),%ax
    2ff4:	0b c0                	or     %ax,%ax
    2ff6:	74 05                	je     0x2ffd
    2ff8:	b8 02 00             	mov    $0x2,%ax
    2ffb:	eb 0f                	jmp    0x300c
    2ffd:	8b 46 ec             	mov    -0x14(%bp),%ax
    3000:	0b c0                	or     %ax,%ax
    3002:	74 05                	je     0x3009
    3004:	b8 01 00             	mov    $0x1,%ax
    3007:	eb 03                	jmp    0x300c
    3009:	b8 03 00             	mov    $0x3,%ax
    300c:	89 06 ad 25          	mov    %ax,0x25ad
    3010:	eb 03                	jmp    0x3015
    3012:	e8 18 04             	call   0x342d
    3015:	8b 46 f4             	mov    -0xc(%bp),%ax
    3018:	0b c0                	or     %ax,%ax
    301a:	74 02                	je     0x301e
    301c:	eb 03                	jmp    0x3021
    301e:	e8 50 03             	call   0x3371
    3021:	81 3e ad 25 01 00    	cmpw   $0x1,0x25ad
    3027:	75 02                	jne    0x302b
    3029:	eb 08                	jmp    0x3033
    302b:	81 3e ad 25 03 00    	cmpw   $0x3,0x25ad
    3031:	75 68                	jne    0x309b
    3033:	b8 0a 00             	mov    $0xa,%ax
    3036:	89 06 38 4b          	mov    %ax,0x4b38
    303a:	81 3e ad 25 01 00    	cmpw   $0x1,0x25ad
    3040:	75 0e                	jne    0x3050
    3042:	ff 76 fe             	push   -0x2(%bp)
    3045:	ff 76 e6             	push   -0x1a(%bp)
    3048:	e8 e3 4b             	call   0x7c2e
    304b:	83 c4 04             	add    $0x4,%sp
    304e:	eb 03                	jmp    0x3053
    3050:	e8 54 51             	call   0x81a7
    3053:	e8 1e 05             	call   0x3574
    3056:	e8 ed 09             	call   0x3a46
    3059:	81 3e ad 25 01 00    	cmpw   $0x1,0x25ad
    305f:	75 05                	jne    0x3066
    3061:	e8 26 4d             	call   0x7d8a
    3064:	eb 03                	jmp    0x3069
    3066:	e8 07 52             	call   0x8270
    3069:	e8 18 12             	call   0x4284
    306c:	8b 36 af 25          	mov    0x25af,%si
    3070:	8b 74 24             	mov    0x24(%si),%si
    3073:	0b f6                	or     %si,%si
    3075:	74 09                	je     0x3080
    3077:	8b 36 af 25          	mov    0x25af,%si
    307b:	8b 74 24             	mov    0x24(%si),%si
    307e:	ff d6                	call   *%si
    3080:	b8 00 00             	mov    $0x0,%ax
    3083:	50                   	push   %ax
    3084:	e8 08 05             	call   0x358f
    3087:	83 c4 02             	add    $0x2,%sp
    308a:	81 3e e3 07 ff ff    	cmpw   $0xffff,0x7e3
    3090:	75 07                	jne    0x3099
    3092:	b8 01 00             	mov    $0x1,%ax
    3095:	89 06 e3 07          	mov    %ax,0x7e3
    3099:	eb 70                	jmp    0x310b
    309b:	81 3e e3 07 ff ff    	cmpw   $0xffff,0x7e3
    30a1:	75 07                	jne    0x30aa
    30a3:	b8 01 00             	mov    $0x1,%ax
    30a6:	89 06 e3 07          	mov    %ax,0x7e3
    30aa:	b8 05 00             	mov    $0x5,%ax
    30ad:	89 06 38 4b          	mov    %ax,0x4b38
    30b1:	8d 06 1b 20          	lea    0x201b,%ax
    30b5:	89 06 af 25          	mov    %ax,0x25af
    30b9:	e8 58 02             	call   0x3314
    30bc:	e8 b5 04             	call   0x3574
    30bf:	e8 84 09             	call   0x3a46
    30c2:	b8 00 00             	mov    $0x0,%ax
    30c5:	50                   	push   %ax
    30c6:	e8 be 0a             	call   0x3b87
    30c9:	83 c4 02             	add    $0x2,%sp
    30cc:	b8 00 00             	mov    $0x0,%ax
    30cf:	50                   	push   %ax
    30d0:	e8 fb 09             	call   0x3ace
    30d3:	83 c4 02             	add    $0x2,%sp
    30d6:	b8 00 00             	mov    $0x0,%ax
    30d9:	50                   	push   %ax
    30da:	e8 f1 09             	call   0x3ace
    30dd:	83 c4 02             	add    $0x2,%sp
    30e0:	b8 00 00             	mov    $0x0,%ax
    30e3:	50                   	push   %ax
    30e4:	e8 e7 09             	call   0x3ace
    30e7:	83 c4 02             	add    $0x2,%sp
    30ea:	e8 97 11             	call   0x4284
    30ed:	8b 36 af 25          	mov    0x25af,%si
    30f1:	8b 74 24             	mov    0x24(%si),%si
    30f4:	0b f6                	or     %si,%si
    30f6:	74 09                	je     0x3101
    30f8:	8b 36 af 25          	mov    0x25af,%si
    30fc:	8b 74 24             	mov    0x24(%si),%si
    30ff:	ff d6                	call   *%si
    3101:	b8 00 00             	mov    $0x0,%ax
    3104:	50                   	push   %ax
    3105:	e8 87 04             	call   0x358f
    3108:	83 c4 02             	add    $0x2,%sp
    310b:	e8 f3 16             	call   0x4801
    310e:	e8 eb 18             	call   0x49fc
    3111:	e8 af 01             	call   0x32c3
    3114:	e8 2e 25             	call   0x5645
    3117:	ff 76 fa             	push   -0x6(%bp)
    311a:	ff 76 f6             	push   -0xa(%bp)
    311d:	8d 06 7c 05          	lea    0x57c,%ax
    3121:	50                   	push   %ax
    3122:	b8 05 00             	mov    $0x5,%ax
    3125:	50                   	push   %ax
    3126:	e8 29 fb             	call   0x2c52
    3129:	83 c4 08             	add    $0x8,%sp
    312c:	ff 76 fa             	push   -0x6(%bp)
    312f:	ff 76 f6             	push   -0xa(%bp)
    3132:	8d 06 1a 03          	lea    0x31a,%ax
    3136:	50                   	push   %ax
    3137:	b8 09 00             	mov    $0x9,%ax
    313a:	50                   	push   %ax
    313b:	e8 14 fb             	call   0x2c52
    313e:	83 c4 08             	add    $0x8,%sp
    3141:	89 06 1a 46          	mov    %ax,0x461a
    3145:	b8 01 00             	mov    $0x1,%ax
    3148:	89 06 18 46          	mov    %ax,0x4618
    314c:	e8 f4 24             	call   0x5643
    314f:	8b e5                	mov    %bp,%sp
    3151:	5d                   	pop    %bp
    3152:	c3                   	ret
    3153:	55                   	push   %bp
    3154:	8b ec                	mov    %sp,%bp
    3156:	8b 06 2e 4b          	mov    0x4b2e,%ax
    315a:	0b c0                	or     %ax,%ax
    315c:	74 02                	je     0x3160
    315e:	eb 3f                	jmp    0x319f
    3160:	b8 00 00             	mov    $0x0,%ax
    3163:	50                   	push   %ax
    3164:	b0 43                	mov    $0x43,%al
    3166:	50                   	push   %ax
    3167:	e8 9d 67             	call   0x9907
    316a:	83 c4 04             	add    $0x4,%sp
    316d:	b8 ff 00             	mov    $0xff,%ax
    3170:	50                   	push   %ax
    3171:	b0 40                	mov    $0x40,%al
    3173:	50                   	push   %ax
    3174:	e8 35 64             	call   0x95ac
    3177:	83 c4 02             	add    $0x2,%sp
    317a:	5a                   	pop    %dx
    317b:	23 d0                	and    %ax,%dx
    317d:	52                   	push   %dx
    317e:	b8 00 ff             	mov    $0xff00,%ax
    3181:	50                   	push   %ax
    3182:	b8 40 00             	mov    $0x40,%ax
    3185:	50                   	push   %ax
    3186:	e8 23 64             	call   0x95ac
    3189:	83 c4 02             	add    $0x2,%sp
    318c:	ba 08 00             	mov    $0x8,%dx
    318f:	8b ca                	mov    %dx,%cx
    3191:	d3 e0                	shl    %cl,%ax
    3193:	5a                   	pop    %dx
    3194:	23 d0                	and    %ax,%dx
    3196:	58                   	pop    %ax
    3197:	0b c2                	or     %dx,%ax
    3199:	89 06 2e 4b          	mov    %ax,0x4b2e
    319d:	eb b7                	jmp    0x3156
    319f:	8b e5                	mov    %bp,%sp
    31a1:	5d                   	pop    %bp
    31a2:	c3                   	ret
    31a3:	55                   	push   %bp
    31a4:	8b ec                	mov    %sp,%bp
    31a6:	83 ec 06             	sub    $0x6,%sp
    31a9:	8d 36 bc 48          	lea    0x48bc,%si
    31ad:	8b 06 c6 48          	mov    0x48c6,%ax
    31b1:	d1 e0                	shl    %ax
    31b3:	03 f0                	add    %ax,%si
    31b5:	8b 04                	mov    (%si),%ax
    31b7:	83 f8 01             	cmp    $0x1,%ax
    31ba:	74 03                	je     0x31bf
    31bc:	e9 8b 00             	jmp    0x324a
    31bf:	8b 06 2c 46          	mov    0x462c,%ax
    31c3:	50                   	push   %ax
    31c4:	bb 6a 00             	mov    $0x6a,%bx
    31c7:	8b 06 c6 48          	mov    0x48c6,%ax
    31cb:	f7 eb                	imul   %bx
    31cd:	5e                   	pop    %si
    31ce:	03 f0                	add    %ax,%si
    31d0:	89 76 fa             	mov    %si,-0x6(%bp)
    31d3:	b8 00 00             	mov    $0x0,%ax
    31d6:	89 46 fe             	mov    %ax,-0x2(%bp)
    31d9:	8b 76 fa             	mov    -0x6(%bp),%si
    31dc:	8b 44 4c             	mov    0x4c(%si),%ax
    31df:	ff 44 4c             	incw   0x4c(%si)
    31e2:	3b 06 38 4b          	cmp    0x4b38,%ax
    31e6:	7d 4a                	jge    0x3232
    31e8:	b8 19 00             	mov    $0x19,%ax
    31eb:	8b 56 fe             	mov    -0x2(%bp),%dx
    31ee:	03 d0                	add    %ax,%dx
    31f0:	89 56 fe             	mov    %dx,-0x2(%bp)
    31f3:	8b 76 fa             	mov    -0x6(%bp),%si
    31f6:	8b 44 16             	mov    0x16(%si),%ax
    31f9:	03 c2                	add    %dx,%ax
    31fb:	89 44 16             	mov    %ax,0x16(%si)
    31fe:	e8 a2 07             	call   0x39a3
    3201:	ff 76 fa             	push   -0x6(%bp)
    3204:	e8 88 04             	call   0x368f
    3207:	83 c4 02             	add    $0x2,%sp
    320a:	ff 76 fa             	push   -0x6(%bp)
    320d:	e8 60 21             	call   0x5370
    3210:	83 c4 02             	add    $0x2,%sp
    3213:	e8 2f 24             	call   0x5645
    3216:	b8 05 00             	mov    $0x5,%ax
    3219:	89 46 fc             	mov    %ax,-0x4(%bp)
    321c:	b0 00                	mov    $0x0,%al
    321e:	89 06 e1 25          	mov    %ax,0x25e1
    3222:	e8 1e 24             	call   0x5643
    3225:	8b 06 e1 25          	mov    0x25e1,%ax
    3229:	3b 46 fc             	cmp    -0x4(%bp),%ax
    322c:	7d 02                	jge    0x3230
    322e:	eb f5                	jmp    0x3225
    3230:	eb a7                	jmp    0x31d9
    3232:	81 3e e7 25 05 00    	cmpw   $0x5,0x25e7
    3238:	7f 04                	jg     0x323e
    323a:	ff 06 e7 25          	incw   0x25e7
    323e:	8b 76 fa             	mov    -0x6(%bp),%si
    3241:	8b 44 16             	mov    0x16(%si),%ax
    3244:	89 06 25 4f          	mov    %ax,0x4f25
    3248:	eb 0b                	jmp    0x3255
    324a:	b8 00 00             	mov    $0x0,%ax
    324d:	89 06 e7 25          	mov    %ax,0x25e7
    3251:	89 06 25 4f          	mov    %ax,0x4f25
    3255:	e8 42 f1             	call   0x239a
    3258:	e8 19 03             	call   0x3574
    325b:	e8 e8 07             	call   0x3a46
    325e:	b8 00 00             	mov    $0x0,%ax
    3261:	50                   	push   %ax
    3262:	e8 22 09             	call   0x3b87
    3265:	83 c4 02             	add    $0x2,%sp
    3268:	b8 00 00             	mov    $0x0,%ax
    326b:	50                   	push   %ax
    326c:	e8 5f 08             	call   0x3ace
    326f:	83 c4 02             	add    $0x2,%sp
    3272:	b8 00 00             	mov    $0x0,%ax
    3275:	50                   	push   %ax
    3276:	e8 55 08             	call   0x3ace
    3279:	83 c4 02             	add    $0x2,%sp
    327c:	b8 00 00             	mov    $0x0,%ax
    327f:	50                   	push   %ax
    3280:	e8 4b 08             	call   0x3ace
    3283:	83 c4 02             	add    $0x2,%sp
    3286:	e8 fb 0f             	call   0x4284
    3289:	8b 36 af 25          	mov    0x25af,%si
    328d:	8b 74 24             	mov    0x24(%si),%si
    3290:	0b f6                	or     %si,%si
    3292:	74 09                	je     0x329d
    3294:	8b 36 af 25          	mov    0x25af,%si
    3298:	8b 74 24             	mov    0x24(%si),%si
    329b:	ff d6                	call   *%si
    329d:	b8 00 00             	mov    $0x0,%ax
    32a0:	50                   	push   %ax
    32a1:	e8 eb 02             	call   0x358f
    32a4:	83 c4 02             	add    $0x2,%sp
    32a7:	e8 57 15             	call   0x4801
    32aa:	e8 4f 17             	call   0x49fc
    32ad:	e8 13 00             	call   0x32c3
    32b0:	b8 00 00             	mov    $0x0,%ax
    32b3:	50                   	push   %ax
    32b4:	8d 06 3a 4b          	lea    0x4b3a,%ax
    32b8:	50                   	push   %ax
    32b9:	e8 78 68             	call   0x9b34
    32bc:	83 c4 04             	add    $0x4,%sp
    32bf:	8b e5                	mov    %bp,%sp
    32c1:	5d                   	pop    %bp
    32c2:	c3                   	ret
    32c3:	55                   	push   %bp
    32c4:	8b ec                	mov    %sp,%bp
    32c6:	83 ec 02             	sub    $0x2,%sp
    32c9:	8b 06 e7 25          	mov    0x25e7,%ax
    32cd:	83 c0 08             	add    $0x8,%ax
    32d0:	89 06 e9 25          	mov    %ax,0x25e9
    32d4:	8b 06 e7 25          	mov    0x25e7,%ax
    32d8:	83 c0 04             	add    $0x4,%ax
    32db:	89 06 eb 25          	mov    %ax,0x25eb
    32df:	b8 64 00             	mov    $0x64,%ax
    32e2:	89 06 ed 25          	mov    %ax,0x25ed
    32e6:	81 3e e7 25 06 00    	cmpw   $0x6,0x25e7
    32ec:	7d 16                	jge    0x3304
    32ee:	bb 0a 00             	mov    $0xa,%bx
    32f1:	b8 06 00             	mov    $0x6,%ax
    32f4:	2b 06 e7 25          	sub    0x25e7,%ax
    32f8:	f7 eb                	imul   %bx
    32fa:	8b 16 ed 25          	mov    0x25ed,%dx
    32fe:	2b d0                	sub    %ax,%dx
    3300:	89 16 ed 25          	mov    %dx,0x25ed
    3304:	8b 06 ed 25          	mov    0x25ed,%ax
    3308:	f7 2e ed 25          	imulw  0x25ed
    330c:	89 06 ed 25          	mov    %ax,0x25ed
    3310:	8b e5                	mov    %bp,%sp
    3312:	5d                   	pop    %bp
    3313:	c3                   	ret
    3314:	55                   	push   %bp
    3315:	8b ec                	mov    %sp,%bp
    3317:	83 ec 12             	sub    $0x12,%sp
    331a:	b8 00 00             	mov    $0x0,%ax
    331d:	89 46 ee             	mov    %ax,-0x12(%bp)
    3320:	81 7e ee 04 00       	cmpw   $0x4,-0x12(%bp)
    3325:	7d 39                	jge    0x3360
    3327:	8b 46 ee             	mov    -0x12(%bp),%ax
    332a:	83 c0 14             	add    $0x14,%ax
    332d:	50                   	push   %ax
    332e:	b8 00 00             	mov    $0x0,%ax
    3331:	50                   	push   %ax
    3332:	e8 21 d1             	call   0x456
    3335:	83 c4 04             	add    $0x4,%sp
    3338:	b8 20 0a             	mov    $0xa20,%ax
    333b:	89 46 f0             	mov    %ax,-0x10(%bp)
    333e:	b8 00 00             	mov    $0x0,%ax
    3341:	89 46 f2             	mov    %ax,-0xe(%bp)
    3344:	b0 28                	mov    $0x28,%al
    3346:	89 46 f4             	mov    %ax,-0xc(%bp)
    3349:	8d 76 f0             	lea    -0x10(%bp),%si
    334c:	56                   	push   %si
    334d:	8d 76 f0             	lea    -0x10(%bp),%si
    3350:	56                   	push   %si
    3351:	b8 10 00             	mov    $0x10,%ax
    3354:	50                   	push   %ax
    3355:	e8 3a 66             	call   0x9992
    3358:	83 c4 06             	add    $0x6,%sp
    335b:	ff 46 ee             	incw   -0x12(%bp)
    335e:	eb c0                	jmp    0x3320
    3360:	b8 14 00             	mov    $0x14,%ax
    3363:	50                   	push   %ax
    3364:	b0 00                	mov    $0x0,%al
    3366:	50                   	push   %ax
    3367:	e8 ec d0             	call   0x456
    336a:	83 c4 04             	add    $0x4,%sp
    336d:	8b e5                	mov    %bp,%sp
    336f:	5d                   	pop    %bp
    3370:	c3                   	ret
    3371:	55                   	push   %bp
    3372:	8b ec                	mov    %sp,%bp
    3374:	83 ec 02             	sub    $0x2,%sp
    3377:	e8 9a ff             	call   0x3314
    337a:	8d 06 a8 01          	lea    0x1a8,%ax
    337e:	50                   	push   %ax
    337f:	e8 05 d2             	call   0x587
    3382:	83 c4 02             	add    $0x2,%sp
    3385:	8d 06 ce 01          	lea    0x1ce,%ax
    3389:	50                   	push   %ax
    338a:	e8 fa d1             	call   0x587
    338d:	83 c4 02             	add    $0x2,%sp
    3390:	8d 06 f8 01          	lea    0x1f8,%ax
    3394:	50                   	push   %ax
    3395:	e8 ef d1             	call   0x587
    3398:	83 c4 02             	add    $0x2,%sp
    339b:	8d 06 15 02          	lea    0x215,%ax
    339f:	50                   	push   %ax
    33a0:	e8 e4 d1             	call   0x587
    33a3:	83 c4 02             	add    $0x2,%sp
    33a6:	b8 01 00             	mov    $0x1,%ax
    33a9:	0b c0                	or     %ax,%ax
    33ab:	75 03                	jne    0x33b0
    33ad:	e9 79 00             	jmp    0x3429
    33b0:	e8 94 01             	call   0x3547
    33b3:	0b c0                	or     %ax,%ax
    33b5:	74 0b                	je     0x33c2
    33b7:	b8 00 00             	mov    $0x0,%ax
    33ba:	50                   	push   %ax
    33bb:	50                   	push   %ax
    33bc:	e8 d2 25             	call   0x5991
    33bf:	83 c4 04             	add    $0x4,%sp
    33c2:	e8 fe ce             	call   0x2c3
    33c5:	81 e0 ff 00          	and    $0xff,%ax
    33c9:	88 46 fe             	mov    %al,-0x2(%bp)
    33cc:	98                   	cbtw
    33cd:	83 f8 31             	cmp    $0x31,%ax
    33d0:	7d 02                	jge    0x33d4
    33d2:	eb 0a                	jmp    0x33de
    33d4:	8a 46 fe             	mov    -0x2(%bp),%al
    33d7:	98                   	cbtw
    33d8:	98                   	cbtw
    33d9:	83 f8 34             	cmp    $0x34,%ax
    33dc:	7e 02                	jle    0x33e0
    33de:	eb c6                	jmp    0x33a6
    33e0:	8a 46 fe             	mov    -0x2(%bp),%al
    33e3:	98                   	cbtw
    33e4:	98                   	cbtw
    33e5:	83 f8 32             	cmp    $0x32,%ax
    33e8:	b8 01 00             	mov    $0x1,%ax
    33eb:	7e 02                	jle    0x33ef
    33ed:	ff c8                	dec    %ax
    33ef:	89 06 14 46          	mov    %ax,0x4614
    33f3:	8a 46 fe             	mov    -0x2(%bp),%al
    33f6:	98                   	cbtw
    33f7:	98                   	cbtw
    33f8:	83 f8 31             	cmp    $0x31,%ax
    33fb:	b8 01 00             	mov    $0x1,%ax
    33fe:	74 02                	je     0x3402
    3400:	ff c8                	dec    %ax
    3402:	0b c0                	or     %ax,%ax
    3404:	75 18                	jne    0x341e
    3406:	8a 46 fe             	mov    -0x2(%bp),%al
    3409:	98                   	cbtw
    340a:	98                   	cbtw
    340b:	83 f8 33             	cmp    $0x33,%ax
    340e:	b8 01 00             	mov    $0x1,%ax
    3411:	74 02                	je     0x3415
    3413:	ff c8                	dec    %ax
    3415:	0b c0                	or     %ax,%ax
    3417:	75 05                	jne    0x341e
    3419:	b8 00 00             	mov    $0x0,%ax
    341c:	eb 03                	jmp    0x3421
    341e:	b8 01 00             	mov    $0x1,%ax
    3421:	89 06 16 46          	mov    %ax,0x4616
    3425:	8b e5                	mov    %bp,%sp
    3427:	5d                   	pop    %bp
    3428:	c3                   	ret
    3429:	8b e5                	mov    %bp,%sp
    342b:	5d                   	pop    %bp
    342c:	c3                   	ret
    342d:	55                   	push   %bp
    342e:	8b ec                	mov    %sp,%bp
    3430:	e8 e1 fe             	call   0x3314
    3433:	8d 06 36 02          	lea    0x236,%ax
    3437:	50                   	push   %ax
    3438:	e8 4c d1             	call   0x587
    343b:	83 c4 02             	add    $0x2,%sp
    343e:	8d 06 4f 02          	lea    0x24f,%ax
    3442:	50                   	push   %ax
    3443:	e8 41 d1             	call   0x587
    3446:	83 c4 02             	add    $0x2,%sp
    3449:	81 3e 10 00 00 00    	cmpw   $0x0,0x10
    344f:	75 16                	jne    0x3467
    3451:	8d 06 79 02          	lea    0x279,%ax
    3455:	50                   	push   %ax
    3456:	e8 2e d1             	call   0x587
    3459:	83 c4 02             	add    $0x2,%sp
    345c:	8d 06 a0 02          	lea    0x2a0,%ax
    3460:	50                   	push   %ax
    3461:	e8 23 d1             	call   0x587
    3464:	83 c4 02             	add    $0x2,%sp
    3467:	b8 01 00             	mov    $0x1,%ax
    346a:	0b c0                	or     %ax,%ax
    346c:	75 03                	jne    0x3471
    346e:	e9 7f 00             	jmp    0x34f0
    3471:	e8 d3 00             	call   0x3547
    3474:	0b c0                	or     %ax,%ax
    3476:	74 0b                	je     0x3483
    3478:	b8 00 00             	mov    $0x0,%ax
    347b:	50                   	push   %ax
    347c:	50                   	push   %ax
    347d:	e8 11 25             	call   0x5991
    3480:	83 c4 04             	add    $0x4,%sp
    3483:	e8 3d ce             	call   0x2c3
    3486:	81 e0 ff 00          	and    $0xff,%ax
    348a:	50                   	push   %ax
    348b:	e8 25 62             	call   0x96b3
    348e:	83 c4 02             	add    $0x2,%sp
    3491:	50                   	push   %ax
    3492:	eb 42                	jmp    0x34d6
    3494:	b8 00 00             	mov    $0x0,%ax
    3497:	89 06 ad 25          	mov    %ax,0x25ad
    349b:	8b e5                	mov    %bp,%sp
    349d:	5d                   	pop    %bp
    349e:	c3                   	ret
    349f:	81 3e 10 00 00 00    	cmpw   $0x0,0x10
    34a5:	75 0b                	jne    0x34b2
    34a7:	b8 01 00             	mov    $0x1,%ax
    34aa:	89 06 ad 25          	mov    %ax,0x25ad
    34ae:	8b e5                	mov    %bp,%sp
    34b0:	5d                   	pop    %bp
    34b1:	c3                   	ret
    34b2:	eb 39                	jmp    0x34ed
    34b4:	b8 02 00             	mov    $0x2,%ax
    34b7:	89 06 ad 25          	mov    %ax,0x25ad
    34bb:	8b e5                	mov    %bp,%sp
    34bd:	5d                   	pop    %bp
    34be:	c3                   	ret
    34bf:	81 3e 10 00 00 00    	cmpw   $0x0,0x10
    34c5:	75 0b                	jne    0x34d2
    34c7:	b8 03 00             	mov    $0x3,%ax
    34ca:	89 06 ad 25          	mov    %ax,0x25ad
    34ce:	8b e5                	mov    %bp,%sp
    34d0:	5d                   	pop    %bp
    34d1:	c3                   	ret
    34d2:	eb 19                	jmp    0x34ed
    34d4:	eb 17                	jmp    0x34ed
    34d6:	e8 fb 63             	call   0x98d4
    34d9:	04 00                	add    $0x0,%al
    34db:	41                   	inc    %cx
    34dc:	00 43 00             	add    %al,0x0(%bp,%di)
    34df:	4d                   	dec    %bp
    34e0:	00 53 00             	add    %dl,0x0(%bp,%di)
    34e3:	d4 35                	aam    $0x35
    34e5:	bf 35 b4             	mov    $0xb435,%di
    34e8:	35 9f 35             	xor    $0x359f,%ax
    34eb:	94                   	xchg   %ax,%sp
    34ec:	35 e9 77             	xor    $0x77e9,%ax
    34ef:	ff 8b e5 5d          	decw   0x5de5(%bp,%di)
    34f3:	c3                   	ret
    34f4:	55                   	push   %bp
    34f5:	8b ec                	mov    %sp,%bp
    34f7:	83 ec 02             	sub    $0x2,%sp
    34fa:	e8 17 fe             	call   0x3314
    34fd:	8d 06 c8 02          	lea    0x2c8,%ax
    3501:	50                   	push   %ax
    3502:	e8 82 d0             	call   0x587
    3505:	83 c4 02             	add    $0x2,%sp
    3508:	b8 01 00             	mov    $0x1,%ax
    350b:	0b c0                	or     %ax,%ax
    350d:	74 34                	je     0x3543
    350f:	e8 35 00             	call   0x3547
    3512:	0b c0                	or     %ax,%ax
    3514:	74 0b                	je     0x3521
    3516:	b8 00 00             	mov    $0x0,%ax
    3519:	50                   	push   %ax
    351a:	50                   	push   %ax
    351b:	e8 73 24             	call   0x5991
    351e:	83 c4 04             	add    $0x4,%sp
    3521:	e8 9f cd             	call   0x2c3
    3524:	81 e0 ff 00          	and    $0xff,%ax
    3528:	83 e8 30             	sub    $0x30,%ax
    352b:	89 46 fe             	mov    %ax,-0x2(%bp)
    352e:	83 f8 00             	cmp    $0x0,%ax
    3531:	7c 0e                	jl     0x3541
    3533:	81 7e fe 07 00       	cmpw   $0x7,-0x2(%bp)
    3538:	7f 07                	jg     0x3541
    353a:	8b 46 fe             	mov    -0x2(%bp),%ax
    353d:	8b e5                	mov    %bp,%sp
    353f:	5d                   	pop    %bp
    3540:	c3                   	ret
    3541:	eb c5                	jmp    0x3508
    3543:	8b e5                	mov    %bp,%sp
    3545:	5d                   	pop    %bp
    3546:	c3                   	ret
    3547:	55                   	push   %bp
    3548:	8b ec                	mov    %sp,%bp
    354a:	8b 06 30 4b          	mov    0x4b30,%ax
    354e:	0b c0                	or     %ax,%ax
    3550:	74 03                	je     0x3555
    3552:	b8 01 00             	mov    $0x1,%ax
    3555:	0b c0                	or     %ax,%ax
    3557:	75 14                	jne    0x356d
    3559:	8b 06 32 4b          	mov    0x4b32,%ax
    355d:	0b c0                	or     %ax,%ax
    355f:	74 03                	je     0x3564
    3561:	b8 01 00             	mov    $0x1,%ax
    3564:	0b c0                	or     %ax,%ax
    3566:	75 05                	jne    0x356d
    3568:	b8 00 00             	mov    $0x0,%ax
    356b:	eb 03                	jmp    0x3570
    356d:	b8 01 00             	mov    $0x1,%ax
    3570:	8b e5                	mov    %bp,%sp
    3572:	5d                   	pop    %bp
    3573:	c3                   	ret
    3574:	55                   	push   %bp
    3575:	8b ec                	mov    %sp,%bp
    3577:	b8 b8 0b             	mov    $0xbb8,%ax
    357a:	50                   	push   %ax
    357b:	8d 06 69 52          	lea    0x5269,%ax
    357f:	50                   	push   %ax
    3580:	8d 06 e3 0a          	lea    0xae3,%ax
    3584:	50                   	push   %ax
    3585:	e8 07 62             	call   0x978f
    3588:	83 c4 06             	add    $0x6,%sp
    358b:	8b e5                	mov    %bp,%sp
    358d:	5d                   	pop    %bp
    358e:	c3                   	ret
    358f:	55                   	push   %bp
    3590:	8b ec                	mov    %sp,%bp
    3592:	83 ec 14             	sub    $0x14,%sp
    3595:	8b 46 04             	mov    0x4(%bp),%ax
    3598:	0b c0                	or     %ax,%ax
    359a:	74 02                	je     0x359e
    359c:	eb 13                	jmp    0x35b1
    359e:	e8 8b 04             	call   0x3a2c
    35a1:	e8 dd 03             	call   0x3981
    35a4:	e8 f1 01             	call   0x3798
    35a7:	e8 52 20             	call   0x55fc
    35aa:	b8 00 00             	mov    $0x0,%ax
    35ad:	89 06 27 4f          	mov    %ax,0x4f27
    35b1:	e8 0b 04             	call   0x39bf
    35b4:	e8 ec 03             	call   0x39a3
    35b7:	e8 46 03             	call   0x3900
    35ba:	e8 71 00             	call   0x362e
    35bd:	8b 06 2c 46          	mov    0x462c,%ax
    35c1:	50                   	push   %ax
    35c2:	bb 6a 00             	mov    $0x6a,%bx
    35c5:	8b 06 c6 48          	mov    0x48c6,%ax
    35c9:	f7 eb                	imul   %bx
    35cb:	5e                   	pop    %si
    35cc:	03 f0                	add    %ax,%si
    35ce:	89 76 fe             	mov    %si,-0x2(%bp)
    35d1:	8b 06 27 4f          	mov    0x4f27,%ax
    35d5:	0b c0                	or     %ax,%ax
    35d7:	74 26                	je     0x35ff
    35d9:	b8 18 00             	mov    $0x18,%ax
    35dc:	50                   	push   %ax
    35dd:	b0 10                	mov    $0x10,%al
    35df:	50                   	push   %ax
    35e0:	e8 73 ce             	call   0x456
    35e3:	83 c4 04             	add    $0x4,%sp
    35e6:	8b 76 fe             	mov    -0x2(%bp),%si
    35e9:	ff 74 2a             	push   0x2a(%si)
    35ec:	e8 82 ce             	call   0x471
    35ef:	83 c4 02             	add    $0x2,%sp
    35f2:	8d 06 e3 02          	lea    0x2e3,%ax
    35f6:	50                   	push   %ax
    35f7:	e8 8d cf             	call   0x587
    35fa:	83 c4 02             	add    $0x2,%sp
    35fd:	eb 24                	jmp    0x3623
    35ff:	ff 76 fe             	push   -0x2(%bp)
    3602:	e8 b0 00             	call   0x36b5
    3605:	83 c4 02             	add    $0x2,%sp
    3608:	ff 76 fe             	push   -0x2(%bp)
    360b:	e8 d0 00             	call   0x36de
    360e:	83 c4 02             	add    $0x2,%sp
    3611:	ff 76 fe             	push   -0x2(%bp)
    3614:	e8 ec 00             	call   0x3703
    3617:	83 c4 02             	add    $0x2,%sp
    361a:	ff 76 fe             	push   -0x2(%bp)
    361d:	e8 6f 00             	call   0x368f
    3620:	83 c4 02             	add    $0x2,%sp
    3623:	b8 01 00             	mov    $0x1,%ax
    3626:	89 06 28 46          	mov    %ax,0x4628
    362a:	8b e5                	mov    %bp,%sp
    362c:	5d                   	pop    %bp
    362d:	c3                   	ret
    362e:	55                   	push   %bp
    362f:	8b ec                	mov    %sp,%bp
    3631:	8b 06 25 4f          	mov    0x4f25,%ax
    3635:	0b c0                	or     %ax,%ax
    3637:	74 15                	je     0x364e
    3639:	8b 06 25 4f          	mov    0x4f25,%ax
    363d:	8b 36 2c 46          	mov    0x462c,%si
    3641:	83 c6 00             	add    $0x0,%si
    3644:	89 44 16             	mov    %ax,0x16(%si)
    3647:	b8 00 00             	mov    $0x0,%ax
    364a:	89 06 25 4f          	mov    %ax,0x4f25
    364e:	8b 06 2c 46          	mov    0x462c,%ax
    3652:	83 c0 00             	add    $0x0,%ax
    3655:	50                   	push   %ax
    3656:	e8 17 1d             	call   0x5370
    3659:	83 c4 02             	add    $0x2,%sp
    365c:	81 3e ad 25 01 00    	cmpw   $0x1,0x25ad
    3662:	75 02                	jne    0x3666
    3664:	eb 08                	jmp    0x366e
    3666:	81 3e ad 25 03 00    	cmpw   $0x3,0x25ad
    366c:	75 1d                	jne    0x368b
    366e:	8b 36 cb 07          	mov    0x7cb,%si
    3672:	8a 04                	mov    (%si),%al
    3674:	81 e0 ff 00          	and    $0xff,%ax
    3678:	83 f8 01             	cmp    $0x1,%ax
    367b:	76 0e                	jbe    0x368b
    367d:	8b 06 2c 46          	mov    0x462c,%ax
    3681:	83 c0 6a             	add    $0x6a,%ax
    3684:	50                   	push   %ax
    3685:	e8 e8 1c             	call   0x5370
    3688:	83 c4 02             	add    $0x2,%sp
    368b:	8b e5                	mov    %bp,%sp
    368d:	5d                   	pop    %bp
    368e:	c3                   	ret
    368f:	55                   	push   %bp
    3690:	8b ec                	mov    %sp,%bp
    3692:	8b 76 04             	mov    0x4(%bp),%si
    3695:	ff 74 2a             	push   0x2a(%si)
    3698:	ff 36 38 4b          	push   0x4b38
    369c:	8b 06 38 4b          	mov    0x4b38,%ax
    36a0:	8b 76 04             	mov    0x4(%bp),%si
    36a3:	2b 44 4c             	sub    0x4c(%si),%ax
    36a6:	50                   	push   %ax
    36a7:	b8 7f 00             	mov    $0x7f,%ax
    36aa:	50                   	push   %ax
    36ab:	e8 73 00             	call   0x3721
    36ae:	83 c4 08             	add    $0x8,%sp
    36b1:	8b e5                	mov    %bp,%sp
    36b3:	5d                   	pop    %bp
    36b4:	c3                   	ret
    36b5:	55                   	push   %bp
    36b6:	8b ec                	mov    %sp,%bp
    36b8:	8b 76 04             	mov    0x4(%bp),%si
    36bb:	ff 74 2a             	push   0x2a(%si)
    36be:	b8 32 02             	mov    $0x232,%ax
    36c1:	50                   	push   %ax
    36c2:	8b 76 04             	mov    0x4(%bp),%si
    36c5:	8b 44 1e             	mov    0x1e(%si),%ax
    36c8:	ba 04 00             	mov    $0x4,%dx
    36cb:	8b ca                	mov    %dx,%cx
    36cd:	d3 f8                	sar    %cl,%ax
    36cf:	50                   	push   %ax
    36d0:	b8 84 00             	mov    $0x84,%ax
    36d3:	50                   	push   %ax
    36d4:	e8 4a 00             	call   0x3721
    36d7:	83 c4 08             	add    $0x8,%sp
    36da:	8b e5                	mov    %bp,%sp
    36dc:	5d                   	pop    %bp
    36dd:	c3                   	ret
    36de:	55                   	push   %bp
    36df:	8b ec                	mov    %sp,%bp
    36e1:	b8 03 00             	mov    $0x3,%ax
    36e4:	8b 76 04             	mov    0x4(%bp),%si
    36e7:	2b 44 2a             	sub    0x2a(%si),%ax
    36ea:	50                   	push   %ax
    36eb:	b8 05 00             	mov    $0x5,%ax
    36ee:	50                   	push   %ax
    36ef:	8b 76 04             	mov    0x4(%bp),%si
    36f2:	ff 74 28             	push   0x28(%si)
    36f5:	b8 89 00             	mov    $0x89,%ax
    36f8:	50                   	push   %ax
    36f9:	e8 25 00             	call   0x3721
    36fc:	83 c4 08             	add    $0x8,%sp
    36ff:	8b e5                	mov    %bp,%sp
    3701:	5d                   	pop    %bp
    3702:	c3                   	ret
    3703:	55                   	push   %bp
    3704:	8b ec                	mov    %sp,%bp
    3706:	b8 03 00             	mov    $0x3,%ax
    3709:	50                   	push   %ax
    370a:	b0 c8                	mov    $0xc8,%al
    370c:	50                   	push   %ax
    370d:	8b 76 04             	mov    0x4(%bp),%si
    3710:	ff 74 18             	push   0x18(%si)
    3713:	b8 8e 00             	mov    $0x8e,%ax
    3716:	50                   	push   %ax
    3717:	e8 07 00             	call   0x3721
    371a:	83 c4 08             	add    $0x8,%sp
    371d:	8b e5                	mov    %bp,%sp
    371f:	5d                   	pop    %bp
    3720:	c3                   	ret
    3721:	55                   	push   %bp
    3722:	8b ec                	mov    %sp,%bp
    3724:	83 ec 02             	sub    $0x2,%sp
    3727:	8b 06 27 4f          	mov    0x4f27,%ax
    372b:	0b c0                	or     %ax,%ax
    372d:	74 04                	je     0x3733
    372f:	8b e5                	mov    %bp,%sp
    3731:	5d                   	pop    %bp
    3732:	c3                   	ret
    3733:	8b 46 08             	mov    0x8(%bp),%ax
    3736:	50                   	push   %ax
    3737:	bb 0a 00             	mov    $0xa,%bx
    373a:	8b 46 06             	mov    0x6(%bp),%ax
    373d:	f7 eb                	imul   %bx
    373f:	5b                   	pop    %bx
    3740:	99                   	cwtd
    3741:	f7 fb                	idiv   %bx
    3743:	83 e8 01             	sub    $0x1,%ax
    3746:	89 46 06             	mov    %ax,0x6(%bp)
    3749:	81 7e 06 09 00       	cmpw   $0x9,0x6(%bp)
    374e:	7e 06                	jle    0x3756
    3750:	b8 09 00             	mov    $0x9,%ax
    3753:	89 46 06             	mov    %ax,0x6(%bp)
    3756:	b8 00 00             	mov    $0x0,%ax
    3759:	89 46 fe             	mov    %ax,-0x2(%bp)
    375c:	8b 46 fe             	mov    -0x2(%bp),%ax
    375f:	3b 46 06             	cmp    0x6(%bp),%ax
    3762:	7f 14                	jg     0x3778
    3764:	ff 76 0a             	push   0xa(%bp)
    3767:	ff 76 fe             	push   -0x2(%bp)
    376a:	ff 76 04             	push   0x4(%bp)
    376d:	e8 22 d1             	call   0x892
    3770:	83 c4 06             	add    $0x6,%sp
    3773:	ff 46 fe             	incw   -0x2(%bp)
    3776:	eb e4                	jmp    0x375c
    3778:	81 7e fe 09 00       	cmpw   $0x9,-0x2(%bp)
    377d:	7f 15                	jg     0x3794
    377f:	b8 00 00             	mov    $0x0,%ax
    3782:	50                   	push   %ax
    3783:	ff 76 fe             	push   -0x2(%bp)
    3786:	ff 76 04             	push   0x4(%bp)
    3789:	e8 06 d1             	call   0x892
    378c:	83 c4 06             	add    $0x6,%sp
    378f:	ff 46 fe             	incw   -0x2(%bp)
    3792:	eb e4                	jmp    0x3778
    3794:	8b e5                	mov    %bp,%sp
    3796:	5d                   	pop    %bp
    3797:	c3                   	ret
    3798:	55                   	push   %bp
    3799:	8b ec                	mov    %sp,%bp
    379b:	83 ec 0a             	sub    $0xa,%sp
    379e:	b8 00 00             	mov    $0x0,%ax
    37a1:	89 46 f6             	mov    %ax,-0xa(%bp)
    37a4:	b0 98                	mov    $0x98,%al
    37a6:	89 46 fc             	mov    %ax,-0x4(%bp)
    37a9:	b0 0f                	mov    $0xf,%al
    37ab:	89 46 f8             	mov    %ax,-0x8(%bp)
    37ae:	b0 00                	mov    $0x0,%al
    37b0:	89 46 fe             	mov    %ax,-0x2(%bp)
    37b3:	8b 46 fe             	mov    -0x2(%bp),%ax
    37b6:	3b 46 f8             	cmp    -0x8(%bp),%ax
    37b9:	7f 15                	jg     0x37d0
    37bb:	b8 03 00             	mov    $0x3,%ax
    37be:	50                   	push   %ax
    37bf:	ff 76 fe             	push   -0x2(%bp)
    37c2:	ff 76 fc             	push   -0x4(%bp)
    37c5:	e8 ca d0             	call   0x892
    37c8:	83 c4 06             	add    $0x6,%sp
    37cb:	ff 46 fe             	incw   -0x2(%bp)
    37ce:	eb e3                	jmp    0x37b3
    37d0:	b8 00 00             	mov    $0x0,%ax
    37d3:	89 46 f8             	mov    %ax,-0x8(%bp)
    37d6:	89 46 fe             	mov    %ax,-0x2(%bp)
    37d9:	89 46 fa             	mov    %ax,-0x6(%bp)
    37dc:	81 7e fa b8 0b       	cmpw   $0xbb8,-0x6(%bp)
    37e1:	7c 03                	jl     0x37e6
    37e3:	e9 cc 00             	jmp    0x38b2
    37e6:	8b 46 f8             	mov    -0x8(%bp),%ax
    37e9:	8d 36 69 52          	lea    0x5269,%si
    37ed:	03 76 fa             	add    -0x6(%bp),%si
    37f0:	8a 14                	mov    (%si),%dl
    37f2:	81 e2 ff 00          	and    $0xff,%dx
    37f6:	3b d0                	cmp    %ax,%dx
    37f8:	76 10                	jbe    0x380a
    37fa:	8d 36 69 52          	lea    0x5269,%si
    37fe:	03 76 fa             	add    -0x6(%bp),%si
    3801:	8a 04                	mov    (%si),%al
    3803:	81 e0 ff 00          	and    $0xff,%ax
    3807:	89 46 f8             	mov    %ax,-0x8(%bp)
    380a:	ff 46 f6             	incw   -0xa(%bp)
    380d:	8b 46 f6             	mov    -0xa(%bp),%ax
    3810:	83 f8 13             	cmp    $0x13,%ax
    3813:	74 03                	je     0x3818
    3815:	e9 94 00             	jmp    0x38ac
    3818:	b8 0d 00             	mov    $0xd,%ax
    381b:	50                   	push   %ax
    381c:	8b 46 f8             	mov    -0x8(%bp),%ax
    381f:	5b                   	pop    %bx
    3820:	99                   	cwtd
    3821:	f7 fb                	idiv   %bx
    3823:	89 46 f8             	mov    %ax,-0x8(%bp)
    3826:	8b 46 f8             	mov    -0x8(%bp),%ax
    3829:	3b 46 fe             	cmp    -0x2(%bp),%ax
    382c:	75 12                	jne    0x3840
    382e:	b8 03 00             	mov    $0x3,%ax
    3831:	50                   	push   %ax
    3832:	ff 76 f8             	push   -0x8(%bp)
    3835:	ff 76 fc             	push   -0x4(%bp)
    3838:	e8 57 d0             	call   0x892
    383b:	83 c4 06             	add    $0x6,%sp
    383e:	eb 4a                	jmp    0x388a
    3840:	8b 46 f8             	mov    -0x8(%bp),%ax
    3843:	3b 46 fe             	cmp    -0x2(%bp),%ax
    3846:	7e 22                	jle    0x386a
    3848:	ff 46 fe             	incw   -0x2(%bp)
    384b:	8b 46 fe             	mov    -0x2(%bp),%ax
    384e:	3b 46 f8             	cmp    -0x8(%bp),%ax
    3851:	7f 15                	jg     0x3868
    3853:	b8 03 00             	mov    $0x3,%ax
    3856:	50                   	push   %ax
    3857:	ff 76 fe             	push   -0x2(%bp)
    385a:	ff 76 fc             	push   -0x4(%bp)
    385d:	e8 32 d0             	call   0x892
    3860:	83 c4 06             	add    $0x6,%sp
    3863:	ff 46 fe             	incw   -0x2(%bp)
    3866:	eb e3                	jmp    0x384b
    3868:	eb 20                	jmp    0x388a
    386a:	ff 4e fe             	decw   -0x2(%bp)
    386d:	8b 46 fe             	mov    -0x2(%bp),%ax
    3870:	3b 46 f8             	cmp    -0x8(%bp),%ax
    3873:	7c 15                	jl     0x388a
    3875:	b8 03 00             	mov    $0x3,%ax
    3878:	50                   	push   %ax
    3879:	ff 76 fe             	push   -0x2(%bp)
    387c:	ff 76 fc             	push   -0x4(%bp)
    387f:	e8 10 d0             	call   0x892
    3882:	83 c4 06             	add    $0x6,%sp
    3885:	ff 4e fe             	decw   -0x2(%bp)
    3888:	eb e3                	jmp    0x386d
    388a:	8b 46 f8             	mov    -0x8(%bp),%ax
    388d:	89 46 fe             	mov    %ax,-0x2(%bp)
    3890:	b8 03 00             	mov    $0x3,%ax
    3893:	50                   	push   %ax
    3894:	b0 00                	mov    $0x0,%al
    3896:	50                   	push   %ax
    3897:	ff 76 fc             	push   -0x4(%bp)
    389a:	e8 f5 cf             	call   0x892
    389d:	83 c4 06             	add    $0x6,%sp
    38a0:	ff 46 fc             	incw   -0x4(%bp)
    38a3:	b8 00 00             	mov    $0x0,%ax
    38a6:	89 46 f8             	mov    %ax,-0x8(%bp)
    38a9:	89 46 f6             	mov    %ax,-0xa(%bp)
    38ac:	ff 46 fa             	incw   -0x6(%bp)
    38af:	e9 2a ff             	jmp    0x37dc
    38b2:	b8 0f 00             	mov    $0xf,%ax
    38b5:	89 46 f8             	mov    %ax,-0x8(%bp)
    38b8:	b0 00                	mov    $0x0,%al
    38ba:	89 46 fe             	mov    %ax,-0x2(%bp)
    38bd:	8b 46 fe             	mov    -0x2(%bp),%ax
    38c0:	3b 46 f8             	cmp    -0x8(%bp),%ax
    38c3:	7f 15                	jg     0x38da
    38c5:	b8 03 00             	mov    $0x3,%ax
    38c8:	50                   	push   %ax
    38c9:	ff 76 fe             	push   -0x2(%bp)
    38cc:	ff 76 fc             	push   -0x4(%bp)
    38cf:	e8 c0 cf             	call   0x892
    38d2:	83 c4 06             	add    $0x6,%sp
    38d5:	ff 46 fe             	incw   -0x2(%bp)
    38d8:	eb e3                	jmp    0x38bd
    38da:	b8 00 00             	mov    $0x0,%ax
    38dd:	89 46 fa             	mov    %ax,-0x6(%bp)
    38e0:	81 7e fa 40 01       	cmpw   $0x140,-0x6(%bp)
    38e5:	7d 15                	jge    0x38fc
    38e7:	b8 03 00             	mov    $0x3,%ax
    38ea:	50                   	push   %ax
    38eb:	b0 12                	mov    $0x12,%al
    38ed:	50                   	push   %ax
    38ee:	ff 76 fa             	push   -0x6(%bp)
    38f1:	e8 9e cf             	call   0x892
    38f4:	83 c4 06             	add    $0x6,%sp
    38f7:	ff 46 fa             	incw   -0x6(%bp)
    38fa:	eb e4                	jmp    0x38e0
    38fc:	8b e5                	mov    %bp,%sp
    38fe:	5d                   	pop    %bp
    38ff:	c3                   	ret
    3900:	55                   	push   %bp
    3901:	8b ec                	mov    %sp,%bp
    3903:	83 ec 06             	sub    $0x6,%sp
    3906:	8d 06 ce 48          	lea    0x48ce,%ax
    390a:	89 46 fe             	mov    %ax,-0x2(%bp)
    390d:	8b 06 2c 46          	mov    0x462c,%ax
    3911:	89 46 fc             	mov    %ax,-0x4(%bp)
    3914:	b8 00 00             	mov    $0x0,%ax
    3917:	89 46 fa             	mov    %ax,-0x6(%bp)
    391a:	81 7e fa 64 00       	cmpw   $0x64,-0x6(%bp)
    391f:	7d 23                	jge    0x3944
    3921:	b8 00 00             	mov    $0x0,%ax
    3924:	8b 76 fc             	mov    -0x4(%bp),%si
    3927:	89 44 40             	mov    %ax,0x40(%si)
    392a:	8b 76 fc             	mov    -0x4(%bp),%si
    392d:	89 44 3e             	mov    %ax,0x3e(%si)
    3930:	8b 76 fe             	mov    -0x2(%bp),%si
    3933:	89 04                	mov    %ax,(%si)
    3935:	ff 46 fa             	incw   -0x6(%bp)
    3938:	81 46 fe 06 00       	addw   $0x6,-0x2(%bp)
    393d:	81 46 fc 6a 00       	addw   $0x6a,-0x4(%bp)
    3942:	eb d6                	jmp    0x391a
    3944:	b8 00 00             	mov    $0x0,%ax
    3947:	89 46 fa             	mov    %ax,-0x6(%bp)
    394a:	81 7e fa 14 00       	cmpw   $0x14,-0x6(%bp)
    394f:	7d 2c                	jge    0x397d
    3951:	8d 36 b1 25          	lea    0x25b1,%si
    3955:	8b 46 fa             	mov    -0x6(%bp),%ax
    3958:	d1 e0                	shl    %ax
    395a:	03 f0                	add    %ax,%si
    395c:	8b 34                	mov    (%si),%si
    395e:	89 76 fc             	mov    %si,-0x4(%bp)
    3961:	0b f6                	or     %si,%si
    3963:	74 13                	je     0x3978
    3965:	8b 76 fc             	mov    -0x4(%bp),%si
    3968:	8b 04                	mov    (%si),%ax
    396a:	83 f8 5b             	cmp    $0x5b,%ax
    396d:	74 09                	je     0x3978
    396f:	ff 76 fc             	push   -0x4(%bp)
    3972:	e8 23 1e             	call   0x5798
    3975:	83 c4 02             	add    $0x2,%sp
    3978:	ff 46 fa             	incw   -0x6(%bp)
    397b:	eb cd                	jmp    0x394a
    397d:	8b e5                	mov    %bp,%sp
    397f:	5d                   	pop    %bp
    3980:	c3                   	ret
    3981:	55                   	push   %bp
    3982:	8b ec                	mov    %sp,%bp
    3984:	8b 06 23 4f          	mov    0x4f23,%ax
    3988:	89 06 22 46          	mov    %ax,0x4622
    398c:	8d 06 04 26          	lea    0x2604,%ax
    3990:	81 e8 00 10          	sub    $0x1000,%ax
    3994:	89 06 24 46          	mov    %ax,0x4624
    3998:	b8 00 10             	mov    $0x1000,%ax
    399b:	89 06 26 46          	mov    %ax,0x4626
    399f:	8b e5                	mov    %bp,%sp
    39a1:	5d                   	pop    %bp
    39a2:	c3                   	ret
    39a3:	55                   	push   %bp
    39a4:	8b ec                	mov    %sp,%bp
    39a6:	b8 00 b8             	mov    $0xb800,%ax
    39a9:	89 06 22 46          	mov    %ax,0x4622
    39ad:	b8 00 00             	mov    $0x0,%ax
    39b0:	89 06 24 46          	mov    %ax,0x4624
    39b4:	b8 00 20             	mov    $0x2000,%ax
    39b7:	89 06 26 46          	mov    %ax,0x4626
    39bb:	8b e5                	mov    %bp,%sp
    39bd:	5d                   	pop    %bp
    39be:	c3                   	ret
    39bf:	55                   	push   %bp
    39c0:	8b ec                	mov    %sp,%bp
    39c2:	b8 00 00             	mov    $0x0,%ax
    39c5:	50                   	push   %ax
    39c6:	b8 00 10             	mov    $0x1000,%ax
    39c9:	50                   	push   %ax
    39ca:	b8 00 b8             	mov    $0xb800,%ax
    39cd:	50                   	push   %ax
    39ce:	b8 00 00             	mov    $0x0,%ax
    39d1:	50                   	push   %ax
    39d2:	e8 f4 ca             	call   0x4c9
    39d5:	83 c4 08             	add    $0x8,%sp
    39d8:	b8 00 00             	mov    $0x0,%ax
    39db:	50                   	push   %ax
    39dc:	b8 00 10             	mov    $0x1000,%ax
    39df:	50                   	push   %ax
    39e0:	b8 00 b8             	mov    $0xb800,%ax
    39e3:	50                   	push   %ax
    39e4:	b8 00 20             	mov    $0x2000,%ax
    39e7:	50                   	push   %ax
    39e8:	e8 de ca             	call   0x4c9
    39eb:	83 c4 08             	add    $0x8,%sp
    39ee:	b8 00 10             	mov    $0x1000,%ax
    39f1:	50                   	push   %ax
    39f2:	b8 00 b8             	mov    $0xb800,%ax
    39f5:	50                   	push   %ax
    39f6:	b8 00 10             	mov    $0x1000,%ax
    39f9:	50                   	push   %ax
    39fa:	ff 36 23 4f          	push   0x4f23
    39fe:	8d 06 04 26          	lea    0x2604,%ax
    3a02:	50                   	push   %ax
    3a03:	e8 60 5e             	call   0x9866
    3a06:	83 c4 0a             	add    $0xa,%sp
    3a09:	b8 00 10             	mov    $0x1000,%ax
    3a0c:	50                   	push   %ax
    3a0d:	b8 00 b8             	mov    $0xb800,%ax
    3a10:	50                   	push   %ax
    3a11:	b8 00 30             	mov    $0x3000,%ax
    3a14:	50                   	push   %ax
    3a15:	ff 36 23 4f          	push   0x4f23
    3a19:	8d 06 04 26          	lea    0x2604,%ax
    3a1d:	81 c0 00 10          	add    $0x1000,%ax
    3a21:	50                   	push   %ax
    3a22:	e8 41 5e             	call   0x9866
    3a25:	83 c4 0a             	add    $0xa,%sp
    3a28:	8b e5                	mov    %bp,%sp
    3a2a:	5d                   	pop    %bp
    3a2b:	c3                   	ret
    3a2c:	55                   	push   %bp
    3a2d:	8b ec                	mov    %sp,%bp
    3a2f:	b8 00 00             	mov    $0x0,%ax
    3a32:	50                   	push   %ax
    3a33:	b8 00 20             	mov    $0x2000,%ax
    3a36:	50                   	push   %ax
    3a37:	8d 06 04 26          	lea    0x2604,%ax
    3a3b:	50                   	push   %ax
    3a3c:	e8 02 5f             	call   0x9941
    3a3f:	83 c4 06             	add    $0x6,%sp
    3a42:	8b e5                	mov    %bp,%sp
    3a44:	5d                   	pop    %bp
    3a45:	c3                   	ret
    3a46:	55                   	push   %bp
    3a47:	8b ec                	mov    %sp,%bp
    3a49:	83 ec 04             	sub    $0x4,%sp
    3a4c:	8d 06 4a 48          	lea    0x484a,%ax
    3a50:	89 06 14 48          	mov    %ax,0x4814
    3a54:	89 06 28 48          	mov    %ax,0x4828
    3a58:	8d 06 e0 47          	lea    0x47e0,%ax
    3a5c:	89 06 80 48          	mov    %ax,0x4880
    3a60:	89 06 94 48          	mov    %ax,0x4894
    3a64:	b8 01 80             	mov    $0x8001,%ax
    3a67:	89 06 e2 47          	mov    %ax,0x47e2
    3a6b:	b8 ff 7f             	mov    $0x7fff,%ax
    3a6e:	89 06 4c 48          	mov    %ax,0x484c
    3a72:	b8 00 00             	mov    $0x0,%ax
    3a75:	89 06 de 47          	mov    %ax,0x47de
    3a79:	89 06 dc 47          	mov    %ax,0x47dc
    3a7d:	89 06 d8 47          	mov    %ax,0x47d8
    3a81:	89 06 d6 47          	mov    %ax,0x47d6
    3a85:	8b 06 2c 46          	mov    0x462c,%ax
    3a89:	89 46 fc             	mov    %ax,-0x4(%bp)
    3a8c:	89 06 da 47          	mov    %ax,0x47da
    3a90:	b8 00 00             	mov    $0x0,%ax
    3a93:	89 46 fe             	mov    %ax,-0x2(%bp)
    3a96:	81 7e fe 64 00       	cmpw   $0x64,-0x2(%bp)
    3a9b:	7d 1f                	jge    0x3abc
    3a9d:	8b 46 fc             	mov    -0x4(%bp),%ax
    3aa0:	83 c0 6a             	add    $0x6a,%ax
    3aa3:	8b 76 fc             	mov    -0x4(%bp),%si
    3aa6:	89 44 34             	mov    %ax,0x34(%si)
    3aa9:	8b 46 fe             	mov    -0x2(%bp),%ax
    3aac:	8b 76 fc             	mov    -0x4(%bp),%si
    3aaf:	81 46 fc 6a 00       	addw   $0x6a,-0x4(%bp)
    3ab4:	89 44 38             	mov    %ax,0x38(%si)
    3ab7:	ff 46 fe             	incw   -0x2(%bp)
    3aba:	eb da                	jmp    0x3a96
    3abc:	b8 00 00             	mov    $0x0,%ax
    3abf:	81 46 fc 96 ff       	addw   $0xff96,-0x4(%bp)
    3ac4:	8b 76 fc             	mov    -0x4(%bp),%si
    3ac7:	89 44 34             	mov    %ax,0x34(%si)
    3aca:	8b e5                	mov    %bp,%sp
    3acc:	5d                   	pop    %bp
    3acd:	c3                   	ret
    3ace:	55                   	push   %bp
    3acf:	8b ec                	mov    %sp,%bp
    3ad1:	83 ec 02             	sub    $0x2,%sp
    3ad4:	ff 76 04             	push   0x4(%bp)
    3ad7:	e8 4c 01             	call   0x3c26
    3ada:	83 c4 02             	add    $0x2,%sp
    3add:	89 46 fe             	mov    %ax,-0x2(%bp)
    3ae0:	8b 46 04             	mov    0x4(%bp),%ax
    3ae3:	0b c0                	or     %ax,%ax
    3ae5:	74 03                	je     0x3aea
    3ae7:	e9 80 00             	jmp    0x3b6a
    3aea:	8d 06 a3 57          	lea    0x57a3,%ax
    3aee:	8b 76 fe             	mov    -0x2(%bp),%si
    3af1:	89 44 44             	mov    %ax,0x44(%si)
    3af4:	8d 06 0f 12          	lea    0x120f,%ax
    3af8:	8b 76 fe             	mov    -0x2(%bp),%si
    3afb:	89 44 46             	mov    %ax,0x46(%si)
    3afe:	b8 02 00             	mov    $0x2,%ax
    3b01:	8b 76 fe             	mov    -0x2(%bp),%si
    3b04:	89 44 2a             	mov    %ax,0x2a(%si)
    3b07:	81 3e ad 25 01 00    	cmpw   $0x1,0x25ad
    3b0d:	74 17                	je     0x3b26
    3b0f:	81 3e ad 25 03 00    	cmpw   $0x3,0x25ad
    3b15:	74 0f                	je     0x3b26
    3b17:	8b 06 2c 46          	mov    0x462c,%ax
    3b1b:	83 c0 6a             	add    $0x6a,%ax
    3b1e:	8b 76 fe             	mov    -0x2(%bp),%si
    3b21:	89 44 20             	mov    %ax,0x20(%si)
    3b24:	eb 23                	jmp    0x3b49
    3b26:	8b 76 fe             	mov    -0x2(%bp),%si
    3b29:	8b 44 38             	mov    0x38(%si),%ax
    3b2c:	83 f8 01             	cmp    $0x1,%ax
    3b2f:	75 0b                	jne    0x3b3c
    3b31:	8b 46 fe             	mov    -0x2(%bp),%ax
    3b34:	8b 76 fe             	mov    -0x2(%bp),%si
    3b37:	89 44 20             	mov    %ax,0x20(%si)
    3b3a:	eb 0d                	jmp    0x3b49
    3b3c:	8b 46 fe             	mov    -0x2(%bp),%ax
    3b3f:	81 e8 d4 00          	sub    $0xd4,%ax
    3b43:	8b 76 fe             	mov    -0x2(%bp),%si
    3b46:	89 44 20             	mov    %ax,0x20(%si)
    3b49:	b8 6a 00             	mov    $0x6a,%ax
    3b4c:	50                   	push   %ax
    3b4d:	8d 06 2e 46          	lea    0x462e,%ax
    3b51:	50                   	push   %ax
    3b52:	bb 6a 00             	mov    $0x6a,%bx
    3b55:	8b 76 fe             	mov    -0x2(%bp),%si
    3b58:	8b 44 38             	mov    0x38(%si),%ax
    3b5b:	f7 eb                	imul   %bx
    3b5d:	5e                   	pop    %si
    3b5e:	03 f0                	add    %ax,%si
    3b60:	56                   	push   %si
    3b61:	ff 76 fe             	push   -0x2(%bp)
    3b64:	e8 28 5c             	call   0x978f
    3b67:	83 c4 06             	add    $0x6,%sp
    3b6a:	81 3e ad 25 00 00    	cmpw   $0x0,0x25ad
    3b70:	75 11                	jne    0x3b83
    3b72:	b8 5b 00             	mov    $0x5b,%ax
    3b75:	8b 76 fe             	mov    -0x2(%bp),%si
    3b78:	89 04                	mov    %ax,(%si)
    3b7a:	ff 76 fe             	push   -0x2(%bp)
    3b7d:	e8 ec e7             	call   0x236c
    3b80:	83 c4 02             	add    $0x2,%sp
    3b83:	8b e5                	mov    %bp,%sp
    3b85:	5d                   	pop    %bp
    3b86:	c3                   	ret
    3b87:	55                   	push   %bp
    3b88:	8b ec                	mov    %sp,%bp
    3b8a:	83 ec 02             	sub    $0x2,%sp
    3b8d:	ff 76 04             	push   0x4(%bp)
    3b90:	e8 93 00             	call   0x3c26
    3b93:	83 c4 02             	add    $0x2,%sp
    3b96:	89 46 fe             	mov    %ax,-0x2(%bp)
    3b99:	8b 46 04             	mov    0x4(%bp),%ax
    3b9c:	0b c0                	or     %ax,%ax
    3b9e:	74 02                	je     0x3ba2
    3ba0:	eb 60                	jmp    0x3c02
    3ba2:	8d 06 47 57          	lea    0x5747,%ax
    3ba6:	8b 76 fe             	mov    -0x2(%bp),%si
    3ba9:	89 44 44             	mov    %ax,0x44(%si)
    3bac:	8d 06 ed 0d          	lea    0xded,%ax
    3bb0:	8b 76 fe             	mov    -0x2(%bp),%si
    3bb3:	89 44 46             	mov    %ax,0x46(%si)
    3bb6:	b8 02 00             	mov    $0x2,%ax
    3bb9:	50                   	push   %ax
    3bba:	8b 76 fe             	mov    -0x2(%bp),%si
    3bbd:	8b 44 38             	mov    0x38(%si),%ax
    3bc0:	5b                   	pop    %bx
    3bc1:	99                   	cwtd
    3bc2:	f7 fb                	idiv   %bx
    3bc4:	83 c2 01             	add    $0x1,%dx
    3bc7:	8b 76 fe             	mov    -0x2(%bp),%si
    3bca:	89 54 2a             	mov    %dx,0x2a(%si)
    3bcd:	8b 46 fe             	mov    -0x2(%bp),%ax
    3bd0:	8b 76 fe             	mov    -0x2(%bp),%si
    3bd3:	89 44 20             	mov    %ax,0x20(%si)
    3bd6:	b8 6a 00             	mov    $0x6a,%ax
    3bd9:	50                   	push   %ax
    3bda:	8d 06 2e 46          	lea    0x462e,%ax
    3bde:	50                   	push   %ax
    3bdf:	bb 6a 00             	mov    $0x6a,%bx
    3be2:	8b 76 fe             	mov    -0x2(%bp),%si
    3be5:	8b 44 38             	mov    0x38(%si),%ax
    3be8:	f7 eb                	imul   %bx
    3bea:	5e                   	pop    %si
    3beb:	03 f0                	add    %ax,%si
    3bed:	56                   	push   %si
    3bee:	ff 76 fe             	push   -0x2(%bp)
    3bf1:	e8 9b 5b             	call   0x978f
    3bf4:	83 c4 06             	add    $0x6,%sp
    3bf7:	b8 00 00             	mov    $0x0,%ax
    3bfa:	89 06 26 4b          	mov    %ax,0x4b26
    3bfe:	89 06 c4 48          	mov    %ax,0x48c4
    3c02:	8b 76 fe             	mov    -0x2(%bp),%si
    3c05:	8b 44 02             	mov    0x2(%si),%ax
    3c08:	81 e8 98 00          	sub    $0x98,%ax
    3c0c:	89 06 1c 46          	mov    %ax,0x461c
    3c10:	8b 06 1c 46          	mov    0x461c,%ax
    3c14:	81 c0 40 01          	add    $0x140,%ax
    3c18:	83 e8 01             	sub    $0x1,%ax
    3c1b:	89 06 1e 46          	mov    %ax,0x461e
    3c1f:	e8 02 c8             	call   0x424
    3c22:	8b e5                	mov    %bp,%sp
    3c24:	5d                   	pop    %bp
    3c25:	c3                   	ret
    3c26:	55                   	push   %bp
    3c27:	8b ec                	mov    %sp,%bp
    3c29:	83 ec 0c             	sub    $0xc,%sp
    3c2c:	8b 46 04             	mov    0x4(%bp),%ax
    3c2f:	0b c0                	or     %ax,%ax
    3c31:	74 02                	je     0x3c35
    3c33:	eb 08                	jmp    0x3c3d
    3c35:	e8 2e 20             	call   0x5c66
    3c38:	89 46 f4             	mov    %ax,-0xc(%bp)
    3c3b:	eb 06                	jmp    0x3c43
    3c3d:	8b 46 04             	mov    0x4(%bp),%ax
    3c40:	89 46 f4             	mov    %ax,-0xc(%bp)
    3c43:	8b 06 ad 25          	mov    0x25ad,%ax
    3c47:	50                   	push   %ax
    3c48:	eb 3f                	jmp    0x3c89
    3c4a:	8d 36 57 0a          	lea    0xa57,%si
    3c4e:	8b 7e f4             	mov    -0xc(%bp),%di
    3c51:	8b 45 38             	mov    0x38(%di),%ax
    3c54:	d1 e0                	shl    %ax
    3c56:	03 f0                	add    %ax,%si
    3c58:	8b 04                	mov    (%si),%ax
    3c5a:	89 46 fe             	mov    %ax,-0x2(%bp)
    3c5d:	eb 41                	jmp    0x3ca0
    3c5f:	8d 36 63 0a          	lea    0xa63,%si
    3c63:	8b 7e f4             	mov    -0xc(%bp),%di
    3c66:	8b 45 38             	mov    0x38(%di),%ax
    3c69:	d1 e0                	shl    %ax
    3c6b:	03 f0                	add    %ax,%si
    3c6d:	8b 04                	mov    (%si),%ax
    3c6f:	89 46 fe             	mov    %ax,-0x2(%bp)
    3c72:	eb 2c                	jmp    0x3ca0
    3c74:	8d 36 5b 0a          	lea    0xa5b,%si
    3c78:	8b 7e f4             	mov    -0xc(%bp),%di
    3c7b:	8b 45 38             	mov    0x38(%di),%ax
    3c7e:	d1 e0                	shl    %ax
    3c80:	03 f0                	add    %ax,%si
    3c82:	8b 04                	mov    (%si),%ax
    3c84:	89 46 fe             	mov    %ax,-0x2(%bp)
    3c87:	eb 17                	jmp    0x3ca0
    3c89:	e8 48 5c             	call   0x98d4
    3c8c:	04 00                	add    $0x0,%al
    3c8e:	02 00                	add    (%bx,%si),%al
    3c90:	03 00                	add    (%bx,%si),%ax
    3c92:	01 00                	add    %ax,(%bx,%si)
    3c94:	00 00                	add    %al,(%bx,%si)
    3c96:	a0 3d 74             	mov    0x743d,%al
    3c99:	3d 5f 3d             	cmp    $0x3d5f,%ax
    3c9c:	5f                   	pop    %di
    3c9d:	3d 4a 3d             	cmp    $0x3d4a,%ax
    3ca0:	b8 01 00             	mov    $0x1,%ax
    3ca3:	8b 76 f4             	mov    -0xc(%bp),%si
    3ca6:	89 44 60             	mov    %ax,0x60(%si)
    3ca9:	8b 36 af 25          	mov    0x25af,%si
    3cad:	8d 04                	lea    (%si),%ax
    3caf:	8b 56 fe             	mov    -0x2(%bp),%dx
    3cb2:	d1 e2                	shl    %dx
    3cb4:	03 c2                	add    %dx,%ax
    3cb6:	8b f0                	mov    %ax,%si
    3cb8:	8b 04                	mov    (%si),%ax
    3cba:	8b 76 f4             	mov    -0xc(%bp),%si
    3cbd:	89 44 02             	mov    %ax,0x2(%si)
    3cc0:	8b 76 f4             	mov    -0xc(%bp),%si
    3cc3:	8b 44 02             	mov    0x2(%si),%ax
    3cc6:	89 46 fa             	mov    %ax,-0x6(%bp)
    3cc9:	8b 76 f4             	mov    -0xc(%bp),%si
    3ccc:	8b 44 02             	mov    0x2(%si),%ax
    3ccf:	83 c0 14             	add    $0x14,%ax
    3cd2:	89 46 fc             	mov    %ax,-0x4(%bp)
    3cd5:	b8 00 00             	mov    $0x0,%ax
    3cd8:	89 46 f6             	mov    %ax,-0xa(%bp)
    3cdb:	8b 46 fa             	mov    -0x6(%bp),%ax
    3cde:	89 46 f8             	mov    %ax,-0x8(%bp)
    3ce1:	8b 46 f8             	mov    -0x8(%bp),%ax
    3ce4:	3b 46 fc             	cmp    -0x4(%bp),%ax
    3ce7:	7f 29                	jg     0x3d12
    3ce9:	8b 46 f6             	mov    -0xa(%bp),%ax
    3cec:	8d 36 69 52          	lea    0x5269,%si
    3cf0:	03 76 f8             	add    -0x8(%bp),%si
    3cf3:	8a 14                	mov    (%si),%dl
    3cf5:	81 e2 ff 00          	and    $0xff,%dx
    3cf9:	3b d0                	cmp    %ax,%dx
    3cfb:	76 10                	jbe    0x3d0d
    3cfd:	8d 36 69 52          	lea    0x5269,%si
    3d01:	03 76 f8             	add    -0x8(%bp),%si
    3d04:	8a 04                	mov    (%si),%al
    3d06:	81 e0 ff 00          	and    $0xff,%ax
    3d0a:	89 46 f6             	mov    %ax,-0xa(%bp)
    3d0d:	ff 46 f8             	incw   -0x8(%bp)
    3d10:	eb cf                	jmp    0x3ce1
    3d12:	8b 46 f6             	mov    -0xa(%bp),%ax
    3d15:	83 c0 0d             	add    $0xd,%ax
    3d18:	8b 76 f4             	mov    -0xc(%bp),%si
    3d1b:	89 44 04             	mov    %ax,0x4(%si)
    3d1e:	b8 00 00             	mov    $0x0,%ax
    3d21:	8b 76 f4             	mov    -0xc(%bp),%si
    3d24:	89 44 50             	mov    %ax,0x50(%si)
    3d27:	8b 76 f4             	mov    -0xc(%bp),%si
    3d2a:	89 44 1a             	mov    %ax,0x1a(%si)
    3d2d:	8b 76 f4             	mov    -0xc(%bp),%si
    3d30:	89 44 10             	mov    %ax,0x10(%si)
    3d33:	8b 76 f4             	mov    -0xc(%bp),%si
    3d36:	89 44 12             	mov    %ax,0x12(%si)
    3d39:	8b 76 f4             	mov    -0xc(%bp),%si
    3d3c:	89 44 0e             	mov    %ax,0xe(%si)
    3d3f:	8b 76 f4             	mov    -0xc(%bp),%si
    3d42:	89 44 2e             	mov    %ax,0x2e(%si)
    3d45:	8b 76 f4             	mov    -0xc(%bp),%si
    3d48:	89 44 2c             	mov    %ax,0x2c(%si)
    3d4b:	b8 00 00             	mov    $0x0,%ax
    3d4e:	50                   	push   %ax
    3d4f:	50                   	push   %ax
    3d50:	ff 76 f4             	push   -0xc(%bp)
    3d53:	e8 d8 c7             	call   0x52e
    3d56:	83 c4 06             	add    $0x6,%sp
    3d59:	8b 36 af 25          	mov    0x25af,%si
    3d5d:	8d 44 10             	lea    0x10(%si),%ax
    3d60:	8b 56 fe             	mov    -0x2(%bp),%dx
    3d63:	d1 e2                	shl    %dx
    3d65:	03 c2                	add    %dx,%ax
    3d67:	8b f0                	mov    %ax,%si
    3d69:	8b 04                	mov    (%si),%ax
    3d6b:	8b 76 f4             	mov    -0xc(%bp),%si
    3d6e:	89 44 0c             	mov    %ax,0xc(%si)
    3d71:	8b 76 f4             	mov    -0xc(%bp),%si
    3d74:	8b 44 0c             	mov    0xc(%si),%ax
    3d77:	0b c0                	or     %ax,%ax
    3d79:	74 05                	je     0x3d80
    3d7b:	b8 08 00             	mov    $0x8,%ax
    3d7e:	eb 03                	jmp    0x3d83
    3d80:	b8 00 00             	mov    $0x0,%ax
    3d83:	8b 76 f4             	mov    -0xc(%bp),%si
    3d86:	89 44 0a             	mov    %ax,0xa(%si)
    3d89:	b8 00 00             	mov    $0x0,%ax
    3d8c:	8b 76 f4             	mov    -0xc(%bp),%si
    3d8f:	89 44 52             	mov    %ax,0x52(%si)
    3d92:	8b 76 f4             	mov    -0xc(%bp),%si
    3d95:	89 44 26             	mov    %ax,0x26(%si)
    3d98:	8b 76 f4             	mov    -0xc(%bp),%si
    3d9b:	89 44 14             	mov    %ax,0x14(%si)
    3d9e:	b8 10 00             	mov    $0x10,%ax
    3da1:	8b 76 f4             	mov    -0xc(%bp),%si
    3da4:	89 44 22             	mov    %ax,0x22(%si)
    3da7:	b8 10 00             	mov    $0x10,%ax
    3daa:	8b 76 f4             	mov    -0xc(%bp),%si
    3dad:	89 44 24             	mov    %ax,0x24(%si)
    3db0:	b8 01 00             	mov    $0x1,%ax
    3db3:	8b 76 f4             	mov    -0xc(%bp),%si
    3db6:	89 44 64             	mov    %ax,0x64(%si)
    3db9:	8b 46 04             	mov    0x4(%bp),%ax
    3dbc:	0b c0                	or     %ax,%ax
    3dbe:	74 02                	je     0x3dc2
    3dc0:	eb 02                	jmp    0x3dc4
    3dc2:	eb 0a                	jmp    0x3dce
    3dc4:	8b 76 f4             	mov    -0xc(%bp),%si
    3dc7:	8b 04                	mov    (%si),%ax
    3dc9:	83 f8 04             	cmp    $0x4,%ax
    3dcc:	75 02                	jne    0x3dd0
    3dce:	eb 0a                	jmp    0x3dda
    3dd0:	8b 76 f4             	mov    -0xc(%bp),%si
    3dd3:	8b 04                	mov    (%si),%ax
    3dd5:	83 f8 5d             	cmp    $0x5d,%ax
    3dd8:	75 1b                	jne    0x3df5
    3dda:	b8 c8 00             	mov    $0xc8,%ax
    3ddd:	8b 76 f4             	mov    -0xc(%bp),%si
    3de0:	89 44 18             	mov    %ax,0x18(%si)
    3de3:	b8 05 00             	mov    $0x5,%ax
    3de6:	8b 76 f4             	mov    -0xc(%bp),%si
    3de9:	89 44 28             	mov    %ax,0x28(%si)
    3dec:	b8 28 23             	mov    $0x2328,%ax
    3def:	8b 76 f4             	mov    -0xc(%bp),%si
    3df2:	89 44 1e             	mov    %ax,0x1e(%si)
    3df5:	8b 46 04             	mov    0x4(%bp),%ax
    3df8:	0b c0                	or     %ax,%ax
    3dfa:	74 02                	je     0x3dfe
    3dfc:	eb 45                	jmp    0x3e43
    3dfe:	b8 00 00             	mov    $0x0,%ax
    3e01:	8d 36 b4 48          	lea    0x48b4,%si
    3e05:	8b 7e f4             	mov    -0xc(%bp),%di
    3e08:	8b 55 38             	mov    0x38(%di),%dx
    3e0b:	d1 e2                	shl    %dx
    3e0d:	03 f2                	add    %dx,%si
    3e0f:	89 04                	mov    %ax,(%si)
    3e11:	8d 36 bc 48          	lea    0x48bc,%si
    3e15:	8b 7e f4             	mov    -0xc(%bp),%di
    3e18:	8b 55 38             	mov    0x38(%di),%dx
    3e1b:	d1 e2                	shl    %dx
    3e1d:	03 f2                	add    %dx,%si
    3e1f:	89 04                	mov    %ax,(%si)
    3e21:	8b 76 f4             	mov    -0xc(%bp),%si
    3e24:	89 44 4c             	mov    %ax,0x4c(%si)
    3e27:	8b 76 f4             	mov    -0xc(%bp),%si
    3e2a:	89 44 1c             	mov    %ax,0x1c(%si)
    3e2d:	8b 76 f4             	mov    -0xc(%bp),%si
    3e30:	89 44 16             	mov    %ax,0x16(%si)
    3e33:	8d 36 e0 47          	lea    0x47e0,%si
    3e37:	56                   	push   %si
    3e38:	ff 76 f4             	push   -0xc(%bp)
    3e3b:	e8 a9 e4             	call   0x22e7
    3e3e:	83 c4 04             	add    $0x4,%sp
    3e41:	eb 18                	jmp    0x3e5b
    3e43:	ff 76 f4             	push   -0xc(%bp)
    3e46:	e8 23 e5             	call   0x236c
    3e49:	83 c4 02             	add    $0x2,%sp
    3e4c:	8b 76 f4             	mov    -0xc(%bp),%si
    3e4f:	ff 74 48             	push   0x48(%si)
    3e52:	ff 76 f4             	push   -0xc(%bp)
    3e55:	e8 8f e4             	call   0x22e7
    3e58:	83 c4 04             	add    $0x4,%sp
    3e5b:	81 3e ad 25 01 00    	cmpw   $0x1,0x25ad
    3e61:	75 02                	jne    0x3e65
    3e63:	eb 08                	jmp    0x3e6d
    3e65:	81 3e ad 25 03 00    	cmpw   $0x3,0x25ad
    3e6b:	75 29                	jne    0x3e96
    3e6d:	8b 76 f4             	mov    -0xc(%bp),%si
    3e70:	8b 44 4c             	mov    0x4c(%si),%ax
    3e73:	3b 06 38 4b          	cmp    0x4b38,%ax
    3e77:	7c 1d                	jl     0x3e96
    3e79:	b8 5c 00             	mov    $0x5c,%ax
    3e7c:	8b 76 f4             	mov    -0xc(%bp),%si
    3e7f:	89 04                	mov    %ax,(%si)
    3e81:	8b 76 f4             	mov    -0xc(%bp),%si
    3e84:	8b 44 38             	mov    0x38(%si),%ax
    3e87:	3b 06 c6 48          	cmp    0x48c6,%ax
    3e8b:	75 07                	jne    0x3e94
    3e8d:	b8 01 00             	mov    $0x1,%ax
    3e90:	89 06 27 4f          	mov    %ax,0x4f27
    3e94:	eb 08                	jmp    0x3e9e
    3e96:	b8 01 00             	mov    $0x1,%ax
    3e99:	8b 76 f4             	mov    -0xc(%bp),%si
    3e9c:	89 04                	mov    %ax,(%si)
    3e9e:	8b 46 f4             	mov    -0xc(%bp),%ax
    3ea1:	8b e5                	mov    %bp,%sp
    3ea3:	5d                   	pop    %bp
    3ea4:	c3                   	ret
    3ea5:	55                   	push   %bp
    3ea6:	8b ec                	mov    %sp,%bp
    3ea8:	83 ec 12             	sub    $0x12,%sp
    3eab:	8b 46 06             	mov    0x6(%bp),%ax
    3eae:	0b c0                	or     %ax,%ax
    3eb0:	74 02                	je     0x3eb4
    3eb2:	eb 1a                	jmp    0x3ece
    3eb4:	8b 06 cc 48          	mov    0x48cc,%ax
    3eb8:	0b c0                	or     %ax,%ax
    3eba:	74 02                	je     0x3ebe
    3ebc:	eb 10                	jmp    0x3ece
    3ebe:	8b 76 04             	mov    0x4(%bp),%si
    3ec1:	8b 44 18             	mov    0x18(%si),%ax
    3ec4:	0b c0                	or     %ax,%ax
    3ec6:	74 02                	je     0x3eca
    3ec8:	eb 04                	jmp    0x3ece
    3eca:	8b e5                	mov    %bp,%sp
    3ecc:	5d                   	pop    %bp
    3ecd:	c3                   	ret
    3ece:	e8 95 1d             	call   0x5c66
    3ed1:	89 46 ee             	mov    %ax,-0x12(%bp)
    3ed4:	0b c0                	or     %ax,%ax
    3ed6:	74 02                	je     0x3eda
    3ed8:	eb 04                	jmp    0x3ede
    3eda:	8b e5                	mov    %bp,%sp
    3edc:	5d                   	pop    %bp
    3edd:	c3                   	ret
    3ede:	8b 76 04             	mov    0x4(%bp),%si
    3ee1:	ff 4c 18             	decw   0x18(%si)
    3ee4:	8b 06 e7 25          	mov    0x25e7,%ax
    3ee8:	83 c0 0a             	add    $0xa,%ax
    3eeb:	89 46 fa             	mov    %ax,-0x6(%bp)
    3eee:	8b 46 06             	mov    0x6(%bp),%ax
    3ef1:	0b c0                	or     %ax,%ax
    3ef3:	75 03                	jne    0x3ef8
    3ef5:	e9 ae 00             	jmp    0x3fa6
    3ef8:	8b 76 06             	mov    0x6(%bp),%si
    3efb:	8b 44 02             	mov    0x2(%si),%ax
    3efe:	8b 76 06             	mov    0x6(%bp),%si
    3f01:	8b 54 06             	mov    0x6(%si),%dx
    3f04:	bb 02 00             	mov    $0x2,%bx
    3f07:	8b cb                	mov    %bx,%cx
    3f09:	d3 e2                	shl    %cl,%dx
    3f0b:	03 c2                	add    %dx,%ax
    3f0d:	89 46 fc             	mov    %ax,-0x4(%bp)
    3f10:	8b 76 06             	mov    0x6(%bp),%si
    3f13:	8b 44 04             	mov    0x4(%si),%ax
    3f16:	8b 76 06             	mov    0x6(%bp),%si
    3f19:	8b 54 08             	mov    0x8(%si),%dx
    3f1c:	bb 02 00             	mov    $0x2,%bx
    3f1f:	8b cb                	mov    %bx,%cx
    3f21:	d3 e2                	shl    %cl,%dx
    3f23:	03 c2                	add    %dx,%ax
    3f25:	89 46 fe             	mov    %ax,-0x2(%bp)
    3f28:	8b 46 fc             	mov    -0x4(%bp),%ax
    3f2b:	8b 76 04             	mov    0x4(%bp),%si
    3f2e:	2b 44 02             	sub    0x2(%si),%ax
    3f31:	89 46 f4             	mov    %ax,-0xc(%bp)
    3f34:	8b 46 fe             	mov    -0x2(%bp),%ax
    3f37:	8b 76 04             	mov    0x4(%bp),%si
    3f3a:	2b 44 04             	sub    0x4(%si),%ax
    3f3d:	89 46 f6             	mov    %ax,-0xa(%bp)
    3f40:	8b 76 04             	mov    0x4(%bp),%si
    3f43:	ff 74 04             	push   0x4(%si)
    3f46:	8b 76 04             	mov    0x4(%bp),%si
    3f49:	ff 74 02             	push   0x2(%si)
    3f4c:	ff 76 fe             	push   -0x2(%bp)
    3f4f:	ff 76 fc             	push   -0x4(%bp)
    3f52:	e8 3c 01             	call   0x4091
    3f55:	83 c4 08             	add    $0x8,%sp
    3f58:	89 46 f8             	mov    %ax,-0x8(%bp)
    3f5b:	83 f8 01             	cmp    $0x1,%ax
    3f5e:	7d 0d                	jge    0x3f6d
    3f60:	ff 76 ee             	push   -0x12(%bp)
    3f63:	e8 86 1d             	call   0x5cec
    3f66:	83 c4 02             	add    $0x2,%sp
    3f69:	8b e5                	mov    %bp,%sp
    3f6b:	5d                   	pop    %bp
    3f6c:	c3                   	ret
    3f6d:	8b 46 f8             	mov    -0x8(%bp),%ax
    3f70:	50                   	push   %ax
    3f71:	8b 46 fa             	mov    -0x6(%bp),%ax
    3f74:	f7 6e f4             	imulw  -0xc(%bp)
    3f77:	5b                   	pop    %bx
    3f78:	99                   	cwtd
    3f79:	f7 fb                	idiv   %bx
    3f7b:	8b 76 ee             	mov    -0x12(%bp),%si
    3f7e:	89 44 06             	mov    %ax,0x6(%si)
    3f81:	8b 46 f8             	mov    -0x8(%bp),%ax
    3f84:	50                   	push   %ax
    3f85:	8b 46 fa             	mov    -0x6(%bp),%ax
    3f88:	f7 6e f6             	imulw  -0xa(%bp)
    3f8b:	5b                   	pop    %bx
    3f8c:	99                   	cwtd
    3f8d:	f7 fb                	idiv   %bx
    3f8f:	8b 76 ee             	mov    -0x12(%bp),%si
    3f92:	89 44 08             	mov    %ax,0x8(%si)
    3f95:	b8 00 00             	mov    $0x0,%ax
    3f98:	8b 76 ee             	mov    -0x12(%bp),%si
    3f9b:	89 44 32             	mov    %ax,0x32(%si)
    3f9e:	8b 76 ee             	mov    -0x12(%bp),%si
    3fa1:	89 44 30             	mov    %ax,0x30(%si)
    3fa4:	eb 53                	jmp    0x3ff9
    3fa6:	8b 76 04             	mov    0x4(%bp),%si
    3fa9:	8b 44 0e             	mov    0xe(%si),%ax
    3fac:	03 46 fa             	add    -0x6(%bp),%ax
    3faf:	89 46 f2             	mov    %ax,-0xe(%bp)
    3fb2:	8b 76 04             	mov    0x4(%bp),%si
    3fb5:	8b 44 0a             	mov    0xa(%si),%ax
    3fb8:	89 46 f0             	mov    %ax,-0x10(%bp)
    3fbb:	8d 36 e5 07          	lea    0x7e5,%si
    3fbf:	b8 10 00             	mov    $0x10,%ax
    3fc2:	50                   	push   %ax
    3fc3:	8b 46 f0             	mov    -0x10(%bp),%ax
    3fc6:	5b                   	pop    %bx
    3fc7:	99                   	cwtd
    3fc8:	f7 fb                	idiv   %bx
    3fca:	d1 e2                	shl    %dx
    3fcc:	03 f2                	add    %dx,%si
    3fce:	8b 04                	mov    (%si),%ax
    3fd0:	f7 6e f2             	imulw  -0xe(%bp)
    3fd3:	50                   	push   %ax
    3fd4:	8d 36 e5 07          	lea    0x7e5,%si
    3fd8:	b8 10 00             	mov    $0x10,%ax
    3fdb:	50                   	push   %ax
    3fdc:	8b 46 f0             	mov    -0x10(%bp),%ax
    3fdf:	83 c0 04             	add    $0x4,%ax
    3fe2:	5b                   	pop    %bx
    3fe3:	99                   	cwtd
    3fe4:	f7 fb                	idiv   %bx
    3fe6:	d1 e2                	shl    %dx
    3fe8:	03 f2                	add    %dx,%si
    3fea:	8b 04                	mov    (%si),%ax
    3fec:	f7 6e f2             	imulw  -0xe(%bp)
    3fef:	50                   	push   %ax
    3ff0:	ff 76 ee             	push   -0x12(%bp)
    3ff3:	e8 38 c5             	call   0x52e
    3ff6:	83 c4 06             	add    $0x6,%sp
    3ff9:	b8 03 00             	mov    $0x3,%ax
    3ffc:	8b 76 ee             	mov    -0x12(%bp),%si
    3fff:	89 44 60             	mov    %ax,0x60(%si)
    4002:	8b 76 04             	mov    0x4(%bp),%si
    4005:	8b 44 02             	mov    0x2(%si),%ax
    4008:	83 c0 08             	add    $0x8,%ax
    400b:	8b 76 ee             	mov    -0x12(%bp),%si
    400e:	89 44 02             	mov    %ax,0x2(%si)
    4011:	8b 76 04             	mov    0x4(%bp),%si
    4014:	8b 44 04             	mov    0x4(%si),%ax
    4017:	83 e8 08             	sub    $0x8,%ax
    401a:	8b 76 ee             	mov    -0x12(%bp),%si
    401d:	89 44 04             	mov    %ax,0x4(%si)
    4020:	8b 76 04             	mov    0x4(%bp),%si
    4023:	8b 44 2c             	mov    0x2c(%si),%ax
    4026:	8b 76 ee             	mov    -0x12(%bp),%si
    4029:	89 44 2c             	mov    %ax,0x2c(%si)
    402c:	8b 76 04             	mov    0x4(%bp),%si
    402f:	8b 44 2e             	mov    0x2e(%si),%ax
    4032:	8b 76 ee             	mov    -0x12(%bp),%si
    4035:	89 44 2e             	mov    %ax,0x2e(%si)
    4038:	b8 0a 00             	mov    $0xa,%ax
    403b:	8b 76 ee             	mov    -0x12(%bp),%si
    403e:	89 44 1e             	mov    %ax,0x1e(%si)
    4041:	8b 46 04             	mov    0x4(%bp),%ax
    4044:	8b 76 ee             	mov    -0x12(%bp),%si
    4047:	89 44 20             	mov    %ax,0x20(%si)
    404a:	8b 76 04             	mov    0x4(%bp),%si
    404d:	8b 44 2a             	mov    0x2a(%si),%ax
    4050:	8b 76 ee             	mov    -0x12(%bp),%si
    4053:	89 44 2a             	mov    %ax,0x2a(%si)
    4056:	b8 01 00             	mov    $0x1,%ax
    4059:	8b 76 ee             	mov    -0x12(%bp),%si
    405c:	89 44 24             	mov    %ax,0x24(%si)
    405f:	8b 76 ee             	mov    -0x12(%bp),%si
    4062:	89 44 22             	mov    %ax,0x22(%si)
    4065:	b8 00 00             	mov    $0x0,%ax
    4068:	8b 76 ee             	mov    -0x12(%bp),%si
    406b:	89 44 44             	mov    %ax,0x44(%si)
    406e:	8d 06 1d 1b          	lea    0x1b1d,%ax
    4072:	8b 76 ee             	mov    -0x12(%bp),%si
    4075:	89 44 46             	mov    %ax,0x46(%si)
    4078:	b8 00 00             	mov    $0x0,%ax
    407b:	8b 76 ee             	mov    -0x12(%bp),%si
    407e:	89 44 0e             	mov    %ax,0xe(%si)
    4081:	ff 76 04             	push   0x4(%bp)
    4084:	ff 76 ee             	push   -0x12(%bp)
    4087:	e8 5d e2             	call   0x22e7
    408a:	83 c4 04             	add    $0x4,%sp
    408d:	8b e5                	mov    %bp,%sp
    408f:	5d                   	pop    %bp
    4090:	c3                   	ret
    4091:	55                   	push   %bp
    4092:	8b ec                	mov    %sp,%bp
    4094:	83 ec 06             	sub    $0x6,%sp
    4097:	8b 46 06             	mov    0x6(%bp),%ax
    409a:	2b 46 0a             	sub    0xa(%bp),%ax
    409d:	50                   	push   %ax
    409e:	e8 82 20             	call   0x6123
    40a1:	83 c4 02             	add    $0x2,%sp
    40a4:	89 46 fc             	mov    %ax,-0x4(%bp)
    40a7:	8b 46 04             	mov    0x4(%bp),%ax
    40aa:	2b 46 08             	sub    0x8(%bp),%ax
    40ad:	50                   	push   %ax
    40ae:	e8 72 20             	call   0x6123
    40b1:	83 c4 02             	add    $0x2,%sp
    40b4:	89 46 fa             	mov    %ax,-0x6(%bp)
    40b7:	83 f8 64             	cmp    $0x64,%ax
    40ba:	7e 02                	jle    0x40be
    40bc:	eb 07                	jmp    0x40c5
    40be:	81 7e fc 64 00       	cmpw   $0x64,-0x4(%bp)
    40c3:	7e 07                	jle    0x40cc
    40c5:	b8 ff ff             	mov    $0xffff,%ax
    40c8:	8b e5                	mov    %bp,%sp
    40ca:	5d                   	pop    %bp
    40cb:	c3                   	ret
    40cc:	8b 46 fa             	mov    -0x6(%bp),%ax
    40cf:	3b 46 fc             	cmp    -0x4(%bp),%ax
    40d2:	7d 12                	jge    0x40e6
    40d4:	8b 46 fa             	mov    -0x6(%bp),%ax
    40d7:	89 46 fe             	mov    %ax,-0x2(%bp)
    40da:	8b 46 fc             	mov    -0x4(%bp),%ax
    40dd:	89 46 fa             	mov    %ax,-0x6(%bp)
    40e0:	8b 46 fe             	mov    -0x2(%bp),%ax
    40e3:	89 46 fc             	mov    %ax,-0x4(%bp)
    40e6:	bb 07 00             	mov    $0x7,%bx
    40e9:	8b 46 fa             	mov    -0x6(%bp),%ax
    40ec:	f7 eb                	imul   %bx
    40ee:	8b 56 fc             	mov    -0x4(%bp),%dx
    40f1:	bb 02 00             	mov    $0x2,%bx
    40f4:	8b cb                	mov    %bx,%cx
    40f6:	d3 e2                	shl    %cl,%dx
    40f8:	03 c2                	add    %dx,%ax
    40fa:	ba 03 00             	mov    $0x3,%dx
    40fd:	8b ca                	mov    %dx,%cx
    40ff:	d3 f8                	sar    %cl,%ax
    4101:	8b e5                	mov    %bp,%sp
    4103:	5d                   	pop    %bp
    4104:	c3                   	ret
    4105:	55                   	push   %bp
    4106:	8b ec                	mov    %sp,%bp
    4108:	83 ec 04             	sub    $0x4,%sp
    410b:	8b 06 cc 48          	mov    0x48cc,%ax
    410f:	0b c0                	or     %ax,%ax
    4111:	74 02                	je     0x4115
    4113:	eb 0e                	jmp    0x4123
    4115:	8b 76 04             	mov    0x4(%bp),%si
    4118:	8b 44 28             	mov    0x28(%si),%ax
    411b:	0b c0                	or     %ax,%ax
    411d:	74 02                	je     0x4121
    411f:	eb 02                	jmp    0x4123
    4121:	eb 0a                	jmp    0x412d
    4123:	8b 76 04             	mov    0x4(%bp),%si
    4126:	8b 44 50             	mov    0x50(%si),%ax
    4129:	0b c0                	or     %ax,%ax
    412b:	74 04                	je     0x4131
    412d:	8b e5                	mov    %bp,%sp
    412f:	5d                   	pop    %bp
    4130:	c3                   	ret
    4131:	e8 32 1b             	call   0x5c66
    4134:	89 46 fc             	mov    %ax,-0x4(%bp)
    4137:	0b c0                	or     %ax,%ax
    4139:	74 02                	je     0x413d
    413b:	eb 04                	jmp    0x4141
    413d:	8b e5                	mov    %bp,%sp
    413f:	5d                   	pop    %bp
    4140:	c3                   	ret
    4141:	8b 76 04             	mov    0x4(%bp),%si
    4144:	ff 4c 28             	decw   0x28(%si)
    4147:	b8 0a 00             	mov    $0xa,%ax
    414a:	8b 76 04             	mov    0x4(%bp),%si
    414d:	89 44 50             	mov    %ax,0x50(%si)
    4150:	b8 02 00             	mov    $0x2,%ax
    4153:	8b 76 fc             	mov    -0x4(%bp),%si
    4156:	89 44 60             	mov    %ax,0x60(%si)
    4159:	b8 05 00             	mov    $0x5,%ax
    415c:	8b 76 fc             	mov    -0x4(%bp),%si
    415f:	89 04                	mov    %ax,(%si)
    4161:	8b 76 04             	mov    0x4(%bp),%si
    4164:	8b 44 06             	mov    0x6(%si),%ax
    4167:	8b 76 fc             	mov    -0x4(%bp),%si
    416a:	89 44 06             	mov    %ax,0x6(%si)
    416d:	8b 76 04             	mov    0x4(%bp),%si
    4170:	8b 44 08             	mov    0x8(%si),%ax
    4173:	8b 76 fc             	mov    -0x4(%bp),%si
    4176:	89 44 08             	mov    %ax,0x8(%si)
    4179:	8b 76 04             	mov    0x4(%bp),%si
    417c:	8b 44 0c             	mov    0xc(%si),%ax
    417f:	0b c0                	or     %ax,%ax
    4181:	74 16                	je     0x4199
    4183:	b8 10 00             	mov    $0x10,%ax
    4186:	50                   	push   %ax
    4187:	8b 76 04             	mov    0x4(%bp),%si
    418a:	8b 44 0a             	mov    0xa(%si),%ax
    418d:	83 c0 04             	add    $0x4,%ax
    4190:	5b                   	pop    %bx
    4191:	99                   	cwtd
    4192:	f7 fb                	idiv   %bx
    4194:	89 56 fe             	mov    %dx,-0x2(%bp)
    4197:	eb 14                	jmp    0x41ad
    4199:	b8 10 00             	mov    $0x10,%ax
    419c:	50                   	push   %ax
    419d:	8b 76 04             	mov    0x4(%bp),%si
    41a0:	8b 44 0a             	mov    0xa(%si),%ax
    41a3:	83 c0 0c             	add    $0xc,%ax
    41a6:	5b                   	pop    %bx
    41a7:	99                   	cwtd
    41a8:	f7 fb                	idiv   %bx
    41aa:	89 56 fe             	mov    %dx,-0x2(%bp)
    41ad:	8b 76 04             	mov    0x4(%bp),%si
    41b0:	8b 44 02             	mov    0x2(%si),%ax
    41b3:	50                   	push   %ax
    41b4:	bb 0a 00             	mov    $0xa,%bx
    41b7:	8d 36 e5 07          	lea    0x7e5,%si
    41bb:	b8 10 00             	mov    $0x10,%ax
    41be:	50                   	push   %ax
    41bf:	8b 46 fe             	mov    -0x2(%bp),%ax
    41c2:	83 c0 04             	add    $0x4,%ax
    41c5:	59                   	pop    %cx
    41c6:	99                   	cwtd
    41c7:	f7 f9                	idiv   %cx
    41c9:	d1 e2                	shl    %dx
    41cb:	03 f2                	add    %dx,%si
    41cd:	8b 04                	mov    (%si),%ax
    41cf:	f7 eb                	imul   %bx
    41d1:	ba 08 00             	mov    $0x8,%dx
    41d4:	8b ca                	mov    %dx,%cx
    41d6:	d3 f8                	sar    %cl,%ax
    41d8:	5a                   	pop    %dx
    41d9:	03 d0                	add    %ax,%dx
    41db:	83 c2 04             	add    $0x4,%dx
    41de:	8b 76 fc             	mov    -0x4(%bp),%si
    41e1:	89 54 02             	mov    %dx,0x2(%si)
    41e4:	8b 76 04             	mov    0x4(%bp),%si
    41e7:	8b 44 04             	mov    0x4(%si),%ax
    41ea:	50                   	push   %ax
    41eb:	bb 0a 00             	mov    $0xa,%bx
    41ee:	8d 36 e5 07          	lea    0x7e5,%si
    41f2:	b8 10 00             	mov    $0x10,%ax
    41f5:	50                   	push   %ax
    41f6:	8b 46 fe             	mov    -0x2(%bp),%ax
    41f9:	59                   	pop    %cx
    41fa:	99                   	cwtd
    41fb:	f7 f9                	idiv   %cx
    41fd:	d1 e2                	shl    %dx
    41ff:	03 f2                	add    %dx,%si
    4201:	8b 04                	mov    (%si),%ax
    4203:	f7 eb                	imul   %bx
    4205:	ba 08 00             	mov    $0x8,%dx
    4208:	8b ca                	mov    %dx,%cx
    420a:	d3 f8                	sar    %cl,%ax
    420c:	5a                   	pop    %dx
    420d:	03 d0                	add    %ax,%dx
    420f:	83 ea 04             	sub    $0x4,%dx
    4212:	8b 76 fc             	mov    -0x4(%bp),%si
    4215:	89 54 04             	mov    %dx,0x4(%si)
    4218:	b8 00 00             	mov    $0x0,%ax
    421b:	8b 76 fc             	mov    -0x4(%bp),%si
    421e:	89 44 32             	mov    %ax,0x32(%si)
    4221:	8b 76 fc             	mov    -0x4(%bp),%si
    4224:	89 44 30             	mov    %ax,0x30(%si)
    4227:	8b 76 fc             	mov    -0x4(%bp),%si
    422a:	89 44 2e             	mov    %ax,0x2e(%si)
    422d:	8b 76 fc             	mov    -0x4(%bp),%si
    4230:	89 44 2c             	mov    %ax,0x2c(%si)
    4233:	b8 05 00             	mov    $0x5,%ax
    4236:	8b 76 fc             	mov    -0x4(%bp),%si
    4239:	89 44 1e             	mov    %ax,0x1e(%si)
    423c:	8b 46 04             	mov    0x4(%bp),%ax
    423f:	8b 76 fc             	mov    -0x4(%bp),%si
    4242:	89 44 20             	mov    %ax,0x20(%si)
    4245:	8b 76 04             	mov    0x4(%bp),%si
    4248:	8b 44 2a             	mov    0x2a(%si),%ax
    424b:	8b 76 fc             	mov    -0x4(%bp),%si
    424e:	89 44 2a             	mov    %ax,0x2a(%si)
    4251:	b8 08 00             	mov    $0x8,%ax
    4254:	8b 76 fc             	mov    -0x4(%bp),%si
    4257:	89 44 24             	mov    %ax,0x24(%si)
    425a:	8b 76 fc             	mov    -0x4(%bp),%si
    425d:	89 44 22             	mov    %ax,0x22(%si)
    4260:	8d 06 57 57          	lea    0x5757,%ax
    4264:	8b 76 fc             	mov    -0x4(%bp),%si
    4267:	89 44 44             	mov    %ax,0x44(%si)
    426a:	8d 06 be 1b          	lea    0x1bbe,%ax
    426e:	8b 76 fc             	mov    -0x4(%bp),%si
    4271:	89 44 46             	mov    %ax,0x46(%si)
    4274:	ff 76 04             	push   0x4(%bp)
    4277:	ff 76 fc             	push   -0x4(%bp)
    427a:	e8 6a e0             	call   0x22e7
    427d:	83 c4 04             	add    $0x4,%sp
    4280:	8b e5                	mov    %bp,%sp
    4282:	5d                   	pop    %bp
    4283:	c3                   	ret
    4284:	55                   	push   %bp
    4285:	8b ec                	mov    %sp,%bp
    4287:	83 ec 14             	sub    $0x14,%sp
    428a:	8b 36 af 25          	mov    0x25af,%si
    428e:	8d 44 26             	lea    0x26(%si),%ax
    4291:	89 46 f0             	mov    %ax,-0x10(%bp)
    4294:	8b 36 af 25          	mov    0x25af,%si
    4298:	8d 44 4e             	lea    0x4e(%si),%ax
    429b:	89 46 f2             	mov    %ax,-0xe(%bp)
    429e:	81 3e ad 25 01 00    	cmpw   $0x1,0x25ad
    42a4:	74 0a                	je     0x42b0
    42a6:	81 3e ad 25 03 00    	cmpw   $0x3,0x25ad
    42ac:	74 02                	je     0x42b0
    42ae:	eb 0f                	jmp    0x42bf
    42b0:	8b 36 cb 07          	mov    0x7cb,%si
    42b4:	8a 04                	mov    (%si),%al
    42b6:	81 e0 ff 00          	and    $0xff,%ax
    42ba:	83 f8 01             	cmp    $0x1,%ax
    42bd:	75 14                	jne    0x42d3
    42bf:	b8 00 00             	mov    $0x0,%ax
    42c2:	8d 36 d9 25          	lea    0x25d9,%si
    42c6:	89 04                	mov    %ax,(%si)
    42c8:	b8 11 00             	mov    $0x11,%ax
    42cb:	8d 36 db 25          	lea    0x25db,%si
    42cf:	89 04                	mov    %ax,(%si)
    42d1:	eb 0f                	jmp    0x42e2
    42d3:	b8 0a 00             	mov    $0xa,%ax
    42d6:	8d 36 db 25          	lea    0x25db,%si
    42da:	89 04                	mov    %ax,(%si)
    42dc:	8d 36 d9 25          	lea    0x25d9,%si
    42e0:	89 04                	mov    %ax,(%si)
    42e2:	b8 00 00             	mov    $0x0,%ax
    42e5:	89 46 ee             	mov    %ax,-0x12(%bp)
    42e8:	81 7e ee 14 00       	cmpw   $0x14,-0x12(%bp)
    42ed:	7c 03                	jl     0x42f2
    42ef:	e9 ee 01             	jmp    0x44e0
    42f2:	e8 71 19             	call   0x5c66
    42f5:	89 46 ec             	mov    %ax,-0x14(%bp)
    42f8:	8d 36 b1 25          	lea    0x25b1,%si
    42fc:	8b 56 ee             	mov    -0x12(%bp),%dx
    42ff:	d1 e2                	shl    %dx
    4301:	03 f2                	add    %dx,%si
    4303:	89 04                	mov    %ax,(%si)
    4305:	8b 76 f0             	mov    -0x10(%bp),%si
    4308:	8b 04                	mov    (%si),%ax
    430a:	8b 76 ec             	mov    -0x14(%bp),%si
    430d:	89 44 02             	mov    %ax,0x2(%si)
    4310:	89 46 fc             	mov    %ax,-0x4(%bp)
    4313:	8b 76 ec             	mov    -0x14(%bp),%si
    4316:	8b 44 02             	mov    0x2(%si),%ax
    4319:	83 c0 0f             	add    $0xf,%ax
    431c:	89 46 fe             	mov    %ax,-0x2(%bp)
    431f:	b8 e7 03             	mov    $0x3e7,%ax
    4322:	89 46 f4             	mov    %ax,-0xc(%bp)
    4325:	b8 00 00             	mov    $0x0,%ax
    4328:	89 46 f6             	mov    %ax,-0xa(%bp)
    432b:	8b 46 fc             	mov    -0x4(%bp),%ax
    432e:	89 46 fa             	mov    %ax,-0x6(%bp)
    4331:	8b 46 fa             	mov    -0x6(%bp),%ax
    4334:	3b 46 fe             	cmp    -0x2(%bp),%ax
    4337:	7f 4d                	jg     0x4386
    4339:	8b 46 f6             	mov    -0xa(%bp),%ax
    433c:	8d 36 69 52          	lea    0x5269,%si
    4340:	03 76 fa             	add    -0x6(%bp),%si
    4343:	8a 14                	mov    (%si),%dl
    4345:	81 e2 ff 00          	and    $0xff,%dx
    4349:	3b d0                	cmp    %ax,%dx
    434b:	76 10                	jbe    0x435d
    434d:	8d 36 69 52          	lea    0x5269,%si
    4351:	03 76 fa             	add    -0x6(%bp),%si
    4354:	8a 04                	mov    (%si),%al
    4356:	81 e0 ff 00          	and    $0xff,%ax
    435a:	89 46 f6             	mov    %ax,-0xa(%bp)
    435d:	8b 46 f4             	mov    -0xc(%bp),%ax
    4360:	8d 36 69 52          	lea    0x5269,%si
    4364:	03 76 fa             	add    -0x6(%bp),%si
    4367:	8a 14                	mov    (%si),%dl
    4369:	81 e2 ff 00          	and    $0xff,%dx
    436d:	3b d0                	cmp    %ax,%dx
    436f:	73 10                	jae    0x4381
    4371:	8d 36 69 52          	lea    0x5269,%si
    4375:	03 76 fa             	add    -0x6(%bp),%si
    4378:	8a 04                	mov    (%si),%al
    437a:	81 e0 ff 00          	and    $0xff,%ax
    437e:	89 46 f4             	mov    %ax,-0xc(%bp)
    4381:	ff 46 fa             	incw   -0x6(%bp)
    4384:	eb ab                	jmp    0x4331
    4386:	8b 46 f6             	mov    -0xa(%bp),%ax
    4389:	03 46 f4             	add    -0xc(%bp),%ax
    438c:	ba 01 00             	mov    $0x1,%dx
    438f:	8b ca                	mov    %dx,%cx
    4391:	d3 f8                	sar    %cl,%ax
    4393:	89 46 f8             	mov    %ax,-0x8(%bp)
    4396:	8b 46 f8             	mov    -0x8(%bp),%ax
    4399:	83 c0 10             	add    $0x10,%ax
    439c:	8b 76 ec             	mov    -0x14(%bp),%si
    439f:	89 44 04             	mov    %ax,0x4(%si)
    43a2:	81 f8 c8 00          	cmp    $0xc8,%ax
    43a6:	7c 05                	jl     0x43ad
    43a8:	ff 4e f8             	decw   -0x8(%bp)
    43ab:	eb e9                	jmp    0x4396
    43ad:	8b 46 fc             	mov    -0x4(%bp),%ax
    43b0:	89 46 fa             	mov    %ax,-0x6(%bp)
    43b3:	8b 46 fa             	mov    -0x6(%bp),%ax
    43b6:	3b 46 fe             	cmp    -0x2(%bp),%ax
    43b9:	7f 11                	jg     0x43cc
    43bb:	8b 46 f8             	mov    -0x8(%bp),%ax
    43be:	8d 36 69 52          	lea    0x5269,%si
    43c2:	03 76 fa             	add    -0x6(%bp),%si
    43c5:	88 04                	mov    %al,(%si)
    43c7:	ff 46 fa             	incw   -0x6(%bp)
    43ca:	eb e7                	jmp    0x43b3
    43cc:	b8 00 00             	mov    $0x0,%ax
    43cf:	8b 76 ec             	mov    -0x14(%bp),%si
    43d2:	89 44 1a             	mov    %ax,0x1a(%si)
    43d5:	8b 76 ec             	mov    -0x14(%bp),%si
    43d8:	89 44 0a             	mov    %ax,0xa(%si)
    43db:	8b 76 ec             	mov    -0x14(%bp),%si
    43de:	89 44 32             	mov    %ax,0x32(%si)
    43e1:	8b 76 ec             	mov    -0x14(%bp),%si
    43e4:	89 44 30             	mov    %ax,0x30(%si)
    43e7:	8b 76 ec             	mov    -0x14(%bp),%si
    43ea:	89 44 2e             	mov    %ax,0x2e(%si)
    43ed:	8b 76 ec             	mov    -0x14(%bp),%si
    43f0:	89 44 2c             	mov    %ax,0x2c(%si)
    43f3:	8b 76 ec             	mov    -0x14(%bp),%si
    43f6:	89 44 08             	mov    %ax,0x8(%si)
    43f9:	8b 76 ec             	mov    -0x14(%bp),%si
    43fc:	89 44 06             	mov    %ax,0x6(%si)
    43ff:	b8 04 00             	mov    $0x4,%ax
    4402:	8b 76 ec             	mov    -0x14(%bp),%si
    4405:	89 44 60             	mov    %ax,0x60(%si)
    4408:	b8 06 00             	mov    $0x6,%ax
    440b:	8b 76 ec             	mov    -0x14(%bp),%si
    440e:	89 04                	mov    %ax,(%si)
    4410:	8b 76 f2             	mov    -0xe(%bp),%si
    4413:	8b 04                	mov    (%si),%ax
    4415:	8b 76 ec             	mov    -0x14(%bp),%si
    4418:	89 44 0c             	mov    %ax,0xc(%si)
    441b:	8b 46 ee             	mov    -0x12(%bp),%ax
    441e:	8b 76 ec             	mov    -0x14(%bp),%si
    4421:	89 44 1e             	mov    %ax,0x1e(%si)
    4424:	81 3e ad 25 01 00    	cmpw   $0x1,0x25ad
    442a:	74 0a                	je     0x4436
    442c:	81 3e ad 25 03 00    	cmpw   $0x3,0x25ad
    4432:	74 02                	je     0x4436
    4434:	eb 0f                	jmp    0x4445
    4436:	8b 36 cb 07          	mov    0x7cb,%si
    443a:	8a 04                	mov    (%si),%al
    443c:	81 e0 ff 00          	and    $0xff,%ax
    4440:	83 f8 01             	cmp    $0x1,%ax
    4443:	75 2b                	jne    0x4470
    4445:	8b 06 2c 46          	mov    0x462c,%ax
    4449:	50                   	push   %ax
    444a:	bb 6a 00             	mov    $0x6a,%bx
    444d:	81 7e ee 0a 00       	cmpw   $0xa,-0x12(%bp)
    4452:	7d 0c                	jge    0x4460
    4454:	81 7e ee 06 00       	cmpw   $0x6,-0x12(%bp)
    4459:	7e 05                	jle    0x4460
    445b:	b8 00 00             	mov    $0x0,%ax
    445e:	eb 03                	jmp    0x4463
    4460:	b8 01 00             	mov    $0x1,%ax
    4463:	f7 eb                	imul   %bx
    4465:	5e                   	pop    %si
    4466:	03 f0                	add    %ax,%si
    4468:	8b 7e ec             	mov    -0x14(%bp),%di
    446b:	89 75 20             	mov    %si,0x20(%di)
    446e:	eb 20                	jmp    0x4490
    4470:	8b 06 2c 46          	mov    0x462c,%ax
    4474:	50                   	push   %ax
    4475:	bb 6a 00             	mov    $0x6a,%bx
    4478:	8b 46 ee             	mov    -0x12(%bp),%ax
    447b:	83 f8 0a             	cmp    $0xa,%ax
    447e:	b8 01 00             	mov    $0x1,%ax
    4481:	7d 02                	jge    0x4485
    4483:	ff c8                	dec    %ax
    4485:	f7 eb                	imul   %bx
    4487:	5e                   	pop    %si
    4488:	03 f0                	add    %ax,%si
    448a:	8b 7e ec             	mov    -0x14(%bp),%di
    448d:	89 75 20             	mov    %si,0x20(%di)
    4490:	8b 76 ec             	mov    -0x14(%bp),%si
    4493:	8b 74 20             	mov    0x20(%si),%si
    4496:	8b 44 2a             	mov    0x2a(%si),%ax
    4499:	8b 76 ec             	mov    -0x14(%bp),%si
    449c:	89 44 2a             	mov    %ax,0x2a(%si)
    449f:	b8 10 00             	mov    $0x10,%ax
    44a2:	8b 76 ec             	mov    -0x14(%bp),%si
    44a5:	89 44 24             	mov    %ax,0x24(%si)
    44a8:	8b 76 ec             	mov    -0x14(%bp),%si
    44ab:	89 44 22             	mov    %ax,0x22(%si)
    44ae:	8d 06 c3 57          	lea    0x57c3,%ax
    44b2:	8b 76 ec             	mov    -0x14(%bp),%si
    44b5:	89 44 44             	mov    %ax,0x44(%si)
    44b8:	8d 06 be 1d          	lea    0x1dbe,%ax
    44bc:	8b 76 ec             	mov    -0x14(%bp),%si
    44bf:	89 44 46             	mov    %ax,0x46(%si)
    44c2:	8d 36 e0 47          	lea    0x47e0,%si
    44c6:	56                   	push   %si
    44c7:	ff 76 ec             	push   -0x14(%bp)
    44ca:	e8 1a de             	call   0x22e7
    44cd:	83 c4 04             	add    $0x4,%sp
    44d0:	ff 46 ee             	incw   -0x12(%bp)
    44d3:	81 46 f0 02 00       	addw   $0x2,-0x10(%bp)
    44d8:	81 46 f2 02 00       	addw   $0x2,-0xe(%bp)
    44dd:	e9 08 fe             	jmp    0x42e8
    44e0:	8b e5                	mov    %bp,%sp
    44e2:	5d                   	pop    %bp
    44e3:	c3                   	ret
    44e4:	55                   	push   %bp
    44e5:	8b ec                	mov    %sp,%bp
    44e7:	83 ec 1c             	sub    $0x1c,%sp
    44ea:	8b 76 04             	mov    0x4(%bp),%si
    44ed:	8b 44 02             	mov    0x2(%si),%ax
    44f0:	8b 76 04             	mov    0x4(%bp),%si
    44f3:	8b 54 24             	mov    0x24(%si),%dx
    44f6:	bb 01 00             	mov    $0x1,%bx
    44f9:	8b cb                	mov    %bx,%cx
    44fb:	d3 fa                	sar    %cl,%dx
    44fd:	03 c2                	add    %dx,%ax
    44ff:	89 46 ee             	mov    %ax,-0x12(%bp)
    4502:	8b 76 04             	mov    0x4(%bp),%si
    4505:	8b 44 04             	mov    0x4(%si),%ax
    4508:	8b 76 04             	mov    0x4(%bp),%si
    450b:	8b 54 22             	mov    0x22(%si),%dx
    450e:	bb 01 00             	mov    $0x1,%bx
    4511:	8b cb                	mov    %bx,%cx
    4513:	d3 fa                	sar    %cl,%dx
    4515:	03 c2                	add    %dx,%ax
    4517:	89 46 f0             	mov    %ax,-0x10(%bp)
    451a:	8b 76 04             	mov    0x4(%bp),%si
    451d:	8b 44 06             	mov    0x6(%si),%ax
    4520:	89 46 f2             	mov    %ax,-0xe(%bp)
    4523:	8b 76 04             	mov    0x4(%bp),%si
    4526:	8b 44 08             	mov    0x8(%si),%ax
    4529:	89 46 f4             	mov    %ax,-0xc(%bp)
    452c:	8b 76 04             	mov    0x4(%bp),%si
    452f:	8b 44 2a             	mov    0x2a(%si),%ax
    4532:	89 46 f6             	mov    %ax,-0xa(%bp)
    4535:	8b 76 04             	mov    0x4(%bp),%si
    4538:	8b 44 60             	mov    0x60(%si),%ax
    453b:	89 46 f8             	mov    %ax,-0x8(%bp)
    453e:	83 f8 04             	cmp    $0x4,%ax
    4541:	75 1a                	jne    0x455d
    4543:	8b 76 04             	mov    0x4(%bp),%si
    4546:	8b 44 0c             	mov    0xc(%si),%ax
    4549:	83 f8 02             	cmp    $0x2,%ax
    454c:	75 0f                	jne    0x455d
    454e:	b8 01 00             	mov    $0x1,%ax
    4551:	89 46 e8             	mov    %ax,-0x18(%bp)
    4554:	8b 06 e9 25          	mov    0x25e9,%ax
    4558:	89 46 ec             	mov    %ax,-0x14(%bp)
    455b:	eb 20                	jmp    0x457d
    455d:	81 7e f8 01 00       	cmpw   $0x1,-0x8(%bp)
    4562:	75 05                	jne    0x4569
    4564:	b8 06 00             	mov    $0x6,%ax
    4567:	eb 03                	jmp    0x456c
    4569:	b8 02 00             	mov    $0x2,%ax
    456c:	89 46 e8             	mov    %ax,-0x18(%bp)
    456f:	8b 06 eb 25          	mov    0x25eb,%ax
    4573:	ba 01 00             	mov    $0x1,%dx
    4576:	8b ca                	mov    %dx,%cx
    4578:	d3 f8                	sar    %cl,%ax
    457a:	89 46 ec             	mov    %ax,-0x14(%bp)
    457d:	8b 46 f8             	mov    -0x8(%bp),%ax
    4580:	83 f8 01             	cmp    $0x1,%ax
    4583:	b8 01 00             	mov    $0x1,%ax
    4586:	74 02                	je     0x458a
    4588:	ff c8                	dec    %ax
    458a:	0b c0                	or     %ax,%ax
    458c:	74 18                	je     0x45a6
    458e:	8b 76 04             	mov    0x4(%bp),%si
    4591:	8b 04                	mov    (%si),%ax
    4593:	83 f8 01             	cmp    $0x1,%ax
    4596:	b8 01 00             	mov    $0x1,%ax
    4599:	74 02                	je     0x459d
    459b:	ff c8                	dec    %ax
    459d:	0b c0                	or     %ax,%ax
    459f:	74 05                	je     0x45a6
    45a1:	b8 01 00             	mov    $0x1,%ax
    45a4:	eb 03                	jmp    0x45a9
    45a6:	b8 00 00             	mov    $0x0,%ax
    45a9:	89 46 fc             	mov    %ax,-0x4(%bp)
    45ac:	b8 01 00             	mov    $0x1,%ax
    45af:	89 46 e6             	mov    %ax,-0x1a(%bp)
    45b2:	81 7e e6 0f 00       	cmpw   $0xf,-0x1a(%bp)
    45b7:	7e 03                	jle    0x45bc
    45b9:	e9 8d 01             	jmp    0x4749
    45bc:	e8 a7 16             	call   0x5c66
    45bf:	89 46 e4             	mov    %ax,-0x1c(%bp)
    45c2:	0b c0                	or     %ax,%ax
    45c4:	74 02                	je     0x45c8
    45c6:	eb 04                	jmp    0x45cc
    45c8:	8b e5                	mov    %bp,%sp
    45ca:	5d                   	pop    %bp
    45cb:	c3                   	ret
    45cc:	b8 05 00             	mov    $0x5,%ax
    45cf:	8b 76 e4             	mov    -0x1c(%bp),%si
    45d2:	89 44 60             	mov    %ax,0x60(%si)
    45d5:	8d 36 e5 07          	lea    0x7e5,%si
    45d9:	b8 10 00             	mov    $0x10,%ax
    45dc:	50                   	push   %ax
    45dd:	8b 46 e6             	mov    -0x1a(%bp),%ax
    45e0:	5b                   	pop    %bx
    45e1:	99                   	cwtd
    45e2:	f7 fb                	idiv   %bx
    45e4:	d1 e2                	shl    %dx
    45e6:	03 f2                	add    %dx,%si
    45e8:	8b 04                	mov    (%si),%ax
    45ea:	f7 6e ec             	imulw  -0x14(%bp)
    45ed:	50                   	push   %ax
    45ee:	8d 36 e5 07          	lea    0x7e5,%si
    45f2:	b8 10 00             	mov    $0x10,%ax
    45f5:	50                   	push   %ax
    45f6:	8b 46 e6             	mov    -0x1a(%bp),%ax
    45f9:	83 c0 04             	add    $0x4,%ax
    45fc:	5b                   	pop    %bx
    45fd:	99                   	cwtd
    45fe:	f7 fb                	idiv   %bx
    4600:	d1 e2                	shl    %dx
    4602:	03 f2                	add    %dx,%si
    4604:	8b 04                	mov    (%si),%ax
    4606:	f7 6e ec             	imulw  -0x14(%bp)
    4609:	50                   	push   %ax
    460a:	ff 76 e4             	push   -0x1c(%bp)
    460d:	e8 1e bf             	call   0x52e
    4610:	83 c4 06             	add    $0x6,%sp
    4613:	8b 46 f2             	mov    -0xe(%bp),%ax
    4616:	8b 76 e4             	mov    -0x1c(%bp),%si
    4619:	8b 54 06             	mov    0x6(%si),%dx
    461c:	03 d0                	add    %ax,%dx
    461e:	89 54 06             	mov    %dx,0x6(%si)
    4621:	8b 46 f4             	mov    -0xc(%bp),%ax
    4624:	8b 76 e4             	mov    -0x1c(%bp),%si
    4627:	8b 54 08             	mov    0x8(%si),%dx
    462a:	03 d0                	add    %ax,%dx
    462c:	89 54 08             	mov    %dx,0x8(%si)
    462f:	bb 43 1d             	mov    $0x1d43,%bx
    4632:	8b 76 e4             	mov    -0x1c(%bp),%si
    4635:	8b 4c 08             	mov    0x8(%si),%cx
    4638:	03 4e f0             	add    -0x10(%bp),%cx
    463b:	8b 76 e4             	mov    -0x1c(%bp),%si
    463e:	89 4c 04             	mov    %cx,0x4(%si)
    4641:	8b 76 e4             	mov    -0x1c(%bp),%si
    4644:	8b 44 06             	mov    0x6(%si),%ax
    4647:	03 46 ee             	add    -0x12(%bp),%ax
    464a:	8b 76 e4             	mov    -0x1c(%bp),%si
    464d:	89 44 02             	mov    %ax,0x2(%si)
    4650:	f7 e9                	imul   %cx
    4652:	f7 26 2e 4b          	mulw   0x4b2e
    4656:	f7 e3                	mul    %bx
    4658:	89 46 fa             	mov    %ax,-0x6(%bp)
    465b:	b8 03 00             	mov    $0x3,%ax
    465e:	8b 76 e4             	mov    -0x1c(%bp),%si
    4661:	89 44 1e             	mov    %ax,0x1e(%si)
    4664:	b8 08 00             	mov    $0x8,%ax
    4667:	ba 00 00             	mov    $0x0,%dx
    466a:	52                   	push   %dx
    466b:	50                   	push   %ax
    466c:	8b 46 e6             	mov    -0x1a(%bp),%ax
    466f:	f7 66 fa             	mulw   -0x6(%bp)
    4672:	33 d2                	xor    %dx,%dx
    4674:	52                   	push   %dx
    4675:	50                   	push   %ax
    4676:	e8 0a 4f             	call   0x9583
    4679:	58                   	pop    %ax
    467a:	5a                   	pop    %dx
    467b:	52                   	push   %dx
    467c:	50                   	push   %ax
    467d:	b8 10 00             	mov    $0x10,%ax
    4680:	ba 00 00             	mov    $0x0,%dx
    4683:	52                   	push   %dx
    4684:	50                   	push   %ax
    4685:	e8 ce 52             	call   0x9956
    4688:	58                   	pop    %ax
    4689:	5a                   	pop    %dx
    468a:	8b 76 e4             	mov    -0x1c(%bp),%si
    468d:	89 44 0c             	mov    %ax,0xc(%si)
    4690:	89 46 fe             	mov    %ax,-0x2(%bp)
    4693:	8b 46 fc             	mov    -0x4(%bp),%ax
    4696:	0b c0                	or     %ax,%ax
    4698:	74 36                	je     0x46d0
    469a:	8b 46 fe             	mov    -0x2(%bp),%ax
    469d:	0b c0                	or     %ax,%ax
    469f:	74 02                	je     0x46a3
    46a1:	eb 02                	jmp    0x46a5
    46a3:	eb 07                	jmp    0x46ac
    46a5:	81 7e fe 07 00       	cmpw   $0x7,-0x2(%bp)
    46aa:	75 24                	jne    0x46d0
    46ac:	b8 00 00             	mov    $0x0,%ax
    46af:	8b 76 e4             	mov    -0x1c(%bp),%si
    46b2:	89 44 0c             	mov    %ax,0xc(%si)
    46b5:	89 46 fe             	mov    %ax,-0x2(%bp)
    46b8:	89 46 fc             	mov    %ax,-0x4(%bp)
    46bb:	8b 46 f2             	mov    -0xe(%bp),%ax
    46be:	8b 76 e4             	mov    -0x1c(%bp),%si
    46c1:	89 44 06             	mov    %ax,0x6(%si)
    46c4:	8b 06 eb 25          	mov    0x25eb,%ax
    46c8:	f7 d8                	neg    %ax
    46ca:	8b 76 e4             	mov    -0x1c(%bp),%si
    46cd:	89 44 08             	mov    %ax,0x8(%si)
    46d0:	b8 00 00             	mov    $0x0,%ax
    46d3:	8b 76 e4             	mov    -0x1c(%bp),%si
    46d6:	89 44 0e             	mov    %ax,0xe(%si)
    46d9:	8b 76 e4             	mov    -0x1c(%bp),%si
    46dc:	89 44 1a             	mov    %ax,0x1a(%si)
    46df:	8b 76 e4             	mov    -0x1c(%bp),%si
    46e2:	89 44 2e             	mov    %ax,0x2e(%si)
    46e5:	8b 76 e4             	mov    -0x1c(%bp),%si
    46e8:	89 44 2c             	mov    %ax,0x2c(%si)
    46eb:	8b 46 04             	mov    0x4(%bp),%ax
    46ee:	8b 76 e4             	mov    -0x1c(%bp),%si
    46f1:	89 44 20             	mov    %ax,0x20(%si)
    46f4:	8b 46 f6             	mov    -0xa(%bp),%ax
    46f7:	8b 76 e4             	mov    -0x1c(%bp),%si
    46fa:	89 44 2a             	mov    %ax,0x2a(%si)
    46fd:	b8 08 00             	mov    $0x8,%ax
    4700:	8b 76 e4             	mov    -0x1c(%bp),%si
    4703:	89 44 24             	mov    %ax,0x24(%si)
    4706:	8b 76 e4             	mov    -0x1c(%bp),%si
    4709:	89 44 22             	mov    %ax,0x22(%si)
    470c:	8d 06 7f 57          	lea    0x577f,%ax
    4710:	8b 76 e4             	mov    -0x1c(%bp),%si
    4713:	89 44 44             	mov    %ax,0x44(%si)
    4716:	8d 06 ae 1e          	lea    0x1eae,%ax
    471a:	8b 76 e4             	mov    -0x1c(%bp),%si
    471d:	89 44 46             	mov    %ax,0x46(%si)
    4720:	8b 46 fe             	mov    -0x2(%bp),%ax
    4723:	0b c0                	or     %ax,%ax
    4725:	74 0d                	je     0x4734
    4727:	b8 0a 00             	mov    $0xa,%ax
    472a:	50                   	push   %ax
    472b:	ff 76 e4             	push   -0x1c(%bp)
    472e:	e8 11 e0             	call   0x2742
    4731:	83 c4 04             	add    $0x4,%sp
    4734:	ff 76 04             	push   0x4(%bp)
    4737:	ff 76 e4             	push   -0x1c(%bp)
    473a:	e8 aa db             	call   0x22e7
    473d:	83 c4 04             	add    $0x4,%sp
    4740:	8b 46 e8             	mov    -0x18(%bp),%ax
    4743:	01 46 e6             	add    %ax,-0x1a(%bp)
    4746:	e9 69 fe             	jmp    0x45b2
    4749:	8b e5                	mov    %bp,%sp
    474b:	5d                   	pop    %bp
    474c:	c3                   	ret
    474d:	55                   	push   %bp
    474e:	8b ec                	mov    %sp,%bp
    4750:	83 ec 02             	sub    $0x2,%sp
    4753:	e8 10 15             	call   0x5c66
    4756:	89 46 fe             	mov    %ax,-0x2(%bp)
    4759:	0b c0                	or     %ax,%ax
    475b:	74 02                	je     0x475f
    475d:	eb 04                	jmp    0x4763
    475f:	8b e5                	mov    %bp,%sp
    4761:	5d                   	pop    %bp
    4762:	c3                   	ret
    4763:	b8 06 00             	mov    $0x6,%ax
    4766:	8b 76 fe             	mov    -0x2(%bp),%si
    4769:	89 44 60             	mov    %ax,0x60(%si)
    476c:	8b 76 04             	mov    0x4(%bp),%si
    476f:	8b 44 02             	mov    0x2(%si),%ax
    4772:	83 c0 08             	add    $0x8,%ax
    4775:	8b 76 fe             	mov    -0x2(%bp),%si
    4778:	89 44 02             	mov    %ax,0x2(%si)
    477b:	8b 76 04             	mov    0x4(%bp),%si
    477e:	8b 44 04             	mov    0x4(%si),%ax
    4781:	83 e8 08             	sub    $0x8,%ax
    4784:	8b 76 fe             	mov    -0x2(%bp),%si
    4787:	89 44 04             	mov    %ax,0x4(%si)
    478a:	8b 76 04             	mov    0x4(%bp),%si
    478d:	8b 44 06             	mov    0x6(%si),%ax
    4790:	8b 76 fe             	mov    -0x2(%bp),%si
    4793:	89 44 06             	mov    %ax,0x6(%si)
    4796:	8b 76 04             	mov    0x4(%bp),%si
    4799:	8b 44 08             	mov    0x8(%si),%ax
    479c:	8b 76 fe             	mov    -0x2(%bp),%si
    479f:	89 44 08             	mov    %ax,0x8(%si)
    47a2:	b8 00 00             	mov    $0x0,%ax
    47a5:	8b 76 fe             	mov    -0x2(%bp),%si
    47a8:	89 44 32             	mov    %ax,0x32(%si)
    47ab:	8b 76 fe             	mov    -0x2(%bp),%si
    47ae:	89 44 30             	mov    %ax,0x30(%si)
    47b1:	8b 76 fe             	mov    -0x2(%bp),%si
    47b4:	89 44 2e             	mov    %ax,0x2e(%si)
    47b7:	8b 76 fe             	mov    -0x2(%bp),%si
    47ba:	89 44 2c             	mov    %ax,0x2c(%si)
    47bd:	b8 0a 00             	mov    $0xa,%ax
    47c0:	8b 76 fe             	mov    -0x2(%bp),%si
    47c3:	89 44 1e             	mov    %ax,0x1e(%si)
    47c6:	8b 46 04             	mov    0x4(%bp),%ax
    47c9:	8b 76 fe             	mov    -0x2(%bp),%si
    47cc:	89 44 20             	mov    %ax,0x20(%si)
    47cf:	b8 01 00             	mov    $0x1,%ax
    47d2:	8b 76 fe             	mov    -0x2(%bp),%si
    47d5:	89 44 24             	mov    %ax,0x24(%si)
    47d8:	8b 76 fe             	mov    -0x2(%bp),%si
    47db:	89 44 22             	mov    %ax,0x22(%si)
    47de:	b8 00 00             	mov    $0x0,%ax
    47e1:	8b 76 fe             	mov    -0x2(%bp),%si
    47e4:	89 44 44             	mov    %ax,0x44(%si)
    47e7:	8d 06 1c 20          	lea    0x201c,%ax
    47eb:	8b 76 fe             	mov    -0x2(%bp),%si
    47ee:	89 44 46             	mov    %ax,0x46(%si)
    47f1:	8b 76 04             	mov    0x4(%bp),%si
    47f4:	8b 44 2a             	mov    0x2a(%si),%ax
    47f7:	8b 76 fe             	mov    -0x2(%bp),%si
    47fa:	89 44 2a             	mov    %ax,0x2a(%si)
    47fd:	8b e5                	mov    %bp,%sp
    47ff:	5d                   	pop    %bp
    4800:	c3                   	ret
    4801:	55                   	push   %bp
    4802:	8b ec                	mov    %sp,%bp
    4804:	83 ec 06             	sub    $0x6,%sp
    4807:	b8 00 00             	mov    $0x0,%ax
    480a:	89 46 fc             	mov    %ax,-0x4(%bp)
    480d:	81 7e fc 04 00       	cmpw   $0x4,-0x4(%bp)
    4812:	7c 03                	jl     0x4817
    4814:	e9 f5 00             	jmp    0x490c
    4817:	e8 4c 14             	call   0x5c66
    481a:	89 46 fa             	mov    %ax,-0x6(%bp)
    481d:	0b c0                	or     %ax,%ax
    481f:	74 02                	je     0x4823
    4821:	eb 04                	jmp    0x4827
    4823:	8b e5                	mov    %bp,%sp
    4825:	5d                   	pop    %bp
    4826:	c3                   	ret
    4827:	b8 07 00             	mov    $0x7,%ax
    482a:	8b 76 fa             	mov    -0x6(%bp),%si
    482d:	89 44 60             	mov    %ax,0x60(%si)
    4830:	b8 01 00             	mov    $0x1,%ax
    4833:	8b 76 fa             	mov    -0x6(%bp),%si
    4836:	89 04                	mov    %ax,(%si)
    4838:	8d 36 73 0a          	lea    0xa73,%si
    483c:	8b 46 fc             	mov    -0x4(%bp),%ax
    483f:	d1 e0                	shl    %ax
    4841:	03 f0                	add    %ax,%si
    4843:	8b 04                	mov    (%si),%ax
    4845:	8b 76 fa             	mov    -0x6(%bp),%si
    4848:	89 44 02             	mov    %ax,0x2(%si)
    484b:	8d 36 7b 0a          	lea    0xa7b,%si
    484f:	8b 46 fc             	mov    -0x4(%bp),%ax
    4852:	d1 e0                	shl    %ax
    4854:	03 f0                	add    %ax,%si
    4856:	8b 04                	mov    (%si),%ax
    4858:	8b 76 fa             	mov    -0x6(%bp),%si
    485b:	89 44 04             	mov    %ax,0x4(%si)
    485e:	8d 36 83 0a          	lea    0xa83,%si
    4862:	8b 46 fc             	mov    -0x4(%bp),%ax
    4865:	d1 e0                	shl    %ax
    4867:	03 f0                	add    %ax,%si
    4869:	8b 04                	mov    (%si),%ax
    486b:	8b 76 fa             	mov    -0x6(%bp),%si
    486e:	89 44 06             	mov    %ax,0x6(%si)
    4871:	b8 00 00             	mov    $0x0,%ax
    4874:	8b 76 fa             	mov    -0x6(%bp),%si
    4877:	89 44 32             	mov    %ax,0x32(%si)
    487a:	8b 76 fa             	mov    -0x6(%bp),%si
    487d:	89 44 30             	mov    %ax,0x30(%si)
    4880:	8b 76 fa             	mov    -0x6(%bp),%si
    4883:	89 44 2e             	mov    %ax,0x2e(%si)
    4886:	8b 76 fa             	mov    -0x6(%bp),%si
    4889:	89 44 2c             	mov    %ax,0x2c(%si)
    488c:	8b 76 fa             	mov    -0x6(%bp),%si
    488f:	89 44 08             	mov    %ax,0x8(%si)
    4892:	b8 00 00             	mov    $0x0,%ax
    4895:	8b 76 fa             	mov    -0x6(%bp),%si
    4898:	89 44 0c             	mov    %ax,0xc(%si)
    489b:	b8 05 00             	mov    $0x5,%ax
    489e:	8b 76 fa             	mov    -0x6(%bp),%si
    48a1:	89 44 1e             	mov    %ax,0x1e(%si)
    48a4:	8b 46 fa             	mov    -0x6(%bp),%ax
    48a7:	8b 76 fa             	mov    -0x6(%bp),%si
    48aa:	89 44 20             	mov    %ax,0x20(%si)
    48ad:	b8 10 00             	mov    $0x10,%ax
    48b0:	8b 76 fa             	mov    -0x6(%bp),%si
    48b3:	89 44 24             	mov    %ax,0x24(%si)
    48b6:	8b 76 fa             	mov    -0x6(%bp),%si
    48b9:	89 44 22             	mov    %ax,0x22(%si)
    48bc:	8d 06 e4 57          	lea    0x57e4,%ax
    48c0:	8b 76 fa             	mov    -0x6(%bp),%si
    48c3:	89 44 44             	mov    %ax,0x44(%si)
    48c6:	8d 06 77 20          	lea    0x2077,%ax
    48ca:	8b 76 fa             	mov    -0x6(%bp),%si
    48cd:	89 44 46             	mov    %ax,0x46(%si)
    48d0:	b8 01 00             	mov    $0x1,%ax
    48d3:	8b 76 fa             	mov    -0x6(%bp),%si
    48d6:	89 44 2a             	mov    %ax,0x2a(%si)
    48d9:	8d 36 e0 47          	lea    0x47e0,%si
    48dd:	56                   	push   %si
    48de:	ff 76 fa             	push   -0x6(%bp)
    48e1:	e8 03 da             	call   0x22e7
    48e4:	83 c4 04             	add    $0x4,%sp
    48e7:	b8 00 00             	mov    $0x0,%ax
    48ea:	89 46 fe             	mov    %ax,-0x2(%bp)
    48ed:	81 7e fe 01 00       	cmpw   $0x1,-0x2(%bp)
    48f2:	7d 12                	jge    0x4906
    48f4:	b8 01 00             	mov    $0x1,%ax
    48f7:	50                   	push   %ax
    48f8:	ff 76 fa             	push   -0x6(%bp)
    48fb:	e8 12 00             	call   0x4910
    48fe:	83 c4 04             	add    $0x4,%sp
    4901:	ff 46 fe             	incw   -0x2(%bp)
    4904:	eb e7                	jmp    0x48ed
    4906:	ff 46 fc             	incw   -0x4(%bp)
    4909:	e9 01 ff             	jmp    0x480d
    490c:	8b e5                	mov    %bp,%sp
    490e:	5d                   	pop    %bp
    490f:	c3                   	ret
    4910:	55                   	push   %bp
    4911:	8b ec                	mov    %sp,%bp
    4913:	83 ec 02             	sub    $0x2,%sp
    4916:	e8 4d 13             	call   0x5c66
    4919:	89 46 fe             	mov    %ax,-0x2(%bp)
    491c:	0b c0                	or     %ax,%ax
    491e:	74 02                	je     0x4922
    4920:	eb 04                	jmp    0x4926
    4922:	8b e5                	mov    %bp,%sp
    4924:	5d                   	pop    %bp
    4925:	c3                   	ret
    4926:	b8 08 00             	mov    $0x8,%ax
    4929:	8b 76 fe             	mov    -0x2(%bp),%si
    492c:	89 44 60             	mov    %ax,0x60(%si)
    492f:	8b 76 04             	mov    0x4(%bp),%si
    4932:	8b 44 02             	mov    0x2(%si),%ax
    4935:	8d 36 8b 0a          	lea    0xa8b,%si
    4939:	8b 56 06             	mov    0x6(%bp),%dx
    493c:	d1 e2                	shl    %dx
    493e:	03 f2                	add    %dx,%si
    4940:	03 04                	add    (%si),%ax
    4942:	8b 76 fe             	mov    -0x2(%bp),%si
    4945:	89 44 02             	mov    %ax,0x2(%si)
    4948:	8b 76 04             	mov    0x4(%bp),%si
    494b:	8b 44 04             	mov    0x4(%si),%ax
    494e:	8d 36 9b 0a          	lea    0xa9b,%si
    4952:	8b 56 06             	mov    0x6(%bp),%dx
    4955:	d1 e2                	shl    %dx
    4957:	03 f2                	add    %dx,%si
    4959:	2b 04                	sub    (%si),%ax
    495b:	8b 76 fe             	mov    -0x2(%bp),%si
    495e:	89 44 04             	mov    %ax,0x4(%si)
    4961:	8d 36 ab 0a          	lea    0xaab,%si
    4965:	8b 46 06             	mov    0x6(%bp),%ax
    4968:	d1 e0                	shl    %ax
    496a:	03 f0                	add    %ax,%si
    496c:	8b 04                	mov    (%si),%ax
    496e:	8b 76 fe             	mov    -0x2(%bp),%si
    4971:	89 44 06             	mov    %ax,0x6(%si)
    4974:	8d 36 bb 0a          	lea    0xabb,%si
    4978:	8b 46 06             	mov    0x6(%bp),%ax
    497b:	d1 e0                	shl    %ax
    497d:	03 f0                	add    %ax,%si
    497f:	8b 04                	mov    (%si),%ax
    4981:	8b 76 fe             	mov    -0x2(%bp),%si
    4984:	89 44 08             	mov    %ax,0x8(%si)
    4987:	b8 00 00             	mov    $0x0,%ax
    498a:	8b 76 fe             	mov    -0x2(%bp),%si
    498d:	89 44 32             	mov    %ax,0x32(%si)
    4990:	8b 76 fe             	mov    -0x2(%bp),%si
    4993:	89 44 30             	mov    %ax,0x30(%si)
    4996:	8b 76 fe             	mov    -0x2(%bp),%si
    4999:	89 44 2e             	mov    %ax,0x2e(%si)
    499c:	8b 76 fe             	mov    -0x2(%bp),%si
    499f:	89 44 2c             	mov    %ax,0x2c(%si)
    49a2:	8b 76 fe             	mov    -0x2(%bp),%si
    49a5:	89 44 0c             	mov    %ax,0xc(%si)
    49a8:	b8 04 00             	mov    $0x4,%ax
    49ab:	8b 76 fe             	mov    -0x2(%bp),%si
    49ae:	89 44 1e             	mov    %ax,0x1e(%si)
    49b1:	8b 46 04             	mov    0x4(%bp),%ax
    49b4:	8b 76 fe             	mov    -0x2(%bp),%si
    49b7:	89 44 20             	mov    %ax,0x20(%si)
    49ba:	b8 02 00             	mov    $0x2,%ax
    49bd:	8b 76 fe             	mov    -0x2(%bp),%si
    49c0:	89 44 22             	mov    %ax,0x22(%si)
    49c3:	b8 04 00             	mov    $0x4,%ax
    49c6:	8b 76 fe             	mov    -0x2(%bp),%si
    49c9:	89 44 24             	mov    %ax,0x24(%si)
    49cc:	8d 06 eb 57          	lea    0x57eb,%ax
    49d0:	8b 76 fe             	mov    -0x2(%bp),%si
    49d3:	89 44 44             	mov    %ax,0x44(%si)
    49d6:	8d 06 53 21          	lea    0x2153,%ax
    49da:	8b 76 fe             	mov    -0x2(%bp),%si
    49dd:	89 44 46             	mov    %ax,0x46(%si)
    49e0:	8b 76 04             	mov    0x4(%bp),%si
    49e3:	8b 44 2a             	mov    0x2a(%si),%ax
    49e6:	8b 76 fe             	mov    -0x2(%bp),%si
    49e9:	89 44 2a             	mov    %ax,0x2a(%si)
    49ec:	ff 76 04             	push   0x4(%bp)
    49ef:	ff 76 fe             	push   -0x2(%bp)
    49f2:	e8 f2 d8             	call   0x22e7
    49f5:	83 c4 04             	add    $0x4,%sp
    49f8:	8b e5                	mov    %bp,%sp
    49fa:	5d                   	pop    %bp
    49fb:	c3                   	ret
    49fc:	55                   	push   %bp
    49fd:	8b ec                	mov    %sp,%bp
    49ff:	83 ec 04             	sub    $0x4,%sp
    4a02:	b8 00 00             	mov    $0x0,%ax
    4a05:	89 46 fe             	mov    %ax,-0x2(%bp)
    4a08:	81 7e fe 02 00       	cmpw   $0x2,-0x2(%bp)
    4a0d:	7c 03                	jl     0x4a12
    4a0f:	e9 bf 00             	jmp    0x4ad1
    4a12:	e8 51 12             	call   0x5c66
    4a15:	89 46 fc             	mov    %ax,-0x4(%bp)
    4a18:	0b c0                	or     %ax,%ax
    4a1a:	74 02                	je     0x4a1e
    4a1c:	eb 04                	jmp    0x4a22
    4a1e:	8b e5                	mov    %bp,%sp
    4a20:	5d                   	pop    %bp
    4a21:	c3                   	ret
    4a22:	b8 09 00             	mov    $0x9,%ax
    4a25:	8b 76 fc             	mov    -0x4(%bp),%si
    4a28:	89 44 60             	mov    %ax,0x60(%si)
    4a2b:	b8 06 00             	mov    $0x6,%ax
    4a2e:	8b 76 fc             	mov    -0x4(%bp),%si
    4a31:	89 04                	mov    %ax,(%si)
    4a33:	8d 36 cb 0a          	lea    0xacb,%si
    4a37:	8b 46 fe             	mov    -0x2(%bp),%ax
    4a3a:	d1 e0                	shl    %ax
    4a3c:	03 f0                	add    %ax,%si
    4a3e:	8b 04                	mov    (%si),%ax
    4a40:	8b 76 fc             	mov    -0x4(%bp),%si
    4a43:	89 44 02             	mov    %ax,0x2(%si)
    4a46:	8d 36 cf 0a          	lea    0xacf,%si
    4a4a:	8b 46 fe             	mov    -0x2(%bp),%ax
    4a4d:	d1 e0                	shl    %ax
    4a4f:	03 f0                	add    %ax,%si
    4a51:	8b 04                	mov    (%si),%ax
    4a53:	8b 76 fc             	mov    -0x4(%bp),%si
    4a56:	89 44 04             	mov    %ax,0x4(%si)
    4a59:	b8 00 00             	mov    $0x0,%ax
    4a5c:	8b 76 fc             	mov    -0x4(%bp),%si
    4a5f:	89 44 08             	mov    %ax,0x8(%si)
    4a62:	8b 76 fc             	mov    -0x4(%bp),%si
    4a65:	89 44 06             	mov    %ax,0x6(%si)
    4a68:	8b 76 fc             	mov    -0x4(%bp),%si
    4a6b:	89 44 32             	mov    %ax,0x32(%si)
    4a6e:	8b 76 fc             	mov    -0x4(%bp),%si
    4a71:	89 44 30             	mov    %ax,0x30(%si)
    4a74:	8b 76 fc             	mov    -0x4(%bp),%si
    4a77:	89 44 2e             	mov    %ax,0x2e(%si)
    4a7a:	8b 76 fc             	mov    -0x4(%bp),%si
    4a7d:	89 44 2c             	mov    %ax,0x2c(%si)
    4a80:	8b 76 fc             	mov    -0x4(%bp),%si
    4a83:	89 44 0c             	mov    %ax,0xc(%si)
    4a86:	8b 46 fc             	mov    -0x4(%bp),%ax
    4a89:	8b 76 fc             	mov    -0x4(%bp),%si
    4a8c:	89 44 20             	mov    %ax,0x20(%si)
    4a8f:	b8 10 00             	mov    $0x10,%ax
    4a92:	8b 76 fc             	mov    -0x4(%bp),%si
    4a95:	89 44 22             	mov    %ax,0x22(%si)
    4a98:	b8 10 00             	mov    $0x10,%ax
    4a9b:	8b 76 fc             	mov    -0x4(%bp),%si
    4a9e:	89 44 24             	mov    %ax,0x24(%si)
    4aa1:	b8 00 00             	mov    $0x0,%ax
    4aa4:	8b 76 fc             	mov    -0x4(%bp),%si
    4aa7:	89 44 44             	mov    %ax,0x44(%si)
    4aaa:	8d 06 7d 22          	lea    0x227d,%ax
    4aae:	8b 76 fc             	mov    -0x4(%bp),%si
    4ab1:	89 44 46             	mov    %ax,0x46(%si)
    4ab4:	b8 01 00             	mov    $0x1,%ax
    4ab7:	8b 76 fc             	mov    -0x4(%bp),%si
    4aba:	89 44 2a             	mov    %ax,0x2a(%si)
    4abd:	8d 36 e0 47          	lea    0x47e0,%si
    4ac1:	56                   	push   %si
    4ac2:	ff 76 fc             	push   -0x4(%bp)
    4ac5:	e8 1f d8             	call   0x22e7
    4ac8:	83 c4 04             	add    $0x4,%sp
    4acb:	ff 46 fe             	incw   -0x2(%bp)
    4ace:	e9 37 ff             	jmp    0x4a08
    4ad1:	8b e5                	mov    %bp,%sp
    4ad3:	5d                   	pop    %bp
    4ad4:	c3                   	ret
    4ad5:	55                   	push   %bp
    4ad6:	8b ec                	mov    %sp,%bp
    4ad8:	83 ec 16             	sub    $0x16,%sp
    4adb:	b8 00 00             	mov    $0x0,%ax
    4ade:	89 06 49 52          	mov    %ax,0x5249
    4ae2:	89 06 63 52          	mov    %ax,0x5263
    4ae6:	b0 02                	mov    $0x2,%al
    4ae8:	89 06 65 52          	mov    %ax,0x5265
    4aec:	b0 01                	mov    $0x1,%al
    4aee:	89 06 67 52          	mov    %ax,0x5267
    4af2:	8b 06 e3 25          	mov    0x25e3,%ax
    4af6:	83 e0 01             	and    $0x1,%ax
    4af9:	0b c0                	or     %ax,%ax
    4afb:	74 14                	je     0x4b11
    4afd:	8b 06 65 52          	mov    0x5265,%ax
    4b01:	f7 d8                	neg    %ax
    4b03:	89 06 65 52          	mov    %ax,0x5265
    4b07:	8b 06 67 52          	mov    0x5267,%ax
    4b0b:	f7 d8                	neg    %ax
    4b0d:	89 06 67 52          	mov    %ax,0x5267
    4b11:	e8 6d ee             	call   0x3981
    4b14:	8b 06 e2 47          	mov    0x47e2,%ax
    4b18:	89 46 f8             	mov    %ax,-0x8(%bp)
    4b1b:	8b 36 28 48          	mov    0x4828,%si
    4b1f:	89 76 ea             	mov    %si,-0x16(%bp)
    4b22:	8d 06 4a 48          	lea    0x484a,%ax
    4b26:	3b 46 ea             	cmp    -0x16(%bp),%ax
    4b29:	75 03                	jne    0x4b2e
    4b2b:	e9 13 01             	jmp    0x4c41
    4b2e:	8b 76 ea             	mov    -0x16(%bp),%si
    4b31:	8b 44 02             	mov    0x2(%si),%ax
    4b34:	89 46 f8             	mov    %ax,-0x8(%bp)
    4b37:	89 46 fa             	mov    %ax,-0x6(%bp)
    4b3a:	8b 76 ea             	mov    -0x16(%bp),%si
    4b3d:	8b 44 02             	mov    0x2(%si),%ax
    4b40:	8b 76 ea             	mov    -0x16(%bp),%si
    4b43:	03 44 24             	add    0x24(%si),%ax
    4b46:	83 e8 01             	sub    $0x1,%ax
    4b49:	89 46 f2             	mov    %ax,-0xe(%bp)
    4b4c:	8b 76 ea             	mov    -0x16(%bp),%si
    4b4f:	8b 44 04             	mov    0x4(%si),%ax
    4b52:	89 46 f6             	mov    %ax,-0xa(%bp)
    4b55:	8b 76 ea             	mov    -0x16(%bp),%si
    4b58:	2b 44 22             	sub    0x22(%si),%ax
    4b5b:	83 c0 01             	add    $0x1,%ax
    4b5e:	89 46 f4             	mov    %ax,-0xc(%bp)
    4b61:	8b 76 ea             	mov    -0x16(%bp),%si
    4b64:	8b 74 48             	mov    0x48(%si),%si
    4b67:	89 76 ec             	mov    %si,-0x14(%bp)
    4b6a:	8d 06 4a 48          	lea    0x484a,%ax
    4b6e:	3b 46 ec             	cmp    -0x14(%bp),%ax
    4b71:	74 4a                	je     0x4bbd
    4b73:	8b 76 ec             	mov    -0x14(%bp),%si
    4b76:	8b 44 02             	mov    0x2(%si),%ax
    4b79:	3b 46 f2             	cmp    -0xe(%bp),%ax
    4b7c:	7f 3f                	jg     0x4bbd
    4b7e:	8b 76 ec             	mov    -0x14(%bp),%si
    4b81:	8b 44 02             	mov    0x2(%si),%ax
    4b84:	89 46 fa             	mov    %ax,-0x6(%bp)
    4b87:	8b 76 ec             	mov    -0x14(%bp),%si
    4b8a:	8b 44 04             	mov    0x4(%si),%ax
    4b8d:	3b 46 f4             	cmp    -0xc(%bp),%ax
    4b90:	7c 20                	jl     0x4bb2
    4b92:	8b 76 ec             	mov    -0x14(%bp),%si
    4b95:	8b 44 04             	mov    0x4(%si),%ax
    4b98:	8b 76 ec             	mov    -0x14(%bp),%si
    4b9b:	2b 44 22             	sub    0x22(%si),%ax
    4b9e:	83 c0 01             	add    $0x1,%ax
    4ba1:	3b 46 f6             	cmp    -0xa(%bp),%ax
    4ba4:	7f 0c                	jg     0x4bb2
    4ba6:	ff 76 ec             	push   -0x14(%bp)
    4ba9:	ff 76 ea             	push   -0x16(%bp)
    4bac:	e8 1d 01             	call   0x4ccc
    4baf:	83 c4 04             	add    $0x4,%sp
    4bb2:	8b 76 ec             	mov    -0x14(%bp),%si
    4bb5:	8b 74 48             	mov    0x48(%si),%si
    4bb8:	89 76 ec             	mov    %si,-0x14(%bp)
    4bbb:	eb ad                	jmp    0x4b6a
    4bbd:	8b 76 ea             	mov    -0x16(%bp),%si
    4bc0:	8b 44 60             	mov    0x60(%si),%ax
    4bc3:	89 46 fe             	mov    %ax,-0x2(%bp)
    4bc6:	83 f8 01             	cmp    $0x1,%ax
    4bc9:	75 38                	jne    0x4c03
    4bcb:	8b 76 ea             	mov    -0x16(%bp),%si
    4bce:	8b 04                	mov    (%si),%ax
    4bd0:	83 f8 5b             	cmp    $0x5b,%ax
    4bd3:	74 2e                	je     0x4c03
    4bd5:	8b 76 ea             	mov    -0x16(%bp),%si
    4bd8:	8b 04                	mov    (%si),%ax
    4bda:	83 f8 00             	cmp    $0x0,%ax
    4bdd:	74 24                	je     0x4c03
    4bdf:	8d 36 69 52          	lea    0x5269,%si
    4be3:	8b 7e ea             	mov    -0x16(%bp),%di
    4be6:	8b 45 02             	mov    0x2(%di),%ax
    4be9:	83 c0 08             	add    $0x8,%ax
    4bec:	03 f0                	add    %ax,%si
    4bee:	8a 04                	mov    (%si),%al
    4bf0:	81 e0 ff 00          	and    $0xff,%ax
    4bf4:	83 c0 18             	add    $0x18,%ax
    4bf7:	8b 76 ea             	mov    -0x16(%bp),%si
    4bfa:	8b 54 04             	mov    0x4(%si),%dx
    4bfd:	3b d0                	cmp    %ax,%dx
    4bff:	73 02                	jae    0x4c03
    4c01:	eb 29                	jmp    0x4c2c
    4c03:	81 7e fe 02 00       	cmpw   $0x2,-0x2(%bp)
    4c08:	75 2b                	jne    0x4c35
    4c0a:	8d 36 69 52          	lea    0x5269,%si
    4c0e:	8b 7e ea             	mov    -0x16(%bp),%di
    4c11:	8b 45 02             	mov    0x2(%di),%ax
    4c14:	83 c0 04             	add    $0x4,%ax
    4c17:	03 f0                	add    %ax,%si
    4c19:	8a 04                	mov    (%si),%al
    4c1b:	81 e0 ff 00          	and    $0xff,%ax
    4c1f:	83 c0 0c             	add    $0xc,%ax
    4c22:	8b 76 ea             	mov    -0x16(%bp),%si
    4c25:	8b 54 04             	mov    0x4(%si),%dx
    4c28:	3b d0                	cmp    %ax,%dx
    4c2a:	73 09                	jae    0x4c35
    4c2c:	ff 76 ea             	push   -0x16(%bp)
    4c2f:	e8 a0 01             	call   0x4dd2
    4c32:	83 c4 02             	add    $0x2,%sp
    4c35:	8b 76 ea             	mov    -0x16(%bp),%si
    4c38:	8b 74 48             	mov    0x48(%si),%si
    4c3b:	89 76 ea             	mov    %si,-0x16(%bp)
    4c3e:	e9 e1 fe             	jmp    0x4b22
    4c41:	8d 06 29 4f          	lea    0x4f29,%ax
    4c45:	89 46 ee             	mov    %ax,-0x12(%bp)
    4c48:	8d 06 b9 50          	lea    0x50b9,%ax
    4c4c:	89 46 f0             	mov    %ax,-0x10(%bp)
    4c4f:	b8 00 00             	mov    $0x0,%ax
    4c52:	89 46 fc             	mov    %ax,-0x4(%bp)
    4c55:	8b 46 fc             	mov    -0x4(%bp),%ax
    4c58:	3b 06 49 52          	cmp    0x5249,%ax
    4c5c:	7d 1f                	jge    0x4c7d
    4c5e:	8b 76 f0             	mov    -0x10(%bp),%si
    4c61:	ff 34                	push   (%si)
    4c63:	8b 76 ee             	mov    -0x12(%bp),%si
    4c66:	ff 34                	push   (%si)
    4c68:	e8 3d 02             	call   0x4ea8
    4c6b:	83 c4 04             	add    $0x4,%sp
    4c6e:	ff 46 fc             	incw   -0x4(%bp)
    4c71:	81 46 ee 02 00       	addw   $0x2,-0x12(%bp)
    4c76:	81 46 f0 02 00       	addw   $0x2,-0x10(%bp)
    4c7b:	eb d8                	jmp    0x4c55
    4c7d:	8d 06 5b 52          	lea    0x525b,%ax
    4c81:	89 46 ee             	mov    %ax,-0x12(%bp)
    4c84:	b8 00 00             	mov    $0x0,%ax
    4c87:	89 46 fc             	mov    %ax,-0x4(%bp)
    4c8a:	8b 46 fc             	mov    -0x4(%bp),%ax
    4c8d:	3b 06 63 52          	cmp    0x5263,%ax
    4c91:	7d 35                	jge    0x4cc8
    4c93:	8d 36 4b 52          	lea    0x524b,%si
    4c97:	8b 46 fc             	mov    -0x4(%bp),%ax
    4c9a:	d1 e0                	shl    %ax
    4c9c:	03 f0                	add    %ax,%si
    4c9e:	8b 04                	mov    (%si),%ax
    4ca0:	8b 76 ee             	mov    -0x12(%bp),%si
    4ca3:	8b 34                	mov    (%si),%si
    4ca5:	89 76 ea             	mov    %si,-0x16(%bp)
    4ca8:	89 44 06             	mov    %ax,0x6(%si)
    4cab:	8d 36 53 52          	lea    0x5253,%si
    4caf:	8b 46 fc             	mov    -0x4(%bp),%ax
    4cb2:	d1 e0                	shl    %ax
    4cb4:	03 f0                	add    %ax,%si
    4cb6:	8b 04                	mov    (%si),%ax
    4cb8:	8b 76 ea             	mov    -0x16(%bp),%si
    4cbb:	89 44 08             	mov    %ax,0x8(%si)
    4cbe:	ff 46 fc             	incw   -0x4(%bp)
    4cc1:	81 46 ee 02 00       	addw   $0x2,-0x12(%bp)
    4cc6:	eb c2                	jmp    0x4c8a
    4cc8:	8b e5                	mov    %bp,%sp
    4cca:	5d                   	pop    %bp
    4ccb:	c3                   	ret
    4ccc:	55                   	push   %bp
    4ccd:	8b ec                	mov    %sp,%bp
    4ccf:	83 ec 06             	sub    $0x6,%sp
    4cd2:	8b 76 04             	mov    0x4(%bp),%si
    4cd5:	8b 44 60             	mov    0x60(%si),%ax
    4cd8:	89 46 fc             	mov    %ax,-0x4(%bp)
    4cdb:	8b 76 06             	mov    0x6(%bp),%si
    4cde:	8b 44 60             	mov    0x60(%si),%ax
    4ce1:	89 46 fe             	mov    %ax,-0x2(%bp)
    4ce4:	81 7e fc 01 00       	cmpw   $0x1,-0x4(%bp)
    4ce9:	75 0c                	jne    0x4cf7
    4ceb:	8b 76 04             	mov    0x4(%bp),%si
    4cee:	8b 04                	mov    (%si),%ax
    4cf0:	83 f8 5b             	cmp    $0x5b,%ax
    4cf3:	7c 02                	jl     0x4cf7
    4cf5:	eb 11                	jmp    0x4d08
    4cf7:	81 7e fe 01 00       	cmpw   $0x1,-0x2(%bp)
    4cfc:	75 0c                	jne    0x4d0a
    4cfe:	8b 76 06             	mov    0x6(%bp),%si
    4d01:	8b 04                	mov    (%si),%ax
    4d03:	83 f8 5b             	cmp    $0x5b,%ax
    4d06:	7c 02                	jl     0x4d0a
    4d08:	eb 0e                	jmp    0x4d18
    4d0a:	81 7e fc 05 00       	cmpw   $0x5,-0x4(%bp)
    4d0f:	75 0b                	jne    0x4d1c
    4d11:	81 7e fe 05 00       	cmpw   $0x5,-0x2(%bp)
    4d16:	75 04                	jne    0x4d1c
    4d18:	8b e5                	mov    %bp,%sp
    4d1a:	5d                   	pop    %bp
    4d1b:	c3                   	ret
    4d1c:	8b 76 06             	mov    0x6(%bp),%si
    4d1f:	8b 7e 04             	mov    0x4(%bp),%di
    4d22:	8b 45 04             	mov    0x4(%di),%ax
    4d25:	3b 44 04             	cmp    0x4(%si),%ax
    4d28:	7d 12                	jge    0x4d3c
    4d2a:	8b 46 04             	mov    0x4(%bp),%ax
    4d2d:	89 46 fa             	mov    %ax,-0x6(%bp)
    4d30:	8b 46 06             	mov    0x6(%bp),%ax
    4d33:	89 46 04             	mov    %ax,0x4(%bp)
    4d36:	8b 46 fa             	mov    -0x6(%bp),%ax
    4d39:	89 46 06             	mov    %ax,0x6(%bp)
    4d3c:	ff 76 04             	push   0x4(%bp)
    4d3f:	b8 0f 00             	mov    $0xf,%ax
    4d42:	50                   	push   %ax
    4d43:	50                   	push   %ax
    4d44:	e8 28 bb             	call   0x86f
    4d47:	83 c4 06             	add    $0x6,%sp
    4d4a:	ff 76 06             	push   0x6(%bp)
    4d4d:	8b 76 06             	mov    0x6(%bp),%si
    4d50:	8b 44 04             	mov    0x4(%si),%ax
    4d53:	8b 76 04             	mov    0x4(%bp),%si
    4d56:	2b 44 04             	sub    0x4(%si),%ax
    4d59:	83 c0 0f             	add    $0xf,%ax
    4d5c:	50                   	push   %ax
    4d5d:	8b 76 06             	mov    0x6(%bp),%si
    4d60:	8b 44 02             	mov    0x2(%si),%ax
    4d63:	8b 76 04             	mov    0x4(%bp),%si
    4d66:	2b 44 02             	sub    0x2(%si),%ax
    4d69:	83 c0 0f             	add    $0xf,%ax
    4d6c:	50                   	push   %ax
    4d6d:	e8 3f bb             	call   0x8af
    4d70:	83 c4 06             	add    $0x6,%sp
    4d73:	0b c0                	or     %ax,%ax
    4d75:	74 54                	je     0x4dcb
    4d77:	81 3e 49 52 c7 00    	cmpw   $0xc7,0x5249
    4d7d:	7d 4c                	jge    0x4dcb
    4d7f:	8b 46 04             	mov    0x4(%bp),%ax
    4d82:	8d 36 29 4f          	lea    0x4f29,%si
    4d86:	8b 16 49 52          	mov    0x5249,%dx
    4d8a:	d1 e2                	shl    %dx
    4d8c:	03 f2                	add    %dx,%si
    4d8e:	89 04                	mov    %ax,(%si)
    4d90:	8b 46 06             	mov    0x6(%bp),%ax
    4d93:	8d 36 b9 50          	lea    0x50b9,%si
    4d97:	8b 16 49 52          	mov    0x5249,%dx
    4d9b:	ff 06 49 52          	incw   0x5249
    4d9f:	d1 e2                	shl    %dx
    4da1:	03 f2                	add    %dx,%si
    4da3:	89 04                	mov    %ax,(%si)
    4da5:	8b 46 06             	mov    0x6(%bp),%ax
    4da8:	8d 36 29 4f          	lea    0x4f29,%si
    4dac:	8b 16 49 52          	mov    0x5249,%dx
    4db0:	d1 e2                	shl    %dx
    4db2:	03 f2                	add    %dx,%si
    4db4:	89 04                	mov    %ax,(%si)
    4db6:	8b 46 04             	mov    0x4(%bp),%ax
    4db9:	8d 36 b9 50          	lea    0x50b9,%si
    4dbd:	8b 16 49 52          	mov    0x5249,%dx
    4dc1:	ff 06 49 52          	incw   0x5249
    4dc5:	d1 e2                	shl    %dx
    4dc7:	03 f2                	add    %dx,%si
    4dc9:	89 04                	mov    %ax,(%si)
    4dcb:	e8 6e ba             	call   0x83c
    4dce:	8b e5                	mov    %bp,%sp
    4dd0:	5d                   	pop    %bp
    4dd1:	c3                   	ret
    4dd2:	55                   	push   %bp
    4dd3:	8b ec                	mov    %sp,%bp
    4dd5:	83 ec 0a             	sub    $0xa,%sp
    4dd8:	b8 00 00             	mov    $0x0,%ax
    4ddb:	89 46 fe             	mov    %ax,-0x2(%bp)
    4dde:	8b 46 04             	mov    0x4(%bp),%ax
    4de1:	89 46 f6             	mov    %ax,-0xa(%bp)
    4de4:	ff 76 f6             	push   -0xa(%bp)
    4de7:	b8 0f 00             	mov    $0xf,%ax
    4dea:	50                   	push   %ax
    4deb:	50                   	push   %ax
    4dec:	e8 80 ba             	call   0x86f
    4def:	83 c4 06             	add    $0x6,%sp
    4df2:	8b 76 f6             	mov    -0xa(%bp),%si
    4df5:	8b 44 02             	mov    0x2(%si),%ax
    4df8:	8b 76 f6             	mov    -0xa(%bp),%si
    4dfb:	03 44 24             	add    0x24(%si),%ax
    4dfe:	83 e8 01             	sub    $0x1,%ax
    4e01:	89 46 fa             	mov    %ax,-0x6(%bp)
    4e04:	8b 76 f6             	mov    -0xa(%bp),%si
    4e07:	8b 44 02             	mov    0x2(%si),%ax
    4e0a:	89 46 f8             	mov    %ax,-0x8(%bp)
    4e0d:	8b 46 f8             	mov    -0x8(%bp),%ax
    4e10:	3b 46 fa             	cmp    -0x6(%bp),%ax
    4e13:	7f 57                	jg     0x4e6c
    4e15:	8d 36 69 52          	lea    0x5269,%si
    4e19:	03 76 f8             	add    -0x8(%bp),%si
    4e1c:	8a 04                	mov    (%si),%al
    4e1e:	81 e0 ff 00          	and    $0xff,%ax
    4e22:	8b 76 f6             	mov    -0xa(%bp),%si
    4e25:	2b 44 04             	sub    0x4(%si),%ax
    4e28:	83 c0 0f             	add    $0xf,%ax
    4e2b:	89 46 fc             	mov    %ax,-0x4(%bp)
    4e2e:	83 f8 0f             	cmp    $0xf,%ax
    4e31:	7e 08                	jle    0x4e3b
    4e33:	b8 01 00             	mov    $0x1,%ax
    4e36:	89 46 fe             	mov    %ax,-0x2(%bp)
    4e39:	eb 31                	jmp    0x4e6c
    4e3b:	81 7e fc 00 00       	cmpw   $0x0,-0x4(%bp)
    4e40:	7d 02                	jge    0x4e44
    4e42:	eb 23                	jmp    0x4e67
    4e44:	b8 80 00             	mov    $0x80,%ax
    4e47:	50                   	push   %ax
    4e48:	ff 76 fc             	push   -0x4(%bp)
    4e4b:	8b 46 f8             	mov    -0x8(%bp),%ax
    4e4e:	8b 76 f6             	mov    -0xa(%bp),%si
    4e51:	2b 44 02             	sub    0x2(%si),%ax
    4e54:	83 c0 0f             	add    $0xf,%ax
    4e57:	50                   	push   %ax
    4e58:	e8 d2 ba             	call   0x92d
    4e5b:	83 c4 06             	add    $0x6,%sp
    4e5e:	89 46 fe             	mov    %ax,-0x2(%bp)
    4e61:	0b c0                	or     %ax,%ax
    4e63:	74 02                	je     0x4e67
    4e65:	eb 05                	jmp    0x4e6c
    4e67:	ff 46 f8             	incw   -0x8(%bp)
    4e6a:	eb a1                	jmp    0x4e0d
    4e6c:	e8 cd b9             	call   0x83c
    4e6f:	8b 46 fe             	mov    -0x2(%bp),%ax
    4e72:	0b c0                	or     %ax,%ax
    4e74:	74 2e                	je     0x4ea4
    4e76:	81 3e 49 52 c8 00    	cmpw   $0xc8,0x5249
    4e7c:	7d 26                	jge    0x4ea4
    4e7e:	8b 46 f6             	mov    -0xa(%bp),%ax
    4e81:	8d 36 29 4f          	lea    0x4f29,%si
    4e85:	8b 16 49 52          	mov    0x5249,%dx
    4e89:	d1 e2                	shl    %dx
    4e8b:	03 f2                	add    %dx,%si
    4e8d:	89 04                	mov    %ax,(%si)
    4e8f:	b8 00 00             	mov    $0x0,%ax
    4e92:	8d 36 b9 50          	lea    0x50b9,%si
    4e96:	8b 16 49 52          	mov    0x5249,%dx
    4e9a:	ff 06 49 52          	incw   0x5249
    4e9e:	d1 e2                	shl    %dx
    4ea0:	03 f2                	add    %dx,%si
    4ea2:	89 04                	mov    %ax,(%si)
    4ea4:	8b e5                	mov    %bp,%sp
    4ea6:	5d                   	pop    %bp
    4ea7:	c3                   	ret
    4ea8:	55                   	push   %bp
    4ea9:	8b ec                	mov    %sp,%bp
    4eab:	83 ec 08             	sub    $0x8,%sp
    4eae:	8b 46 04             	mov    0x4(%bp),%ax
    4eb1:	89 46 f8             	mov    %ax,-0x8(%bp)
    4eb4:	8b 46 06             	mov    0x6(%bp),%ax
    4eb7:	0b c0                	or     %ax,%ax
    4eb9:	74 08                	je     0x4ec3
    4ebb:	8b 76 06             	mov    0x6(%bp),%si
    4ebe:	8b 44 60             	mov    0x60(%si),%ax
    4ec1:	eb 03                	jmp    0x4ec6
    4ec3:	b8 00 00             	mov    $0x0,%ax
    4ec6:	89 46 fc             	mov    %ax,-0x4(%bp)
    4ec9:	81 7e fc 08 00       	cmpw   $0x8,-0x4(%bp)
    4ece:	75 02                	jne    0x4ed2
    4ed0:	eb 07                	jmp    0x4ed9
    4ed2:	81 7e fc 07 00       	cmpw   $0x7,-0x4(%bp)
    4ed7:	75 0f                	jne    0x4ee8
    4ed9:	8b 76 f8             	mov    -0x8(%bp),%si
    4edc:	8b 44 60             	mov    0x60(%si),%ax
    4edf:	83 f8 01             	cmp    $0x1,%ax
    4ee2:	74 04                	je     0x4ee8
    4ee4:	8b e5                	mov    %bp,%sp
    4ee6:	5d                   	pop    %bp
    4ee7:	c3                   	ret
    4ee8:	8b 76 f8             	mov    -0x8(%bp),%si
    4eeb:	8b 44 60             	mov    0x60(%si),%ax
    4eee:	50                   	push   %ax
    4eef:	e9 32 03             	jmp    0x5224
    4ef2:	ff 76 f8             	push   -0x8(%bp)
    4ef5:	e8 ec f5             	call   0x44e4
    4ef8:	83 c4 02             	add    $0x2,%sp
    4efb:	b8 ff ff             	mov    $0xffff,%ax
    4efe:	8b 76 f8             	mov    -0x8(%bp),%si
    4f01:	89 44 1e             	mov    %ax,0x1e(%si)
    4f04:	8b 46 06             	mov    0x6(%bp),%ax
    4f07:	0b c0                	or     %ax,%ax
    4f09:	74 02                	je     0x4f0d
    4f0b:	eb 09                	jmp    0x4f16
    4f0d:	ff 76 f8             	push   -0x8(%bp)
    4f10:	e8 52 05             	call   0x5465
    4f13:	83 c4 02             	add    $0x2,%sp
    4f16:	ff 76 f8             	push   -0x8(%bp)
    4f19:	e8 82 d9             	call   0x289e
    4f1c:	83 c4 02             	add    $0x2,%sp
    4f1f:	8b e5                	mov    %bp,%sp
    4f21:	5d                   	pop    %bp
    4f22:	c3                   	ret
    4f23:	b8 01 00             	mov    $0x1,%ax
    4f26:	8b 76 f8             	mov    -0x8(%bp),%si
    4f29:	89 44 1e             	mov    %ax,0x1e(%si)
    4f2c:	8b e5                	mov    %bp,%sp
    4f2e:	5d                   	pop    %bp
    4f2f:	c3                   	ret
    4f30:	8b 46 06             	mov    0x6(%bp),%ax
    4f33:	0b c0                	or     %ax,%ax
    4f35:	74 02                	je     0x4f39
    4f37:	eb 02                	jmp    0x4f3b
    4f39:	eb 0a                	jmp    0x4f45
    4f3b:	8b 76 f8             	mov    -0x8(%bp),%si
    4f3e:	8b 44 0c             	mov    0xc(%si),%ax
    4f41:	0b c0                	or     %ax,%ax
    4f43:	74 02                	je     0x4f47
    4f45:	eb 20                	jmp    0x4f67
    4f47:	8b 76 f8             	mov    -0x8(%bp),%si
    4f4a:	8b 44 0c             	mov    0xc(%si),%ax
    4f4d:	0b c0                	or     %ax,%ax
    4f4f:	74 02                	je     0x4f53
    4f51:	eb 26                	jmp    0x4f79
    4f53:	b8 c8 00             	mov    $0xc8,%ax
    4f56:	50                   	push   %ax
    4f57:	ff 76 06             	push   0x6(%bp)
    4f5a:	ff 76 fc             	push   -0x4(%bp)
    4f5d:	e8 ef 02             	call   0x524f
    4f60:	83 c4 06             	add    $0x6,%sp
    4f63:	0b c0                	or     %ax,%ax
    4f65:	74 12                	je     0x4f79
    4f67:	b8 01 00             	mov    $0x1,%ax
    4f6a:	8b 76 f8             	mov    -0x8(%bp),%si
    4f6d:	89 44 1e             	mov    %ax,0x1e(%si)
    4f70:	ff 76 f8             	push   -0x8(%bp)
    4f73:	e8 28 d9             	call   0x289e
    4f76:	83 c4 02             	add    $0x2,%sp
    4f79:	8b e5                	mov    %bp,%sp
    4f7b:	5d                   	pop    %bp
    4f7c:	c3                   	ret
    4f7d:	8b 76 f8             	mov    -0x8(%bp),%si
    4f80:	8b 04                	mov    (%si),%ax
    4f82:	83 f8 06             	cmp    $0x6,%ax
    4f85:	74 04                	je     0x4f8b
    4f87:	8b e5                	mov    %bp,%sp
    4f89:	5d                   	pop    %bp
    4f8a:	c3                   	ret
    4f8b:	81 7e fc 05 00       	cmpw   $0x5,-0x4(%bp)
    4f90:	75 04                	jne    0x4f96
    4f92:	8b e5                	mov    %bp,%sp
    4f94:	5d                   	pop    %bp
    4f95:	c3                   	ret
    4f96:	81 7e fc 03 00       	cmpw   $0x3,-0x4(%bp)
    4f9b:	75 22                	jne    0x4fbf
    4f9d:	bb 0a 00             	mov    $0xa,%bx
    4fa0:	8b 06 e7 25          	mov    0x25e7,%ax
    4fa4:	83 c0 01             	add    $0x1,%ax
    4fa7:	f7 eb                	imul   %bx
    4fa9:	ba 0a 00             	mov    $0xa,%dx
    4fac:	8b 76 f8             	mov    -0x8(%bp),%si
    4faf:	8b 5c 1a             	mov    0x1a(%si),%bx
    4fb2:	03 da                	add    %dx,%bx
    4fb4:	89 5c 1a             	mov    %bx,0x1a(%si)
    4fb7:	3b d8                	cmp    %ax,%bx
    4fb9:	7d 04                	jge    0x4fbf
    4fbb:	8b e5                	mov    %bp,%sp
    4fbd:	5d                   	pop    %bp
    4fbe:	c3                   	ret
    4fbf:	b8 5b 00             	mov    $0x5b,%ax
    4fc2:	8b 76 f8             	mov    -0x8(%bp),%si
    4fc5:	89 04                	mov    %ax,(%si)
    4fc7:	ff 76 f8             	push   -0x8(%bp)
    4fca:	e8 17 f5             	call   0x44e4
    4fcd:	83 c4 02             	add    $0x2,%sp
    4fd0:	e8 d0 e9             	call   0x39a3
    4fd3:	ff 76 f8             	push   -0x8(%bp)
    4fd6:	e8 bf 07             	call   0x5798
    4fd9:	83 c4 02             	add    $0x2,%sp
    4fdc:	e8 a2 e9             	call   0x3981
    4fdf:	8b 76 f8             	mov    -0x8(%bp),%si
    4fe2:	8b 44 0c             	mov    0xc(%si),%ax
    4fe5:	83 f8 02             	cmp    $0x2,%ax
    4fe8:	75 05                	jne    0x4fef
    4fea:	b8 c8 00             	mov    $0xc8,%ax
    4fed:	eb 03                	jmp    0x4ff2
    4fef:	b8 64 00             	mov    $0x64,%ax
    4ff2:	50                   	push   %ax
    4ff3:	ff 76 f8             	push   -0x8(%bp)
    4ff6:	e8 b9 02             	call   0x52b2
    4ff9:	83 c4 04             	add    $0x4,%sp
    4ffc:	8d 36 d9 25          	lea    0x25d9,%si
    5000:	8b 7e f8             	mov    -0x8(%bp),%di
    5003:	8b 45 2a             	mov    0x2a(%di),%ax
    5006:	83 e8 01             	sub    $0x1,%ax
    5009:	d1 e0                	shl    %ax
    500b:	03 f0                	add    %ax,%si
    500d:	ff 0c                	decw   (%si)
    500f:	8b 04                	mov    (%si),%ax
    5011:	0b c0                	or     %ax,%ax
    5013:	74 02                	je     0x5017
    5015:	eb 0c                	jmp    0x5023
    5017:	8b 76 f8             	mov    -0x8(%bp),%si
    501a:	ff 74 2a             	push   0x2a(%si)
    501d:	e8 58 0a             	call   0x5a78
    5020:	83 c4 02             	add    $0x2,%sp
    5023:	8b e5                	mov    %bp,%sp
    5025:	5d                   	pop    %bp
    5026:	c3                   	ret
    5027:	8b 76 f8             	mov    -0x8(%bp),%si
    502a:	8b 04                	mov    (%si),%ax
    502c:	89 46 fa             	mov    %ax,-0x6(%bp)
    502f:	83 f8 04             	cmp    $0x4,%ax
    5032:	75 02                	jne    0x5036
    5034:	eb 07                	jmp    0x503d
    5036:	81 7e fa 5d 00       	cmpw   $0x5d,-0x6(%bp)
    503b:	75 04                	jne    0x5041
    503d:	8b e5                	mov    %bp,%sp
    503f:	5d                   	pop    %bp
    5040:	c3                   	ret
    5041:	8d 36 bc 48          	lea    0x48bc,%si
    5045:	8b 7e f8             	mov    -0x8(%bp),%di
    5048:	8b 45 38             	mov    0x38(%di),%ax
    504b:	d1 e0                	shl    %ax
    504d:	03 f0                	add    %ax,%si
    504f:	8b 04                	mov    (%si),%ax
    5051:	83 f8 01             	cmp    $0x1,%ax
    5054:	75 04                	jne    0x505a
    5056:	8b e5                	mov    %bp,%sp
    5058:	5d                   	pop    %bp
    5059:	c3                   	ret
    505a:	81 7e fc 08 00       	cmpw   $0x8,-0x4(%bp)
    505f:	75 0e                	jne    0x506f
    5061:	8b 76 f8             	mov    -0x8(%bp),%si
    5064:	8b 44 64             	mov    0x64(%si),%ax
    5067:	0b c0                	or     %ax,%ax
    5069:	74 04                	je     0x506f
    506b:	8b e5                	mov    %bp,%sp
    506d:	5d                   	pop    %bp
    506e:	c3                   	ret
    506f:	8b 46 06             	mov    0x6(%bp),%ax
    5072:	0b c0                	or     %ax,%ax
    5074:	74 02                	je     0x5078
    5076:	eb 53                	jmp    0x50cb
    5078:	81 7e fa 05 00       	cmpw   $0x5,-0x6(%bp)
    507d:	75 1d                	jne    0x509c
    507f:	ff 76 f8             	push   -0x8(%bp)
    5082:	e8 19 d8             	call   0x289e
    5085:	83 c4 02             	add    $0x2,%sp
    5088:	ff 76 f8             	push   -0x8(%bp)
    508b:	e8 56 f4             	call   0x44e4
    508e:	83 c4 02             	add    $0x2,%sp
    5091:	ff 76 f8             	push   -0x8(%bp)
    5094:	e8 ce 03             	call   0x5465
    5097:	83 c4 02             	add    $0x2,%sp
    509a:	eb 22                	jmp    0x50be
    509c:	81 7e fa 5b 00       	cmpw   $0x5b,-0x6(%bp)
    50a1:	7d 1b                	jge    0x50be
    50a3:	ff 76 f8             	push   -0x8(%bp)
    50a6:	e8 b0 02             	call   0x5359
    50a9:	83 c4 02             	add    $0x2,%sp
    50ac:	ff 76 f8             	push   -0x8(%bp)
    50af:	e8 32 f4             	call   0x44e4
    50b2:	83 c4 02             	add    $0x2,%sp
    50b5:	ff 76 f8             	push   -0x8(%bp)
    50b8:	e8 aa 03             	call   0x5465
    50bb:	83 c4 02             	add    $0x2,%sp
    50be:	ff 76 f8             	push   -0x8(%bp)
    50c1:	e8 e3 d0             	call   0x21a7
    50c4:	83 c4 02             	add    $0x2,%sp
    50c7:	8b e5                	mov    %bp,%sp
    50c9:	5d                   	pop    %bp
    50ca:	c3                   	ret
    50cb:	81 7e fa 05 00       	cmpw   $0x5,-0x6(%bp)
    50d0:	75 02                	jne    0x50d4
    50d2:	eb 07                	jmp    0x50db
    50d4:	81 7e fa 5b 00       	cmpw   $0x5b,-0x6(%bp)
    50d9:	7c 04                	jl     0x50df
    50db:	8b e5                	mov    %bp,%sp
    50dd:	5d                   	pop    %bp
    50de:	c3                   	ret
    50df:	81 7e fc 03 00       	cmpw   $0x3,-0x4(%bp)
    50e4:	75 03                	jne    0x50e9
    50e6:	e9 7f 00             	jmp    0x5168
    50e9:	ff 76 f8             	push   -0x8(%bp)
    50ec:	e8 f5 f3             	call   0x44e4
    50ef:	83 c4 02             	add    $0x2,%sp
    50f2:	81 7e fc 01 00       	cmpw   $0x1,-0x4(%bp)
    50f7:	75 6f                	jne    0x5168
    50f9:	8b 76 f8             	mov    -0x8(%bp),%si
    50fc:	8b 44 06             	mov    0x6(%si),%ax
    50ff:	8b 76 06             	mov    0x6(%bp),%si
    5102:	03 44 06             	add    0x6(%si),%ax
    5105:	ba 01 00             	mov    $0x1,%dx
    5108:	8b ca                	mov    %dx,%cx
    510a:	d3 f8                	sar    %cl,%ax
    510c:	8b 16 65 52          	mov    0x5265,%dx
    5110:	f7 da                	neg    %dx
    5112:	89 16 65 52          	mov    %dx,0x5265
    5116:	03 c2                	add    %dx,%ax
    5118:	8d 36 4b 52          	lea    0x524b,%si
    511c:	8b 16 63 52          	mov    0x5263,%dx
    5120:	d1 e2                	shl    %dx
    5122:	03 f2                	add    %dx,%si
    5124:	89 04                	mov    %ax,(%si)
    5126:	8b 76 f8             	mov    -0x8(%bp),%si
    5129:	8b 44 08             	mov    0x8(%si),%ax
    512c:	8b 76 06             	mov    0x6(%bp),%si
    512f:	03 44 08             	add    0x8(%si),%ax
    5132:	ba 01 00             	mov    $0x1,%dx
    5135:	8b ca                	mov    %dx,%cx
    5137:	d3 f8                	sar    %cl,%ax
    5139:	8b 16 67 52          	mov    0x5267,%dx
    513d:	f7 da                	neg    %dx
    513f:	89 16 67 52          	mov    %dx,0x5267
    5143:	03 c2                	add    %dx,%ax
    5145:	8d 36 53 52          	lea    0x5253,%si
    5149:	8b 16 63 52          	mov    0x5263,%dx
    514d:	d1 e2                	shl    %dx
    514f:	03 f2                	add    %dx,%si
    5151:	89 04                	mov    %ax,(%si)
    5153:	8b 46 f8             	mov    -0x8(%bp),%ax
    5156:	8d 36 5b 52          	lea    0x525b,%si
    515a:	8b 16 63 52          	mov    0x5263,%dx
    515e:	ff 06 63 52          	incw   0x5263
    5162:	d1 e2                	shl    %dx
    5164:	03 f2                	add    %dx,%si
    5166:	89 04                	mov    %ax,(%si)
    5168:	ff 76 f8             	push   -0x8(%bp)
    516b:	e8 d1 d0             	call   0x223f
    516e:	83 c4 02             	add    $0x2,%sp
    5171:	ff 76 f8             	push   -0x8(%bp)
    5174:	e8 e2 01             	call   0x5359
    5177:	83 c4 02             	add    $0x2,%sp
    517a:	8b e5                	mov    %bp,%sp
    517c:	5d                   	pop    %bp
    517d:	c3                   	ret
    517e:	b8 19 00             	mov    $0x19,%ax
    5181:	50                   	push   %ax
    5182:	ff 76 06             	push   0x6(%bp)
    5185:	ff 76 fc             	push   -0x4(%bp)
    5188:	e8 c4 00             	call   0x524f
    518b:	83 c4 06             	add    $0x6,%sp
    518e:	0b c0                	or     %ax,%ax
    5190:	74 05                	je     0x5197
    5192:	b8 ff ff             	mov    $0xffff,%ax
    5195:	eb 03                	jmp    0x519a
    5197:	b8 fe ff             	mov    $0xfffe,%ax
    519a:	8b 76 f8             	mov    -0x8(%bp),%si
    519d:	89 44 1e             	mov    %ax,0x1e(%si)
    51a0:	8b e5                	mov    %bp,%sp
    51a2:	5d                   	pop    %bp
    51a3:	c3                   	ret
    51a4:	81 7e fc 07 00       	cmpw   $0x7,-0x4(%bp)
    51a9:	74 40                	je     0x51eb
    51ab:	81 7e fc 08 00       	cmpw   $0x8,-0x4(%bp)
    51b0:	74 39                	je     0x51eb
    51b2:	8b 76 f8             	mov    -0x8(%bp),%si
    51b5:	8b 04                	mov    (%si),%ax
    51b7:	83 f8 01             	cmp    $0x1,%ax
    51ba:	75 2f                	jne    0x51eb
    51bc:	b8 00 00             	mov    $0x0,%ax
    51bf:	89 46 fe             	mov    %ax,-0x2(%bp)
    51c2:	81 7e fe 08 00       	cmpw   $0x8,-0x2(%bp)
    51c7:	7d 11                	jge    0x51da
    51c9:	ff 76 fe             	push   -0x2(%bp)
    51cc:	ff 76 f8             	push   -0x8(%bp)
    51cf:	e8 3e f7             	call   0x4910
    51d2:	83 c4 04             	add    $0x4,%sp
    51d5:	ff 46 fe             	incw   -0x2(%bp)
    51d8:	eb e8                	jmp    0x51c2
    51da:	b8 ff ff             	mov    $0xffff,%ax
    51dd:	8b 76 f8             	mov    -0x8(%bp),%si
    51e0:	89 44 1e             	mov    %ax,0x1e(%si)
    51e3:	b8 5b 00             	mov    $0x5b,%ax
    51e6:	8b 76 f8             	mov    -0x8(%bp),%si
    51e9:	89 04                	mov    %ax,(%si)
    51eb:	8b e5                	mov    %bp,%sp
    51ed:	5d                   	pop    %bp
    51ee:	c3                   	ret
    51ef:	8b 76 f8             	mov    -0x8(%bp),%si
    51f2:	8b 04                	mov    (%si),%ax
    51f4:	83 f8 06             	cmp    $0x6,%ax
    51f7:	74 04                	je     0x51fd
    51f9:	8b e5                	mov    %bp,%sp
    51fb:	5d                   	pop    %bp
    51fc:	c3                   	ret
    51fd:	81 7e fc 05 00       	cmpw   $0x5,-0x4(%bp)
    5202:	75 04                	jne    0x5208
    5204:	8b e5                	mov    %bp,%sp
    5206:	5d                   	pop    %bp
    5207:	c3                   	ret
    5208:	b8 c8 00             	mov    $0xc8,%ax
    520b:	50                   	push   %ax
    520c:	ff 76 06             	push   0x6(%bp)
    520f:	ff 76 fc             	push   -0x4(%bp)
    5212:	e8 3a 00             	call   0x524f
    5215:	83 c4 06             	add    $0x6,%sp
    5218:	b8 5b 00             	mov    $0x5b,%ax
    521b:	8b 76 f8             	mov    -0x8(%bp),%si
    521e:	89 04                	mov    %ax,(%si)
    5220:	8b e5                	mov    %bp,%sp
    5222:	5d                   	pop    %bp
    5223:	c3                   	ret
    5224:	e8 ad 46             	call   0x98d4
    5227:	08 00                	or     %al,(%bx,%si)
    5229:	09 00                	or     %ax,(%bx,%si)
    522b:	07                   	pop    %es
    522c:	00 08                	add    %cl,(%bx,%si)
    522e:	00 01                	add    %al,(%bx,%di)
    5230:	00 04                	add    %al,(%si)
    5232:	00 05                	add    %al,(%di)
    5234:	00 03                	add    %al,(%bp,%di)
    5236:	00 02                	add    %al,(%bp,%si)
    5238:	00 4b 53             	add    %cl,0x53(%bp,%di)
    523b:	ef                   	out    %ax,(%dx)
    523c:	52                   	push   %dx
    523d:	a4                   	movsb  %ds:(%si),%es:(%di)
    523e:	52                   	push   %dx
    523f:	7e 52                	jle    0x5293
    5241:	27                   	daa
    5242:	51                   	push   %cx
    5243:	7d 50                	jge    0x5295
    5245:	30 50 23             	xor    %dl,0x23(%bx,%si)
    5248:	50                   	push   %ax
    5249:	f2 4f                	repnz dec %di
    524b:	8b e5                	mov    %bp,%sp
    524d:	5d                   	pop    %bp
    524e:	c3                   	ret
    524f:	55                   	push   %bp
    5250:	8b ec                	mov    %sp,%bp
    5252:	81 7e 04 03 00       	cmpw   $0x3,0x4(%bp)
    5257:	75 02                	jne    0x525b
    5259:	eb 07                	jmp    0x5262
    525b:	81 7e 04 02 00       	cmpw   $0x2,0x4(%bp)
    5260:	75 02                	jne    0x5264
    5262:	eb 34                	jmp    0x5298
    5264:	81 7e 04 01 00       	cmpw   $0x1,0x4(%bp)
    5269:	75 40                	jne    0x52ab
    526b:	8b 76 06             	mov    0x6(%bp),%si
    526e:	8b 04                	mov    (%si),%ax
    5270:	83 f8 01             	cmp    $0x1,%ax
    5273:	75 02                	jne    0x5277
    5275:	eb 15                	jmp    0x528c
    5277:	8b 76 06             	mov    0x6(%bp),%si
    527a:	8b 04                	mov    (%si),%ax
    527c:	83 f8 05             	cmp    $0x5,%ax
    527f:	75 2a                	jne    0x52ab
    5281:	8b 76 06             	mov    0x6(%bp),%si
    5284:	8b 44 1a             	mov    0x1a(%si),%ax
    5287:	83 f8 0a             	cmp    $0xa,%ax
    528a:	75 1f                	jne    0x52ab
    528c:	8b 76 06             	mov    0x6(%bp),%si
    528f:	8b 44 64             	mov    0x64(%si),%ax
    5292:	0b c0                	or     %ax,%ax
    5294:	74 02                	je     0x5298
    5296:	eb 13                	jmp    0x52ab
    5298:	ff 76 08             	push   0x8(%bp)
    529b:	ff 76 06             	push   0x6(%bp)
    529e:	e8 11 00             	call   0x52b2
    52a1:	83 c4 04             	add    $0x4,%sp
    52a4:	b8 01 00             	mov    $0x1,%ax
    52a7:	8b e5                	mov    %bp,%sp
    52a9:	5d                   	pop    %bp
    52aa:	c3                   	ret
    52ab:	b8 00 00             	mov    $0x0,%ax
    52ae:	8b e5                	mov    %bp,%sp
    52b0:	5d                   	pop    %bp
    52b1:	c3                   	ret
    52b2:	55                   	push   %bp
    52b3:	8b ec                	mov    %sp,%bp
    52b5:	81 3e ad 25 01 00    	cmpw   $0x1,0x25ad
    52bb:	74 0a                	je     0x52c7
    52bd:	81 3e ad 25 03 00    	cmpw   $0x3,0x25ad
    52c3:	74 02                	je     0x52c7
    52c5:	eb 0f                	jmp    0x52d6
    52c7:	8b 36 cb 07          	mov    0x7cb,%si
    52cb:	8a 04                	mov    (%si),%al
    52cd:	81 e0 ff 00          	and    $0xff,%ax
    52d1:	83 f8 01             	cmp    $0x1,%ax
    52d4:	75 41                	jne    0x5317
    52d6:	8b 76 04             	mov    0x4(%bp),%si
    52d9:	8b 44 2a             	mov    0x2a(%si),%ax
    52dc:	83 f8 01             	cmp    $0x1,%ax
    52df:	75 14                	jne    0x52f5
    52e1:	8b 46 06             	mov    0x6(%bp),%ax
    52e4:	8b 36 2c 46          	mov    0x462c,%si
    52e8:	83 c6 00             	add    $0x0,%si
    52eb:	8b 54 16             	mov    0x16(%si),%dx
    52ee:	2b d0                	sub    %ax,%dx
    52f0:	89 54 16             	mov    %dx,0x16(%si)
    52f3:	eb 12                	jmp    0x5307
    52f5:	8b 46 06             	mov    0x6(%bp),%ax
    52f8:	8b 36 2c 46          	mov    0x462c,%si
    52fc:	83 c6 00             	add    $0x0,%si
    52ff:	8b 54 16             	mov    0x16(%si),%dx
    5302:	03 d0                	add    %ax,%dx
    5304:	89 54 16             	mov    %dx,0x16(%si)
    5307:	8b 06 2c 46          	mov    0x462c,%ax
    530b:	83 c0 00             	add    $0x0,%ax
    530e:	50                   	push   %ax
    530f:	e8 5e 00             	call   0x5370
    5312:	83 c4 02             	add    $0x2,%sp
    5315:	eb 3e                	jmp    0x5355
    5317:	8b 46 06             	mov    0x6(%bp),%ax
    531a:	50                   	push   %ax
    531b:	8b 36 2c 46          	mov    0x462c,%si
    531f:	bb 6a 00             	mov    $0x6a,%bx
    5322:	b8 02 00             	mov    $0x2,%ax
    5325:	8b 7e 04             	mov    0x4(%bp),%di
    5328:	2b 45 2a             	sub    0x2a(%di),%ax
    532b:	f7 eb                	imul   %bx
    532d:	03 f0                	add    %ax,%si
    532f:	58                   	pop    %ax
    5330:	8b 54 16             	mov    0x16(%si),%dx
    5333:	03 d0                	add    %ax,%dx
    5335:	89 54 16             	mov    %dx,0x16(%si)
    5338:	8b 06 2c 46          	mov    0x462c,%ax
    533c:	50                   	push   %ax
    533d:	bb 6a 00             	mov    $0x6a,%bx
    5340:	b8 02 00             	mov    $0x2,%ax
    5343:	8b 76 04             	mov    0x4(%bp),%si
    5346:	2b 44 2a             	sub    0x2a(%si),%ax
    5349:	f7 eb                	imul   %bx
    534b:	5e                   	pop    %si
    534c:	03 f0                	add    %ax,%si
    534e:	56                   	push   %si
    534f:	e8 1e 00             	call   0x5370
    5352:	83 c4 02             	add    $0x2,%sp
    5355:	8b e5                	mov    %bp,%sp
    5357:	5d                   	pop    %bp
    5358:	c3                   	ret
    5359:	55                   	push   %bp
    535a:	8b ec                	mov    %sp,%bp
    535c:	83 ec 02             	sub    $0x2,%sp
    535f:	b8 32 00             	mov    $0x32,%ax
    5362:	50                   	push   %ax
    5363:	ff 76 04             	push   0x4(%bp)
    5366:	e8 49 ff             	call   0x52b2
    5369:	83 c4 04             	add    $0x4,%sp
    536c:	8b e5                	mov    %bp,%sp
    536e:	5d                   	pop    %bp
    536f:	c3                   	ret
    5370:	55                   	push   %bp
    5371:	8b ec                	mov    %sp,%bp
    5373:	b8 18 00             	mov    $0x18,%ax
    5376:	50                   	push   %ax
    5377:	bb 07 00             	mov    $0x7,%bx
    537a:	8b 76 04             	mov    0x4(%bp),%si
    537d:	8b 44 2a             	mov    0x2a(%si),%ax
    5380:	83 e8 01             	sub    $0x1,%ax
    5383:	f7 eb                	imul   %bx
    5385:	83 c0 02             	add    $0x2,%ax
    5388:	50                   	push   %ax
    5389:	e8 ca b0             	call   0x456
    538c:	83 c4 04             	add    $0x4,%sp
    538f:	8b 76 04             	mov    0x4(%bp),%si
    5392:	ff 74 2a             	push   0x2a(%si)
    5395:	e8 d9 b0             	call   0x471
    5398:	83 c4 02             	add    $0x2,%sp
    539b:	b8 06 00             	mov    $0x6,%ax
    539e:	50                   	push   %ax
    539f:	8b 76 04             	mov    0x4(%bp),%si
    53a2:	ff 74 16             	push   0x16(%si)
    53a5:	e8 07 00             	call   0x53af
    53a8:	83 c4 04             	add    $0x4,%sp
    53ab:	8b e5                	mov    %bp,%sp
    53ad:	5d                   	pop    %bp
    53ae:	c3                   	ret
    53af:	55                   	push   %bp
    53b0:	8b ec                	mov    %sp,%bp
    53b2:	83 ec 08             	sub    $0x8,%sp
    53b5:	b8 00 00             	mov    $0x0,%ax
    53b8:	89 46 f8             	mov    %ax,-0x8(%bp)
    53bb:	b0 01                	mov    $0x1,%al
    53bd:	89 46 fe             	mov    %ax,-0x2(%bp)
    53c0:	81 7e 04 00 00       	cmpw   $0x0,0x4(%bp)
    53c5:	7d 15                	jge    0x53dc
    53c7:	8b 46 04             	mov    0x4(%bp),%ax
    53ca:	f7 d8                	neg    %ax
    53cc:	89 46 04             	mov    %ax,0x4(%bp)
    53cf:	b8 2d 00             	mov    $0x2d,%ax
    53d2:	50                   	push   %ax
    53d3:	e8 66 b0             	call   0x43c
    53d6:	83 c4 02             	add    $0x2,%sp
    53d9:	ff 46 f8             	incw   -0x8(%bp)
    53dc:	b8 10 27             	mov    $0x2710,%ax
    53df:	89 46 fc             	mov    %ax,-0x4(%bp)
    53e2:	81 7e fc 01 00       	cmpw   $0x1,-0x4(%bp)
    53e7:	7e 51                	jle    0x543a
    53e9:	8b 46 fc             	mov    -0x4(%bp),%ax
    53ec:	50                   	push   %ax
    53ed:	8b 46 04             	mov    0x4(%bp),%ax
    53f0:	5b                   	pop    %bx
    53f1:	99                   	cwtd
    53f2:	f7 fb                	idiv   %bx
    53f4:	89 46 fa             	mov    %ax,-0x6(%bp)
    53f7:	0b c0                	or     %ax,%ax
    53f9:	74 02                	je     0x53fd
    53fb:	eb 09                	jmp    0x5406
    53fd:	8b 46 fe             	mov    -0x2(%bp),%ax
    5400:	0b c0                	or     %ax,%ax
    5402:	74 02                	je     0x5406
    5404:	eb 16                	jmp    0x541c
    5406:	b8 00 00             	mov    $0x0,%ax
    5409:	89 46 fe             	mov    %ax,-0x2(%bp)
    540c:	8b 46 fa             	mov    -0x6(%bp),%ax
    540f:	83 c0 30             	add    $0x30,%ax
    5412:	50                   	push   %ax
    5413:	e8 26 b0             	call   0x43c
    5416:	83 c4 02             	add    $0x2,%sp
    5419:	ff 46 f8             	incw   -0x8(%bp)
    541c:	8b 46 fc             	mov    -0x4(%bp),%ax
    541f:	50                   	push   %ax
    5420:	8b 46 04             	mov    0x4(%bp),%ax
    5423:	5b                   	pop    %bx
    5424:	99                   	cwtd
    5425:	f7 fb                	idiv   %bx
    5427:	89 56 04             	mov    %dx,0x4(%bp)
    542a:	b8 0a 00             	mov    $0xa,%ax
    542d:	50                   	push   %ax
    542e:	8b 46 fc             	mov    -0x4(%bp),%ax
    5431:	5b                   	pop    %bx
    5432:	99                   	cwtd
    5433:	f7 fb                	idiv   %bx
    5435:	89 46 fc             	mov    %ax,-0x4(%bp)
    5438:	eb a8                	jmp    0x53e2
    543a:	8b 46 04             	mov    0x4(%bp),%ax
    543d:	83 c0 30             	add    $0x30,%ax
    5440:	50                   	push   %ax
    5441:	e8 f8 af             	call   0x43c
    5444:	83 c4 02             	add    $0x2,%sp
    5447:	ff 46 f8             	incw   -0x8(%bp)
    544a:	ff 46 f8             	incw   -0x8(%bp)
    544d:	8b 46 f8             	mov    -0x8(%bp),%ax
    5450:	3b 46 06             	cmp    0x6(%bp),%ax
    5453:	7f 0c                	jg     0x5461
    5455:	b8 20 00             	mov    $0x20,%ax
    5458:	50                   	push   %ax
    5459:	e8 e0 af             	call   0x43c
    545c:	83 c4 02             	add    $0x2,%sp
    545f:	eb e9                	jmp    0x544a
    5461:	8b e5                	mov    %bp,%sp
    5463:	5d                   	pop    %bp
    5464:	c3                   	ret
    5465:	55                   	push   %bp
    5466:	8b ec                	mov    %sp,%bp
    5468:	83 ec 0e             	sub    $0xe,%sp
    546b:	8b 76 04             	mov    0x4(%bp),%si
    546e:	8b 44 02             	mov    0x2(%si),%ax
    5471:	50                   	push   %ax
    5472:	b8 02 00             	mov    $0x2,%ax
    5475:	50                   	push   %ax
    5476:	8b 76 04             	mov    0x4(%bp),%si
    5479:	8b 44 24             	mov    0x24(%si),%ax
    547c:	83 e8 08             	sub    $0x8,%ax
    547f:	5b                   	pop    %bx
    5480:	99                   	cwtd
    5481:	f7 fb                	idiv   %bx
    5483:	5a                   	pop    %dx
    5484:	03 d0                	add    %ax,%dx
    5486:	89 56 f2             	mov    %dx,-0xe(%bp)
    5489:	8b 46 f2             	mov    -0xe(%bp),%ax
    548c:	83 c0 07             	add    $0x7,%ax
    548f:	89 46 f4             	mov    %ax,-0xc(%bp)
    5492:	8b 46 f2             	mov    -0xe(%bp),%ax
    5495:	89 46 f6             	mov    %ax,-0xa(%bp)
    5498:	b8 00 00             	mov    $0x0,%ax
    549b:	89 46 fe             	mov    %ax,-0x2(%bp)
    549e:	8b 46 f6             	mov    -0xa(%bp),%ax
    54a1:	3b 46 f4             	cmp    -0xc(%bp),%ax
    54a4:	7f 69                	jg     0x550f
    54a6:	8d 36 69 52          	lea    0x5269,%si
    54aa:	03 76 f6             	add    -0xa(%bp),%si
    54ad:	8a 04                	mov    (%si),%al
    54af:	81 e0 ff 00          	and    $0xff,%ax
    54b3:	89 46 fa             	mov    %ax,-0x6(%bp)
    54b6:	8d 36 e3 0a          	lea    0xae3,%si
    54ba:	03 76 f6             	add    -0xa(%bp),%si
    54bd:	8a 04                	mov    (%si),%al
    54bf:	81 e0 ff 00          	and    $0xff,%ax
    54c3:	83 e8 14             	sub    $0x14,%ax
    54c6:	89 46 fc             	mov    %ax,-0x4(%bp)
    54c9:	83 f8 14             	cmp    $0x14,%ax
    54cc:	7d 06                	jge    0x54d4
    54ce:	b8 14 00             	mov    $0x14,%ax
    54d1:	89 46 fc             	mov    %ax,-0x4(%bp)
    54d4:	8b 46 fa             	mov    -0x6(%bp),%ax
    54d7:	8d 36 d3 0a          	lea    0xad3,%si
    54db:	8b 56 fe             	mov    -0x2(%bp),%dx
    54de:	d1 e2                	shl    %dx
    54e0:	03 f2                	add    %dx,%si
    54e2:	2b 04                	sub    (%si),%ax
    54e4:	83 c0 01             	add    $0x1,%ax
    54e7:	89 46 f8             	mov    %ax,-0x8(%bp)
    54ea:	3b 46 fc             	cmp    -0x4(%bp),%ax
    54ed:	7f 09                	jg     0x54f8
    54ef:	8b 46 fc             	mov    -0x4(%bp),%ax
    54f2:	83 c0 01             	add    $0x1,%ax
    54f5:	89 46 f8             	mov    %ax,-0x8(%bp)
    54f8:	8b 46 f8             	mov    -0x8(%bp),%ax
    54fb:	83 e8 01             	sub    $0x1,%ax
    54fe:	8d 36 69 52          	lea    0x5269,%si
    5502:	03 76 f6             	add    -0xa(%bp),%si
    5505:	88 04                	mov    %al,(%si)
    5507:	ff 46 f6             	incw   -0xa(%bp)
    550a:	ff 46 fe             	incw   -0x2(%bp)
    550d:	eb 8f                	jmp    0x549e
    550f:	b8 01 00             	mov    $0x1,%ax
    5512:	89 06 28 4b          	mov    %ax,0x4b28
    5516:	8b e5                	mov    %bp,%sp
    5518:	5d                   	pop    %bp
    5519:	c3                   	ret
    551a:	55                   	push   %bp
    551b:	8b ec                	mov    %sp,%bp
    551d:	8b 46 04             	mov    0x4(%bp),%ax
    5520:	3b 46 06             	cmp    0x6(%bp),%ax
    5523:	b8 01 00             	mov    $0x1,%ax
    5526:	74 02                	je     0x552a
    5528:	ff c8                	dec    %ax
    552a:	8b e5                	mov    %bp,%sp
    552c:	5d                   	pop    %bp
    552d:	c3                   	ret
    552e:	55                   	push   %bp
    552f:	8b ec                	mov    %sp,%bp
    5531:	83 ec 18             	sub    $0x18,%sp
    5534:	b8 00 0f             	mov    $0xf00,%ax
    5537:	89 46 e8             	mov    %ax,-0x18(%bp)
    553a:	8d 76 e8             	lea    -0x18(%bp),%si
    553d:	56                   	push   %si
    553e:	8d 76 e8             	lea    -0x18(%bp),%si
    5541:	56                   	push   %si
    5542:	b8 10 00             	mov    $0x10,%ax
    5545:	50                   	push   %ax
    5546:	e8 49 44             	call   0x9992
    5549:	83 c4 06             	add    $0x6,%sp
    554c:	8b 46 e8             	mov    -0x18(%bp),%ax
    554f:	81 e0 ff 00          	and    $0xff,%ax
    5553:	89 06 dd 25          	mov    %ax,0x25dd
    5557:	8b 06 08 46          	mov    0x4608,%ax
    555b:	0b c0                	or     %ax,%ax
    555d:	74 05                	je     0x5564
    555f:	b8 06 00             	mov    $0x6,%ax
    5562:	eb 03                	jmp    0x5567
    5564:	b8 04 00             	mov    $0x4,%ax
    5567:	89 46 e8             	mov    %ax,-0x18(%bp)
    556a:	8d 76 e8             	lea    -0x18(%bp),%si
    556d:	56                   	push   %si
    556e:	8d 76 e8             	lea    -0x18(%bp),%si
    5571:	56                   	push   %si
    5572:	b8 10 00             	mov    $0x10,%ax
    5575:	50                   	push   %ax
    5576:	e8 19 44             	call   0x9992
    5579:	83 c4 06             	add    $0x6,%sp
    557c:	8b 06 0c 46          	mov    0x460c,%ax
    5580:	0b c0                	or     %ax,%ax
    5582:	74 04                	je     0x5588
    5584:	8b e5                	mov    %bp,%sp
    5586:	5d                   	pop    %bp
    5587:	c3                   	ret
    5588:	b8 01 00             	mov    $0x1,%ax
    558b:	89 06 df 25          	mov    %ax,0x25df
    558f:	b0 00                	mov    $0x0,%al
    5591:	50                   	push   %ax
    5592:	50                   	push   %ax
    5593:	b0 05                	mov    $0x5,%al
    5595:	50                   	push   %ax
    5596:	e8 4d ce             	call   0x23e6
    5599:	83 c4 06             	add    $0x6,%sp
    559c:	e8 8e ce             	call   0x242d
    559f:	b8 03 00             	mov    $0x3,%ax
    55a2:	50                   	push   %ax
    55a3:	e8 cb ae             	call   0x471
    55a6:	83 c4 02             	add    $0x2,%sp
    55a9:	b8 08 00             	mov    $0x8,%ax
    55ac:	50                   	push   %ax
    55ad:	b0 0d                	mov    $0xd,%al
    55af:	50                   	push   %ax
    55b0:	e8 a3 ae             	call   0x456
    55b3:	83 c4 04             	add    $0x4,%sp
    55b6:	8d 06 e5 02          	lea    0x2e5,%ax
    55ba:	50                   	push   %ax
    55bb:	e8 c9 af             	call   0x587
    55be:	83 c4 02             	add    $0x2,%sp
    55c1:	b8 0b 00             	mov    $0xb,%ax
    55c4:	50                   	push   %ax
    55c5:	b0 0c                	mov    $0xc,%al
    55c7:	50                   	push   %ax
    55c8:	e8 8b ae             	call   0x456
    55cb:	83 c4 04             	add    $0x4,%sp
    55ce:	b8 01 00             	mov    $0x1,%ax
    55d1:	50                   	push   %ax
    55d2:	e8 9c ae             	call   0x471
    55d5:	83 c4 02             	add    $0x2,%sp
    55d8:	8d 06 f3 02          	lea    0x2f3,%ax
    55dc:	50                   	push   %ax
    55dd:	e8 a7 af             	call   0x587
    55e0:	83 c4 02             	add    $0x2,%sp
    55e3:	b8 03 00             	mov    $0x3,%ax
    55e6:	50                   	push   %ax
    55e7:	e8 87 ae             	call   0x471
    55ea:	83 c4 02             	add    $0x2,%sp
    55ed:	8d 06 f8 02          	lea    0x2f8,%ax
    55f1:	50                   	push   %ax
    55f2:	e8 92 af             	call   0x587
    55f5:	83 c4 02             	add    $0x2,%sp
    55f8:	8b e5                	mov    %bp,%sp
    55fa:	5d                   	pop    %bp
    55fb:	c3                   	ret
    55fc:	55                   	push   %bp
    55fd:	8b ec                	mov    %sp,%bp
    55ff:	8b 06 0c 46          	mov    0x460c,%ax
    5603:	0b c0                	or     %ax,%ax
    5605:	74 04                	je     0x560b
    5607:	8b e5                	mov    %bp,%sp
    5609:	5d                   	pop    %bp
    560a:	c3                   	ret
    560b:	b8 00 00             	mov    $0x0,%ax
    560e:	50                   	push   %ax
    560f:	50                   	push   %ax
    5610:	50                   	push   %ax
    5611:	e8 d2 cd             	call   0x23e6
    5614:	83 c4 06             	add    $0x6,%sp
    5617:	e8 13 ce             	call   0x242d
    561a:	b8 00 00             	mov    $0x0,%ax
    561d:	89 06 df 25          	mov    %ax,0x25df
    5621:	8b e5                	mov    %bp,%sp
    5623:	5d                   	pop    %bp
    5624:	c3                   	ret
    5625:	55                   	push   %bp
    5626:	8b ec                	mov    %sp,%bp
    5628:	ff 06 e1 25          	incw   0x25e1
    562c:	ff 06 e5 25          	incw   0x25e5
    5630:	e8 8a cf             	call   0x25bd
    5633:	81 3e df 25 00 00    	cmpw   $0x0,0x25df
    5639:	75 04                	jne    0x563f
    563b:	8b e5                	mov    %bp,%sp
    563d:	5d                   	pop    %bp
    563e:	c3                   	ret
    563f:	8b e5                	mov    %bp,%sp
    5641:	5d                   	pop    %bp
    5642:	c3                   	ret
    5643:	fb                   	sti
    5644:	c3                   	ret
    5645:	fa                   	cli
    5646:	c3                   	ret
    5647:	55                   	push   %bp
    5648:	8b ec                	mov    %sp,%bp
    564a:	ff 76 04             	push   0x4(%bp)
    564d:	e8 a2 00             	call   0x56f2
    5650:	83 c4 02             	add    $0x2,%sp
    5653:	8b e5                	mov    %bp,%sp
    5655:	5d                   	pop    %bp
    5656:	c3                   	ret
    5657:	55                   	push   %bp
    5658:	8b ec                	mov    %sp,%bp
    565a:	8b 76 04             	mov    0x4(%bp),%si
    565d:	8b 44 08             	mov    0x8(%si),%ax
    5660:	83 f8 00             	cmp    $0x0,%ax
    5663:	7f 16                	jg     0x567b
    5665:	ff 76 04             	push   0x4(%bp)
    5668:	8b 76 04             	mov    0x4(%bp),%si
    566b:	8b 44 04             	mov    0x4(%si),%ax
    566e:	f7 d8                	neg    %ax
    5670:	50                   	push   %ax
    5671:	b8 14 00             	mov    $0x14,%ax
    5674:	50                   	push   %ax
    5675:	e8 6e cd             	call   0x23e6
    5678:	83 c4 06             	add    $0x6,%sp
    567b:	8b e5                	mov    %bp,%sp
    567d:	5d                   	pop    %bp
    567e:	c3                   	ret
    567f:	55                   	push   %bp
    5680:	8b ec                	mov    %sp,%bp
    5682:	8b 76 04             	mov    0x4(%bp),%si
    5685:	8b 44 0c             	mov    0xc(%si),%ax
    5688:	0b c0                	or     %ax,%ax
    568a:	74 13                	je     0x569f
    568c:	ff 76 04             	push   0x4(%bp)
    568f:	8b 76 04             	mov    0x4(%bp),%si
    5692:	ff 74 1a             	push   0x1a(%si)
    5695:	b8 0a 00             	mov    $0xa,%ax
    5698:	50                   	push   %ax
    5699:	e8 4a cd             	call   0x23e6
    569c:	83 c4 06             	add    $0x6,%sp
    569f:	8b e5                	mov    %bp,%sp
    56a1:	5d                   	pop    %bp
    56a2:	c3                   	ret
    56a3:	55                   	push   %bp
    56a4:	8b ec                	mov    %sp,%bp
    56a6:	ff 76 04             	push   0x4(%bp)
    56a9:	e8 46 00             	call   0x56f2
    56ac:	83 c4 02             	add    $0x2,%sp
    56af:	8b e5                	mov    %bp,%sp
    56b1:	5d                   	pop    %bp
    56b2:	c3                   	ret
    56b3:	55                   	push   %bp
    56b4:	8b ec                	mov    %sp,%bp
    56b6:	ff 76 04             	push   0x4(%bp)
    56b9:	e8 36 00             	call   0x56f2
    56bc:	83 c4 02             	add    $0x2,%sp
    56bf:	8b e5                	mov    %bp,%sp
    56c1:	5d                   	pop    %bp
    56c2:	c3                   	ret
    56c3:	55                   	push   %bp
    56c4:	8b ec                	mov    %sp,%bp
    56c6:	8b 76 04             	mov    0x4(%bp),%si
    56c9:	8b 44 14             	mov    0x14(%si),%ax
    56cc:	0b c0                	or     %ax,%ax
    56ce:	74 10                	je     0x56e0
    56d0:	ff 76 04             	push   0x4(%bp)
    56d3:	b8 00 00             	mov    $0x0,%ax
    56d6:	50                   	push   %ax
    56d7:	b0 1e                	mov    $0x1e,%al
    56d9:	50                   	push   %ax
    56da:	e8 09 cd             	call   0x23e6
    56dd:	83 c4 06             	add    $0x6,%sp
    56e0:	8b e5                	mov    %bp,%sp
    56e2:	5d                   	pop    %bp
    56e3:	c3                   	ret
    56e4:	55                   	push   %bp
    56e5:	8b ec                	mov    %sp,%bp
    56e7:	8b e5                	mov    %bp,%sp
    56e9:	5d                   	pop    %bp
    56ea:	c3                   	ret
    56eb:	55                   	push   %bp
    56ec:	8b ec                	mov    %sp,%bp
    56ee:	8b e5                	mov    %bp,%sp
    56f0:	5d                   	pop    %bp
    56f1:	c3                   	ret
    56f2:	55                   	push   %bp
    56f3:	8b ec                	mov    %sp,%bp
    56f5:	83 ec 04             	sub    $0x4,%sp
    56f8:	8b 46 04             	mov    0x4(%bp),%ax
    56fb:	89 46 fc             	mov    %ax,-0x4(%bp)
    56fe:	8b 76 fc             	mov    -0x4(%bp),%si
    5701:	8b 44 14             	mov    0x14(%si),%ax
    5704:	0b c0                	or     %ax,%ax
    5706:	74 13                	je     0x571b
    5708:	ff 76 fc             	push   -0x4(%bp)
    570b:	b8 00 00             	mov    $0x0,%ax
    570e:	50                   	push   %ax
    570f:	b0 1e                	mov    $0x1e,%al
    5711:	50                   	push   %ax
    5712:	e8 d1 cc             	call   0x23e6
    5715:	83 c4 06             	add    $0x6,%sp
    5718:	e9 79 00             	jmp    0x5794
    571b:	8b 76 fc             	mov    -0x4(%bp),%si
    571e:	8b 04                	mov    (%si),%ax
    5720:	50                   	push   %ax
    5721:	eb 5e                	jmp    0x5781
    5723:	8b 76 fc             	mov    -0x4(%bp),%si
    5726:	8b 44 08             	mov    0x8(%si),%ax
    5729:	83 f8 00             	cmp    $0x0,%ax
    572c:	7c 12                	jl     0x5740
    572e:	ff 76 fc             	push   -0x4(%bp)
    5731:	b8 00 00             	mov    $0x0,%ax
    5734:	50                   	push   %ax
    5735:	b0 32                	mov    $0x32,%al
    5737:	50                   	push   %ax
    5738:	e8 ab cc             	call   0x23e6
    573b:	83 c4 06             	add    $0x6,%sp
    573e:	eb 13                	jmp    0x5753
    5740:	ff 76 fc             	push   -0x4(%bp)
    5743:	8b 76 fc             	mov    -0x4(%bp),%si
    5746:	ff 74 04             	push   0x4(%si)
    5749:	b8 28 00             	mov    $0x28,%ax
    574c:	50                   	push   %ax
    574d:	e8 96 cc             	call   0x23e6
    5750:	83 c4 06             	add    $0x6,%sp
    5753:	eb 3f                	jmp    0x5794
    5755:	ff 76 fc             	push   -0x4(%bp)
    5758:	8b 76 fc             	mov    -0x4(%bp),%si
    575b:	8b 44 0e             	mov    0xe(%si),%ax
    575e:	f7 d8                	neg    %ax
    5760:	50                   	push   %ax
    5761:	b8 3c 00             	mov    $0x3c,%ax
    5764:	50                   	push   %ax
    5765:	e8 7e cc             	call   0x23e6
    5768:	83 c4 06             	add    $0x6,%sp
    576b:	eb 27                	jmp    0x5794
    576d:	ff 76 fc             	push   -0x4(%bp)
    5770:	b8 00 00             	mov    $0x0,%ax
    5773:	50                   	push   %ax
    5774:	b0 32                	mov    $0x32,%al
    5776:	50                   	push   %ax
    5777:	e8 6c cc             	call   0x23e6
    577a:	83 c4 06             	add    $0x6,%sp
    577d:	eb 15                	jmp    0x5794
    577f:	eb 13                	jmp    0x5794
    5781:	e8 50 41             	call   0x98d4
    5784:	03 00                	add    (%bx,%si),%ax
    5786:	07                   	pop    %es
    5787:	00 01                	add    %al,(%bx,%di)
    5789:	00 05                	add    %al,(%di)
    578b:	00 7f 58             	add    %bh,0x58(%bx)
    578e:	6d                   	insw   (%dx),%es:(%di)
    578f:	58                   	pop    %ax
    5790:	55                   	push   %bp
    5791:	58                   	pop    %ax
    5792:	23 58 8b             	and    -0x75(%bx,%si),%bx
    5795:	e5 5d                	in     $0x5d,%ax
    5797:	c3                   	ret
    5798:	55                   	push   %bp
    5799:	8b ec                	mov    %sp,%bp
    579b:	83 ec 0a             	sub    $0xa,%sp
    579e:	8b 46 04             	mov    0x4(%bp),%ax
    57a1:	89 46 f6             	mov    %ax,-0xa(%bp)
    57a4:	8d 06 ce 48          	lea    0x48ce,%ax
    57a8:	50                   	push   %ax
    57a9:	bb 06 00             	mov    $0x6,%bx
    57ac:	8b 76 f6             	mov    -0xa(%bp),%si
    57af:	8b 44 38             	mov    0x38(%si),%ax
    57b2:	f7 eb                	imul   %bx
    57b4:	5e                   	pop    %si
    57b5:	03 f0                	add    %ax,%si
    57b7:	89 76 f8             	mov    %si,-0x8(%bp)
    57ba:	8b 76 f8             	mov    -0x8(%bp),%si
    57bd:	8b 04                	mov    (%si),%ax
    57bf:	0b c0                	or     %ax,%ax
    57c1:	74 1b                	je     0x57de
    57c3:	8b 76 f8             	mov    -0x8(%bp),%si
    57c6:	8b 04                	mov    (%si),%ax
    57c8:	83 e8 01             	sub    $0x1,%ax
    57cb:	50                   	push   %ax
    57cc:	8b 76 f8             	mov    -0x8(%bp),%si
    57cf:	ff 74 04             	push   0x4(%si)
    57d2:	8b 76 f8             	mov    -0x8(%bp),%si
    57d5:	ff 74 02             	push   0x2(%si)
    57d8:	e8 b7 b0             	call   0x892
    57db:	83 c4 06             	add    $0x6,%sp
    57de:	8b 76 f6             	mov    -0xa(%bp),%si
    57e1:	8b 04                	mov    (%si),%ax
    57e3:	83 f8 5b             	cmp    $0x5b,%ax
    57e6:	7c 0b                	jl     0x57f3
    57e8:	b8 00 00             	mov    $0x0,%ax
    57eb:	8b 76 f8             	mov    -0x8(%bp),%si
    57ee:	89 04                	mov    %ax,(%si)
    57f0:	e9 a4 00             	jmp    0x5897
    57f3:	8b 76 f6             	mov    -0xa(%bp),%si
    57f6:	8b 74 20             	mov    0x20(%si),%si
    57f9:	ff 74 2a             	push   0x2a(%si)
    57fc:	b8 0d 00             	mov    $0xd,%ax
    57ff:	50                   	push   %ax
    5800:	8b 76 f6             	mov    -0xa(%bp),%si
    5803:	8b 44 04             	mov    0x4(%si),%ax
    5806:	50                   	push   %ax
    5807:	b8 02 00             	mov    $0x2,%ax
    580a:	50                   	push   %ax
    580b:	8b 76 f6             	mov    -0xa(%bp),%si
    580e:	8b 44 22             	mov    0x22(%si),%ax
    5811:	5b                   	pop    %bx
    5812:	99                   	cwtd
    5813:	f7 fb                	idiv   %bx
    5815:	5a                   	pop    %dx
    5816:	2b d0                	sub    %ax,%dx
    5818:	8b c2                	mov    %dx,%ax
    581a:	5b                   	pop    %bx
    581b:	99                   	cwtd
    581c:	f7 fb                	idiv   %bx
    581e:	8b 76 f8             	mov    -0x8(%bp),%si
    5821:	89 44 04             	mov    %ax,0x4(%si)
    5824:	50                   	push   %ax
    5825:	b8 13 00             	mov    $0x13,%ax
    5828:	50                   	push   %ax
    5829:	8b 76 f6             	mov    -0xa(%bp),%si
    582c:	8b 44 02             	mov    0x2(%si),%ax
    582f:	50                   	push   %ax
    5830:	b8 02 00             	mov    $0x2,%ax
    5833:	50                   	push   %ax
    5834:	8b 76 f6             	mov    -0xa(%bp),%si
    5837:	8b 44 24             	mov    0x24(%si),%ax
    583a:	5b                   	pop    %bx
    583b:	99                   	cwtd
    583c:	f7 fb                	idiv   %bx
    583e:	5a                   	pop    %dx
    583f:	03 d0                	add    %ax,%dx
    5841:	8b c2                	mov    %dx,%ax
    5843:	5b                   	pop    %bx
    5844:	99                   	cwtd
    5845:	f7 fb                	idiv   %bx
    5847:	81 c0 98 00          	add    $0x98,%ax
    584b:	8b 76 f8             	mov    -0x8(%bp),%si
    584e:	89 44 02             	mov    %ax,0x2(%si)
    5851:	50                   	push   %ax
    5852:	e8 d8 b0             	call   0x92d
    5855:	83 c4 06             	add    $0x6,%sp
    5858:	89 46 fe             	mov    %ax,-0x2(%bp)
    585b:	81 7e fe 00 00       	cmpw   $0x0,-0x2(%bp)
    5860:	75 02                	jne    0x5864
    5862:	eb 07                	jmp    0x586b
    5864:	81 7e fe 03 00       	cmpw   $0x3,-0x2(%bp)
    5869:	75 0f                	jne    0x587a
    586b:	8b 46 fe             	mov    -0x2(%bp),%ax
    586e:	83 c0 01             	add    $0x1,%ax
    5871:	8b 76 f8             	mov    -0x8(%bp),%si
    5874:	89 04                	mov    %ax,(%si)
    5876:	8b e5                	mov    %bp,%sp
    5878:	5d                   	pop    %bp
    5879:	c3                   	ret
    587a:	ff 76 fe             	push   -0x2(%bp)
    587d:	8b 76 f8             	mov    -0x8(%bp),%si
    5880:	ff 74 04             	push   0x4(%si)
    5883:	8b 76 f8             	mov    -0x8(%bp),%si
    5886:	ff 74 02             	push   0x2(%si)
    5889:	e8 06 b0             	call   0x892
    588c:	83 c4 06             	add    $0x6,%sp
    588f:	b8 00 00             	mov    $0x0,%ax
    5892:	8b 76 f8             	mov    -0x8(%bp),%si
    5895:	89 04                	mov    %ax,(%si)
    5897:	8b e5                	mov    %bp,%sp
    5899:	5d                   	pop    %bp
    589a:	c3                   	ret
    589b:	2e ff 36 1a 5a       	push   %cs:0x5a1a
    58a0:	eb 49                	jmp    0x58eb
    58a2:	90                   	nop
    58a3:	2e ff 36 1c 5a       	push   %cs:0x5a1c
    58a8:	eb 41                	jmp    0x58eb
    58aa:	90                   	nop
    58ab:	2e ff 36 1e 5a       	push   %cs:0x5a1e
    58b0:	eb 39                	jmp    0x58eb
    58b2:	90                   	nop
    58b3:	2e ff 36 20 5a       	push   %cs:0x5a20
    58b8:	eb 31                	jmp    0x58eb
    58ba:	90                   	nop
    58bb:	2e ff 36 22 5a       	push   %cs:0x5a22
    58c0:	eb 29                	jmp    0x58eb
    58c2:	90                   	nop
    58c3:	2e ff 36 24 5a       	push   %cs:0x5a24
    58c8:	eb 21                	jmp    0x58eb
    58ca:	90                   	nop
    58cb:	2e ff 36 26 5a       	push   %cs:0x5a26
    58d0:	eb 19                	jmp    0x58eb
    58d2:	90                   	nop
    58d3:	2e ff 36 28 5a       	push   %cs:0x5a28
    58d8:	eb 11                	jmp    0x58eb
    58da:	90                   	nop
    58db:	2e ff 36 2a 5a       	push   %cs:0x5a2a
    58e0:	eb 09                	jmp    0x58eb
    58e2:	90                   	nop
    58e3:	2e ff 36 2c 5a       	push   %cs:0x5a2c
    58e8:	eb 01                	jmp    0x58eb
    58ea:	90                   	nop
    58eb:	83 ec 14             	sub    $0x14,%sp
    58ee:	53                   	push   %bx
    58ef:	1e                   	push   %ds
    58f0:	83 c4 18             	add    $0x18,%sp
    58f3:	e8 8f 00             	call   0x5985
    58f6:	5b                   	pop    %bx
    58f7:	9c                   	pushf
    58f8:	ff b7 b1 4e          	push   0x4eb1(%bx)
    58fc:	ff b7 af 4e          	push   0x4eaf(%bx)
    5900:	ff b7 b5 4e          	push   0x4eb5(%bx)
    5904:	9c                   	pushf
    5905:	ff b7 ad 4e          	push   0x4ead(%bx)
    5909:	ff b7 ab 4e          	push   0x4eab(%bx)
    590d:	83 ec 0c             	sub    $0xc,%sp
    5910:	1f                   	pop    %ds
    5911:	5b                   	pop    %bx
    5912:	83 c4 08             	add    $0x8,%sp
    5915:	cf                   	iret
    5916:	32 e4                	xor    %ah,%ah
    5918:	cd 21                	int    $0x21
    591a:	00 00                	add    %al,(%bx,%si)
    591c:	0c 00                	or     $0x0,%al
    591e:	18 00                	sbb    %al,(%bx,%si)
    5920:	24 00                	and    $0x0,%al
    5922:	30 00                	xor    %al,(%bx,%si)
    5924:	3c 00                	cmp    $0x0,%al
    5926:	48                   	dec    %ax
    5927:	00 54 00             	add    %dl,0x0(%si)
    592a:	60                   	pusha
    592b:	00 6c 00             	add    %ch,0x0(%si)
    592e:	1e                   	push   %ds
    592f:	06                   	push   %es
    5930:	50                   	push   %ax
    5931:	53                   	push   %bx
    5932:	51                   	push   %cx
    5933:	52                   	push   %dx
    5934:	56                   	push   %si
    5935:	57                   	push   %di
    5936:	55                   	push   %bp
    5937:	e8 4b 00             	call   0x5985
    593a:	83 fb 00             	cmp    $0x0,%bx
    593d:	74 1f                	je     0x595e
    593f:	8e c3                	mov    %bx,%es
    5941:	b9 09 00             	mov    $0x9,%cx
    5944:	8d 1e ab 4e          	lea    0x4eab,%bx
    5948:	83 c3 6c             	add    $0x6c,%bx
    594b:	83 7f 08 00          	cmpw   $0x0,0x8(%bx)
    594f:	74 07                	je     0x5958
    5951:	53                   	push   %bx
    5952:	51                   	push   %cx
    5953:	e8 7f d4             	call   0x2dd5
    5956:	59                   	pop    %cx
    5957:	5b                   	pop    %bx
    5958:	83 eb 0c             	sub    $0xc,%bx
    595b:	49                   	dec    %cx
    595c:	7d ed                	jge    0x594b
    595e:	5d                   	pop    %bp
    595f:	5f                   	pop    %di
    5960:	5e                   	pop    %si
    5961:	5a                   	pop    %dx
    5962:	59                   	pop    %cx
    5963:	5b                   	pop    %bx
    5964:	58                   	pop    %ax
    5965:	07                   	pop    %es
    5966:	1f                   	pop    %ds
    5967:	c3                   	ret
    5968:	e8 c3 ff             	call   0x592e
    596b:	83 c4 02             	add    $0x2,%sp
    596e:	cf                   	iret
    596f:	55                   	push   %bp
    5970:	8b ec                	mov    %sp,%bp
    5972:	53                   	push   %bx
    5973:	06                   	push   %es
    5974:	8b 6e 04             	mov    0x4(%bp),%bp
    5977:	33 db                	xor    %bx,%bx
    5979:	8e c3                	mov    %bx,%es
    597b:	bb f0 04             	mov    $0x4f0,%bx
    597e:	26 89 2f             	mov    %bp,%es:(%bx)
    5981:	07                   	pop    %es
    5982:	5b                   	pop    %bx
    5983:	5d                   	pop    %bp
    5984:	c3                   	ret
    5985:	33 db                	xor    %bx,%bx
    5987:	8e db                	mov    %bx,%ds
    5989:	bb f0 04             	mov    $0x4f0,%bx
    598c:	8b 1f                	mov    (%bx),%bx
    598e:	8e db                	mov    %bx,%ds
    5990:	c3                   	ret
    5991:	55                   	push   %bp
    5992:	8b ec                	mov    %sp,%bp
    5994:	83 ec 12             	sub    $0x12,%sp
    5997:	b8 00 00             	mov    $0x0,%ax
    599a:	89 46 fe             	mov    %ax,-0x2(%bp)
    599d:	8b 06 dd 25          	mov    0x25dd,%ax
    59a1:	81 e0 ff 00          	and    $0xff,%ax
    59a5:	89 46 ee             	mov    %ax,-0x12(%bp)
    59a8:	8d 76 ee             	lea    -0x12(%bp),%si
    59ab:	56                   	push   %si
    59ac:	8d 76 ee             	lea    -0x12(%bp),%si
    59af:	56                   	push   %si
    59b0:	b8 10 00             	mov    $0x10,%ax
    59b3:	50                   	push   %ax
    59b4:	e8 db 3f             	call   0x9992
    59b7:	83 c4 06             	add    $0x6,%sp
    59ba:	b8 00 00             	mov    $0x0,%ax
    59bd:	50                   	push   %ax
    59be:	50                   	push   %ax
    59bf:	e8 24 ca             	call   0x23e6
    59c2:	83 c4 04             	add    $0x4,%sp
    59c5:	e8 65 ca             	call   0x242d
    59c8:	8b 06 12 46          	mov    0x4612,%ax
    59cc:	0b c0                	or     %ax,%ax
    59ce:	74 03                	je     0x59d3
    59d0:	e8 51 02             	call   0x5c24
    59d3:	81 3e ad 25 01 00    	cmpw   $0x1,0x25ad
    59d9:	75 0e                	jne    0x59e9
    59db:	ff 76 06             	push   0x6(%bp)
    59de:	e8 32 17             	call   0x7113
    59e1:	83 c4 02             	add    $0x2,%sp
    59e4:	89 46 fe             	mov    %ax,-0x2(%bp)
    59e7:	eb 0e                	jmp    0x59f7
    59e9:	81 3e ad 25 03 00    	cmpw   $0x3,0x25ad
    59ef:	75 06                	jne    0x59f7
    59f1:	e8 a6 27             	call   0x819a
    59f4:	89 46 fe             	mov    %ax,-0x2(%bp)
    59f7:	e8 4b fc             	call   0x5645
    59fa:	e8 31 ff             	call   0x592e
    59fd:	e8 43 fc             	call   0x5643
    5a00:	e8 4f 2b             	call   0x8552
    5a03:	8d 06 05 03          	lea    0x305,%ax
    5a07:	50                   	push   %ax
    5a08:	e8 7c ab             	call   0x587
    5a0b:	83 c4 02             	add    $0x2,%sp
    5a0e:	8b 46 fe             	mov    -0x2(%bp),%ax
    5a11:	0b c0                	or     %ax,%ax
    5a13:	74 14                	je     0x5a29
    5a15:	ff 76 fe             	push   -0x2(%bp)
    5a18:	e8 6c ab             	call   0x587
    5a1b:	83 c4 02             	add    $0x2,%sp
    5a1e:	8d 06 08 03          	lea    0x308,%ax
    5a22:	50                   	push   %ax
    5a23:	e8 61 ab             	call   0x587
    5a26:	83 c4 02             	add    $0x2,%sp
    5a29:	8b 46 04             	mov    0x4(%bp),%ax
    5a2c:	0b c0                	or     %ax,%ax
    5a2e:	74 14                	je     0x5a44
    5a30:	ff 76 04             	push   0x4(%bp)
    5a33:	e8 51 ab             	call   0x587
    5a36:	83 c4 02             	add    $0x2,%sp
    5a39:	8d 06 0b 03          	lea    0x30b,%ax
    5a3d:	50                   	push   %ax
    5a3e:	e8 46 ab             	call   0x587
    5a41:	83 c4 02             	add    $0x2,%sp
    5a44:	b8 00 00             	mov    $0x0,%ax
    5a47:	89 06 18 46          	mov    %ax,0x4618
    5a4b:	e8 d6 a9             	call   0x424
    5a4e:	8b 46 04             	mov    0x4(%bp),%ax
    5a51:	0b c0                	or     %ax,%ax
    5a53:	74 02                	je     0x5a57
    5a55:	eb 07                	jmp    0x5a5e
    5a57:	8b 46 fe             	mov    -0x2(%bp),%ax
    5a5a:	0b c0                	or     %ax,%ax
    5a5c:	74 0c                	je     0x5a6a
    5a5e:	b8 01 00             	mov    $0x1,%ax
    5a61:	50                   	push   %ax
    5a62:	e8 c0 a6             	call   0x125
    5a65:	83 c4 02             	add    $0x2,%sp
    5a68:	eb 0a                	jmp    0x5a74
    5a6a:	b8 00 00             	mov    $0x0,%ax
    5a6d:	50                   	push   %ax
    5a6e:	e8 b4 a6             	call   0x125
    5a71:	83 c4 02             	add    $0x2,%sp
    5a74:	8b e5                	mov    %bp,%sp
    5a76:	5d                   	pop    %bp
    5a77:	c3                   	ret
    5a78:	55                   	push   %bp
    5a79:	8b ec                	mov    %sp,%bp
    5a7b:	83 ec 04             	sub    $0x4,%sp
    5a7e:	81 3e ad 25 01 00    	cmpw   $0x1,0x25ad
    5a84:	74 0a                	je     0x5a90
    5a86:	81 3e ad 25 03 00    	cmpw   $0x3,0x25ad
    5a8c:	74 02                	je     0x5a90
    5a8e:	eb 0f                	jmp    0x5a9f
    5a90:	8b 36 cb 07          	mov    0x7cb,%si
    5a94:	8a 04                	mov    (%si),%al
    5a96:	81 e0 ff 00          	and    $0xff,%ax
    5a9a:	83 f8 01             	cmp    $0x1,%ax
    5a9d:	75 08                	jne    0x5aa7
    5a9f:	b8 01 00             	mov    $0x1,%ax
    5aa2:	89 46 fc             	mov    %ax,-0x4(%bp)
    5aa5:	eb 3c                	jmp    0x5ae3
    5aa7:	8b 36 d8 47          	mov    0x47d8,%si
    5aab:	8b 3e d8 47          	mov    0x47d8,%di
    5aaf:	83 c7 6a             	add    $0x6a,%di
    5ab2:	8b 45 16             	mov    0x16(%di),%ax
    5ab5:	3b 44 16             	cmp    0x16(%si),%ax
    5ab8:	75 0b                	jne    0x5ac5
    5aba:	b8 03 00             	mov    $0x3,%ax
    5abd:	2b 46 04             	sub    0x4(%bp),%ax
    5ac0:	89 46 fc             	mov    %ax,-0x4(%bp)
    5ac3:	eb 1e                	jmp    0x5ae3
    5ac5:	8b 36 d8 47          	mov    0x47d8,%si
    5ac9:	83 c6 6a             	add    $0x6a,%si
    5acc:	8b 44 16             	mov    0x16(%si),%ax
    5acf:	8b 36 d8 47          	mov    0x47d8,%si
    5ad3:	3b 44 16             	cmp    0x16(%si),%ax
    5ad6:	b8 01 00             	mov    $0x1,%ax
    5ad9:	7f 02                	jg     0x5add
    5adb:	ff c8                	dec    %ax
    5add:	83 c0 01             	add    $0x1,%ax
    5ae0:	89 46 fc             	mov    %ax,-0x4(%bp)
    5ae3:	8b 06 d8 47          	mov    0x47d8,%ax
    5ae7:	89 46 fe             	mov    %ax,-0x2(%bp)
    5aea:	8b 76 fe             	mov    -0x2(%bp),%si
    5aed:	8b 44 60             	mov    0x60(%si),%ax
    5af0:	83 f8 01             	cmp    $0x1,%ax
    5af3:	75 6f                	jne    0x5b64
    5af5:	8d 36 bc 48          	lea    0x48bc,%si
    5af9:	8b 7e fe             	mov    -0x2(%bp),%di
    5afc:	8b 45 38             	mov    0x38(%di),%ax
    5aff:	d1 e0                	shl    %ax
    5b01:	03 f0                	add    %ax,%si
    5b03:	8b 04                	mov    (%si),%ax
    5b05:	0b c0                	or     %ax,%ax
    5b07:	74 02                	je     0x5b0b
    5b09:	eb 4d                	jmp    0x5b58
    5b0b:	8b 76 fe             	mov    -0x2(%bp),%si
    5b0e:	8b 44 2a             	mov    0x2a(%si),%ax
    5b11:	3b 46 fc             	cmp    -0x4(%bp),%ax
    5b14:	75 39                	jne    0x5b4f
    5b16:	8b 76 fe             	mov    -0x2(%bp),%si
    5b19:	8b 44 4c             	mov    0x4c(%si),%ax
    5b1c:	83 f8 04             	cmp    $0x4,%ax
    5b1f:	7d 02                	jge    0x5b23
    5b21:	eb 21                	jmp    0x5b44
    5b23:	8b 76 fe             	mov    -0x2(%bp),%si
    5b26:	8b 44 4c             	mov    0x4c(%si),%ax
    5b29:	83 f8 05             	cmp    $0x5,%ax
    5b2c:	7d 21                	jge    0x5b4f
    5b2e:	8b 76 fe             	mov    -0x2(%bp),%si
    5b31:	8b 04                	mov    (%si),%ax
    5b33:	83 f8 01             	cmp    $0x1,%ax
    5b36:	75 02                	jne    0x5b3a
    5b38:	eb 0a                	jmp    0x5b44
    5b3a:	8b 76 fe             	mov    -0x2(%bp),%si
    5b3d:	8b 04                	mov    (%si),%ax
    5b3f:	83 f8 07             	cmp    $0x7,%ax
    5b42:	75 0b                	jne    0x5b4f
    5b44:	ff 76 fe             	push   -0x2(%bp)
    5b47:	e8 1e 00             	call   0x5b68
    5b4a:	83 c4 02             	add    $0x2,%sp
    5b4d:	eb 09                	jmp    0x5b58
    5b4f:	ff 76 fe             	push   -0x2(%bp)
    5b52:	e8 7d 00             	call   0x5bd2
    5b55:	83 c4 02             	add    $0x2,%sp
    5b58:	8b 76 fe             	mov    -0x2(%bp),%si
    5b5b:	8b 74 34             	mov    0x34(%si),%si
    5b5e:	89 76 fe             	mov    %si,-0x2(%bp)
    5b61:	e9 86 ff             	jmp    0x5aea
    5b64:	8b e5                	mov    %bp,%sp
    5b66:	5d                   	pop    %bp
    5b67:	c3                   	ret
    5b68:	55                   	push   %bp
    5b69:	8b ec                	mov    %sp,%bp
    5b6b:	83 ec 02             	sub    $0x2,%sp
    5b6e:	b8 01 00             	mov    $0x1,%ax
    5b71:	8d 36 bc 48          	lea    0x48bc,%si
    5b75:	8b 7e 04             	mov    0x4(%bp),%di
    5b78:	8b 55 38             	mov    0x38(%di),%dx
    5b7b:	89 56 fe             	mov    %dx,-0x2(%bp)
    5b7e:	d1 e2                	shl    %dx
    5b80:	03 f2                	add    %dx,%si
    5b82:	89 04                	mov    %ax,(%si)
    5b84:	8b 46 fe             	mov    -0x2(%bp),%ax
    5b87:	3b 06 c6 48          	cmp    0x48c6,%ax
    5b8b:	75 41                	jne    0x5bce
    5b8d:	b8 48 00             	mov    $0x48,%ax
    5b90:	89 06 c4 48          	mov    %ax,0x48c4
    5b94:	b0 01                	mov    $0x1,%al
    5b96:	89 06 26 4b          	mov    %ax,0x4b26
    5b9a:	b0 00                	mov    $0x0,%al
    5b9c:	8b 76 04             	mov    0x4(%bp),%si
    5b9f:	89 44 32             	mov    %ax,0x32(%si)
    5ba2:	8b 76 04             	mov    0x4(%bp),%si
    5ba5:	89 44 30             	mov    %ax,0x30(%si)
    5ba8:	8b 76 04             	mov    0x4(%bp),%si
    5bab:	89 44 08             	mov    %ax,0x8(%si)
    5bae:	8b 76 04             	mov    0x4(%bp),%si
    5bb1:	89 44 06             	mov    %ax,0x6(%si)
    5bb4:	b8 01 00             	mov    $0x1,%ax
    5bb7:	8b 76 04             	mov    0x4(%bp),%si
    5bba:	89 04                	mov    %ax,(%si)
    5bbc:	b8 28 23             	mov    $0x2328,%ax
    5bbf:	8b 76 04             	mov    0x4(%bp),%si
    5bc2:	89 44 1e             	mov    %ax,0x1e(%si)
    5bc5:	b8 04 00             	mov    $0x4,%ax
    5bc8:	8b 76 04             	mov    0x4(%bp),%si
    5bcb:	89 44 0e             	mov    %ax,0xe(%si)
    5bce:	8b e5                	mov    %bp,%sp
    5bd0:	5d                   	pop    %bp
    5bd1:	c3                   	ret
    5bd2:	55                   	push   %bp
    5bd3:	8b ec                	mov    %sp,%bp
    5bd5:	83 ec 02             	sub    $0x2,%sp
    5bd8:	b8 02 00             	mov    $0x2,%ax
    5bdb:	8d 36 bc 48          	lea    0x48bc,%si
    5bdf:	8b 7e 04             	mov    0x4(%bp),%di
    5be2:	8b 55 38             	mov    0x38(%di),%dx
    5be5:	89 56 fe             	mov    %dx,-0x2(%bp)
    5be8:	d1 e2                	shl    %dx
    5bea:	03 f2                	add    %dx,%si
    5bec:	89 04                	mov    %ax,(%si)
    5bee:	8b 46 fe             	mov    -0x2(%bp),%ax
    5bf1:	3b 06 c6 48          	cmp    0x48c6,%ax
    5bf5:	75 29                	jne    0x5c20
    5bf7:	b8 82 00             	mov    $0x82,%ax
    5bfa:	50                   	push   %ax
    5bfb:	e8 73 a8             	call   0x471
    5bfe:	83 c4 02             	add    $0x2,%sp
    5c01:	b8 0c 00             	mov    $0xc,%ax
    5c04:	50                   	push   %ax
    5c05:	b0 10                	mov    $0x10,%al
    5c07:	50                   	push   %ax
    5c08:	e8 4b a8             	call   0x456
    5c0b:	83 c4 04             	add    $0x4,%sp
    5c0e:	8d 06 0e 03          	lea    0x30e,%ax
    5c12:	50                   	push   %ax
    5c13:	e8 71 a9             	call   0x587
    5c16:	83 c4 02             	add    $0x2,%sp
    5c19:	b8 14 00             	mov    $0x14,%ax
    5c1c:	89 06 c4 48          	mov    %ax,0x48c4
    5c20:	8b e5                	mov    %bp,%sp
    5c22:	5d                   	pop    %bp
    5c23:	c3                   	ret
    5c24:	55                   	push   %bp
    5c25:	8b ec                	mov    %sp,%bp
    5c27:	8d 06 16 03          	lea    0x316,%ax
    5c2b:	50                   	push   %ax
    5c2c:	e8 58 a9             	call   0x587
    5c2f:	83 c4 02             	add    $0x2,%sp
    5c32:	8d 06 33 03          	lea    0x333,%ax
    5c36:	50                   	push   %ax
    5c37:	e8 4d a9             	call   0x587
    5c3a:	83 c4 02             	add    $0x2,%sp
    5c3d:	b8 6a 00             	mov    $0x6a,%ax
    5c40:	50                   	push   %ax
    5c41:	8b 06 e1 07          	mov    0x7e1,%ax
    5c45:	2b 06 d8 47          	sub    0x47d8,%ax
    5c49:	83 c0 01             	add    $0x1,%ax
    5c4c:	5b                   	pop    %bx
    5c4d:	99                   	cwtd
    5c4e:	f7 fb                	idiv   %bx
    5c50:	50                   	push   %ax
    5c51:	e8 5b f7             	call   0x53af
    5c54:	83 c4 02             	add    $0x2,%sp
    5c57:	8d 06 42 03          	lea    0x342,%ax
    5c5b:	50                   	push   %ax
    5c5c:	e8 28 a9             	call   0x587
    5c5f:	83 c4 02             	add    $0x2,%sp
    5c62:	8b e5                	mov    %bp,%sp
    5c64:	5d                   	pop    %bp
    5c65:	c3                   	ret
    5c66:	55                   	push   %bp
    5c67:	8b ec                	mov    %sp,%bp
    5c69:	83 ec 02             	sub    $0x2,%sp
    5c6c:	8b 06 da 47          	mov    0x47da,%ax
    5c70:	0b c0                	or     %ax,%ax
    5c72:	74 02                	je     0x5c76
    5c74:	eb 07                	jmp    0x5c7d
    5c76:	b8 00 00             	mov    $0x0,%ax
    5c79:	8b e5                	mov    %bp,%sp
    5c7b:	5d                   	pop    %bp
    5c7c:	c3                   	ret
    5c7d:	8b 06 da 47          	mov    0x47da,%ax
    5c81:	89 46 fe             	mov    %ax,-0x2(%bp)
    5c84:	8b 76 fe             	mov    -0x2(%bp),%si
    5c87:	8b 74 34             	mov    0x34(%si),%si
    5c8a:	89 36 da 47          	mov    %si,0x47da
    5c8e:	b8 00 00             	mov    $0x0,%ax
    5c91:	8b 76 fe             	mov    -0x2(%bp),%si
    5c94:	89 44 34             	mov    %ax,0x34(%si)
    5c97:	8b 06 d6 47          	mov    0x47d6,%ax
    5c9b:	8b 76 fe             	mov    -0x2(%bp),%si
    5c9e:	89 44 36             	mov    %ax,0x36(%si)
    5ca1:	8b 06 d6 47          	mov    0x47d6,%ax
    5ca5:	0b c0                	or     %ax,%ax
    5ca7:	74 0c                	je     0x5cb5
    5ca9:	8b 46 fe             	mov    -0x2(%bp),%ax
    5cac:	8b 36 d6 47          	mov    0x47d6,%si
    5cb0:	89 44 34             	mov    %ax,0x34(%si)
    5cb3:	eb 07                	jmp    0x5cbc
    5cb5:	8b 46 fe             	mov    -0x2(%bp),%ax
    5cb8:	89 06 d8 47          	mov    %ax,0x47d8
    5cbc:	b8 00 00             	mov    $0x0,%ax
    5cbf:	8b 76 fe             	mov    -0x2(%bp),%si
    5cc2:	89 44 40             	mov    %ax,0x40(%si)
    5cc5:	8b 76 fe             	mov    -0x2(%bp),%si
    5cc8:	89 44 3e             	mov    %ax,0x3e(%si)
    5ccb:	8b 76 fe             	mov    -0x2(%bp),%si
    5cce:	89 44 66             	mov    %ax,0x66(%si)
    5cd1:	8b 46 fe             	mov    -0x2(%bp),%ax
    5cd4:	3b 06 e1 07          	cmp    0x7e1,%ax
    5cd8:	76 07                	jbe    0x5ce1
    5cda:	8b 46 fe             	mov    -0x2(%bp),%ax
    5cdd:	89 06 e1 07          	mov    %ax,0x7e1
    5ce1:	8b 46 fe             	mov    -0x2(%bp),%ax
    5ce4:	89 06 d6 47          	mov    %ax,0x47d6
    5ce8:	8b e5                	mov    %bp,%sp
    5cea:	5d                   	pop    %bp
    5ceb:	c3                   	ret
    5cec:	55                   	push   %bp
    5ced:	8b ec                	mov    %sp,%bp
    5cef:	83 ec 04             	sub    $0x4,%sp
    5cf2:	8b 46 04             	mov    0x4(%bp),%ax
    5cf5:	89 46 fc             	mov    %ax,-0x4(%bp)
    5cf8:	8b 76 fc             	mov    -0x4(%bp),%si
    5cfb:	8b 74 36             	mov    0x36(%si),%si
    5cfe:	89 76 fe             	mov    %si,-0x2(%bp)
    5d01:	0b f6                	or     %si,%si
    5d03:	74 0e                	je     0x5d13
    5d05:	8b 76 fc             	mov    -0x4(%bp),%si
    5d08:	8b 74 34             	mov    0x34(%si),%si
    5d0b:	8b 7e fe             	mov    -0x2(%bp),%di
    5d0e:	89 75 34             	mov    %si,0x34(%di)
    5d11:	eb 0a                	jmp    0x5d1d
    5d13:	8b 76 fc             	mov    -0x4(%bp),%si
    5d16:	8b 74 34             	mov    0x34(%si),%si
    5d19:	89 36 d8 47          	mov    %si,0x47d8
    5d1d:	8b 76 fc             	mov    -0x4(%bp),%si
    5d20:	8b 74 34             	mov    0x34(%si),%si
    5d23:	89 76 fe             	mov    %si,-0x2(%bp)
    5d26:	0b f6                	or     %si,%si
    5d28:	74 0e                	je     0x5d38
    5d2a:	8b 76 fc             	mov    -0x4(%bp),%si
    5d2d:	8b 74 36             	mov    0x36(%si),%si
    5d30:	8b 7e fe             	mov    -0x2(%bp),%di
    5d33:	89 75 36             	mov    %si,0x36(%di)
    5d36:	eb 0a                	jmp    0x5d42
    5d38:	8b 76 fc             	mov    -0x4(%bp),%si
    5d3b:	8b 74 36             	mov    0x36(%si),%si
    5d3e:	89 36 d6 47          	mov    %si,0x47d6
    5d42:	b8 00 00             	mov    $0x0,%ax
    5d45:	8b 76 fc             	mov    -0x4(%bp),%si
    5d48:	89 44 34             	mov    %ax,0x34(%si)
    5d4b:	8b 06 de 47          	mov    0x47de,%ax
    5d4f:	0b c0                	or     %ax,%ax
    5d51:	74 0c                	je     0x5d5f
    5d53:	8b 46 fc             	mov    -0x4(%bp),%ax
    5d56:	8b 36 de 47          	mov    0x47de,%si
    5d5a:	89 44 34             	mov    %ax,0x34(%si)
    5d5d:	eb 07                	jmp    0x5d66
    5d5f:	8b 46 fc             	mov    -0x4(%bp),%ax
    5d62:	89 06 dc 47          	mov    %ax,0x47dc
    5d66:	8b 46 fc             	mov    -0x4(%bp),%ax
    5d69:	89 06 de 47          	mov    %ax,0x47de
    5d6d:	8b e5                	mov    %bp,%sp
    5d6f:	5d                   	pop    %bp
    5d70:	c3                   	ret
    5d71:	55                   	push   %bp
    5d72:	8b ec                	mov    %sp,%bp
    5d74:	83 ec 02             	sub    $0x2,%sp
    5d77:	b8 00 00             	mov    $0x0,%ax
    5d7a:	89 06 23 5e          	mov    %ax,0x5e23
    5d7e:	8d 36 b4 48          	lea    0x48b4,%si
    5d82:	8b 06 c8 48          	mov    0x48c8,%ax
    5d86:	d1 e0                	shl    %ax
    5d88:	03 f0                	add    %ax,%si
    5d8a:	8b 34                	mov    (%si),%si
    5d8c:	89 76 fe             	mov    %si,-0x2(%bp)
    5d8f:	0b f6                	or     %si,%si
    5d91:	74 0e                	je     0x5da1
    5d93:	ff 76 fe             	push   -0x2(%bp)
    5d96:	ff 76 04             	push   0x4(%bp)
    5d99:	e8 2f 00             	call   0x5dcb
    5d9c:	83 c4 04             	add    $0x4,%sp
    5d9f:	eb 15                	jmp    0x5db6
    5da1:	8b 76 04             	mov    0x4(%bp),%si
    5da4:	8b 44 64             	mov    0x64(%si),%ax
    5da7:	0b c0                	or     %ax,%ax
    5da9:	74 02                	je     0x5dad
    5dab:	eb 09                	jmp    0x5db6
    5dad:	ff 76 04             	push   0x4(%bp)
    5db0:	e8 e1 00             	call   0x5e94
    5db3:	83 c4 02             	add    $0x2,%sp
    5db6:	b8 00 00             	mov    $0x0,%ax
    5db9:	8d 36 b4 48          	lea    0x48b4,%si
    5dbd:	8b 16 c8 48          	mov    0x48c8,%dx
    5dc1:	d1 e2                	shl    %dx
    5dc3:	03 f2                	add    %dx,%si
    5dc5:	89 04                	mov    %ax,(%si)
    5dc7:	8b e5                	mov    %bp,%sp
    5dc9:	5d                   	pop    %bp
    5dca:	c3                   	ret
    5dcb:	55                   	push   %bp
    5dcc:	8b ec                	mov    %sp,%bp
    5dce:	83 ec 02             	sub    $0x2,%sp
    5dd1:	8b 06 e3 25          	mov    0x25e3,%ax
    5dd5:	83 e0 1f             	and    $0x1f,%ax
    5dd8:	83 f8 10             	cmp    $0x10,%ax
    5ddb:	b8 01 00             	mov    $0x1,%ax
    5dde:	7c 02                	jl     0x5de2
    5de0:	ff c8                	dec    %ax
    5de2:	ba 04 00             	mov    $0x4,%dx
    5de5:	8b ca                	mov    %dx,%cx
    5de7:	d3 e0                	shl    %cl,%ax
    5de9:	89 06 8f 5e          	mov    %ax,0x5e8f
    5ded:	8b 46 06             	mov    0x6(%bp),%ax
    5df0:	89 46 fe             	mov    %ax,-0x2(%bp)
    5df3:	8b 76 fe             	mov    -0x2(%bp),%si
    5df6:	8b 44 0e             	mov    0xe(%si),%ax
    5df9:	0b c0                	or     %ax,%ax
    5dfb:	74 73                	je     0x5e70
    5dfd:	b8 00 00             	mov    $0x0,%ax
    5e00:	50                   	push   %ax
    5e01:	ff 76 fe             	push   -0x2(%bp)
    5e04:	8b 76 fe             	mov    -0x2(%bp),%si
    5e07:	8b 44 04             	mov    0x4(%si),%ax
    5e0a:	50                   	push   %ax
    5e0b:	bb 20 00             	mov    $0x20,%bx
    5e0e:	8d 36 e5 07          	lea    0x7e5,%si
    5e12:	b8 10 00             	mov    $0x10,%ax
    5e15:	50                   	push   %ax
    5e16:	8b 7e fe             	mov    -0x2(%bp),%di
    5e19:	8b 45 0a             	mov    0xa(%di),%ax
    5e1c:	59                   	pop    %cx
    5e1d:	99                   	cwtd
    5e1e:	f7 f9                	idiv   %cx
    5e20:	d1 e2                	shl    %dx
    5e22:	03 f2                	add    %dx,%si
    5e24:	8b 04                	mov    (%si),%ax
    5e26:	f7 eb                	imul   %bx
    5e28:	ba 08 00             	mov    $0x8,%dx
    5e2b:	8b ca                	mov    %dx,%cx
    5e2d:	d3 f8                	sar    %cl,%ax
    5e2f:	5a                   	pop    %dx
    5e30:	2b d0                	sub    %ax,%dx
    5e32:	52                   	push   %dx
    5e33:	8b 76 fe             	mov    -0x2(%bp),%si
    5e36:	8b 44 02             	mov    0x2(%si),%ax
    5e39:	50                   	push   %ax
    5e3a:	bb 20 00             	mov    $0x20,%bx
    5e3d:	8d 36 e5 07          	lea    0x7e5,%si
    5e41:	b8 10 00             	mov    $0x10,%ax
    5e44:	50                   	push   %ax
    5e45:	8b 7e fe             	mov    -0x2(%bp),%di
    5e48:	8b 45 0a             	mov    0xa(%di),%ax
    5e4b:	83 c0 04             	add    $0x4,%ax
    5e4e:	59                   	pop    %cx
    5e4f:	99                   	cwtd
    5e50:	f7 f9                	idiv   %cx
    5e52:	d1 e2                	shl    %dx
    5e54:	03 f2                	add    %dx,%si
    5e56:	8b 04                	mov    (%si),%ax
    5e58:	f7 eb                	imul   %bx
    5e5a:	ba 08 00             	mov    $0x8,%dx
    5e5d:	8b ca                	mov    %dx,%cx
    5e5f:	d3 f8                	sar    %cl,%ax
    5e61:	5a                   	pop    %dx
    5e62:	2b d0                	sub    %ax,%dx
    5e64:	52                   	push   %dx
    5e65:	ff 76 04             	push   0x4(%bp)
    5e68:	e8 d0 02             	call   0x613b
    5e6b:	83 c4 0a             	add    $0xa,%sp
    5e6e:	eb 20                	jmp    0x5e90
    5e70:	b8 00 00             	mov    $0x0,%ax
    5e73:	50                   	push   %ax
    5e74:	ff 76 fe             	push   -0x2(%bp)
    5e77:	8b 76 fe             	mov    -0x2(%bp),%si
    5e7a:	8b 44 04             	mov    0x4(%si),%ax
    5e7d:	83 c0 04             	add    $0x4,%ax
    5e80:	50                   	push   %ax
    5e81:	8b 76 fe             	mov    -0x2(%bp),%si
    5e84:	ff 74 02             	push   0x2(%si)
    5e87:	ff 76 04             	push   0x4(%bp)
    5e8a:	e8 ae 02             	call   0x613b
    5e8d:	83 c4 0a             	add    $0xa,%sp
    5e90:	8b e5                	mov    %bp,%sp
    5e92:	5d                   	pop    %bp
    5e93:	c3                   	ret
    5e94:	55                   	push   %bp
    5e95:	8b ec                	mov    %sp,%bp
    5e97:	83 ec 04             	sub    $0x4,%sp
    5e9a:	8b 06 e3 25          	mov    0x25e3,%ax
    5e9e:	83 e0 1f             	and    $0x1f,%ax
    5ea1:	83 f8 10             	cmp    $0x10,%ax
    5ea4:	b8 01 00             	mov    $0x1,%ax
    5ea7:	7c 02                	jl     0x5eab
    5ea9:	ff c8                	dec    %ax
    5eab:	ba 04 00             	mov    $0x4,%dx
    5eae:	8b ca                	mov    %dx,%cx
    5eb0:	d3 e0                	shl    %cl,%ax
    5eb2:	89 06 8f 5e          	mov    %ax,0x5e8f
    5eb6:	8d 36 2e 46          	lea    0x462e,%si
    5eba:	bb 6a 00             	mov    $0x6a,%bx
    5ebd:	8b 06 c8 48          	mov    0x48c8,%ax
    5ec1:	f7 eb                	imul   %bx
    5ec3:	03 f0                	add    %ax,%si
    5ec5:	8b 44 02             	mov    0x2(%si),%ax
    5ec8:	89 46 fc             	mov    %ax,-0x4(%bp)
    5ecb:	b8 00 00             	mov    $0x0,%ax
    5ece:	50                   	push   %ax
    5ecf:	50                   	push   %ax
    5ed0:	b0 96                	mov    $0x96,%al
    5ed2:	8b 16 8f 5e          	mov    0x5e8f,%dx
    5ed6:	bb 01 00             	mov    $0x1,%bx
    5ed9:	8b cb                	mov    %bx,%cx
    5edb:	d3 fa                	sar    %cl,%dx
    5edd:	2b c2                	sub    %dx,%ax
    5edf:	50                   	push   %ax
    5ee0:	81 7e fc e8 03       	cmpw   $0x3e8,-0x4(%bp)
    5ee5:	7d 05                	jge    0x5eec
    5ee7:	b8 e8 03             	mov    $0x3e8,%ax
    5eea:	eb 0f                	jmp    0x5efb
    5eec:	81 7e fc d0 07       	cmpw   $0x7d0,-0x4(%bp)
    5ef1:	7e 05                	jle    0x5ef8
    5ef3:	b8 d0 07             	mov    $0x7d0,%ax
    5ef6:	eb 03                	jmp    0x5efb
    5ef8:	8b 46 fc             	mov    -0x4(%bp),%ax
    5efb:	03 06 8f 5e          	add    0x5e8f,%ax
    5eff:	50                   	push   %ax
    5f00:	ff 76 04             	push   0x4(%bp)
    5f03:	e8 35 02             	call   0x613b
    5f06:	83 c4 0a             	add    $0xa,%sp
    5f09:	8b e5                	mov    %bp,%sp
    5f0b:	5d                   	pop    %bp
    5f0c:	c3                   	ret
    5f0d:	55                   	push   %bp
    5f0e:	8b ec                	mov    %sp,%bp
    5f10:	83 ec 02             	sub    $0x2,%sp
    5f13:	8b 76 04             	mov    0x4(%bp),%si
    5f16:	8b 44 64             	mov    0x64(%si),%ax
    5f19:	0b c0                	or     %ax,%ax
    5f1b:	74 07                	je     0x5f24
    5f1d:	b8 00 00             	mov    $0x0,%ax
    5f20:	8b e5                	mov    %bp,%sp
    5f22:	5d                   	pop    %bp
    5f23:	c3                   	ret
    5f24:	8d 06 2e 46          	lea    0x462e,%ax
    5f28:	50                   	push   %ax
    5f29:	bb 6a 00             	mov    $0x6a,%bx
    5f2c:	8b 06 c8 48          	mov    0x48c8,%ax
    5f30:	f7 eb                	imul   %bx
    5f32:	5e                   	pop    %si
    5f33:	03 f0                	add    %ax,%si
    5f35:	89 76 fe             	mov    %si,-0x2(%bp)
    5f38:	8b 06 e3 25          	mov    0x25e3,%ax
    5f3c:	83 e0 1f             	and    $0x1f,%ax
    5f3f:	83 f8 10             	cmp    $0x10,%ax
    5f42:	b8 01 00             	mov    $0x1,%ax
    5f45:	7c 02                	jl     0x5f49
    5f47:	ff c8                	dec    %ax
    5f49:	ba 04 00             	mov    $0x4,%dx
    5f4c:	8b ca                	mov    %dx,%cx
    5f4e:	d3 e0                	shl    %cl,%ax
    5f50:	89 06 8f 5e          	mov    %ax,0x5e8f
    5f54:	8b 76 04             	mov    0x4(%bp),%si
    5f57:	8b 44 02             	mov    0x2(%si),%ax
    5f5a:	8b 76 fe             	mov    -0x2(%bp),%si
    5f5d:	2b 44 02             	sub    0x2(%si),%ax
    5f60:	50                   	push   %ax
    5f61:	e8 bf 01             	call   0x6123
    5f64:	83 c4 02             	add    $0x2,%sp
    5f67:	83 f8 10             	cmp    $0x10,%ax
    5f6a:	7d 58                	jge    0x5fc4
    5f6c:	8b 76 04             	mov    0x4(%bp),%si
    5f6f:	8b 44 04             	mov    0x4(%si),%ax
    5f72:	8b 76 fe             	mov    -0x2(%bp),%si
    5f75:	2b 44 04             	sub    0x4(%si),%ax
    5f78:	50                   	push   %ax
    5f79:	e8 a7 01             	call   0x6123
    5f7c:	83 c4 02             	add    $0x2,%sp
    5f7f:	83 f8 10             	cmp    $0x10,%ax
    5f82:	7d 40                	jge    0x5fc4
    5f84:	8b 06 ca 48          	mov    0x48ca,%ax
    5f88:	0b c0                	or     %ax,%ax
    5f8a:	74 15                	je     0x5fa1
    5f8c:	ff 76 04             	push   0x4(%bp)
    5f8f:	e8 f5 db             	call   0x3b87
    5f92:	83 c4 02             	add    $0x2,%sp
    5f95:	b8 01 00             	mov    $0x1,%ax
    5f98:	50                   	push   %ax
    5f99:	e8 f3 d5             	call   0x358f
    5f9c:	83 c4 02             	add    $0x2,%sp
    5f9f:	eb 1c                	jmp    0x5fbd
    5fa1:	8b 06 cc 48          	mov    0x48cc,%ax
    5fa5:	0b c0                	or     %ax,%ax
    5fa7:	74 0b                	je     0x5fb4
    5fa9:	ff 76 04             	push   0x4(%bp)
    5fac:	e8 1f db             	call   0x3ace
    5faf:	83 c4 02             	add    $0x2,%sp
    5fb2:	eb 09                	jmp    0x5fbd
    5fb4:	ff 76 04             	push   0x4(%bp)
    5fb7:	e8 6c dc             	call   0x3c26
    5fba:	83 c4 02             	add    $0x2,%sp
    5fbd:	b8 00 00             	mov    $0x0,%ax
    5fc0:	8b e5                	mov    %bp,%sp
    5fc2:	5d                   	pop    %bp
    5fc3:	c3                   	ret
    5fc4:	b8 01 00             	mov    $0x1,%ax
    5fc7:	89 06 23 5e          	mov    %ax,0x5e23
    5fcb:	b0 00                	mov    $0x0,%al
    5fcd:	50                   	push   %ax
    5fce:	50                   	push   %ax
    5fcf:	8b 76 fe             	mov    -0x2(%bp),%si
    5fd2:	ff 74 04             	push   0x4(%si)
    5fd5:	8b 76 fe             	mov    -0x2(%bp),%si
    5fd8:	ff 74 02             	push   0x2(%si)
    5fdb:	ff 76 04             	push   0x4(%bp)
    5fde:	e8 5a 01             	call   0x613b
    5fe1:	83 c4 0a             	add    $0xa,%sp
    5fe4:	8b e5                	mov    %bp,%sp
    5fe6:	5d                   	pop    %bp
    5fe7:	c3                   	ret
    5fe8:	55                   	push   %bp
    5fe9:	8b ec                	mov    %sp,%bp
    5feb:	83 ec 10             	sub    $0x10,%sp
    5fee:	b8 6a 00             	mov    $0x6a,%ax
    5ff1:	50                   	push   %ax
    5ff2:	8d 36 91 5e          	lea    0x5e91,%si
    5ff6:	56                   	push   %si
    5ff7:	8d 36 25 5e          	lea    0x5e25,%si
    5ffb:	56                   	push   %si
    5ffc:	e8 90 37             	call   0x978f
    5fff:	83 c4 06             	add    $0x6,%sp
    6002:	b8 6a 00             	mov    $0x6a,%ax
    6005:	50                   	push   %ax
    6006:	8d 36 fb 5e          	lea    0x5efb,%si
    600a:	56                   	push   %si
    600b:	ff 76 04             	push   0x4(%bp)
    600e:	e8 7e 37             	call   0x978f
    6011:	83 c4 06             	add    $0x6,%sp
    6014:	8b 06 9f 5e          	mov    0x5e9f,%ax
    6018:	83 c0 0a             	add    $0xa,%ax
    601b:	89 46 f8             	mov    %ax,-0x8(%bp)
    601e:	8d 36 e5 07          	lea    0x7e5,%si
    6022:	b8 10 00             	mov    $0x10,%ax
    6025:	50                   	push   %ax
    6026:	8b 06 9b 5e          	mov    0x5e9b,%ax
    602a:	5b                   	pop    %bx
    602b:	99                   	cwtd
    602c:	f7 fb                	idiv   %bx
    602e:	d1 e2                	shl    %dx
    6030:	03 f2                	add    %dx,%si
    6032:	8b 04                	mov    (%si),%ax
    6034:	f7 6e f8             	imulw  -0x8(%bp)
    6037:	50                   	push   %ax
    6038:	8d 36 e5 07          	lea    0x7e5,%si
    603c:	b8 10 00             	mov    $0x10,%ax
    603f:	50                   	push   %ax
    6040:	8b 06 9b 5e          	mov    0x5e9b,%ax
    6044:	83 c0 04             	add    $0x4,%ax
    6047:	5b                   	pop    %bx
    6048:	99                   	cwtd
    6049:	f7 fb                	idiv   %bx
    604b:	d1 e2                	shl    %dx
    604d:	03 f2                	add    %dx,%si
    604f:	8b 04                	mov    (%si),%ax
    6051:	f7 6e f8             	imulw  -0x8(%bp)
    6054:	50                   	push   %ax
    6055:	8d 36 91 5e          	lea    0x5e91,%si
    6059:	56                   	push   %si
    605a:	e8 d1 a4             	call   0x52e
    605d:	83 c4 06             	add    $0x6,%sp
    6060:	b8 08 00             	mov    $0x8,%ax
    6063:	8b 16 93 5e          	mov    0x5e93,%dx
    6067:	03 d0                	add    %ax,%dx
    6069:	89 16 93 5e          	mov    %dx,0x5e93
    606d:	b8 08 00             	mov    $0x8,%ax
    6070:	8b 16 95 5e          	mov    0x5e95,%dx
    6074:	2b d0                	sub    %ax,%dx
    6076:	89 16 95 5e          	mov    %dx,0x5e95
    607a:	b8 09 3d             	mov    $0x3d09,%ax
    607d:	89 46 fc             	mov    %ax,-0x4(%bp)
    6080:	b8 00 00             	mov    $0x0,%ax
    6083:	89 46 fe             	mov    %ax,-0x2(%bp)
    6086:	81 7e fe 0a 00       	cmpw   $0xa,-0x2(%bp)
    608b:	7c 03                	jl     0x6090
    608d:	e9 8c 00             	jmp    0x611c
    6090:	8d 76 f2             	lea    -0xe(%bp),%si
    6093:	56                   	push   %si
    6094:	8d 76 f0             	lea    -0x10(%bp),%si
    6097:	56                   	push   %si
    6098:	8d 36 91 5e          	lea    0x5e91,%si
    609c:	56                   	push   %si
    609d:	e8 41 a4             	call   0x4e1
    60a0:	83 c4 06             	add    $0x6,%sp
    60a3:	8d 76 f6             	lea    -0xa(%bp),%si
    60a6:	56                   	push   %si
    60a7:	8d 76 f4             	lea    -0xc(%bp),%si
    60aa:	56                   	push   %si
    60ab:	8d 36 fb 5e          	lea    0x5efb,%si
    60af:	56                   	push   %si
    60b0:	e8 2e a4             	call   0x4e1
    60b3:	83 c4 06             	add    $0x6,%sp
    60b6:	ff 76 f6             	push   -0xa(%bp)
    60b9:	ff 76 f4             	push   -0xc(%bp)
    60bc:	ff 76 f2             	push   -0xe(%bp)
    60bf:	ff 76 f0             	push   -0x10(%bp)
    60c2:	e8 a6 06             	call   0x676b
    60c5:	83 c4 08             	add    $0x8,%sp
    60c8:	89 46 fa             	mov    %ax,-0x6(%bp)
    60cb:	81 7e fa 00 00       	cmpw   $0x0,-0x6(%bp)
    60d0:	7d 02                	jge    0x60d4
    60d2:	eb 08                	jmp    0x60dc
    60d4:	8b 46 fa             	mov    -0x6(%bp),%ax
    60d7:	3b 46 fc             	cmp    -0x4(%bp),%ax
    60da:	7e 07                	jle    0x60e3
    60dc:	b8 00 00             	mov    $0x0,%ax
    60df:	8b e5                	mov    %bp,%sp
    60e1:	5d                   	pop    %bp
    60e2:	c3                   	ret
    60e3:	8b 46 f0             	mov    -0x10(%bp),%ax
    60e6:	3b 46 f4             	cmp    -0xc(%bp),%ax
    60e9:	7c 2b                	jl     0x6116
    60eb:	8b 46 f4             	mov    -0xc(%bp),%ax
    60ee:	83 c0 10             	add    $0x10,%ax
    60f1:	83 e8 01             	sub    $0x1,%ax
    60f4:	3b 46 f0             	cmp    -0x10(%bp),%ax
    60f7:	7c 1d                	jl     0x6116
    60f9:	8b 46 f2             	mov    -0xe(%bp),%ax
    60fc:	3b 46 f6             	cmp    -0xa(%bp),%ax
    60ff:	7f 15                	jg     0x6116
    6101:	8b 46 f6             	mov    -0xa(%bp),%ax
    6104:	83 e8 10             	sub    $0x10,%ax
    6107:	83 c0 01             	add    $0x1,%ax
    610a:	3b 46 f2             	cmp    -0xe(%bp),%ax
    610d:	7f 07                	jg     0x6116
    610f:	b8 01 00             	mov    $0x1,%ax
    6112:	8b e5                	mov    %bp,%sp
    6114:	5d                   	pop    %bp
    6115:	c3                   	ret
    6116:	ff 46 fe             	incw   -0x2(%bp)
    6119:	e9 6a ff             	jmp    0x6086
    611c:	b8 00 00             	mov    $0x0,%ax
    611f:	8b e5                	mov    %bp,%sp
    6121:	5d                   	pop    %bp
    6122:	c3                   	ret
    6123:	55                   	push   %bp
    6124:	8b ec                	mov    %sp,%bp
    6126:	81 7e 04 00 00       	cmpw   $0x0,0x4(%bp)
    612b:	7d 07                	jge    0x6134
    612d:	8b 46 04             	mov    0x4(%bp),%ax
    6130:	f7 d8                	neg    %ax
    6132:	eb 03                	jmp    0x6137
    6134:	8b 46 04             	mov    0x4(%bp),%ax
    6137:	8b e5                	mov    %bp,%sp
    6139:	5d                   	pop    %bp
    613a:	c3                   	ret
    613b:	55                   	push   %bp
    613c:	8b ec                	mov    %sp,%bp
    613e:	83 ec 1c             	sub    $0x1c,%sp
    6141:	8b 46 04             	mov    0x4(%bp),%ax
    6144:	89 46 e4             	mov    %ax,-0x1c(%bp)
    6147:	b8 00 00             	mov    $0x0,%ax
    614a:	89 06 21 5e          	mov    %ax,0x5e21
    614e:	8b 76 e4             	mov    -0x1c(%bp),%si
    6151:	8b 04                	mov    (%si),%ax
    6153:	83 f8 07             	cmp    $0x7,%ax
    6156:	75 18                	jne    0x6170
    6158:	8b 76 e4             	mov    -0x1c(%bp),%si
    615b:	8b 44 0a             	mov    0xa(%si),%ax
    615e:	83 f8 0c             	cmp    $0xc,%ax
    6161:	74 0d                	je     0x6170
    6163:	b8 ff ff             	mov    $0xffff,%ax
    6166:	8b 76 e4             	mov    -0x1c(%bp),%si
    6169:	89 44 12             	mov    %ax,0x12(%si)
    616c:	8b e5                	mov    %bp,%sp
    616e:	5d                   	pop    %bp
    616f:	c3                   	ret
    6170:	8b 76 e4             	mov    -0x1c(%bp),%si
    6173:	8b 44 02             	mov    0x2(%si),%ax
    6176:	89 46 e8             	mov    %ax,-0x18(%bp)
    6179:	8b 76 e4             	mov    -0x1c(%bp),%si
    617c:	8b 44 04             	mov    0x4(%si),%ax
    617f:	89 46 ea             	mov    %ax,-0x16(%bp)
    6182:	8b 46 e8             	mov    -0x18(%bp),%ax
    6185:	2b 46 06             	sub    0x6(%bp),%ax
    6188:	89 46 ec             	mov    %ax,-0x14(%bp)
    618b:	50                   	push   %ax
    618c:	e8 94 ff             	call   0x6123
    618f:	83 c4 02             	add    $0x2,%sp
    6192:	81 f8 c8 00          	cmp    $0xc8,%ax
    6196:	7f 03                	jg     0x619b
    6198:	e9 d1 00             	jmp    0x626c
    619b:	8b 76 e4             	mov    -0x1c(%bp),%si
    619e:	8b 44 06             	mov    0x6(%si),%ax
    61a1:	0b c0                	or     %ax,%ax
    61a3:	74 75                	je     0x621a
    61a5:	8b 76 e4             	mov    -0x1c(%bp),%si
    61a8:	8b 44 06             	mov    0x6(%si),%ax
    61ab:	83 f8 00             	cmp    $0x0,%ax
    61ae:	b8 01 00             	mov    $0x1,%ax
    61b1:	7c 02                	jl     0x61b5
    61b3:	ff c8                	dec    %ax
    61b5:	8b 56 ec             	mov    -0x14(%bp),%dx
    61b8:	83 fa 00             	cmp    $0x0,%dx
    61bb:	ba 01 00             	mov    $0x1,%dx
    61be:	7c 02                	jl     0x61c2
    61c0:	ff ca                	dec    %dx
    61c2:	3b d0                	cmp    %ax,%dx
    61c4:	75 54                	jne    0x621a
    61c6:	8b 76 e4             	mov    -0x1c(%bp),%si
    61c9:	8b 44 1a             	mov    0x1a(%si),%ax
    61cc:	0b c0                	or     %ax,%ax
    61ce:	74 02                	je     0x61d2
    61d0:	eb 17                	jmp    0x61e9
    61d2:	8b 46 ea             	mov    -0x16(%bp),%ax
    61d5:	81 f8 96 00          	cmp    $0x96,%ax
    61d9:	b8 01 00             	mov    $0x1,%ax
    61dc:	7f 02                	jg     0x61e0
    61de:	ff c8                	dec    %ax
    61e0:	83 c0 01             	add    $0x1,%ax
    61e3:	8b 76 e4             	mov    -0x1c(%bp),%si
    61e6:	89 44 1a             	mov    %ax,0x1a(%si)
    61e9:	b8 01 00             	mov    $0x1,%ax
    61ec:	50                   	push   %ax
    61ed:	b0 00                	mov    $0x0,%al
    61ef:	50                   	push   %ax
    61f0:	8b 76 e4             	mov    -0x1c(%bp),%si
    61f3:	8b 44 1a             	mov    0x1a(%si),%ax
    61f6:	83 f8 01             	cmp    $0x1,%ax
    61f9:	75 08                	jne    0x6203
    61fb:	8b 46 ea             	mov    -0x16(%bp),%ax
    61fe:	83 c0 19             	add    $0x19,%ax
    6201:	eb 06                	jmp    0x6209
    6203:	8b 46 ea             	mov    -0x16(%bp),%ax
    6206:	83 e8 19             	sub    $0x19,%ax
    6209:	50                   	push   %ax
    620a:	ff 76 e8             	push   -0x18(%bp)
    620d:	ff 76 e4             	push   -0x1c(%bp)
    6210:	e8 28 ff             	call   0x613b
    6213:	83 c4 0a             	add    $0xa,%sp
    6216:	8b e5                	mov    %bp,%sp
    6218:	5d                   	pop    %bp
    6219:	c3                   	ret
    621a:	b8 00 00             	mov    $0x0,%ax
    621d:	8b 76 e4             	mov    -0x1c(%bp),%si
    6220:	89 44 1a             	mov    %ax,0x1a(%si)
    6223:	b8 01 00             	mov    $0x1,%ax
    6226:	50                   	push   %ax
    6227:	b0 00                	mov    $0x0,%al
    6229:	50                   	push   %ax
    622a:	b0 96                	mov    $0x96,%al
    622c:	2b 06 8f 5e          	sub    0x5e8f,%ax
    6230:	ba 64 00             	mov    $0x64,%dx
    6233:	8b 5e ea             	mov    -0x16(%bp),%bx
    6236:	03 da                	add    %dx,%bx
    6238:	89 5e ea             	mov    %bx,-0x16(%bp)
    623b:	3b d8                	cmp    %ax,%bx
    623d:	7e 09                	jle    0x6248
    623f:	b8 96 00             	mov    $0x96,%ax
    6242:	2b 06 8f 5e          	sub    0x5e8f,%ax
    6246:	eb 03                	jmp    0x624b
    6248:	8b 46 ea             	mov    -0x16(%bp),%ax
    624b:	50                   	push   %ax
    624c:	81 7e ec 00 00       	cmpw   $0x0,-0x14(%bp)
    6251:	7d 05                	jge    0x6258
    6253:	b8 96 00             	mov    $0x96,%ax
    6256:	eb 03                	jmp    0x625b
    6258:	b8 6a ff             	mov    $0xff6a,%ax
    625b:	03 46 e8             	add    -0x18(%bp),%ax
    625e:	50                   	push   %ax
    625f:	ff 76 e4             	push   -0x1c(%bp)
    6262:	e8 d6 fe             	call   0x613b
    6265:	83 c4 0a             	add    $0xa,%sp
    6268:	8b e5                	mov    %bp,%sp
    626a:	5d                   	pop    %bp
    626b:	c3                   	ret
    626c:	8b 46 0c             	mov    0xc(%bp),%ax
    626f:	0b c0                	or     %ax,%ax
    6271:	74 02                	je     0x6275
    6273:	eb 09                	jmp    0x627e
    6275:	b8 00 00             	mov    $0x0,%ax
    6278:	8b 76 e4             	mov    -0x1c(%bp),%si
    627b:	89 44 1a             	mov    %ax,0x1a(%si)
    627e:	8b 76 e4             	mov    -0x1c(%bp),%si
    6281:	8b 44 0e             	mov    0xe(%si),%ax
    6284:	0b c0                	or     %ax,%ax
    6286:	75 03                	jne    0x628b
    6288:	e9 b6 00             	jmp    0x6341
    628b:	8b 46 ea             	mov    -0x16(%bp),%ax
    628e:	2b 46 08             	sub    0x8(%bp),%ax
    6291:	89 46 ee             	mov    %ax,-0x12(%bp)
    6294:	0b c0                	or     %ax,%ax
    6296:	74 03                	je     0x629b
    6298:	b8 01 00             	mov    $0x1,%ax
    629b:	0b c0                	or     %ax,%ax
    629d:	74 23                	je     0x62c2
    629f:	ff 76 ee             	push   -0x12(%bp)
    62a2:	e8 7e fe             	call   0x6123
    62a5:	83 c4 02             	add    $0x2,%sp
    62a8:	83 f8 06             	cmp    $0x6,%ax
    62ab:	b8 01 00             	mov    $0x1,%ax
    62ae:	7c 02                	jl     0x62b2
    62b0:	ff c8                	dec    %ax
    62b2:	0b c0                	or     %ax,%ax
    62b4:	74 03                	je     0x62b9
    62b6:	b8 01 00             	mov    $0x1,%ax
    62b9:	0b c0                	or     %ax,%ax
    62bb:	74 05                	je     0x62c2
    62bd:	b8 01 00             	mov    $0x1,%ax
    62c0:	eb 03                	jmp    0x62c5
    62c2:	b8 00 00             	mov    $0x0,%ax
    62c5:	89 06 21 5e          	mov    %ax,0x5e21
    62c9:	0b c0                	or     %ax,%ax
    62cb:	74 1d                	je     0x62ea
    62cd:	81 7e ee 00 00       	cmpw   $0x0,-0x12(%bp)
    62d2:	7d 08                	jge    0x62dc
    62d4:	ff 46 ea             	incw   -0x16(%bp)
    62d7:	8b 46 ea             	mov    -0x16(%bp),%ax
    62da:	eb 06                	jmp    0x62e2
    62dc:	ff 4e ea             	decw   -0x16(%bp)
    62df:	8b 46 ea             	mov    -0x16(%bp),%ax
    62e2:	8b 76 e4             	mov    -0x1c(%bp),%si
    62e5:	89 44 04             	mov    %ax,0x4(%si)
    62e8:	eb 57                	jmp    0x6341
    62ea:	8b 46 ec             	mov    -0x14(%bp),%ax
    62ed:	0b c0                	or     %ax,%ax
    62ef:	74 03                	je     0x62f4
    62f1:	b8 01 00             	mov    $0x1,%ax
    62f4:	0b c0                	or     %ax,%ax
    62f6:	74 23                	je     0x631b
    62f8:	ff 76 ec             	push   -0x14(%bp)
    62fb:	e8 25 fe             	call   0x6123
    62fe:	83 c4 02             	add    $0x2,%sp
    6301:	83 f8 06             	cmp    $0x6,%ax
    6304:	b8 01 00             	mov    $0x1,%ax
    6307:	7c 02                	jl     0x630b
    6309:	ff c8                	dec    %ax
    630b:	0b c0                	or     %ax,%ax
    630d:	74 03                	je     0x6312
    630f:	b8 01 00             	mov    $0x1,%ax
    6312:	0b c0                	or     %ax,%ax
    6314:	74 05                	je     0x631b
    6316:	b8 01 00             	mov    $0x1,%ax
    6319:	eb 03                	jmp    0x631e
    631b:	b8 00 00             	mov    $0x0,%ax
    631e:	89 06 21 5e          	mov    %ax,0x5e21
    6322:	0b c0                	or     %ax,%ax
    6324:	74 1b                	je     0x6341
    6326:	81 7e ec 00 00       	cmpw   $0x0,-0x14(%bp)
    632b:	7d 08                	jge    0x6335
    632d:	ff 46 e8             	incw   -0x18(%bp)
    6330:	8b 46 e8             	mov    -0x18(%bp),%ax
    6333:	eb 06                	jmp    0x633b
    6335:	ff 4e e8             	decw   -0x18(%bp)
    6338:	8b 46 e8             	mov    -0x18(%bp),%ax
    633b:	8b 76 e4             	mov    -0x1c(%bp),%si
    633e:	89 44 02             	mov    %ax,0x2(%si)
    6341:	ff 76 ea             	push   -0x16(%bp)
    6344:	ff 76 e8             	push   -0x18(%bp)
    6347:	e8 e3 02             	call   0x662d
    634a:	83 c4 04             	add    $0x4,%sp
    634d:	b8 6a 00             	mov    $0x6a,%ax
    6350:	50                   	push   %ax
    6351:	8d 36 25 5e          	lea    0x5e25,%si
    6355:	56                   	push   %si
    6356:	ff 76 e4             	push   -0x1c(%bp)
    6359:	e8 33 34             	call   0x978f
    635c:	83 c4 06             	add    $0x6,%sp
    635f:	8b 06 33 5e          	mov    0x5e33,%ax
    6363:	83 c0 01             	add    $0x1,%ax
    6366:	89 46 fa             	mov    %ax,-0x6(%bp)
    6369:	3b 06 e9 25          	cmp    0x25e9,%ax
    636d:	7e 09                	jle    0x6378
    636f:	8b 06 e9 25          	mov    0x25e9,%ax
    6373:	89 46 fa             	mov    %ax,-0x6(%bp)
    6376:	eb 10                	jmp    0x6388
    6378:	8b 46 fa             	mov    -0x6(%bp),%ax
    637b:	3b 06 eb 25          	cmp    0x25eb,%ax
    637f:	7d 07                	jge    0x6388
    6381:	8b 06 eb 25          	mov    0x25eb,%ax
    6385:	89 46 fa             	mov    %ax,-0x6(%bp)
    6388:	b8 00 00             	mov    $0x0,%ax
    638b:	89 46 f0             	mov    %ax,-0x10(%bp)
    638e:	81 7e f0 03 00       	cmpw   $0x3,-0x10(%bp)
    6393:	7c 03                	jl     0x6398
    6395:	e9 0e 01             	jmp    0x64a6
    6398:	b8 10 00             	mov    $0x10,%ax
    639b:	50                   	push   %ax
    639c:	8b 06 2f 5e          	mov    0x5e2f,%ax
    63a0:	8b 16 31 5e          	mov    0x5e31,%dx
    63a4:	0b d2                	or     %dx,%dx
    63a6:	74 11                	je     0x63b9
    63a8:	8d 36 d5 23          	lea    0x23d5,%si
    63ac:	8b 56 f0             	mov    -0x10(%bp),%dx
    63af:	d1 e2                	shl    %dx
    63b1:	03 f2                	add    %dx,%si
    63b3:	8b 14                	mov    (%si),%dx
    63b5:	f7 da                	neg    %dx
    63b7:	eb 0d                	jmp    0x63c6
    63b9:	8d 36 d5 23          	lea    0x23d5,%si
    63bd:	8b 56 f0             	mov    -0x10(%bp),%dx
    63c0:	d1 e2                	shl    %dx
    63c2:	03 f2                	add    %dx,%si
    63c4:	8b 14                	mov    (%si),%dx
    63c6:	03 c2                	add    %dx,%ax
    63c8:	83 c0 10             	add    $0x10,%ax
    63cb:	5b                   	pop    %bx
    63cc:	99                   	cwtd
    63cd:	f7 fb                	idiv   %bx
    63cf:	89 56 f8             	mov    %dx,-0x8(%bp)
    63d2:	8d 36 e5 07          	lea    0x7e5,%si
    63d6:	b8 10 00             	mov    $0x10,%ax
    63d9:	50                   	push   %ax
    63da:	8b 46 f8             	mov    -0x8(%bp),%ax
    63dd:	5b                   	pop    %bx
    63de:	99                   	cwtd
    63df:	f7 fb                	idiv   %bx
    63e1:	d1 e2                	shl    %dx
    63e3:	03 f2                	add    %dx,%si
    63e5:	8b 04                	mov    (%si),%ax
    63e7:	f7 6e fa             	imulw  -0x6(%bp)
    63ea:	50                   	push   %ax
    63eb:	8d 36 e5 07          	lea    0x7e5,%si
    63ef:	b8 10 00             	mov    $0x10,%ax
    63f2:	50                   	push   %ax
    63f3:	8b 46 f8             	mov    -0x8(%bp),%ax
    63f6:	83 c0 04             	add    $0x4,%ax
    63f9:	5b                   	pop    %bx
    63fa:	99                   	cwtd
    63fb:	f7 fb                	idiv   %bx
    63fd:	d1 e2                	shl    %dx
    63ff:	03 f2                	add    %dx,%si
    6401:	8b 04                	mov    (%si),%ax
    6403:	f7 6e fa             	imulw  -0x6(%bp)
    6406:	50                   	push   %ax
    6407:	8d 36 25 5e          	lea    0x5e25,%si
    640b:	56                   	push   %si
    640c:	e8 1f a1             	call   0x52e
    640f:	83 c4 06             	add    $0x6,%sp
    6412:	8d 76 f4             	lea    -0xc(%bp),%si
    6415:	56                   	push   %si
    6416:	8d 76 f2             	lea    -0xe(%bp),%si
    6419:	56                   	push   %si
    641a:	8d 36 25 5e          	lea    0x5e25,%si
    641e:	56                   	push   %si
    641f:	e8 bf a0             	call   0x4e1
    6422:	83 c4 06             	add    $0x6,%sp
    6425:	ff 76 08             	push   0x8(%bp)
    6428:	ff 76 06             	push   0x6(%bp)
    642b:	ff 76 f4             	push   -0xc(%bp)
    642e:	ff 76 f2             	push   -0xe(%bp)
    6431:	e8 37 03             	call   0x676b
    6434:	83 c4 08             	add    $0x8,%sp
    6437:	8d 36 65 5f          	lea    0x5f65,%si
    643b:	8b 56 f0             	mov    -0x10(%bp),%dx
    643e:	d1 e2                	shl    %dx
    6440:	03 f2                	add    %dx,%si
    6442:	89 04                	mov    %ax,(%si)
    6444:	8b 46 f4             	mov    -0xc(%bp),%ax
    6447:	8d 36 e3 0a          	lea    0xae3,%si
    644b:	8b 56 f2             	mov    -0xe(%bp),%dx
    644e:	83 c2 08             	add    $0x8,%dx
    6451:	03 f2                	add    %dx,%si
    6453:	8a 14                	mov    (%si),%dl
    6455:	81 e2 ff 00          	and    $0xff,%dx
    6459:	2b c2                	sub    %dx,%ax
    645b:	8d 36 71 5f          	lea    0x5f71,%si
    645f:	8b 56 f0             	mov    -0x10(%bp),%dx
    6462:	d1 e2                	shl    %dx
    6464:	03 f2                	add    %dx,%si
    6466:	89 04                	mov    %ax,(%si)
    6468:	8d 36 71 5f          	lea    0x5f71,%si
    646c:	8b 46 f0             	mov    -0x10(%bp),%ax
    646f:	d1 e0                	shl    %ax
    6471:	03 f0                	add    %ax,%si
    6473:	ff 34                	push   (%si)
    6475:	ff 76 f4             	push   -0xc(%bp)
    6478:	ff 76 f2             	push   -0xe(%bp)
    647b:	e8 45 02             	call   0x66c3
    647e:	83 c4 06             	add    $0x6,%sp
    6481:	8d 36 6b 5f          	lea    0x5f6b,%si
    6485:	8b 56 f0             	mov    -0x10(%bp),%dx
    6488:	d1 e2                	shl    %dx
    648a:	03 f2                	add    %dx,%si
    648c:	89 04                	mov    %ax,(%si)
    648e:	b8 6a 00             	mov    $0x6a,%ax
    6491:	50                   	push   %ax
    6492:	8d 36 25 5e          	lea    0x5e25,%si
    6496:	56                   	push   %si
    6497:	ff 76 e4             	push   -0x1c(%bp)
    649a:	e8 f2 32             	call   0x978f
    649d:	83 c4 06             	add    $0x6,%sp
    64a0:	ff 46 f0             	incw   -0x10(%bp)
    64a3:	e9 e8 fe             	jmp    0x638e
    64a6:	8b 46 0a             	mov    0xa(%bp),%ax
    64a9:	0b c0                	or     %ax,%ax
    64ab:	74 16                	je     0x64c3
    64ad:	ff 76 0a             	push   0xa(%bp)
    64b0:	e8 35 fb             	call   0x5fe8
    64b3:	83 c4 02             	add    $0x2,%sp
    64b6:	0b c0                	or     %ax,%ax
    64b8:	74 09                	je     0x64c3
    64ba:	b8 01 00             	mov    $0x1,%ax
    64bd:	8b 76 e4             	mov    -0x1c(%bp),%si
    64c0:	89 44 14             	mov    %ax,0x14(%si)
    64c3:	b8 ff 7f             	mov    $0x7fff,%ax
    64c6:	89 46 fe             	mov    %ax,-0x2(%bp)
    64c9:	b8 00 00             	mov    $0x0,%ax
    64cc:	89 46 f0             	mov    %ax,-0x10(%bp)
    64cf:	81 7e f0 03 00       	cmpw   $0x3,-0x10(%bp)
    64d4:	7d 41                	jge    0x6517
    64d6:	8d 36 65 5f          	lea    0x5f65,%si
    64da:	8b 46 f0             	mov    -0x10(%bp),%ax
    64dd:	d1 e0                	shl    %ax
    64df:	03 f0                	add    %ax,%si
    64e1:	8b 04                	mov    (%si),%ax
    64e3:	89 46 fc             	mov    %ax,-0x4(%bp)
    64e6:	83 f8 00             	cmp    $0x0,%ax
    64e9:	7c 27                	jl     0x6512
    64eb:	8b 46 fc             	mov    -0x4(%bp),%ax
    64ee:	3b 46 fe             	cmp    -0x2(%bp),%ax
    64f1:	7d 1f                	jge    0x6512
    64f3:	8d 36 6b 5f          	lea    0x5f6b,%si
    64f7:	8b 46 f0             	mov    -0x10(%bp),%ax
    64fa:	d1 e0                	shl    %ax
    64fc:	03 f0                	add    %ax,%si
    64fe:	8b 04                	mov    (%si),%ax
    6500:	0b c0                	or     %ax,%ax
    6502:	74 02                	je     0x6506
    6504:	eb 0c                	jmp    0x6512
    6506:	8b 46 fc             	mov    -0x4(%bp),%ax
    6509:	89 46 fe             	mov    %ax,-0x2(%bp)
    650c:	8b 46 f0             	mov    -0x10(%bp),%ax
    650f:	89 46 f6             	mov    %ax,-0xa(%bp)
    6512:	ff 46 f0             	incw   -0x10(%bp)
    6515:	eb b8                	jmp    0x64cf
    6517:	81 7e fe ff 7f       	cmpw   $0x7fff,-0x2(%bp)
    651c:	75 54                	jne    0x6572
    651e:	b8 01 80             	mov    $0x8001,%ax
    6521:	89 46 fe             	mov    %ax,-0x2(%bp)
    6524:	b8 00 00             	mov    $0x0,%ax
    6527:	89 46 f0             	mov    %ax,-0x10(%bp)
    652a:	81 7e f0 03 00       	cmpw   $0x3,-0x10(%bp)
    652f:	7d 41                	jge    0x6572
    6531:	8d 36 65 5f          	lea    0x5f65,%si
    6535:	8b 46 f0             	mov    -0x10(%bp),%ax
    6538:	d1 e0                	shl    %ax
    653a:	03 f0                	add    %ax,%si
    653c:	8b 04                	mov    (%si),%ax
    653e:	89 46 fc             	mov    %ax,-0x4(%bp)
    6541:	83 f8 00             	cmp    $0x0,%ax
    6544:	7d 27                	jge    0x656d
    6546:	8b 46 fc             	mov    -0x4(%bp),%ax
    6549:	3b 46 fe             	cmp    -0x2(%bp),%ax
    654c:	7e 1f                	jle    0x656d
    654e:	8d 36 6b 5f          	lea    0x5f6b,%si
    6552:	8b 46 f0             	mov    -0x10(%bp),%ax
    6555:	d1 e0                	shl    %ax
    6557:	03 f0                	add    %ax,%si
    6559:	8b 04                	mov    (%si),%ax
    655b:	0b c0                	or     %ax,%ax
    655d:	74 02                	je     0x6561
    655f:	eb 0c                	jmp    0x656d
    6561:	8b 46 fc             	mov    -0x4(%bp),%ax
    6564:	89 46 fe             	mov    %ax,-0x2(%bp)
    6567:	8b 46 f0             	mov    -0x10(%bp),%ax
    656a:	89 46 f6             	mov    %ax,-0xa(%bp)
    656d:	ff 46 f0             	incw   -0x10(%bp)
    6570:	eb b8                	jmp    0x652a
    6572:	8b 76 e4             	mov    -0x1c(%bp),%si
    6575:	8b 44 0e             	mov    0xe(%si),%ax
    6578:	3b 06 eb 25          	cmp    0x25eb,%ax
    657c:	7d 09                	jge    0x6587
    657e:	b8 04 00             	mov    $0x4,%ax
    6581:	8b 76 e4             	mov    -0x1c(%bp),%si
    6584:	89 44 10             	mov    %ax,0x10(%si)
    6587:	81 7e fe 01 80       	cmpw   $0x8001,-0x2(%bp)
    658c:	74 13                	je     0x65a1
    658e:	8b 76 e4             	mov    -0x1c(%bp),%si
    6591:	8b 44 10             	mov    0x10(%si),%ax
    6594:	83 f8 04             	cmp    $0x4,%ax
    6597:	7d 06                	jge    0x659f
    6599:	8b 76 e4             	mov    -0x1c(%bp),%si
    659c:	ff 44 10             	incw   0x10(%si)
    659f:	eb 49                	jmp    0x65ea
    65a1:	8b 76 e4             	mov    -0x1c(%bp),%si
    65a4:	8b 44 10             	mov    0x10(%si),%ax
    65a7:	0b c0                	or     %ax,%ax
    65a9:	74 06                	je     0x65b1
    65ab:	8b 76 e4             	mov    -0x1c(%bp),%si
    65ae:	ff 4c 10             	decw   0x10(%si)
    65b1:	b8 00 00             	mov    $0x0,%ax
    65b4:	89 46 f6             	mov    %ax,-0xa(%bp)
    65b7:	8d 36 71 5f          	lea    0x5f71,%si
    65bb:	8b 04                	mov    (%si),%ax
    65bd:	89 46 ee             	mov    %ax,-0x12(%bp)
    65c0:	8d 36 73 5f          	lea    0x5f73,%si
    65c4:	8b 14                	mov    (%si),%dx
    65c6:	3b d0                	cmp    %ax,%dx
    65c8:	7e 0f                	jle    0x65d9
    65ca:	8d 36 73 5f          	lea    0x5f73,%si
    65ce:	8b 04                	mov    (%si),%ax
    65d0:	89 46 ee             	mov    %ax,-0x12(%bp)
    65d3:	b8 01 00             	mov    $0x1,%ax
    65d6:	89 46 f6             	mov    %ax,-0xa(%bp)
    65d9:	8d 36 75 5f          	lea    0x5f75,%si
    65dd:	8b 04                	mov    (%si),%ax
    65df:	3b 46 ee             	cmp    -0x12(%bp),%ax
    65e2:	7e 06                	jle    0x65ea
    65e4:	b8 02 00             	mov    $0x2,%ax
    65e7:	89 46 f6             	mov    %ax,-0xa(%bp)
    65ea:	8d 36 d5 23          	lea    0x23d5,%si
    65ee:	8b 46 f6             	mov    -0xa(%bp),%ax
    65f1:	d1 e0                	shl    %ax
    65f3:	03 f0                	add    %ax,%si
    65f5:	8b 04                	mov    (%si),%ax
    65f7:	8b 76 e4             	mov    -0x1c(%bp),%si
    65fa:	89 44 12             	mov    %ax,0x12(%si)
    65fd:	8b 76 e4             	mov    -0x1c(%bp),%si
    6600:	8b 44 12             	mov    0x12(%si),%ax
    6603:	0b c0                	or     %ax,%ax
    6605:	74 02                	je     0x6609
    6607:	eb 20                	jmp    0x6629
    6609:	8b 76 e4             	mov    -0x1c(%bp),%si
    660c:	8b 44 0e             	mov    0xe(%si),%ax
    660f:	0b c0                	or     %ax,%ax
    6611:	74 16                	je     0x6629
    6613:	8b 76 e4             	mov    -0x1c(%bp),%si
    6616:	8b 44 06             	mov    0x6(%si),%ax
    6619:	83 f8 00             	cmp    $0x0,%ax
    661c:	b8 01 00             	mov    $0x1,%ax
    661f:	7c 02                	jl     0x6623
    6621:	ff c8                	dec    %ax
    6623:	8b 76 e4             	mov    -0x1c(%bp),%si
    6626:	89 44 0c             	mov    %ax,0xc(%si)
    6629:	8b e5                	mov    %bp,%sp
    662b:	5d                   	pop    %bp
    662c:	c3                   	ret
    662d:	55                   	push   %bp
    662e:	8b ec                	mov    %sp,%bp
    6630:	83 ec 08             	sub    $0x8,%sp
    6633:	8b 46 04             	mov    0x4(%bp),%ax
    6636:	83 e8 20             	sub    $0x20,%ax
    6639:	2b 06 e9 25          	sub    0x25e9,%ax
    663d:	89 46 fc             	mov    %ax,-0x4(%bp)
    6640:	8b 46 04             	mov    0x4(%bp),%ax
    6643:	83 c0 20             	add    $0x20,%ax
    6646:	03 06 e9 25          	add    0x25e9,%ax
    664a:	89 46 fe             	mov    %ax,-0x2(%bp)
    664d:	b8 ff ff             	mov    $0xffff,%ax
    6650:	89 06 77 5f          	mov    %ax,0x5f77
    6654:	b8 00 00             	mov    $0x0,%ax
    6657:	89 06 79 5f          	mov    %ax,0x5f79
    665b:	89 46 fa             	mov    %ax,-0x6(%bp)
    665e:	81 7e fa 14 00       	cmpw   $0x14,-0x6(%bp)
    6663:	7d 23                	jge    0x6688
    6665:	8d 36 b1 25          	lea    0x25b1,%si
    6669:	8b 46 fa             	mov    -0x6(%bp),%ax
    666c:	d1 e0                	shl    %ax
    666e:	03 f0                	add    %ax,%si
    6670:	8b 34                	mov    (%si),%si
    6672:	8b 44 02             	mov    0x2(%si),%ax
    6675:	3b 46 fc             	cmp    -0x4(%bp),%ax
    6678:	7c 09                	jl     0x6683
    667a:	8b 46 fa             	mov    -0x6(%bp),%ax
    667d:	89 06 77 5f          	mov    %ax,0x5f77
    6681:	eb 05                	jmp    0x6688
    6683:	ff 46 fa             	incw   -0x6(%bp)
    6686:	eb d6                	jmp    0x665e
    6688:	81 3e 77 5f ff ff    	cmpw   $0xffff,0x5f77
    668e:	75 04                	jne    0x6694
    6690:	8b e5                	mov    %bp,%sp
    6692:	5d                   	pop    %bp
    6693:	c3                   	ret
    6694:	81 7e fa 14 00       	cmpw   $0x14,-0x6(%bp)
    6699:	7d 1a                	jge    0x66b5
    669b:	8d 36 b1 25          	lea    0x25b1,%si
    669f:	8b 46 fa             	mov    -0x6(%bp),%ax
    66a2:	d1 e0                	shl    %ax
    66a4:	03 f0                	add    %ax,%si
    66a6:	8b 34                	mov    (%si),%si
    66a8:	8b 44 02             	mov    0x2(%si),%ax
    66ab:	3b 46 fe             	cmp    -0x2(%bp),%ax
    66ae:	7d 05                	jge    0x66b5
    66b0:	ff 46 fa             	incw   -0x6(%bp)
    66b3:	eb df                	jmp    0x6694
    66b5:	8b 46 fa             	mov    -0x6(%bp),%ax
    66b8:	83 e8 01             	sub    $0x1,%ax
    66bb:	89 06 79 5f          	mov    %ax,0x5f79
    66bf:	8b e5                	mov    %bp,%sp
    66c1:	5d                   	pop    %bp
    66c2:	c3                   	ret
    66c3:	55                   	push   %bp
    66c4:	8b ec                	mov    %sp,%bp
    66c6:	83 ec 0c             	sub    $0xc,%sp
    66c9:	81 7e 08 32 00       	cmpw   $0x32,0x8(%bp)
    66ce:	7e 07                	jle    0x66d7
    66d0:	b8 00 00             	mov    $0x0,%ax
    66d3:	8b e5                	mov    %bp,%sp
    66d5:	5d                   	pop    %bp
    66d6:	c3                   	ret
    66d7:	81 7e 08 14 00       	cmpw   $0x14,0x8(%bp)
    66dc:	7d 07                	jge    0x66e5
    66de:	b8 01 00             	mov    $0x1,%ax
    66e1:	8b e5                	mov    %bp,%sp
    66e3:	5d                   	pop    %bp
    66e4:	c3                   	ret
    66e5:	8b 46 04             	mov    0x4(%bp),%ax
    66e8:	83 e8 20             	sub    $0x20,%ax
    66eb:	89 46 f8             	mov    %ax,-0x8(%bp)
    66ee:	8b 46 04             	mov    0x4(%bp),%ax
    66f1:	83 c0 20             	add    $0x20,%ax
    66f4:	89 46 fa             	mov    %ax,-0x6(%bp)
    66f7:	8b 06 77 5f          	mov    0x5f77,%ax
    66fb:	89 46 f6             	mov    %ax,-0xa(%bp)
    66fe:	8b 46 f6             	mov    -0xa(%bp),%ax
    6701:	3b 06 79 5f          	cmp    0x5f79,%ax
    6705:	7f 5d                	jg     0x6764
    6707:	8d 36 b1 25          	lea    0x25b1,%si
    670b:	8b 46 f6             	mov    -0xa(%bp),%ax
    670e:	d1 e0                	shl    %ax
    6710:	03 f0                	add    %ax,%si
    6712:	8b 34                	mov    (%si),%si
    6714:	89 76 f4             	mov    %si,-0xc(%bp)
    6717:	8b 44 02             	mov    0x2(%si),%ax
    671a:	89 46 fc             	mov    %ax,-0x4(%bp)
    671d:	3b 46 f8             	cmp    -0x8(%bp),%ax
    6720:	7d 02                	jge    0x6724
    6722:	eb 3b                	jmp    0x675f
    6724:	8b 46 fc             	mov    -0x4(%bp),%ax
    6727:	3b 46 fa             	cmp    -0x6(%bp),%ax
    672a:	7e 07                	jle    0x6733
    672c:	b8 00 00             	mov    $0x0,%ax
    672f:	8b e5                	mov    %bp,%sp
    6731:	5d                   	pop    %bp
    6732:	c3                   	ret
    6733:	8b 76 f4             	mov    -0xc(%bp),%si
    6736:	8b 44 04             	mov    0x4(%si),%ax
    6739:	8b 76 f4             	mov    -0xc(%bp),%si
    673c:	8b 14                	mov    (%si),%dx
    673e:	83 fa 06             	cmp    $0x6,%dx
    6741:	75 05                	jne    0x6748
    6743:	ba 10 00             	mov    $0x10,%dx
    6746:	eb 03                	jmp    0x674b
    6748:	ba 08 00             	mov    $0x8,%dx
    674b:	03 c2                	add    %dx,%ax
    674d:	89 46 fe             	mov    %ax,-0x2(%bp)
    6750:	8b 46 06             	mov    0x6(%bp),%ax
    6753:	3b 46 fe             	cmp    -0x2(%bp),%ax
    6756:	7f 07                	jg     0x675f
    6758:	b8 01 00             	mov    $0x1,%ax
    675b:	8b e5                	mov    %bp,%sp
    675d:	5d                   	pop    %bp
    675e:	c3                   	ret
    675f:	ff 46 f6             	incw   -0xa(%bp)
    6762:	eb 9a                	jmp    0x66fe
    6764:	b8 00 00             	mov    $0x0,%ax
    6767:	8b e5                	mov    %bp,%sp
    6769:	5d                   	pop    %bp
    676a:	c3                   	ret
    676b:	55                   	push   %bp
    676c:	8b ec                	mov    %sp,%bp
    676e:	83 ec 06             	sub    $0x6,%sp
    6771:	8b 46 06             	mov    0x6(%bp),%ax
    6774:	2b 46 0a             	sub    0xa(%bp),%ax
    6777:	50                   	push   %ax
    6778:	e8 a8 f9             	call   0x6123
    677b:	83 c4 02             	add    $0x2,%sp
    677e:	89 46 fc             	mov    %ax,-0x4(%bp)
    6781:	8b 46 04             	mov    0x4(%bp),%ax
    6784:	2b 46 08             	sub    0x8(%bp),%ax
    6787:	50                   	push   %ax
    6788:	e8 98 f9             	call   0x6123
    678b:	83 c4 02             	add    $0x2,%sp
    678e:	89 46 fa             	mov    %ax,-0x6(%bp)
    6791:	83 f8 7d             	cmp    $0x7d,%ax
    6794:	7d 1d                	jge    0x67b3
    6796:	81 7e fc 7d 00       	cmpw   $0x7d,-0x4(%bp)
    679b:	7d 16                	jge    0x67b3
    679d:	8b 46 fa             	mov    -0x6(%bp),%ax
    67a0:	f7 6e fa             	imulw  -0x6(%bp)
    67a3:	50                   	push   %ax
    67a4:	8b 46 fc             	mov    -0x4(%bp),%ax
    67a7:	f7 6e fc             	imulw  -0x4(%bp)
    67aa:	5a                   	pop    %dx
    67ab:	03 d0                	add    %ax,%dx
    67ad:	8b c2                	mov    %dx,%ax
    67af:	8b e5                	mov    %bp,%sp
    67b1:	5d                   	pop    %bp
    67b2:	c3                   	ret
    67b3:	8b 46 fa             	mov    -0x6(%bp),%ax
    67b6:	3b 46 fc             	cmp    -0x4(%bp),%ax
    67b9:	7d 12                	jge    0x67cd
    67bb:	8b 46 fa             	mov    -0x6(%bp),%ax
    67be:	89 46 fe             	mov    %ax,-0x2(%bp)
    67c1:	8b 46 fc             	mov    -0x4(%bp),%ax
    67c4:	89 46 fa             	mov    %ax,-0x6(%bp)
    67c7:	8b 46 fe             	mov    -0x2(%bp),%ax
    67ca:	89 46 fc             	mov    %ax,-0x4(%bp)
    67cd:	bb 07 00             	mov    $0x7,%bx
    67d0:	8b 46 fa             	mov    -0x6(%bp),%ax
    67d3:	f7 eb                	imul   %bx
    67d5:	8b 56 fc             	mov    -0x4(%bp),%dx
    67d8:	bb 02 00             	mov    $0x2,%bx
    67db:	8b cb                	mov    %bx,%cx
    67dd:	d3 e2                	shl    %cl,%dx
    67df:	03 c2                	add    %dx,%ax
    67e1:	ba 03 00             	mov    $0x3,%dx
    67e4:	8b ca                	mov    %dx,%cx
    67e6:	d3 f8                	sar    %cl,%ax
    67e8:	f7 d8                	neg    %ax
    67ea:	8b e5                	mov    %bp,%sp
    67ec:	5d                   	pop    %bp
    67ed:	c3                   	ret
    67ee:	55                   	push   %bp
    67ef:	8b ec                	mov    %sp,%bp
    67f1:	b8 00 00             	mov    $0x0,%ax
    67f4:	89 06 cc 48          	mov    %ax,0x48cc
    67f8:	89 06 ca 48          	mov    %ax,0x48ca
    67fc:	8d 36 bc 48          	lea    0x48bc,%si
    6800:	8b 7e 04             	mov    0x4(%bp),%di
    6803:	8b 45 38             	mov    0x38(%di),%ax
    6806:	89 06 c8 48          	mov    %ax,0x48c8
    680a:	d1 e0                	shl    %ax
    680c:	03 f0                	add    %ax,%si
    680e:	8b 04                	mov    (%si),%ax
    6810:	89 06 36 4b          	mov    %ax,0x4b36
    6814:	8b 06 34 4b          	mov    0x4b34,%ax
    6818:	0b c0                	or     %ax,%ax
    681a:	74 02                	je     0x681e
    681c:	eb 28                	jmp    0x6846
    681e:	81 3e ad 25 01 00    	cmpw   $0x1,0x25ad
    6824:	75 0b                	jne    0x6831
    6826:	ff 76 04             	push   0x4(%bp)
    6829:	e8 dd 07             	call   0x7009
    682c:	83 c4 02             	add    $0x2,%sp
    682f:	eb 09                	jmp    0x683a
    6831:	ff 76 04             	push   0x4(%bp)
    6834:	e8 b2 18             	call   0x80e9
    6837:	83 c4 02             	add    $0x2,%sp
    683a:	50                   	push   %ax
    683b:	ff 76 04             	push   0x4(%bp)
    683e:	e8 ab a6             	call   0xeec
    6841:	83 c4 04             	add    $0x4,%sp
    6844:	eb 12                	jmp    0x6858
    6846:	b8 00 00             	mov    $0x0,%ax
    6849:	8b 76 04             	mov    0x4(%bp),%si
    684c:	89 44 12             	mov    %ax,0x12(%si)
    684f:	b8 00 00             	mov    $0x0,%ax
    6852:	8b 76 04             	mov    0x4(%bp),%si
    6855:	89 44 26             	mov    %ax,0x26(%si)
    6858:	8b 76 04             	mov    0x4(%bp),%si
    685b:	8b 04                	mov    (%si),%ax
    685d:	83 f8 04             	cmp    $0x4,%ax
    6860:	75 02                	jne    0x6864
    6862:	eb 0a                	jmp    0x686e
    6864:	8b 76 04             	mov    0x4(%bp),%si
    6867:	8b 04                	mov    (%si),%ax
    6869:	83 f8 5d             	cmp    $0x5d,%ax
    686c:	75 26                	jne    0x6894
    686e:	8b 76 04             	mov    0x4(%bp),%si
    6871:	8b 44 1a             	mov    0x1a(%si),%ax
    6874:	83 f8 00             	cmp    $0x0,%ax
    6877:	7f 1b                	jg     0x6894
    6879:	8b 76 04             	mov    0x4(%bp),%si
    687c:	8b 44 1e             	mov    0x1e(%si),%ax
    687f:	81 f8 78 ec          	cmp    $0xec78,%ax
    6883:	7e 0f                	jle    0x6894
    6885:	8b 76 04             	mov    0x4(%bp),%si
    6888:	ff 44 4c             	incw   0x4c(%si)
    688b:	ff 76 04             	push   0x4(%bp)
    688e:	e8 95 d3             	call   0x3c26
    6891:	83 c4 02             	add    $0x2,%sp
    6894:	ff 76 04             	push   0x4(%bp)
    6897:	e8 4f a9             	call   0x11e9
    689a:	83 c4 02             	add    $0x2,%sp
    689d:	8b e5                	mov    %bp,%sp
    689f:	5d                   	pop    %bp
    68a0:	c3                   	ret
    68a1:	55                   	push   %bp
    68a2:	8b ec                	mov    %sp,%bp
    68a4:	8d 36 2b 61          	lea    0x612b,%si
    68a8:	56                   	push   %si
    68a9:	e8 95 32             	call   0x9b41
    68ac:	83 c4 02             	add    $0x2,%sp
    68af:	ff 76 04             	push   0x4(%bp)
    68b2:	e8 40 00             	call   0x68f5
    68b5:	83 c4 02             	add    $0x2,%sp
    68b8:	8b 06 11 61          	mov    0x6111,%ax
    68bc:	89 06 13 61          	mov    %ax,0x6113
    68c0:	8b 06 15 61          	mov    0x6115,%ax
    68c4:	89 06 17 61          	mov    %ax,0x6117
    68c8:	8b 06 19 61          	mov    0x6119,%ax
    68cc:	89 06 1b 61          	mov    %ax,0x611b
    68d0:	8b 06 1d 61          	mov    0x611d,%ax
    68d4:	89 06 1f 61          	mov    %ax,0x611f
    68d8:	8b 06 21 61          	mov    0x6121,%ax
    68dc:	8b 16 23 61          	mov    0x6123,%dx
    68e0:	89 06 25 61          	mov    %ax,0x6125
    68e4:	89 16 27 61          	mov    %dx,0x6127
    68e8:	ff 76 06             	push   0x6(%bp)
    68eb:	e8 07 00             	call   0x68f5
    68ee:	83 c4 02             	add    $0x2,%sp
    68f1:	8b e5                	mov    %bp,%sp
    68f3:	5d                   	pop    %bp
    68f4:	c3                   	ret
    68f5:	55                   	push   %bp
    68f6:	8b ec                	mov    %sp,%bp
    68f8:	83 ec 0c             	sub    $0xc,%sp
    68fb:	8b 46 04             	mov    0x4(%bp),%ax
    68fe:	89 46 f7             	mov    %ax,-0x9(%bp)
    6901:	b8 00 00             	mov    $0x0,%ax
    6904:	8d 76 f6             	lea    -0xa(%bp),%si
    6907:	88 04                	mov    %al,(%si)
    6909:	8b 76 f7             	mov    -0x9(%bp),%si
    690c:	ff 46 f7             	incw   -0x9(%bp)
    690f:	8a 04                	mov    (%si),%al
    6911:	98                   	cbtw
    6912:	50                   	push   %ax
    6913:	e8 24 31             	call   0x9a3a
    6916:	83 c4 02             	add    $0x2,%sp
    6919:	8d 76 f4             	lea    -0xc(%bp),%si
    691c:	88 04                	mov    %al,(%si)
    691e:	98                   	cbtw
    691f:	83 e8 61             	sub    $0x61,%ax
    6922:	89 06 11 61          	mov    %ax,0x6111
    6926:	83 f8 00             	cmp    $0x0,%ax
    6929:	7d 02                	jge    0x692d
    692b:	eb 08                	jmp    0x6935
    692d:	81 3e 11 61 19 00    	cmpw   $0x19,0x6111
    6933:	7e 02                	jle    0x6937
    6935:	eb 14                	jmp    0x694b
    6937:	8b 76 f7             	mov    -0x9(%bp),%si
    693a:	ff 46 f7             	incw   -0x9(%bp)
    693d:	8a 04                	mov    (%si),%al
    693f:	98                   	cbtw
    6940:	8d 76 f5             	lea    -0xb(%bp),%si
    6943:	88 04                	mov    %al,(%si)
    6945:	98                   	cbtw
    6946:	83 f8 3a             	cmp    $0x3a,%ax
    6949:	74 02                	je     0x694d
    694b:	eb 1c                	jmp    0x6969
    694d:	8d 06 63 03          	lea    0x363,%ax
    6951:	50                   	push   %ax
    6952:	8d 46 f4             	lea    -0xc(%bp),%ax
    6955:	50                   	push   %ax
    6956:	e8 79 25             	call   0x8ed2
    6959:	83 c4 04             	add    $0x4,%sp
    695c:	89 06 0f 61          	mov    %ax,0x610f
    6960:	89 46 f9             	mov    %ax,-0x7(%bp)
    6963:	0b c0                	or     %ax,%ax
    6965:	74 02                	je     0x6969
    6967:	eb 0f                	jmp    0x6978
    6969:	b8 00 00             	mov    $0x0,%ax
    696c:	50                   	push   %ax
    696d:	8d 06 66 03          	lea    0x366,%ax
    6971:	50                   	push   %ax
    6972:	e8 1c f0             	call   0x5991
    6975:	83 c4 04             	add    $0x4,%sp
    6978:	b8 00 00             	mov    $0x0,%ax
    697b:	89 46 fb             	mov    %ax,-0x5(%bp)
    697e:	8b 76 f7             	mov    -0x9(%bp),%si
    6981:	03 76 fb             	add    -0x5(%bp),%si
    6984:	8a 04                	mov    (%si),%al
    6986:	98                   	cbtw
    6987:	0b c0                	or     %ax,%ax
    6989:	74 1d                	je     0x69a8
    698b:	8b 76 f7             	mov    -0x9(%bp),%si
    698e:	03 76 fb             	add    -0x5(%bp),%si
    6991:	8a 04                	mov    (%si),%al
    6993:	98                   	cbtw
    6994:	50                   	push   %ax
    6995:	e8 1b 2d             	call   0x96b3
    6998:	83 c4 02             	add    $0x2,%sp
    699b:	8b 76 f7             	mov    -0x9(%bp),%si
    699e:	03 76 fb             	add    -0x5(%bp),%si
    69a1:	88 04                	mov    %al,(%si)
    69a3:	ff 46 fb             	incw   -0x5(%bp)
    69a6:	eb d6                	jmp    0x697e
    69a8:	ff 76 f7             	push   -0x9(%bp)
    69ab:	ff 76 f9             	push   -0x7(%bp)
    69ae:	e8 93 00             	call   0x6a44
    69b1:	83 c4 04             	add    $0x4,%sp
    69b4:	89 06 1d 61          	mov    %ax,0x611d
    69b8:	0b c0                	or     %ax,%ax
    69ba:	74 02                	je     0x69be
    69bc:	eb 10                	jmp    0x69ce
    69be:	b8 00 00             	mov    $0x0,%ax
    69c1:	50                   	push   %ax
    69c2:	50                   	push   %ax
    69c3:	8d 06 84 03          	lea    0x384,%ax
    69c7:	50                   	push   %ax
    69c8:	e8 c6 ef             	call   0x5991
    69cb:	83 c4 06             	add    $0x6,%sp
    69ce:	8b 36 0d 61          	mov    0x610d,%si
    69d2:	8b 3e 0d 61          	mov    0x610d,%di
    69d6:	8b 45 0d             	mov    0xd(%di),%ax
    69d9:	f7 6c 0f             	imulw  0xf(%si)
    69dc:	89 46 fd             	mov    %ax,-0x3(%bp)
    69df:	8b 46 fd             	mov    -0x3(%bp),%ax
    69e2:	50                   	push   %ax
    69e3:	ff 0e 1d 61          	decw   0x611d
    69e7:	8b 06 1d 61          	mov    0x611d,%ax
    69eb:	5b                   	pop    %bx
    69ec:	99                   	cwtd
    69ed:	f7 fb                	idiv   %bx
    69ef:	89 06 19 61          	mov    %ax,0x6119
    69f3:	8b 06 1d 61          	mov    0x611d,%ax
    69f7:	99                   	cwtd
    69f8:	89 06 21 61          	mov    %ax,0x6121
    69fc:	89 16 23 61          	mov    %dx,0x6123
    6a00:	8b 46 fd             	mov    -0x3(%bp),%ax
    6a03:	f7 2e 19 61          	imulw  0x6119
    6a07:	8b 16 1d 61          	mov    0x611d,%dx
    6a0b:	2b d0                	sub    %ax,%dx
    6a0d:	89 16 1d 61          	mov    %dx,0x611d
    6a11:	8b 36 0d 61          	mov    0x610d,%si
    6a15:	8b 44 0d             	mov    0xd(%si),%ax
    6a18:	50                   	push   %ax
    6a19:	8b 06 1d 61          	mov    0x611d,%ax
    6a1d:	5b                   	pop    %bx
    6a1e:	99                   	cwtd
    6a1f:	f7 fb                	idiv   %bx
    6a21:	89 06 15 61          	mov    %ax,0x6115
    6a25:	8b 36 0d 61          	mov    0x610d,%si
    6a29:	8b 44 0d             	mov    0xd(%si),%ax
    6a2c:	f7 2e 15 61          	imulw  0x6115
    6a30:	83 e8 01             	sub    $0x1,%ax
    6a33:	8b 16 1d 61          	mov    0x611d,%dx
    6a37:	2b d0                	sub    %ax,%dx
    6a39:	89 16 1d 61          	mov    %dx,0x611d
    6a3d:	e8 5d 02             	call   0x6c9d
    6a40:	8b e5                	mov    %bp,%sp
    6a42:	5d                   	pop    %bp
    6a43:	c3                   	ret
    6a44:	55                   	push   %bp
    6a45:	8b ec                	mov    %sp,%bp
    6a47:	83 ec 34             	sub    $0x34,%sp
    6a4a:	8d 76 cc             	lea    -0x34(%bp),%si
    6a4d:	56                   	push   %si
    6a4e:	ff 76 04             	push   0x4(%bp)
    6a51:	e8 78 00             	call   0x6acc
    6a54:	83 c4 04             	add    $0x4,%sp
    6a57:	8d 76 df             	lea    -0x21(%bp),%si
    6a5a:	56                   	push   %si
    6a5b:	ff 76 06             	push   0x6(%bp)
    6a5e:	8d 76 cc             	lea    -0x34(%bp),%si
    6a61:	56                   	push   %si
    6a62:	ff 76 04             	push   0x4(%bp)
    6a65:	e8 aa 00             	call   0x6b12
    6a68:	83 c4 08             	add    $0x8,%sp
    6a6b:	0b c0                	or     %ax,%ax
    6a6d:	74 02                	je     0x6a71
    6a6f:	eb 07                	jmp    0x6a78
    6a71:	b8 00 00             	mov    $0x0,%ax
    6a74:	8b e5                	mov    %bp,%sp
    6a76:	5d                   	pop    %bp
    6a77:	c3                   	ret
    6a78:	8d 76 cc             	lea    -0x34(%bp),%si
    6a7b:	56                   	push   %si
    6a7c:	ff 76 f9             	push   -0x7(%bp)
    6a7f:	e8 07 00             	call   0x6a89
    6a82:	83 c4 04             	add    $0x4,%sp
    6a85:	8b e5                	mov    %bp,%sp
    6a87:	5d                   	pop    %bp
    6a88:	c3                   	ret
    6a89:	55                   	push   %bp
    6a8a:	8b ec                	mov    %sp,%bp
    6a8c:	8b 76 06             	mov    0x6(%bp),%si
    6a8f:	8a 44 02             	mov    0x2(%si),%al
    6a92:	98                   	cbtw
    6a93:	50                   	push   %ax
    6a94:	8b 46 04             	mov    0x4(%bp),%ax
    6a97:	83 e8 02             	sub    $0x2,%ax
    6a9a:	5a                   	pop    %dx
    6a9b:	f7 ea                	imul   %dx
    6a9d:	8b 76 06             	mov    0x6(%bp),%si
    6aa0:	8b 54 06             	mov    0x6(%si),%dx
    6aa3:	bb 04 00             	mov    $0x4,%bx
    6aa6:	8b cb                	mov    %bx,%cx
    6aa8:	d3 fa                	sar    %cl,%dx
    6aaa:	03 c2                	add    %dx,%ax
    6aac:	83 c0 01             	add    $0x1,%ax
    6aaf:	8b 76 06             	mov    0x6(%bp),%si
    6ab2:	03 44 03             	add    0x3(%si),%ax
    6ab5:	50                   	push   %ax
    6ab6:	8b 76 06             	mov    0x6(%bp),%si
    6ab9:	8b 7e 06             	mov    0x6(%bp),%di
    6abc:	8a 45 05             	mov    0x5(%di),%al
    6abf:	98                   	cbtw
    6ac0:	f7 6c 0b             	imulw  0xb(%si)
    6ac3:	5a                   	pop    %dx
    6ac4:	03 d0                	add    %ax,%dx
    6ac6:	8b c2                	mov    %dx,%ax
    6ac8:	8b e5                	mov    %bp,%sp
    6aca:	5d                   	pop    %bp
    6acb:	c3                   	ret
    6acc:	55                   	push   %bp
    6acd:	8b ec                	mov    %sp,%bp
    6acf:	b8 00 00             	mov    $0x0,%ax
    6ad2:	50                   	push   %ax
    6ad3:	ba 00 00             	mov    $0x0,%dx
    6ad6:	52                   	push   %dx
    6ad7:	50                   	push   %ax
    6ad8:	ff 76 04             	push   0x4(%bp)
    6adb:	e8 dd 26             	call   0x91bb
    6ade:	83 c4 08             	add    $0x8,%sp
    6ae1:	ff 76 04             	push   0x4(%bp)
    6ae4:	b8 00 02             	mov    $0x200,%ax
    6ae7:	50                   	push   %ax
    6ae8:	ff 36 df 23          	push   0x23df
    6aec:	e8 d3 27             	call   0x92c2
    6aef:	83 c4 06             	add    $0x6,%sp
    6af2:	b8 13 00             	mov    $0x13,%ax
    6af5:	50                   	push   %ax
    6af6:	ff 76 06             	push   0x6(%bp)
    6af9:	8b 06 df 23          	mov    0x23df,%ax
    6afd:	83 c0 0b             	add    $0xb,%ax
    6b00:	50                   	push   %ax
    6b01:	e8 8b 2c             	call   0x978f
    6b04:	83 c4 06             	add    $0x6,%sp
    6b07:	8b 46 06             	mov    0x6(%bp),%ax
    6b0a:	89 06 0d 61          	mov    %ax,0x610d
    6b0e:	8b e5                	mov    %bp,%sp
    6b10:	5d                   	pop    %bp
    6b11:	c3                   	ret
    6b12:	55                   	push   %bp
    6b13:	8b ec                	mov    %sp,%bp
    6b15:	8b 76 08             	mov    0x8(%bp),%si
    6b18:	8a 04                	mov    (%si),%al
    6b1a:	98                   	cbtw
    6b1b:	83 f8 5c             	cmp    $0x5c,%ax
    6b1e:	75 03                	jne    0x6b23
    6b20:	ff 46 08             	incw   0x8(%bp)
    6b23:	ff 76 0a             	push   0xa(%bp)
    6b26:	ff 76 08             	push   0x8(%bp)
    6b29:	ff 76 06             	push   0x6(%bp)
    6b2c:	ff 76 04             	push   0x4(%bp)
    6b2f:	e8 07 00             	call   0x6b39
    6b32:	83 c4 08             	add    $0x8,%sp
    6b35:	8b e5                	mov    %bp,%sp
    6b37:	5d                   	pop    %bp
    6b38:	c3                   	ret
    6b39:	55                   	push   %bp
    6b3a:	8b ec                	mov    %sp,%bp
    6b3c:	83 ec 16             	sub    $0x16,%sp
    6b3f:	b8 00 00             	mov    $0x0,%ax
    6b42:	89 46 f0             	mov    %ax,-0x10(%bp)
    6b45:	8b 76 08             	mov    0x8(%bp),%si
    6b48:	8a 04                	mov    (%si),%al
    6b4a:	98                   	cbtw
    6b4b:	0b c0                	or     %ax,%ax
    6b4d:	74 45                	je     0x6b94
    6b4f:	81 7e f0 0c 00       	cmpw   $0xc,-0x10(%bp)
    6b54:	7d 3e                	jge    0x6b94
    6b56:	8b 76 08             	mov    0x8(%bp),%si
    6b59:	8a 04                	mov    (%si),%al
    6b5b:	98                   	cbtw
    6b5c:	83 f8 2e             	cmp    $0x2e,%ax
    6b5f:	75 1b                	jne    0x6b7c
    6b61:	81 7e f0 08 00       	cmpw   $0x8,-0x10(%bp)
    6b66:	7d 12                	jge    0x6b7a
    6b68:	b8 20 00             	mov    $0x20,%ax
    6b6b:	8d 76 f4             	lea    -0xc(%bp),%si
    6b6e:	8b 56 f0             	mov    -0x10(%bp),%dx
    6b71:	ff 46 f0             	incw   -0x10(%bp)
    6b74:	03 f2                	add    %dx,%si
    6b76:	88 04                	mov    %al,(%si)
    6b78:	eb e7                	jmp    0x6b61
    6b7a:	eb 13                	jmp    0x6b8f
    6b7c:	8b 76 08             	mov    0x8(%bp),%si
    6b7f:	8a 04                	mov    (%si),%al
    6b81:	98                   	cbtw
    6b82:	8d 76 f4             	lea    -0xc(%bp),%si
    6b85:	8b 56 f0             	mov    -0x10(%bp),%dx
    6b88:	ff 46 f0             	incw   -0x10(%bp)
    6b8b:	03 f2                	add    %dx,%si
    6b8d:	88 04                	mov    %al,(%si)
    6b8f:	ff 46 08             	incw   0x8(%bp)
    6b92:	eb b1                	jmp    0x6b45
    6b94:	81 7e f0 0b 00       	cmpw   $0xb,-0x10(%bp)
    6b99:	7d 12                	jge    0x6bad
    6b9b:	b8 20 00             	mov    $0x20,%ax
    6b9e:	8d 76 f4             	lea    -0xc(%bp),%si
    6ba1:	8b 56 f0             	mov    -0x10(%bp),%dx
    6ba4:	ff 46 f0             	incw   -0x10(%bp)
    6ba7:	03 f2                	add    %dx,%si
    6ba9:	88 04                	mov    %al,(%si)
    6bab:	eb e7                	jmp    0x6b94
    6bad:	b8 00 00             	mov    $0x0,%ax
    6bb0:	8d 76 ff             	lea    -0x1(%bp),%si
    6bb3:	88 04                	mov    %al,(%si)
    6bb5:	8b 76 06             	mov    0x6(%bp),%si
    6bb8:	8b 44 03             	mov    0x3(%si),%ax
    6bbb:	83 c0 01             	add    $0x1,%ax
    6bbe:	50                   	push   %ax
    6bbf:	8b 76 06             	mov    0x6(%bp),%si
    6bc2:	8b 7e 06             	mov    0x6(%bp),%di
    6bc5:	8a 45 05             	mov    0x5(%di),%al
    6bc8:	98                   	cbtw
    6bc9:	f7 6c 0b             	imulw  0xb(%si)
    6bcc:	5a                   	pop    %dx
    6bcd:	03 d0                	add    %ax,%dx
    6bcf:	8b c2                	mov    %dx,%ax
    6bd1:	99                   	cwtd
    6bd2:	89 46 ea             	mov    %ax,-0x16(%bp)
    6bd5:	89 56 ec             	mov    %dx,-0x14(%bp)
    6bd8:	b8 00 00             	mov    $0x0,%ax
    6bdb:	50                   	push   %ax
    6bdc:	8b 46 ea             	mov    -0x16(%bp),%ax
    6bdf:	8b 56 ec             	mov    -0x14(%bp),%dx
    6be2:	83 e8 01             	sub    $0x1,%ax
    6be5:	83 da 00             	sbb    $0x0,%dx
    6be8:	52                   	push   %dx
    6be9:	50                   	push   %ax
    6bea:	b8 09 00             	mov    $0x9,%ax
    6bed:	ba 00 00             	mov    $0x0,%dx
    6bf0:	52                   	push   %dx
    6bf1:	50                   	push   %ax
    6bf2:	e8 09 2e             	call   0x99fe
    6bf5:	58                   	pop    %ax
    6bf6:	5a                   	pop    %dx
    6bf7:	52                   	push   %dx
    6bf8:	50                   	push   %ax
    6bf9:	ff 76 04             	push   0x4(%bp)
    6bfc:	e8 bc 25             	call   0x91bb
    6bff:	83 c4 08             	add    $0x8,%sp
    6c02:	b8 00 00             	mov    $0x0,%ax
    6c05:	89 46 ee             	mov    %ax,-0x12(%bp)
    6c08:	8b 76 06             	mov    0x6(%bp),%si
    6c0b:	8b 44 06             	mov    0x6(%si),%ax
    6c0e:	3b 46 ee             	cmp    -0x12(%bp),%ax
    6c11:	7f 03                	jg     0x6c16
    6c13:	e9 80 00             	jmp    0x6c96
    6c16:	ff 76 04             	push   0x4(%bp)
    6c19:	b8 00 02             	mov    $0x200,%ax
    6c1c:	50                   	push   %ax
    6c1d:	ff 36 df 23          	push   0x23df
    6c21:	e8 9e 26             	call   0x92c2
    6c24:	83 c4 06             	add    $0x6,%sp
    6c27:	8b 06 df 23          	mov    0x23df,%ax
    6c2b:	89 46 f2             	mov    %ax,-0xe(%bp)
    6c2e:	b8 00 00             	mov    $0x0,%ax
    6c31:	89 46 f0             	mov    %ax,-0x10(%bp)
    6c34:	81 7e f0 10 00       	cmpw   $0x10,-0x10(%bp)
    6c39:	7d 53                	jge    0x6c8e
    6c3b:	8b 76 f2             	mov    -0xe(%bp),%si
    6c3e:	8d 04                	lea    (%si),%ax
    6c40:	83 c0 00             	add    $0x0,%ax
    6c43:	8b f0                	mov    %ax,%si
    6c45:	8a 04                	mov    (%si),%al
    6c47:	98                   	cbtw
    6c48:	83 f8 00             	cmp    $0x0,%ax
    6c4b:	75 07                	jne    0x6c54
    6c4d:	b8 00 00             	mov    $0x0,%ax
    6c50:	8b e5                	mov    %bp,%sp
    6c52:	5d                   	pop    %bp
    6c53:	c3                   	ret
    6c54:	b8 0b 00             	mov    $0xb,%ax
    6c57:	50                   	push   %ax
    6c58:	8b 76 f2             	mov    -0xe(%bp),%si
    6c5b:	8d 04                	lea    (%si),%ax
    6c5d:	50                   	push   %ax
    6c5e:	8d 46 f4             	lea    -0xc(%bp),%ax
    6c61:	50                   	push   %ax
    6c62:	e8 03 2e             	call   0x9a68
    6c65:	83 c4 06             	add    $0x6,%sp
    6c68:	83 f8 00             	cmp    $0x0,%ax
    6c6b:	75 17                	jne    0x6c84
    6c6d:	b8 20 00             	mov    $0x20,%ax
    6c70:	50                   	push   %ax
    6c71:	ff 76 0a             	push   0xa(%bp)
    6c74:	ff 76 f2             	push   -0xe(%bp)
    6c77:	e8 15 2b             	call   0x978f
    6c7a:	83 c4 06             	add    $0x6,%sp
    6c7d:	b8 01 00             	mov    $0x1,%ax
    6c80:	8b e5                	mov    %bp,%sp
    6c82:	5d                   	pop    %bp
    6c83:	c3                   	ret
    6c84:	ff 46 f0             	incw   -0x10(%bp)
    6c87:	81 46 f2 20 00       	addw   $0x20,-0xe(%bp)
    6c8c:	eb a6                	jmp    0x6c34
    6c8e:	81 46 ee 10 00       	addw   $0x10,-0x12(%bp)
    6c93:	e9 72 ff             	jmp    0x6c08
    6c96:	b8 00 00             	mov    $0x0,%ax
    6c99:	8b e5                	mov    %bp,%sp
    6c9b:	5d                   	pop    %bp
    6c9c:	c3                   	ret
    6c9d:	55                   	push   %bp
    6c9e:	8b ec                	mov    %sp,%bp
    6ca0:	83 ec 54             	sub    $0x54,%sp
    6ca3:	b8 04 44             	mov    $0x4404,%ax
    6ca6:	89 46 ac             	mov    %ax,-0x54(%bp)
    6ca9:	8b 06 11 61          	mov    0x6111,%ax
    6cad:	83 c0 01             	add    $0x1,%ax
    6cb0:	89 46 ae             	mov    %ax,-0x52(%bp)
    6cb3:	b8 44 00             	mov    $0x44,%ax
    6cb6:	89 46 b0             	mov    %ax,-0x50(%bp)
    6cb9:	8d 46 bc             	lea    -0x44(%bp),%ax
    6cbc:	89 46 b2             	mov    %ax,-0x4e(%bp)
    6cbf:	8b 06 2d 61          	mov    0x612d,%ax
    6cc3:	89 46 b8             	mov    %ax,-0x48(%bp)
    6cc6:	8d 76 ac             	lea    -0x54(%bp),%si
    6cc9:	56                   	push   %si
    6cca:	8d 76 ac             	lea    -0x54(%bp),%si
    6ccd:	56                   	push   %si
    6cce:	e8 e6 28             	call   0x95b7
    6cd1:	83 c4 04             	add    $0x4,%sp
    6cd4:	8b 46 fe             	mov    -0x2(%bp),%ax
    6cd7:	81 f8 03 40          	cmp    $0x4003,%ax
    6cdb:	74 04                	je     0x6ce1
    6cdd:	8b e5                	mov    %bp,%sp
    6cdf:	5d                   	pop    %bp
    6ce0:	c3                   	ret
    6ce1:	8b 46 f7             	mov    -0x9(%bp),%ax
    6ce4:	89 06 cd 07          	mov    %ax,0x7cd
    6ce8:	8b 46 f3             	mov    -0xd(%bp),%ax
    6ceb:	8b 16 11 61          	mov    0x6111,%dx
    6cef:	2b d0                	sub    %ax,%dx
    6cf1:	89 16 11 61          	mov    %dx,0x6111
    6cf5:	b8 03 00             	mov    $0x3,%ax
    6cf8:	50                   	push   %ax
    6cf9:	8b 06 11 61          	mov    0x6111,%ax
    6cfd:	5b                   	pop    %bx
    6cfe:	99                   	cwtd
    6cff:	f7 fb                	idiv   %bx
    6d01:	83 c2 01             	add    $0x1,%dx
    6d04:	b8 06 00             	mov    $0x6,%ax
    6d07:	8b c8                	mov    %ax,%cx
    6d09:	d3 e2                	shl    %cl,%dx
    6d0b:	8b 06 15 61          	mov    0x6115,%ax
    6d0f:	0b c2                	or     %dx,%ax
    6d11:	89 06 15 61          	mov    %ax,0x6115
    6d15:	b8 03 00             	mov    $0x3,%ax
    6d18:	50                   	push   %ax
    6d19:	50                   	push   %ax
    6d1a:	8b 06 11 61          	mov    0x6111,%ax
    6d1e:	5b                   	pop    %bx
    6d1f:	99                   	cwtd
    6d20:	f7 fb                	idiv   %bx
    6d22:	5a                   	pop    %dx
    6d23:	2b d0                	sub    %ax,%dx
    6d25:	89 16 11 61          	mov    %dx,0x6111
    6d29:	8b e5                	mov    %bp,%sp
    6d2b:	5d                   	pop    %bp
    6d2c:	c3                   	ret
    6d2d:	55                   	push   %bp
    6d2e:	8b ec                	mov    %sp,%bp
    6d30:	b8 00 00             	mov    $0x0,%ax
    6d33:	50                   	push   %ax
    6d34:	8b 06 25 61          	mov    0x6125,%ax
    6d38:	8b 16 27 61          	mov    0x6127,%dx
    6d3c:	52                   	push   %dx
    6d3d:	50                   	push   %ax
    6d3e:	b8 09 00             	mov    $0x9,%ax
    6d41:	ba 00 00             	mov    $0x0,%dx
    6d44:	52                   	push   %dx
    6d45:	50                   	push   %ax
    6d46:	e8 b5 2c             	call   0x99fe
    6d49:	58                   	pop    %ax
    6d4a:	5a                   	pop    %dx
    6d4b:	52                   	push   %dx
    6d4c:	50                   	push   %ax
    6d4d:	ff 36 0f 61          	push   0x610f
    6d51:	e8 67 24             	call   0x91bb
    6d54:	83 c4 08             	add    $0x8,%sp
    6d57:	ff 36 0f 61          	push   0x610f
    6d5b:	b8 00 02             	mov    $0x200,%ax
    6d5e:	50                   	push   %ax
    6d5f:	ff 36 df 23          	push   0x23df
    6d63:	e8 5c 25             	call   0x92c2
    6d66:	83 c4 06             	add    $0x6,%sp
    6d69:	81 f8 00 02          	cmp    $0x200,%ax
    6d6d:	74 1c                	je     0x6d8b
    6d6f:	b8 01 00             	mov    $0x1,%ax
    6d72:	50                   	push   %ax
    6d73:	e8 f4 27             	call   0x956a
    6d76:	81 e0 00 ff          	and    $0xff00,%ax
    6d7a:	83 c0 01             	add    $0x1,%ax
    6d7d:	50                   	push   %ax
    6d7e:	e8 84 09             	call   0x7705
    6d81:	83 c4 04             	add    $0x4,%sp
    6d84:	b8 00 00             	mov    $0x0,%ax
    6d87:	8b e5                	mov    %bp,%sp
    6d89:	5d                   	pop    %bp
    6d8a:	c3                   	ret
    6d8b:	8b 36 df 23          	mov    0x23df,%si
    6d8f:	8a 04                	mov    (%si),%al
    6d91:	81 e0 ff 00          	and    $0xff,%ax
    6d95:	81 f8 fe 00          	cmp    $0xfe,%ax
    6d99:	74 07                	je     0x6da2
    6d9b:	b8 ff ff             	mov    $0xffff,%ax
    6d9e:	8b e5                	mov    %bp,%sp
    6da0:	5d                   	pop    %bp
    6da1:	c3                   	ret
    6da2:	b8 ff 00             	mov    $0xff,%ax
    6da5:	8b 36 df 23          	mov    0x23df,%si
    6da9:	88 04                	mov    %al,(%si)
    6dab:	b8 00 00             	mov    $0x0,%ax
    6dae:	50                   	push   %ax
    6daf:	8b 06 25 61          	mov    0x6125,%ax
    6db3:	8b 16 27 61          	mov    0x6127,%dx
    6db7:	52                   	push   %dx
    6db8:	50                   	push   %ax
    6db9:	b8 09 00             	mov    $0x9,%ax
    6dbc:	ba 00 00             	mov    $0x0,%dx
    6dbf:	52                   	push   %dx
    6dc0:	50                   	push   %ax
    6dc1:	e8 3a 2c             	call   0x99fe
    6dc4:	58                   	pop    %ax
    6dc5:	5a                   	pop    %dx
    6dc6:	52                   	push   %dx
    6dc7:	50                   	push   %ax
    6dc8:	ff 36 0f 61          	push   0x610f
    6dcc:	e8 ec 23             	call   0x91bb
    6dcf:	83 c4 08             	add    $0x8,%sp
    6dd2:	ff 36 0f 61          	push   0x610f
    6dd6:	b8 00 02             	mov    $0x200,%ax
    6dd9:	50                   	push   %ax
    6dda:	ff 36 df 23          	push   0x23df
    6dde:	e8 26 26             	call   0x9407
    6de1:	83 c4 06             	add    $0x6,%sp
    6de4:	81 f8 00 02          	cmp    $0x200,%ax
    6de8:	74 1c                	je     0x6e06
    6dea:	b8 01 00             	mov    $0x1,%ax
    6ded:	50                   	push   %ax
    6dee:	e8 79 27             	call   0x956a
    6df1:	81 e0 00 ff          	and    $0xff00,%ax
    6df5:	83 c0 02             	add    $0x2,%ax
    6df8:	50                   	push   %ax
    6df9:	e8 09 09             	call   0x7705
    6dfc:	83 c4 04             	add    $0x4,%sp
    6dff:	b8 00 00             	mov    $0x0,%ax
    6e02:	8b e5                	mov    %bp,%sp
    6e04:	5d                   	pop    %bp
    6e05:	c3                   	ret
    6e06:	b8 00 00             	mov    $0x0,%ax
    6e09:	50                   	push   %ax
    6e0a:	8b 06 25 61          	mov    0x6125,%ax
    6e0e:	8b 16 27 61          	mov    0x6127,%dx
    6e12:	52                   	push   %dx
    6e13:	50                   	push   %ax
    6e14:	b8 09 00             	mov    $0x9,%ax
    6e17:	ba 00 00             	mov    $0x0,%dx
    6e1a:	52                   	push   %dx
    6e1b:	50                   	push   %ax
    6e1c:	e8 df 2b             	call   0x99fe
    6e1f:	58                   	pop    %ax
    6e20:	5a                   	pop    %dx
    6e21:	52                   	push   %dx
    6e22:	50                   	push   %ax
    6e23:	ff 36 0f 61          	push   0x610f
    6e27:	e8 91 23             	call   0x91bb
    6e2a:	83 c4 08             	add    $0x8,%sp
    6e2d:	ff 36 0f 61          	push   0x610f
    6e31:	b8 00 02             	mov    $0x200,%ax
    6e34:	50                   	push   %ax
    6e35:	ff 36 df 23          	push   0x23df
    6e39:	e8 86 24             	call   0x92c2
    6e3c:	83 c4 06             	add    $0x6,%sp
    6e3f:	81 f8 00 02          	cmp    $0x200,%ax
    6e43:	74 1c                	je     0x6e61
    6e45:	b8 01 00             	mov    $0x1,%ax
    6e48:	50                   	push   %ax
    6e49:	e8 1e 27             	call   0x956a
    6e4c:	81 e0 00 ff          	and    $0xff00,%ax
    6e50:	83 c0 03             	add    $0x3,%ax
    6e53:	50                   	push   %ax
    6e54:	e8 ae 08             	call   0x7705
    6e57:	83 c4 04             	add    $0x4,%sp
    6e5a:	b8 00 00             	mov    $0x0,%ax
    6e5d:	8b e5                	mov    %bp,%sp
    6e5f:	5d                   	pop    %bp
    6e60:	c3                   	ret
    6e61:	8b 36 df 23          	mov    0x23df,%si
    6e65:	8a 04                	mov    (%si),%al
    6e67:	81 e0 ff 00          	and    $0xff,%ax
    6e6b:	81 f8 ff 00          	cmp    $0xff,%ax
    6e6f:	74 07                	je     0x6e78
    6e71:	b8 ff ff             	mov    $0xffff,%ax
    6e74:	8b e5                	mov    %bp,%sp
    6e76:	5d                   	pop    %bp
    6e77:	c3                   	ret
    6e78:	b8 01 00             	mov    $0x1,%ax
    6e7b:	89 06 e5 23          	mov    %ax,0x23e5
    6e7f:	b0 00                	mov    $0x0,%al
    6e81:	50                   	push   %ax
    6e82:	8b 06 21 61          	mov    0x6121,%ax
    6e86:	8b 16 23 61          	mov    0x6123,%dx
    6e8a:	52                   	push   %dx
    6e8b:	50                   	push   %ax
    6e8c:	b8 09 00             	mov    $0x9,%ax
    6e8f:	ba 00 00             	mov    $0x0,%dx
    6e92:	52                   	push   %dx
    6e93:	50                   	push   %ax
    6e94:	e8 67 2b             	call   0x99fe
    6e97:	58                   	pop    %ax
    6e98:	5a                   	pop    %dx
    6e99:	52                   	push   %dx
    6e9a:	50                   	push   %ax
    6e9b:	ff 36 0f 61          	push   0x610f
    6e9f:	e8 19 23             	call   0x91bb
    6ea2:	83 c4 08             	add    $0x8,%sp
    6ea5:	ff 36 0f 61          	push   0x610f
    6ea9:	b8 00 02             	mov    $0x200,%ax
    6eac:	50                   	push   %ax
    6ead:	ff 36 cb 07          	push   0x7cb
    6eb1:	e8 0e 24             	call   0x92c2
    6eb4:	83 c4 06             	add    $0x6,%sp
    6eb7:	81 f8 00 02          	cmp    $0x200,%ax
    6ebb:	74 1c                	je     0x6ed9
    6ebd:	b8 01 00             	mov    $0x1,%ax
    6ec0:	50                   	push   %ax
    6ec1:	e8 a6 26             	call   0x956a
    6ec4:	81 e0 00 ff          	and    $0xff00,%ax
    6ec8:	83 c0 04             	add    $0x4,%ax
    6ecb:	50                   	push   %ax
    6ecc:	e8 36 08             	call   0x7705
    6ecf:	83 c4 04             	add    $0x4,%sp
    6ed2:	b8 00 00             	mov    $0x0,%ax
    6ed5:	8b e5                	mov    %bp,%sp
    6ed7:	5d                   	pop    %bp
    6ed8:	c3                   	ret
    6ed9:	b8 01 00             	mov    $0x1,%ax
    6edc:	8b e5                	mov    %bp,%sp
    6ede:	5d                   	pop    %bp
    6edf:	c3                   	ret
    6ee0:	55                   	push   %bp
    6ee1:	8b ec                	mov    %sp,%bp
    6ee3:	83 ec 02             	sub    $0x2,%sp
    6ee6:	b8 01 00             	mov    $0x1,%ax
    6ee9:	0b c0                	or     %ax,%ax
    6eeb:	74 70                	je     0x6f5d
    6eed:	b8 00 00             	mov    $0x0,%ax
    6ef0:	50                   	push   %ax
    6ef1:	8b 06 21 61          	mov    0x6121,%ax
    6ef5:	8b 16 23 61          	mov    0x6123,%dx
    6ef9:	52                   	push   %dx
    6efa:	50                   	push   %ax
    6efb:	b8 09 00             	mov    $0x9,%ax
    6efe:	ba 00 00             	mov    $0x0,%dx
    6f01:	52                   	push   %dx
    6f02:	50                   	push   %ax
    6f03:	e8 f8 2a             	call   0x99fe
    6f06:	58                   	pop    %ax
    6f07:	5a                   	pop    %dx
    6f08:	52                   	push   %dx
    6f09:	50                   	push   %ax
    6f0a:	ff 36 0f 61          	push   0x610f
    6f0e:	e8 aa 22             	call   0x91bb
    6f11:	83 c4 08             	add    $0x8,%sp
    6f14:	ff 36 0f 61          	push   0x610f
    6f18:	b8 00 02             	mov    $0x200,%ax
    6f1b:	50                   	push   %ax
    6f1c:	ff 36 cb 07          	push   0x7cb
    6f20:	e8 e4 24             	call   0x9407
    6f23:	83 c4 06             	add    $0x6,%sp
    6f26:	81 f8 00 02          	cmp    $0x200,%ax
    6f2a:	75 07                	jne    0x6f33
    6f2c:	b8 01 00             	mov    $0x1,%ax
    6f2f:	8b e5                	mov    %bp,%sp
    6f31:	5d                   	pop    %bp
    6f32:	c3                   	ret
    6f33:	b8 00 ff             	mov    $0xff00,%ax
    6f36:	50                   	push   %ax
    6f37:	e8 30 26             	call   0x956a
    6f3a:	5a                   	pop    %dx
    6f3b:	23 d0                	and    %ax,%dx
    6f3d:	89 56 fe             	mov    %dx,-0x2(%bp)
    6f40:	b8 02 00             	mov    $0x2,%ax
    6f43:	50                   	push   %ax
    6f44:	ff 76 fe             	push   -0x2(%bp)
    6f47:	e8 bb 07             	call   0x7705
    6f4a:	83 c4 04             	add    $0x4,%sp
    6f4d:	81 7e fe 00 03       	cmpw   $0x300,-0x2(%bp)
    6f52:	74 07                	je     0x6f5b
    6f54:	b8 00 00             	mov    $0x0,%ax
    6f57:	8b e5                	mov    %bp,%sp
    6f59:	5d                   	pop    %bp
    6f5a:	c3                   	ret
    6f5b:	eb 89                	jmp    0x6ee6
    6f5d:	8b e5                	mov    %bp,%sp
    6f5f:	5d                   	pop    %bp
    6f60:	c3                   	ret
    6f61:	55                   	push   %bp
    6f62:	8b ec                	mov    %sp,%bp
    6f64:	8b 06 e5 23          	mov    0x23e5,%ax
    6f68:	0b c0                	or     %ax,%ax
    6f6a:	74 02                	je     0x6f6e
    6f6c:	eb 07                	jmp    0x6f75
    6f6e:	b8 01 00             	mov    $0x1,%ax
    6f71:	8b e5                	mov    %bp,%sp
    6f73:	5d                   	pop    %bp
    6f74:	c3                   	ret
    6f75:	b8 fe 00             	mov    $0xfe,%ax
    6f78:	8b 36 df 23          	mov    0x23df,%si
    6f7c:	88 04                	mov    %al,(%si)
    6f7e:	b8 00 00             	mov    $0x0,%ax
    6f81:	50                   	push   %ax
    6f82:	8b 06 25 61          	mov    0x6125,%ax
    6f86:	8b 16 27 61          	mov    0x6127,%dx
    6f8a:	52                   	push   %dx
    6f8b:	50                   	push   %ax
    6f8c:	b8 09 00             	mov    $0x9,%ax
    6f8f:	ba 00 00             	mov    $0x0,%dx
    6f92:	52                   	push   %dx
    6f93:	50                   	push   %ax
    6f94:	e8 67 2a             	call   0x99fe
    6f97:	58                   	pop    %ax
    6f98:	5a                   	pop    %dx
    6f99:	52                   	push   %dx
    6f9a:	50                   	push   %ax
    6f9b:	ff 36 0f 61          	push   0x610f
    6f9f:	e8 19 22             	call   0x91bb
    6fa2:	83 c4 08             	add    $0x8,%sp
    6fa5:	ff 36 0f 61          	push   0x610f
    6fa9:	b8 00 02             	mov    $0x200,%ax
    6fac:	50                   	push   %ax
    6fad:	ff 36 df 23          	push   0x23df
    6fb1:	e8 53 24             	call   0x9407
    6fb4:	83 c4 06             	add    $0x6,%sp
    6fb7:	81 f8 00 02          	cmp    $0x200,%ax
    6fbb:	74 07                	je     0x6fc4
    6fbd:	b8 00 00             	mov    $0x0,%ax
    6fc0:	8b e5                	mov    %bp,%sp
    6fc2:	5d                   	pop    %bp
    6fc3:	c3                   	ret
    6fc4:	b8 00 00             	mov    $0x0,%ax
    6fc7:	89 06 e5 23          	mov    %ax,0x23e5
    6fcb:	b0 01                	mov    $0x1,%al
    6fcd:	8b e5                	mov    %bp,%sp
    6fcf:	5d                   	pop    %bp
    6fd0:	c3                   	ret
    6fd1:	55                   	push   %bp
    6fd2:	8b ec                	mov    %sp,%bp
    6fd4:	83 ec 02             	sub    $0x2,%sp
    6fd7:	ff 36 0b 61          	push   0x610b
    6fdb:	8d 06 90 73          	lea    0x7390,%ax
    6fdf:	50                   	push   %ax
    6fe0:	e8 e8 17             	call   0x87cb
    6fe3:	83 c4 04             	add    $0x4,%sp
    6fe6:	e8 6f 17             	call   0x8758
    6fe9:	0b c0                	or     %ax,%ax
    6feb:	74 02                	je     0x6fef
    6fed:	eb f7                	jmp    0x6fe6
    6fef:	8b 06 e1 23          	mov    0x23e1,%ax
    6ff3:	0b c0                	or     %ax,%ax
    6ff5:	74 0e                	je     0x7005
    6ff7:	ff 36 35 61          	push   0x6135
    6ffb:	ff 36 33 61          	push   0x6133
    6fff:	e8 8f e9             	call   0x5991
    7002:	83 c4 04             	add    $0x4,%sp
    7005:	8b e5                	mov    %bp,%sp
    7007:	5d                   	pop    %bp
    7008:	c3                   	ret
    7009:	55                   	push   %bp
    700a:	8b ec                	mov    %sp,%bp
    700c:	83 ec 02             	sub    $0x2,%sp
    700f:	8b 06 e1 23          	mov    0x23e1,%ax
    7013:	0b c0                	or     %ax,%ax
    7015:	74 0e                	je     0x7025
    7017:	ff 36 35 61          	push   0x6135
    701b:	ff 36 33 61          	push   0x6133
    701f:	e8 6f e9             	call   0x5991
    7022:	83 c4 04             	add    $0x4,%sp
    7025:	e8 30 17             	call   0x8758
    7028:	0b c0                	or     %ax,%ax
    702a:	74 02                	je     0x702e
    702c:	eb f7                	jmp    0x7025
    702e:	8b 06 e1 23          	mov    0x23e1,%ax
    7032:	0b c0                	or     %ax,%ax
    7034:	74 0e                	je     0x7044
    7036:	ff 36 35 61          	push   0x6135
    703a:	ff 36 33 61          	push   0x6133
    703e:	e8 50 e9             	call   0x5991
    7041:	83 c4 04             	add    $0x4,%sp
    7044:	8b 76 04             	mov    0x4(%bp),%si
    7047:	8b 44 38             	mov    0x38(%si),%ax
    704a:	89 46 fe             	mov    %ax,-0x2(%bp)
    704d:	8b 46 fe             	mov    -0x2(%bp),%ax
    7050:	3b 06 c6 48          	cmp    0x48c6,%ax
    7054:	74 1c                	je     0x7072
    7056:	8b 36 cb 07          	mov    0x7cb,%si
    705a:	8d 44 0b             	lea    0xb(%si),%ax
    705d:	03 46 fe             	add    -0x2(%bp),%ax
    7060:	8b f0                	mov    %ax,%si
    7062:	8a 04                	mov    (%si),%al
    7064:	81 e0 ff 00          	and    $0xff,%ax
    7068:	50                   	push   %ax
    7069:	ff 76 04             	push   0x4(%bp)
    706c:	e8 22 00             	call   0x7091
    706f:	83 c4 04             	add    $0x4,%sp
    7072:	8b 36 cb 07          	mov    0x7cb,%si
    7076:	8d 44 03             	lea    0x3(%si),%ax
    7079:	8b 56 fe             	mov    -0x2(%bp),%dx
    707c:	d1 e2                	shl    %dx
    707e:	03 c2                	add    %dx,%ax
    7080:	8b f0                	mov    %ax,%si
    7082:	ff 34                	push   (%si)
    7084:	ff 76 fe             	push   -0x2(%bp)
    7087:	e8 c0 14             	call   0x854a
    708a:	83 c4 04             	add    $0x4,%sp
    708d:	8b e5                	mov    %bp,%sp
    708f:	5d                   	pop    %bp
    7090:	c3                   	ret
    7091:	55                   	push   %bp
    7092:	8b ec                	mov    %sp,%bp
    7094:	8b 76 04             	mov    0x4(%bp),%si
    7097:	8b 04                	mov    (%si),%ax
    7099:	3b 46 06             	cmp    0x6(%bp),%ax
    709c:	74 3c                	je     0x70da
    709e:	81 7e 06 5b 00       	cmpw   $0x5b,0x6(%bp)
    70a3:	75 02                	jne    0x70a7
    70a5:	eb 07                	jmp    0x70ae
    70a7:	81 7e 06 00 00       	cmpw   $0x0,0x6(%bp)
    70ac:	75 02                	jne    0x70b0
    70ae:	eb 0a                	jmp    0x70ba
    70b0:	8b 76 04             	mov    0x4(%bp),%si
    70b3:	8b 04                	mov    (%si),%ax
    70b5:	83 f8 5b             	cmp    $0x5b,%ax
    70b8:	75 02                	jne    0x70bc
    70ba:	eb 0a                	jmp    0x70c6
    70bc:	8b 76 04             	mov    0x4(%bp),%si
    70bf:	8b 04                	mov    (%si),%ax
    70c1:	83 f8 00             	cmp    $0x0,%ax
    70c4:	75 14                	jne    0x70da
    70c6:	8b 46 06             	mov    0x6(%bp),%ax
    70c9:	8b 76 04             	mov    0x4(%bp),%si
    70cc:	89 04                	mov    %ax,(%si)
    70ce:	e8 d2 c8             	call   0x39a3
    70d1:	ff 76 04             	push   0x4(%bp)
    70d4:	e8 c1 e6             	call   0x5798
    70d7:	83 c4 02             	add    $0x2,%sp
    70da:	8b e5                	mov    %bp,%sp
    70dc:	5d                   	pop    %bp
    70dd:	c3                   	ret
    70de:	55                   	push   %bp
    70df:	8b ec                	mov    %sp,%bp
    70e1:	e8 74 16             	call   0x8758
    70e4:	0b c0                	or     %ax,%ax
    70e6:	74 02                	je     0x70ea
    70e8:	eb f7                	jmp    0x70e1
    70ea:	8b 06 e1 23          	mov    0x23e1,%ax
    70ee:	0b c0                	or     %ax,%ax
    70f0:	74 0e                	je     0x7100
    70f2:	ff 36 35 61          	push   0x6135
    70f6:	ff 36 33 61          	push   0x6133
    70fa:	e8 94 e8             	call   0x5991
    70fd:	83 c4 04             	add    $0x4,%sp
    7100:	ff 36 0b 61          	push   0x610b
    7104:	8d 06 c1 74          	lea    0x74c1,%ax
    7108:	50                   	push   %ax
    7109:	e8 bf 16             	call   0x87cb
    710c:	83 c4 04             	add    $0x4,%sp
    710f:	8b e5                	mov    %bp,%sp
    7111:	5d                   	pop    %bp
    7112:	c3                   	ret
    7113:	55                   	push   %bp
    7114:	8b ec                	mov    %sp,%bp
    7116:	83 ec 0a             	sub    $0xa,%sp
    7119:	b8 00 00             	mov    $0x0,%ax
    711c:	89 46 fa             	mov    %ax,-0x6(%bp)
    711f:	8b 06 12 46          	mov    0x4612,%ax
    7123:	0b c0                	or     %ax,%ax
    7125:	74 09                	je     0x7130
    7127:	e8 17 06             	call   0x7741
    712a:	e8 52 08             	call   0x797f
    712d:	e8 1c 09             	call   0x7a4c
    7130:	b8 01 00             	mov    $0x1,%ax
    7133:	89 06 e3 23          	mov    %ax,0x23e3
    7137:	e8 1e 16             	call   0x8758
    713a:	0b c0                	or     %ax,%ax
    713c:	74 02                	je     0x7140
    713e:	eb f7                	jmp    0x7137
    7140:	8b 46 04             	mov    0x4(%bp),%ax
    7143:	0b c0                	or     %ax,%ax
    7145:	75 03                	jne    0x714a
    7147:	e9 27 01             	jmp    0x7271
    714a:	b8 00 00             	mov    $0x0,%ax
    714d:	89 46 f8             	mov    %ax,-0x8(%bp)
    7150:	81 7e f8 19 00       	cmpw   $0x19,-0x8(%bp)
    7155:	7d 2f                	jge    0x7186
    7157:	e8 d3 fb             	call   0x6d2d
    715a:	89 46 f6             	mov    %ax,-0xa(%bp)
    715d:	83 f8 00             	cmp    $0x0,%ax
    7160:	7c 02                	jl     0x7164
    7162:	eb 22                	jmp    0x7186
    7164:	e8 de e4             	call   0x5645
    7167:	b8 12 00             	mov    $0x12,%ax
    716a:	89 46 fe             	mov    %ax,-0x2(%bp)
    716d:	b0 00                	mov    $0x0,%al
    716f:	89 06 e1 25          	mov    %ax,0x25e1
    7173:	e8 cd e4             	call   0x5643
    7176:	8b 06 e1 25          	mov    0x25e1,%ax
    717a:	3b 46 fe             	cmp    -0x2(%bp),%ax
    717d:	7d 02                	jge    0x7181
    717f:	eb f5                	jmp    0x7176
    7181:	ff 46 f8             	incw   -0x8(%bp)
    7184:	eb ca                	jmp    0x7150
    7186:	8b 46 f6             	mov    -0xa(%bp),%ax
    7189:	0b c0                	or     %ax,%ax
    718b:	74 02                	je     0x718f
    718d:	eb 0a                	jmp    0x7199
    718f:	8d 06 93 03          	lea    0x393,%ax
    7193:	89 46 fa             	mov    %ax,-0x6(%bp)
    7196:	e9 d8 00             	jmp    0x7271
    7199:	81 7e f6 00 00       	cmpw   $0x0,-0xa(%bp)
    719e:	7d 0a                	jge    0x71aa
    71a0:	8d 06 c2 03          	lea    0x3c2,%ax
    71a4:	89 46 fa             	mov    %ax,-0x6(%bp)
    71a7:	e9 c7 00             	jmp    0x7271
    71aa:	e8 5e 09             	call   0x7b0b
    71ad:	0b c0                	or     %ax,%ax
    71af:	74 0a                	je     0x71bb
    71b1:	8d 06 ea 03          	lea    0x3ea,%ax
    71b5:	89 46 fa             	mov    %ax,-0x6(%bp)
    71b8:	e9 b6 00             	jmp    0x7271
    71bb:	b8 5b 00             	mov    $0x5b,%ax
    71be:	8b 36 cb 07          	mov    0x7cb,%si
    71c2:	8d 54 0b             	lea    0xb(%si),%dx
    71c5:	03 16 c6 48          	add    0x48c6,%dx
    71c9:	8b f2                	mov    %dx,%si
    71cb:	88 04                	mov    %al,(%si)
    71cd:	b8 00 00             	mov    $0x0,%ax
    71d0:	8b 36 cb 07          	mov    0x7cb,%si
    71d4:	8d 54 03             	lea    0x3(%si),%dx
    71d7:	8b 1e c6 48          	mov    0x48c6,%bx
    71db:	d1 e3                	shl    %bx
    71dd:	03 d3                	add    %bx,%dx
    71df:	8b f2                	mov    %dx,%si
    71e1:	89 04                	mov    %ax,(%si)
    71e3:	b8 01 00             	mov    $0x1,%ax
    71e6:	89 46 fc             	mov    %ax,-0x4(%bp)
    71e9:	b0 00                	mov    $0x0,%al
    71eb:	89 46 f8             	mov    %ax,-0x8(%bp)
    71ee:	8b 46 f8             	mov    -0x8(%bp),%ax
    71f1:	8b 36 cb 07          	mov    0x7cb,%si
    71f5:	8a 14                	mov    (%si),%dl
    71f7:	81 e2 ff 00          	and    $0xff,%dx
    71fb:	3b d0                	cmp    %ax,%dx
    71fd:	76 24                	jbe    0x7223
    71ff:	8b 36 cb 07          	mov    0x7cb,%si
    7203:	8d 44 0b             	lea    0xb(%si),%ax
    7206:	03 46 f8             	add    -0x8(%bp),%ax
    7209:	8b f0                	mov    %ax,%si
    720b:	8a 04                	mov    (%si),%al
    720d:	81 e0 ff 00          	and    $0xff,%ax
    7211:	83 f8 5b             	cmp    $0x5b,%ax
    7214:	74 08                	je     0x721e
    7216:	b8 00 00             	mov    $0x0,%ax
    7219:	89 46 fc             	mov    %ax,-0x4(%bp)
    721c:	eb 05                	jmp    0x7223
    721e:	ff 46 f8             	incw   -0x8(%bp)
    7221:	eb cb                	jmp    0x71ee
    7223:	8b 46 fc             	mov    -0x4(%bp),%ax
    7226:	0b c0                	or     %ax,%ax
    7228:	74 37                	je     0x7261
    722a:	b8 00 00             	mov    $0x0,%ax
    722d:	8b 36 cb 07          	mov    0x7cb,%si
    7231:	88 44 01             	mov    %al,0x1(%si)
    7234:	b8 00 00             	mov    $0x0,%ax
    7237:	8b 36 cb 07          	mov    0x7cb,%si
    723b:	88 44 02             	mov    %al,0x2(%si)
    723e:	b8 00 00             	mov    $0x0,%ax
    7241:	89 46 f8             	mov    %ax,-0x8(%bp)
    7244:	81 7e f8 04 00       	cmpw   $0x4,-0x8(%bp)
    7249:	7d 16                	jge    0x7261
    724b:	b8 00 00             	mov    $0x0,%ax
    724e:	8b 36 cb 07          	mov    0x7cb,%si
    7252:	8d 54 0b             	lea    0xb(%si),%dx
    7255:	03 56 f8             	add    -0x8(%bp),%dx
    7258:	8b f2                	mov    %dx,%si
    725a:	88 04                	mov    %al,(%si)
    725c:	ff 46 f8             	incw   -0x8(%bp)
    725f:	eb e3                	jmp    0x7244
    7261:	e8 7c fc             	call   0x6ee0
    7264:	0b c0                	or     %ax,%ax
    7266:	74 02                	je     0x726a
    7268:	eb 07                	jmp    0x7271
    726a:	8d 06 fd 03          	lea    0x3fd,%ax
    726e:	89 46 fa             	mov    %ax,-0x6(%bp)
    7271:	8b 06 e5 23          	mov    0x23e5,%ax
    7275:	0b c0                	or     %ax,%ax
    7277:	74 10                	je     0x7289
    7279:	e8 e5 fc             	call   0x6f61
    727c:	0b c0                	or     %ax,%ax
    727e:	74 02                	je     0x7282
    7280:	eb 07                	jmp    0x7289
    7282:	8d 06 20 04          	lea    0x420,%ax
    7286:	89 46 fa             	mov    %ax,-0x6(%bp)
    7289:	8b 46 fa             	mov    -0x6(%bp),%ax
    728c:	8b e5                	mov    %bp,%sp
    728e:	5d                   	pop    %bp
    728f:	c3                   	ret
    7290:	55                   	push   %bp
    7291:	8b ec                	mov    %sp,%bp
    7293:	83 ec 08             	sub    $0x8,%sp
    7296:	8b 06 cb 07          	mov    0x7cb,%ax
    729a:	89 46 f8             	mov    %ax,-0x8(%bp)
    729d:	b8 01 00             	mov    $0x1,%ax
    72a0:	0b c0                	or     %ax,%ax
    72a2:	75 03                	jne    0x72a7
    72a4:	e9 16 01             	jmp    0x73bd
    72a7:	b8 12 00             	mov    $0x12,%ax
    72aa:	50                   	push   %ax
    72ab:	e8 7a 15             	call   0x8828
    72ae:	83 c4 02             	add    $0x2,%sp
    72b1:	b8 00 00             	mov    $0x0,%ax
    72b4:	89 46 fa             	mov    %ax,-0x6(%bp)
    72b7:	81 7e fa 19 00       	cmpw   $0x19,-0x6(%bp)
    72bc:	7d 6b                	jge    0x7329
    72be:	e8 86 c2             	call   0x3547
    72c1:	0b c0                	or     %ax,%ax
    72c3:	74 11                	je     0x72d6
    72c5:	b8 01 00             	mov    $0x1,%ax
    72c8:	50                   	push   %ax
    72c9:	b0 00                	mov    $0x0,%al
    72cb:	50                   	push   %ax
    72cc:	e8 1a 04             	call   0x76e9
    72cf:	83 c4 04             	add    $0x4,%sp
    72d2:	8b e5                	mov    %bp,%sp
    72d4:	5d                   	pop    %bp
    72d5:	c3                   	ret
    72d6:	b8 00 ff             	mov    $0xff00,%ax
    72d9:	50                   	push   %ax
    72da:	ff 36 2f 61          	push   0x612f
    72de:	ff 76 f8             	push   -0x8(%bp)
    72e1:	b8 01 00             	mov    $0x1,%ax
    72e4:	50                   	push   %ax
    72e5:	ff 36 1d 61          	push   0x611d
    72e9:	ff 36 19 61          	push   0x6119
    72ed:	ff 36 15 61          	push   0x6115
    72f1:	ff 36 11 61          	push   0x6111
    72f5:	b8 02 00             	mov    $0x2,%ax
    72f8:	50                   	push   %ax
    72f9:	e8 03 15             	call   0x87ff
    72fc:	83 c4 10             	add    $0x10,%sp
    72ff:	5a                   	pop    %dx
    7300:	23 d0                	and    %ax,%dx
    7302:	89 56 fc             	mov    %dx,-0x4(%bp)
    7305:	0b d2                	or     %dx,%dx
    7307:	74 02                	je     0x730b
    7309:	eb 02                	jmp    0x730d
    730b:	eb 1c                	jmp    0x7329
    730d:	b8 03 00             	mov    $0x3,%ax
    7310:	50                   	push   %ax
    7311:	ff 76 fc             	push   -0x4(%bp)
    7314:	e8 ee 03             	call   0x7705
    7317:	83 c4 04             	add    $0x4,%sp
    731a:	b8 00 00             	mov    $0x0,%ax
    731d:	50                   	push   %ax
    731e:	e8 de 14             	call   0x87ff
    7321:	83 c4 02             	add    $0x2,%sp
    7324:	ff 46 fa             	incw   -0x6(%bp)
    7327:	eb 8e                	jmp    0x72b7
    7329:	81 7e fa 19 00       	cmpw   $0x19,-0x6(%bp)
    732e:	75 13                	jne    0x7343
    7330:	b8 01 00             	mov    $0x1,%ax
    7333:	50                   	push   %ax
    7334:	8d 06 44 04          	lea    0x444,%ax
    7338:	50                   	push   %ax
    7339:	e8 ad 03             	call   0x76e9
    733c:	83 c4 04             	add    $0x4,%sp
    733f:	8b e5                	mov    %bp,%sp
    7341:	5d                   	pop    %bp
    7342:	c3                   	ret
    7343:	e8 c5 07             	call   0x7b0b
    7346:	0b c0                	or     %ax,%ax
    7348:	74 13                	je     0x735d
    734a:	b8 01 00             	mov    $0x1,%ax
    734d:	50                   	push   %ax
    734e:	8d 06 5b 04          	lea    0x45b,%ax
    7352:	50                   	push   %ax
    7353:	e8 93 03             	call   0x76e9
    7356:	83 c4 04             	add    $0x4,%sp
    7359:	8b e5                	mov    %bp,%sp
    735b:	5d                   	pop    %bp
    735c:	c3                   	ret
    735d:	b8 00 00             	mov    $0x0,%ax
    7360:	89 46 fe             	mov    %ax,-0x2(%bp)
    7363:	8b 46 fe             	mov    -0x2(%bp),%ax
    7366:	8b 76 f8             	mov    -0x8(%bp),%si
    7369:	8a 14                	mov    (%si),%dl
    736b:	81 e2 ff 00          	and    $0xff,%dx
    736f:	3b d0                	cmp    %ax,%dx
    7371:	76 33                	jbe    0x73a6
    7373:	8b 76 f8             	mov    -0x8(%bp),%si
    7376:	8d 44 0b             	lea    0xb(%si),%ax
    7379:	03 46 fe             	add    -0x2(%bp),%ax
    737c:	8b f0                	mov    %ax,%si
    737e:	8a 04                	mov    (%si),%al
    7380:	81 e0 ff 00          	and    $0xff,%ax
    7384:	83 f8 01             	cmp    $0x1,%ax
    7387:	74 18                	je     0x73a1
    7389:	8b 76 f8             	mov    -0x8(%bp),%si
    738c:	8d 44 0b             	lea    0xb(%si),%ax
    738f:	03 46 fe             	add    -0x2(%bp),%ax
    7392:	8b f0                	mov    %ax,%si
    7394:	8a 04                	mov    (%si),%al
    7396:	81 e0 ff 00          	and    $0xff,%ax
    739a:	83 f8 5b             	cmp    $0x5b,%ax
    739d:	74 02                	je     0x73a1
    739f:	eb 05                	jmp    0x73a6
    73a1:	ff 46 fe             	incw   -0x2(%bp)
    73a4:	eb bd                	jmp    0x7363
    73a6:	8b 46 fe             	mov    -0x2(%bp),%ax
    73a9:	8b 76 f8             	mov    -0x8(%bp),%si
    73ac:	8a 14                	mov    (%si),%dl
    73ae:	81 e2 ff 00          	and    $0xff,%dx
    73b2:	3b d0                	cmp    %ax,%dx
    73b4:	75 04                	jne    0x73ba
    73b6:	8b e5                	mov    %bp,%sp
    73b8:	5d                   	pop    %bp
    73b9:	c3                   	ret
    73ba:	e9 e0 fe             	jmp    0x729d
    73bd:	8b e5                	mov    %bp,%sp
    73bf:	5d                   	pop    %bp
    73c0:	c3                   	ret
    73c1:	55                   	push   %bp
    73c2:	8b ec                	mov    %sp,%bp
    73c4:	83 ec 0a             	sub    $0xa,%sp
    73c7:	8b 06 2c 46          	mov    0x462c,%ax
    73cb:	50                   	push   %ax
    73cc:	bb 6a 00             	mov    $0x6a,%bx
    73cf:	8b 06 c6 48          	mov    0x48c6,%ax
    73d3:	f7 eb                	imul   %bx
    73d5:	5e                   	pop    %si
    73d6:	03 f0                	add    %ax,%si
    73d8:	89 76 f8             	mov    %si,-0x8(%bp)
    73db:	8b 06 cb 07          	mov    0x7cb,%ax
    73df:	89 46 f6             	mov    %ax,-0xa(%bp)
    73e2:	e8 ed 04             	call   0x78d2
    73e5:	ff 36 c6 48          	push   0x48c6
    73e9:	b8 00 00             	mov    $0x0,%ax
    73ec:	50                   	push   %ax
    73ed:	e8 60 01             	call   0x7550
    73f0:	83 c4 04             	add    $0x4,%sp
    73f3:	8b 06 e3 23          	mov    0x23e3,%ax
    73f7:	0b c0                	or     %ax,%ax
    73f9:	74 04                	je     0x73ff
    73fb:	8b e5                	mov    %bp,%sp
    73fd:	5d                   	pop    %bp
    73fe:	c3                   	ret
    73ff:	e8 45 c1             	call   0x3547
    7402:	0b c0                	or     %ax,%ax
    7404:	74 11                	je     0x7417
    7406:	b8 01 00             	mov    $0x1,%ax
    7409:	50                   	push   %ax
    740a:	b0 00                	mov    $0x0,%al
    740c:	50                   	push   %ax
    740d:	e8 d9 02             	call   0x76e9
    7410:	83 c4 04             	add    $0x4,%sp
    7413:	8b e5                	mov    %bp,%sp
    7415:	5d                   	pop    %bp
    7416:	c3                   	ret
    7417:	8b 06 eb 23          	mov    0x23eb,%ax
    741b:	0b c0                	or     %ax,%ax
    741d:	74 09                	je     0x7428
    741f:	b8 00 00             	mov    $0x0,%ax
    7422:	89 06 eb 23          	mov    %ax,0x23eb
    7426:	eb 15                	jmp    0x743d
    7428:	e8 98 8e             	call   0x2c3
    742b:	8b 76 f6             	mov    -0xa(%bp),%si
    742e:	8d 54 03             	lea    0x3(%si),%dx
    7431:	8b 1e c6 48          	mov    0x48c6,%bx
    7435:	d1 e3                	shl    %bx
    7437:	03 d3                	add    %bx,%dx
    7439:	8b f2                	mov    %dx,%si
    743b:	89 04                	mov    %ax,(%si)
    743d:	8b 76 f8             	mov    -0x8(%bp),%si
    7440:	8b 04                	mov    (%si),%ax
    7442:	8b 76 f6             	mov    -0xa(%bp),%si
    7445:	8d 54 0b             	lea    0xb(%si),%dx
    7448:	03 16 c6 48          	add    0x48c6,%dx
    744c:	8b f2                	mov    %dx,%si
    744e:	88 04                	mov    %al,(%si)
    7450:	8b 06 c6 48          	mov    0x48c6,%ax
    7454:	8b 76 f6             	mov    -0xa(%bp),%si
    7457:	88 44 02             	mov    %al,0x2(%si)
    745a:	e8 c7 8f             	call   0x424
    745d:	e8 e5 e1             	call   0x5645
    7460:	b8 b4 00             	mov    $0xb4,%ax
    7463:	89 46 fe             	mov    %ax,-0x2(%bp)
    7466:	b0 00                	mov    $0x0,%al
    7468:	89 06 e1 25          	mov    %ax,0x25e1
    746c:	e8 d4 e1             	call   0x5643
    746f:	b8 00 00             	mov    $0x0,%ax
    7472:	89 46 fa             	mov    %ax,-0x6(%bp)
    7475:	81 7e fa 19 00       	cmpw   $0x19,-0x6(%bp)
    747a:	7c 03                	jl     0x747f
    747c:	e9 7f 00             	jmp    0x74fe
    747f:	b8 00 ff             	mov    $0xff00,%ax
    7482:	50                   	push   %ax
    7483:	ff 36 2f 61          	push   0x612f
    7487:	ff 76 f6             	push   -0xa(%bp)
    748a:	b8 01 00             	mov    $0x1,%ax
    748d:	50                   	push   %ax
    748e:	ff 36 1d 61          	push   0x611d
    7492:	ff 36 19 61          	push   0x6119
    7496:	ff 36 15 61          	push   0x6115
    749a:	ff 36 11 61          	push   0x6111
    749e:	b8 03 00             	mov    $0x3,%ax
    74a1:	50                   	push   %ax
    74a2:	e8 5a 13             	call   0x87ff
    74a5:	83 c4 10             	add    $0x10,%sp
    74a8:	5a                   	pop    %dx
    74a9:	23 d0                	and    %ax,%dx
    74ab:	89 56 fc             	mov    %dx,-0x4(%bp)
    74ae:	0b d2                	or     %dx,%dx
    74b0:	74 02                	je     0x74b4
    74b2:	eb 02                	jmp    0x74b6
    74b4:	eb 48                	jmp    0x74fe
    74b6:	b8 00 00             	mov    $0x0,%ax
    74b9:	50                   	push   %ax
    74ba:	e8 42 13             	call   0x87ff
    74bd:	83 c4 02             	add    $0x2,%sp
    74c0:	8b 06 e1 25          	mov    0x25e1,%ax
    74c4:	3b 46 fe             	cmp    -0x2(%bp),%ax
    74c7:	7e 18                	jle    0x74e1
    74c9:	e8 7b c0             	call   0x3547
    74cc:	0b c0                	or     %ax,%ax
    74ce:	74 11                	je     0x74e1
    74d0:	b8 01 00             	mov    $0x1,%ax
    74d3:	50                   	push   %ax
    74d4:	b0 00                	mov    $0x0,%al
    74d6:	50                   	push   %ax
    74d7:	e8 0f 02             	call   0x76e9
    74da:	83 c4 04             	add    $0x4,%sp
    74dd:	8b e5                	mov    %bp,%sp
    74df:	5d                   	pop    %bp
    74e0:	c3                   	ret
    74e1:	e8 aa 03             	call   0x788e
    74e4:	b8 04 00             	mov    $0x4,%ax
    74e7:	50                   	push   %ax
    74e8:	ff 76 fc             	push   -0x4(%bp)
    74eb:	e8 17 02             	call   0x7705
    74ee:	83 c4 04             	add    $0x4,%sp
    74f1:	81 7e fc 00 03       	cmpw   $0x300,-0x4(%bp)
    74f6:	74 03                	je     0x74fb
    74f8:	ff 46 fa             	incw   -0x6(%bp)
    74fb:	e9 77 ff             	jmp    0x7475
    74fe:	81 7e fa 19 00       	cmpw   $0x19,-0x6(%bp)
    7503:	75 13                	jne    0x7518
    7505:	b8 01 00             	mov    $0x1,%ax
    7508:	50                   	push   %ax
    7509:	8d 06 6c 04          	lea    0x46c,%ax
    750d:	50                   	push   %ax
    750e:	e8 d8 01             	call   0x76e9
    7511:	83 c4 04             	add    $0x4,%sp
    7514:	8b e5                	mov    %bp,%sp
    7516:	5d                   	pop    %bp
    7517:	c3                   	ret
    7518:	e8 73 03             	call   0x788e
    751b:	e8 ed 05             	call   0x7b0b
    751e:	0b c0                	or     %ax,%ax
    7520:	74 0f                	je     0x7531
    7522:	b8 01 00             	mov    $0x1,%ax
    7525:	50                   	push   %ax
    7526:	8d 06 84 04          	lea    0x484,%ax
    752a:	50                   	push   %ax
    752b:	e8 bb 01             	call   0x76e9
    752e:	83 c4 04             	add    $0x4,%sp
    7531:	8b 76 f6             	mov    -0xa(%bp),%si
    7534:	8a 04                	mov    (%si),%al
    7536:	81 e0 ff 00          	and    $0xff,%ax
    753a:	50                   	push   %ax
    753b:	8b 06 c6 48          	mov    0x48c6,%ax
    753f:	83 c0 01             	add    $0x1,%ax
    7542:	50                   	push   %ax
    7543:	e8 0a 00             	call   0x7550
    7546:	83 c4 04             	add    $0x4,%sp
    7549:	e8 98 03             	call   0x78e4
    754c:	8b e5                	mov    %bp,%sp
    754e:	5d                   	pop    %bp
    754f:	c3                   	ret
    7550:	55                   	push   %bp
    7551:	8b ec                	mov    %sp,%bp
    7553:	83 ec 12             	sub    $0x12,%sp
    7556:	b8 00 00             	mov    $0x0,%ax
    7559:	89 46 fe             	mov    %ax,-0x2(%bp)
    755c:	8b 06 cb 07          	mov    0x7cb,%ax
    7560:	89 46 f2             	mov    %ax,-0xe(%bp)
    7563:	e8 df e0             	call   0x5645
    7566:	b8 b4 00             	mov    $0xb4,%ax
    7569:	89 46 fc             	mov    %ax,-0x4(%bp)
    756c:	b0 00                	mov    $0x0,%al
    756e:	89 06 e1 25          	mov    %ax,0x25e1
    7572:	e8 ce e0             	call   0x5643
    7575:	b8 01 00             	mov    $0x1,%ax
    7578:	0b c0                	or     %ax,%ax
    757a:	75 03                	jne    0x757f
    757c:	e9 66 01             	jmp    0x76e5
    757f:	8b 76 f2             	mov    -0xe(%bp),%si
    7582:	8a 44 02             	mov    0x2(%si),%al
    7585:	81 e0 ff 00          	and    $0xff,%ax
    7589:	89 46 fa             	mov    %ax,-0x6(%bp)
    758c:	b8 01 00             	mov    $0x1,%ax
    758f:	89 46 f6             	mov    %ax,-0xa(%bp)
    7592:	8b 46 04             	mov    0x4(%bp),%ax
    7595:	89 46 ee             	mov    %ax,-0x12(%bp)
    7598:	8b 46 ee             	mov    -0x12(%bp),%ax
    759b:	3b 46 06             	cmp    0x6(%bp),%ax
    759e:	7d 1d                	jge    0x75bd
    75a0:	8b 76 f2             	mov    -0xe(%bp),%si
    75a3:	8d 44 0b             	lea    0xb(%si),%ax
    75a6:	03 46 ee             	add    -0x12(%bp),%ax
    75a9:	8b f0                	mov    %ax,%si
    75ab:	8a 04                	mov    (%si),%al
    75ad:	81 e0 ff 00          	and    $0xff,%ax
    75b1:	83 f8 5b             	cmp    $0x5b,%ax
    75b4:	74 02                	je     0x75b8
    75b6:	eb 05                	jmp    0x75bd
    75b8:	ff 46 ee             	incw   -0x12(%bp)
    75bb:	eb db                	jmp    0x7598
    75bd:	8b 46 ee             	mov    -0x12(%bp),%ax
    75c0:	3b 46 06             	cmp    0x6(%bp),%ax
    75c3:	7d 4c                	jge    0x7611
    75c5:	8b 06 c6 48          	mov    0x48c6,%ax
    75c9:	3b 46 fa             	cmp    -0x6(%bp),%ax
    75cc:	75 08                	jne    0x75d6
    75ce:	b8 00 00             	mov    $0x0,%ax
    75d1:	89 46 f6             	mov    %ax,-0xa(%bp)
    75d4:	eb 3b                	jmp    0x7611
    75d6:	8b 46 fa             	mov    -0x6(%bp),%ax
    75d9:	3b 46 ee             	cmp    -0x12(%bp),%ax
    75dc:	7c 33                	jl     0x7611
    75de:	8b 46 ee             	mov    -0x12(%bp),%ax
    75e1:	3b 46 06             	cmp    0x6(%bp),%ax
    75e4:	7d 2b                	jge    0x7611
    75e6:	8b 76 f2             	mov    -0xe(%bp),%si
    75e9:	8d 44 0b             	lea    0xb(%si),%ax
    75ec:	03 46 ee             	add    -0x12(%bp),%ax
    75ef:	8b f0                	mov    %ax,%si
    75f1:	8a 04                	mov    (%si),%al
    75f3:	81 e0 ff 00          	and    $0xff,%ax
    75f7:	83 f8 5b             	cmp    $0x5b,%ax
    75fa:	74 10                	je     0x760c
    75fc:	8b 46 ee             	mov    -0x12(%bp),%ax
    75ff:	3b 46 fa             	cmp    -0x6(%bp),%ax
    7602:	b8 01 00             	mov    $0x1,%ax
    7605:	74 02                	je     0x7609
    7607:	ff c8                	dec    %ax
    7609:	89 46 f6             	mov    %ax,-0xa(%bp)
    760c:	ff 46 ee             	incw   -0x12(%bp)
    760f:	eb cd                	jmp    0x75de
    7611:	8b 46 f6             	mov    -0xa(%bp),%ax
    7614:	0b c0                	or     %ax,%ax
    7616:	74 04                	je     0x761c
    7618:	8b e5                	mov    %bp,%sp
    761a:	5d                   	pop    %bp
    761b:	c3                   	ret
    761c:	8b 46 fe             	mov    -0x2(%bp),%ax
    761f:	0b c0                	or     %ax,%ax
    7621:	74 03                	je     0x7626
    7623:	e8 68 02             	call   0x788e
    7626:	b8 00 00             	mov    $0x0,%ax
    7629:	89 46 f0             	mov    %ax,-0x10(%bp)
    762c:	81 7e f0 19 00       	cmpw   $0x19,-0x10(%bp)
    7631:	7d 75                	jge    0x76a8
    7633:	b8 00 ff             	mov    $0xff00,%ax
    7636:	50                   	push   %ax
    7637:	ff 36 2f 61          	push   0x612f
    763b:	ff 76 f2             	push   -0xe(%bp)
    763e:	b8 01 00             	mov    $0x1,%ax
    7641:	50                   	push   %ax
    7642:	ff 36 1d 61          	push   0x611d
    7646:	ff 36 19 61          	push   0x6119
    764a:	ff 36 15 61          	push   0x6115
    764e:	ff 36 11 61          	push   0x6111
    7652:	b8 02 00             	mov    $0x2,%ax
    7655:	50                   	push   %ax
    7656:	e8 a6 11             	call   0x87ff
    7659:	83 c4 10             	add    $0x10,%sp
    765c:	5a                   	pop    %dx
    765d:	23 d0                	and    %ax,%dx
    765f:	89 56 f8             	mov    %dx,-0x8(%bp)
    7662:	0b d2                	or     %dx,%dx
    7664:	74 02                	je     0x7668
    7666:	eb 02                	jmp    0x766a
    7668:	eb 3e                	jmp    0x76a8
    766a:	b8 03 00             	mov    $0x3,%ax
    766d:	50                   	push   %ax
    766e:	ff 76 f8             	push   -0x8(%bp)
    7671:	e8 91 00             	call   0x7705
    7674:	83 c4 04             	add    $0x4,%sp
    7677:	b8 00 00             	mov    $0x0,%ax
    767a:	50                   	push   %ax
    767b:	e8 81 11             	call   0x87ff
    767e:	83 c4 02             	add    $0x2,%sp
    7681:	8b 06 e1 25          	mov    0x25e1,%ax
    7685:	3b 46 fc             	cmp    -0x4(%bp),%ax
    7688:	7e 18                	jle    0x76a2
    768a:	e8 ba be             	call   0x3547
    768d:	0b c0                	or     %ax,%ax
    768f:	74 11                	je     0x76a2
    7691:	b8 01 00             	mov    $0x1,%ax
    7694:	50                   	push   %ax
    7695:	b0 00                	mov    $0x0,%al
    7697:	50                   	push   %ax
    7698:	e8 4e 00             	call   0x76e9
    769b:	83 c4 04             	add    $0x4,%sp
    769e:	8b e5                	mov    %bp,%sp
    76a0:	5d                   	pop    %bp
    76a1:	c3                   	ret
    76a2:	ff 46 f0             	incw   -0x10(%bp)
    76a5:	e9 84 ff             	jmp    0x762c
    76a8:	81 7e f0 19 00       	cmpw   $0x19,-0x10(%bp)
    76ad:	75 13                	jne    0x76c2
    76af:	b8 01 00             	mov    $0x1,%ax
    76b2:	50                   	push   %ax
    76b3:	8d 06 95 04          	lea    0x495,%ax
    76b7:	50                   	push   %ax
    76b8:	e8 2e 00             	call   0x76e9
    76bb:	83 c4 04             	add    $0x4,%sp
    76be:	8b e5                	mov    %bp,%sp
    76c0:	5d                   	pop    %bp
    76c1:	c3                   	ret
    76c2:	e8 46 04             	call   0x7b0b
    76c5:	0b c0                	or     %ax,%ax
    76c7:	74 0f                	je     0x76d8
    76c9:	b8 01 00             	mov    $0x1,%ax
    76cc:	50                   	push   %ax
    76cd:	8d 06 ac 04          	lea    0x4ac,%ax
    76d1:	50                   	push   %ax
    76d2:	e8 14 00             	call   0x76e9
    76d5:	83 c4 04             	add    $0x4,%sp
    76d8:	b8 01 00             	mov    $0x1,%ax
    76db:	89 46 fe             	mov    %ax,-0x2(%bp)
    76de:	ff 06 e9 23          	incw   0x23e9
    76e2:	e9 90 fe             	jmp    0x7575
    76e5:	8b e5                	mov    %bp,%sp
    76e7:	5d                   	pop    %bp
    76e8:	c3                   	ret
    76e9:	55                   	push   %bp
    76ea:	8b ec                	mov    %sp,%bp
    76ec:	b8 01 00             	mov    $0x1,%ax
    76ef:	89 06 e1 23          	mov    %ax,0x23e1
    76f3:	8b 46 06             	mov    0x6(%bp),%ax
    76f6:	89 06 35 61          	mov    %ax,0x6135
    76fa:	8b 46 04             	mov    0x4(%bp),%ax
    76fd:	89 06 33 61          	mov    %ax,0x6133
    7701:	8b e5                	mov    %bp,%sp
    7703:	5d                   	pop    %bp
    7704:	c3                   	ret
    7705:	55                   	push   %bp
    7706:	8b ec                	mov    %sp,%bp
    7708:	83 ec 02             	sub    $0x2,%sp
    770b:	8b 46 04             	mov    0x4(%bp),%ax
    770e:	50                   	push   %ax
    770f:	8d 36 37 61          	lea    0x6137,%si
    7713:	b8 32 00             	mov    $0x32,%ax
    7716:	50                   	push   %ax
    7717:	ff 06 e7 23          	incw   0x23e7
    771b:	8b 06 e7 23          	mov    0x23e7,%ax
    771f:	5b                   	pop    %bx
    7720:	99                   	cwtd
    7721:	f7 fb                	idiv   %bx
    7723:	89 56 fe             	mov    %dx,-0x2(%bp)
    7726:	d1 e2                	shl    %dx
    7728:	03 f2                	add    %dx,%si
    772a:	58                   	pop    %ax
    772b:	89 04                	mov    %ax,(%si)
    772d:	8b 46 06             	mov    0x6(%bp),%ax
    7730:	8d 36 9b 61          	lea    0x619b,%si
    7734:	8b 56 fe             	mov    -0x2(%bp),%dx
    7737:	d1 e2                	shl    %dx
    7739:	03 f2                	add    %dx,%si
    773b:	89 04                	mov    %ax,(%si)
    773d:	8b e5                	mov    %bp,%sp
    773f:	5d                   	pop    %bp
    7740:	c3                   	ret
    7741:	55                   	push   %bp
    7742:	8b ec                	mov    %sp,%bp
    7744:	83 ec 02             	sub    $0x2,%sp
    7747:	8d 06 bd 04          	lea    0x4bd,%ax
    774b:	50                   	push   %ax
    774c:	e8 38 8e             	call   0x587
    774f:	83 c4 02             	add    $0x2,%sp
    7752:	b8 05 00             	mov    $0x5,%ax
    7755:	50                   	push   %ax
    7756:	8b 06 e7 23          	mov    0x23e7,%ax
    775a:	83 c0 01             	add    $0x1,%ax
    775d:	50                   	push   %ax
    775e:	e8 4e dc             	call   0x53af
    7761:	83 c4 04             	add    $0x4,%sp
    7764:	8d 06 c2 04          	lea    0x4c2,%ax
    7768:	50                   	push   %ax
    7769:	e8 1b 8e             	call   0x587
    776c:	83 c4 02             	add    $0x2,%sp
    776f:	81 3e e7 23 32 00    	cmpw   $0x32,0x23e7
    7775:	7c 59                	jl     0x77d0
    7777:	8d 06 db 04          	lea    0x4db,%ax
    777b:	50                   	push   %ax
    777c:	e8 08 8e             	call   0x587
    777f:	83 c4 02             	add    $0x2,%sp
    7782:	b8 32 00             	mov    $0x32,%ax
    7785:	50                   	push   %ax
    7786:	8b 06 e7 23          	mov    0x23e7,%ax
    778a:	5b                   	pop    %bx
    778b:	99                   	cwtd
    778c:	f7 fb                	idiv   %bx
    778e:	83 c2 01             	add    $0x1,%dx
    7791:	89 56 fe             	mov    %dx,-0x2(%bp)
    7794:	81 7e fe 32 00       	cmpw   $0x32,-0x2(%bp)
    7799:	7d 0e                	jge    0x77a9
    779b:	ff 76 fe             	push   -0x2(%bp)
    779e:	e8 50 00             	call   0x77f1
    77a1:	83 c4 02             	add    $0x2,%sp
    77a4:	ff 46 fe             	incw   -0x2(%bp)
    77a7:	eb eb                	jmp    0x7794
    77a9:	b8 00 00             	mov    $0x0,%ax
    77ac:	89 46 fe             	mov    %ax,-0x2(%bp)
    77af:	b8 32 00             	mov    $0x32,%ax
    77b2:	50                   	push   %ax
    77b3:	8b 06 e7 23          	mov    0x23e7,%ax
    77b7:	5b                   	pop    %bx
    77b8:	99                   	cwtd
    77b9:	f7 fb                	idiv   %bx
    77bb:	3b 56 fe             	cmp    -0x2(%bp),%dx
    77be:	7c 0e                	jl     0x77ce
    77c0:	ff 76 fe             	push   -0x2(%bp)
    77c3:	e8 2b 00             	call   0x77f1
    77c6:	83 c4 02             	add    $0x2,%sp
    77c9:	ff 46 fe             	incw   -0x2(%bp)
    77cc:	eb e1                	jmp    0x77af
    77ce:	eb 1d                	jmp    0x77ed
    77d0:	b8 00 00             	mov    $0x0,%ax
    77d3:	89 46 fe             	mov    %ax,-0x2(%bp)
    77d6:	8b 46 fe             	mov    -0x2(%bp),%ax
    77d9:	3b 06 e7 23          	cmp    0x23e7,%ax
    77dd:	7f 0e                	jg     0x77ed
    77df:	ff 76 fe             	push   -0x2(%bp)
    77e2:	e8 0c 00             	call   0x77f1
    77e5:	83 c4 02             	add    $0x2,%sp
    77e8:	ff 46 fe             	incw   -0x2(%bp)
    77eb:	eb e9                	jmp    0x77d6
    77ed:	8b e5                	mov    %bp,%sp
    77ef:	5d                   	pop    %bp
    77f0:	c3                   	ret
    77f1:	55                   	push   %bp
    77f2:	8b ec                	mov    %sp,%bp
    77f4:	8d 36 9b 61          	lea    0x619b,%si
    77f8:	8b 46 04             	mov    0x4(%bp),%ax
    77fb:	d1 e0                	shl    %ax
    77fd:	03 f0                	add    %ax,%si
    77ff:	8b 04                	mov    (%si),%ax
    7801:	50                   	push   %ax
    7802:	eb 34                	jmp    0x7838
    7804:	8d 06 e8 04          	lea    0x4e8,%ax
    7808:	50                   	push   %ax
    7809:	e8 7b 8d             	call   0x587
    780c:	83 c4 02             	add    $0x2,%sp
    780f:	eb 3e                	jmp    0x784f
    7811:	8d 06 f3 04          	lea    0x4f3,%ax
    7815:	50                   	push   %ax
    7816:	e8 6e 8d             	call   0x587
    7819:	83 c4 02             	add    $0x2,%sp
    781c:	eb 31                	jmp    0x784f
    781e:	8d 06 fe 04          	lea    0x4fe,%ax
    7822:	50                   	push   %ax
    7823:	e8 61 8d             	call   0x587
    7826:	83 c4 02             	add    $0x2,%sp
    7829:	eb 24                	jmp    0x784f
    782b:	8d 06 09 05          	lea    0x509,%ax
    782f:	50                   	push   %ax
    7830:	e8 54 8d             	call   0x587
    7833:	83 c4 02             	add    $0x2,%sp
    7836:	eb 17                	jmp    0x784f
    7838:	e8 99 20             	call   0x98d4
    783b:	04 00                	add    $0x0,%al
    783d:	04 00                	add    $0x0,%al
    783f:	03 00                	add    (%bx,%si),%ax
    7841:	02 00                	add    (%bx,%si),%al
    7843:	01 00                	add    %ax,(%bx,%si)
    7845:	4f                   	dec    %di
    7846:	79 2b                	jns    0x7873
    7848:	79 1e                	jns    0x7868
    784a:	79 11                	jns    0x785d
    784c:	79 04                	jns    0x7852
    784e:	79 8d                	jns    0x77dd
    7850:	36 37                	ss aaa
    7852:	61                   	popa
    7853:	8b 46 04             	mov    0x4(%bp),%ax
    7856:	d1 e0                	shl    %ax
    7858:	03 f0                	add    %ax,%si
    785a:	8b 04                	mov    (%si),%ax
    785c:	50                   	push   %ax
    785d:	eb 19                	jmp    0x7878
    785f:	b8 06 00             	mov    $0x6,%ax
    7862:	50                   	push   %ax
    7863:	8d 36 37 61          	lea    0x6137,%si
    7867:	8b 46 04             	mov    0x4(%bp),%ax
    786a:	d1 e0                	shl    %ax
    786c:	03 f0                	add    %ax,%si
    786e:	ff 34                	push   (%si)
    7870:	e8 3c db             	call   0x53af
    7873:	83 c4 04             	add    $0x4,%sp
    7876:	eb 07                	jmp    0x787f
    7878:	e8 59 20             	call   0x98d4
    787b:	00 00                	add    %al,(%bx,%si)
    787d:	5f                   	pop    %di
    787e:	79 8d                	jns    0x780d
    7880:	06                   	push   %es
    7881:	14 05                	adc    $0x5,%al
    7883:	50                   	push   %ax
    7884:	e8 00 8d             	call   0x587
    7887:	83 c4 02             	add    $0x2,%sp
    788a:	8b e5                	mov    %bp,%sp
    788c:	5d                   	pop    %bp
    788d:	c3                   	ret
    788e:	55                   	push   %bp
    788f:	8b ec                	mov    %sp,%bp
    7891:	83 ec 02             	sub    $0x2,%sp
    7894:	81 3e 06 46 ff ff    	cmpw   $0xffff,0x4606
    789a:	75 04                	jne    0x78a0
    789c:	8b e5                	mov    %bp,%sp
    789e:	5d                   	pop    %bp
    789f:	c3                   	ret
    78a0:	8b 06 06 46          	mov    0x4606,%ax
    78a4:	0b c0                	or     %ax,%ax
    78a6:	74 09                	je     0x78b1
    78a8:	8b 06 06 46          	mov    0x4606,%ax
    78ac:	89 46 fe             	mov    %ax,-0x2(%bp)
    78af:	eb 07                	jmp    0x78b8
    78b1:	8b 06 ed 23          	mov    0x23ed,%ax
    78b5:	89 46 fe             	mov    %ax,-0x2(%bp)
    78b8:	8b 46 fe             	mov    -0x2(%bp),%ax
    78bb:	8b 16 f7 23          	mov    0x23f7,%dx
    78bf:	03 d0                	add    %ax,%dx
    78c1:	89 16 f7 23          	mov    %dx,0x23f7
    78c5:	ff 76 fe             	push   -0x2(%bp)
    78c8:	e8 5d 0f             	call   0x8828
    78cb:	83 c4 02             	add    $0x2,%sp
    78ce:	8b e5                	mov    %bp,%sp
    78d0:	5d                   	pop    %bp
    78d1:	c3                   	ret
    78d2:	55                   	push   %bp
    78d3:	8b ec                	mov    %sp,%bp
    78d5:	ff 06 f5 23          	incw   0x23f5
    78d9:	b8 00 00             	mov    $0x0,%ax
    78dc:	89 06 e9 23          	mov    %ax,0x23e9
    78e0:	8b e5                	mov    %bp,%sp
    78e2:	5d                   	pop    %bp
    78e3:	c3                   	ret
    78e4:	55                   	push   %bp
    78e5:	8b ec                	mov    %sp,%bp
    78e7:	8b 06 e9 23          	mov    0x23e9,%ax
    78eb:	01 06 f3 23          	add    %ax,0x23f3
    78ef:	8b 06 e9 23          	mov    0x23e9,%ax
    78f3:	3b 06 ef 23          	cmp    0x23ef,%ax
    78f7:	76 08                	jbe    0x7901
    78f9:	8b 06 e9 23          	mov    0x23e9,%ax
    78fd:	89 06 ef 23          	mov    %ax,0x23ef
    7901:	8b 06 e9 23          	mov    0x23e9,%ax
    7905:	0b c0                	or     %ax,%ax
    7907:	74 12                	je     0x791b
    7909:	8b 06 e9 23          	mov    0x23e9,%ax
    790d:	3b 06 f1 23          	cmp    0x23f1,%ax
    7911:	73 08                	jae    0x791b
    7913:	8b 06 e9 23          	mov    0x23e9,%ax
    7917:	89 06 f1 23          	mov    %ax,0x23f1
    791b:	81 3e e9 23 01 00    	cmpw   $0x1,0x23e9
    7921:	77 2d                	ja     0x7950
    7923:	ff 06 01 62          	incw   0x6201
    7927:	8b 06 01 62          	mov    0x6201,%ax
    792b:	83 f8 03             	cmp    $0x3,%ax
    792e:	75 17                	jne    0x7947
    7930:	81 3e ed 23 00 00    	cmpw   $0x0,0x23ed
    7936:	76 08                	jbe    0x7940
    7938:	ff 0e ed 23          	decw   0x23ed
    793c:	ff 06 fb 23          	incw   0x23fb
    7940:	b8 00 00             	mov    $0x0,%ax
    7943:	89 06 01 62          	mov    %ax,0x6201
    7947:	b8 00 00             	mov    $0x0,%ax
    794a:	89 06 ff 61          	mov    %ax,0x61ff
    794e:	eb 2b                	jmp    0x797b
    7950:	ff 06 ff 61          	incw   0x61ff
    7954:	8b 06 ff 61          	mov    0x61ff,%ax
    7958:	83 f8 03             	cmp    $0x3,%ax
    795b:	75 17                	jne    0x7974
    795d:	81 3e ed 23 05 00    	cmpw   $0x5,0x23ed
    7963:	73 08                	jae    0x796d
    7965:	ff 06 ed 23          	incw   0x23ed
    7969:	ff 06 f9 23          	incw   0x23f9
    796d:	b8 00 00             	mov    $0x0,%ax
    7970:	89 06 ff 61          	mov    %ax,0x61ff
    7974:	b8 00 00             	mov    $0x0,%ax
    7977:	89 06 01 62          	mov    %ax,0x6201
    797b:	8b e5                	mov    %bp,%sp
    797d:	5d                   	pop    %bp
    797e:	c3                   	ret
    797f:	55                   	push   %bp
    7980:	8b ec                	mov    %sp,%bp
    7982:	8d 06 17 05          	lea    0x517,%ax
    7986:	50                   	push   %ax
    7987:	e8 fd 8b             	call   0x587
    798a:	83 c4 02             	add    $0x2,%sp
    798d:	b8 06 00             	mov    $0x6,%ax
    7990:	50                   	push   %ax
    7991:	ff 36 f5 23          	push   0x23f5
    7995:	e8 17 da             	call   0x53af
    7998:	83 c4 04             	add    $0x4,%sp
    799b:	8d 06 32 05          	lea    0x532,%ax
    799f:	50                   	push   %ax
    79a0:	e8 e4 8b             	call   0x587
    79a3:	83 c4 02             	add    $0x2,%sp
    79a6:	b8 06 00             	mov    $0x6,%ax
    79a9:	50                   	push   %ax
    79aa:	ff 36 f3 23          	push   0x23f3
    79ae:	e8 fe d9             	call   0x53af
    79b1:	83 c4 04             	add    $0x4,%sp
    79b4:	8d 06 4d 05          	lea    0x54d,%ax
    79b8:	50                   	push   %ax
    79b9:	e8 cb 8b             	call   0x587
    79bc:	83 c4 02             	add    $0x2,%sp
    79bf:	81 3e f1 23 10 27    	cmpw   $0x2710,0x23f1
    79c5:	75 0f                	jne    0x79d6
    79c7:	b8 06 00             	mov    $0x6,%ax
    79ca:	50                   	push   %ax
    79cb:	b0 00                	mov    $0x0,%al
    79cd:	50                   	push   %ax
    79ce:	e8 de d9             	call   0x53af
    79d1:	83 c4 04             	add    $0x4,%sp
    79d4:	eb 0e                	jmp    0x79e4
    79d6:	b8 06 00             	mov    $0x6,%ax
    79d9:	50                   	push   %ax
    79da:	ff 36 f1 23          	push   0x23f1
    79de:	e8 ce d9             	call   0x53af
    79e1:	83 c4 04             	add    $0x4,%sp
    79e4:	8d 06 68 05          	lea    0x568,%ax
    79e8:	50                   	push   %ax
    79e9:	e8 9b 8b             	call   0x587
    79ec:	83 c4 02             	add    $0x2,%sp
    79ef:	b8 06 00             	mov    $0x6,%ax
    79f2:	50                   	push   %ax
    79f3:	ff 36 ef 23          	push   0x23ef
    79f7:	e8 b5 d9             	call   0x53af
    79fa:	83 c4 04             	add    $0x4,%sp
    79fd:	8d 06 83 05          	lea    0x583,%ax
    7a01:	50                   	push   %ax
    7a02:	e8 82 8b             	call   0x587
    7a05:	83 c4 02             	add    $0x2,%sp
    7a08:	b8 06 00             	mov    $0x6,%ax
    7a0b:	50                   	push   %ax
    7a0c:	ff 36 f7 23          	push   0x23f7
    7a10:	e8 9c d9             	call   0x53af
    7a13:	83 c4 04             	add    $0x4,%sp
    7a16:	8d 06 9e 05          	lea    0x59e,%ax
    7a1a:	50                   	push   %ax
    7a1b:	e8 69 8b             	call   0x587
    7a1e:	83 c4 02             	add    $0x2,%sp
    7a21:	b8 06 00             	mov    $0x6,%ax
    7a24:	50                   	push   %ax
    7a25:	ff 36 f9 23          	push   0x23f9
    7a29:	e8 83 d9             	call   0x53af
    7a2c:	83 c4 04             	add    $0x4,%sp
    7a2f:	8d 06 b9 05          	lea    0x5b9,%ax
    7a33:	50                   	push   %ax
    7a34:	e8 50 8b             	call   0x587
    7a37:	83 c4 02             	add    $0x2,%sp
    7a3a:	b8 06 00             	mov    $0x6,%ax
    7a3d:	50                   	push   %ax
    7a3e:	ff 36 fb 23          	push   0x23fb
    7a42:	e8 6a d9             	call   0x53af
    7a45:	83 c4 04             	add    $0x4,%sp
    7a48:	8b e5                	mov    %bp,%sp
    7a4a:	5d                   	pop    %bp
    7a4b:	c3                   	ret
    7a4c:	55                   	push   %bp
    7a4d:	8b ec                	mov    %sp,%bp
    7a4f:	83 ec 04             	sub    $0x4,%sp
    7a52:	8d 06 d4 05          	lea    0x5d4,%ax
    7a56:	50                   	push   %ax
    7a57:	e8 2d 8b             	call   0x587
    7a5a:	83 c4 02             	add    $0x2,%sp
    7a5d:	e8 ab 00             	call   0x7b0b
    7a60:	0b c0                	or     %ax,%ax
    7a62:	74 0f                	je     0x7a73
    7a64:	8d 06 d9 05          	lea    0x5d9,%ax
    7a68:	50                   	push   %ax
    7a69:	e8 1b 8b             	call   0x587
    7a6c:	83 c4 02             	add    $0x2,%sp
    7a6f:	8b e5                	mov    %bp,%sp
    7a71:	5d                   	pop    %bp
    7a72:	c3                   	ret
    7a73:	b8 00 00             	mov    $0x0,%ax
    7a76:	89 46 fe             	mov    %ax,-0x2(%bp)
    7a79:	8b 46 fe             	mov    -0x2(%bp),%ax
    7a7c:	8b 36 cb 07          	mov    0x7cb,%si
    7a80:	8a 14                	mov    (%si),%dl
    7a82:	81 e2 ff 00          	and    $0xff,%dx
    7a86:	3b d0                	cmp    %ax,%dx
    7a88:	77 03                	ja     0x7a8d
    7a8a:	e9 7a 00             	jmp    0x7b07
    7a8d:	8b 06 2c 46          	mov    0x462c,%ax
    7a91:	50                   	push   %ax
    7a92:	bb 6a 00             	mov    $0x6a,%bx
    7a95:	8b 46 fe             	mov    -0x2(%bp),%ax
    7a98:	f7 eb                	imul   %bx
    7a9a:	5e                   	pop    %si
    7a9b:	03 f0                	add    %ax,%si
    7a9d:	89 76 fc             	mov    %si,-0x4(%bp)
    7aa0:	8d 06 ea 05          	lea    0x5ea,%ax
    7aa4:	50                   	push   %ax
    7aa5:	e8 df 8a             	call   0x587
    7aa8:	83 c4 02             	add    $0x2,%sp
    7aab:	b8 02 00             	mov    $0x2,%ax
    7aae:	50                   	push   %ax
    7aaf:	ff 76 fe             	push   -0x2(%bp)
    7ab2:	e8 fa d8             	call   0x53af
    7ab5:	83 c4 04             	add    $0x4,%sp
    7ab8:	b8 03 00             	mov    $0x3,%ax
    7abb:	50                   	push   %ax
    7abc:	8b 76 fc             	mov    -0x4(%bp),%si
    7abf:	ff 34                	push   (%si)
    7ac1:	e8 eb d8             	call   0x53af
    7ac4:	83 c4 04             	add    $0x4,%sp
    7ac7:	b8 03 00             	mov    $0x3,%ax
    7aca:	50                   	push   %ax
    7acb:	8b 36 cb 07          	mov    0x7cb,%si
    7acf:	8d 44 0b             	lea    0xb(%si),%ax
    7ad2:	03 46 fe             	add    -0x2(%bp),%ax
    7ad5:	8b f0                	mov    %ax,%si
    7ad7:	8a 04                	mov    (%si),%al
    7ad9:	81 e0 ff 00          	and    $0xff,%ax
    7add:	50                   	push   %ax
    7ade:	e8 ce d8             	call   0x53af
    7ae1:	83 c4 04             	add    $0x4,%sp
    7ae4:	8b 46 fe             	mov    -0x2(%bp),%ax
    7ae7:	8b 36 cb 07          	mov    0x7cb,%si
    7aeb:	8a 54 02             	mov    0x2(%si),%dl
    7aee:	81 e2 ff 00          	and    $0xff,%dx
    7af2:	3b d0                	cmp    %ax,%dx
    7af4:	75 0b                	jne    0x7b01
    7af6:	8d 06 f5 05          	lea    0x5f5,%ax
    7afa:	50                   	push   %ax
    7afb:	e8 89 8a             	call   0x587
    7afe:	83 c4 02             	add    $0x2,%sp
    7b01:	ff 46 fe             	incw   -0x2(%bp)
    7b04:	e9 72 ff             	jmp    0x7a79
    7b07:	8b e5                	mov    %bp,%sp
    7b09:	5d                   	pop    %bp
    7b0a:	c3                   	ret
    7b0b:	55                   	push   %bp
    7b0c:	8b ec                	mov    %sp,%bp
    7b0e:	83 ec 04             	sub    $0x4,%sp
    7b11:	8b 36 cb 07          	mov    0x7cb,%si
    7b15:	8a 04                	mov    (%si),%al
    7b17:	81 e0 ff 00          	and    $0xff,%ax
    7b1b:	88 46 fc             	mov    %al,-0x4(%bp)
    7b1e:	98                   	cbtw
    7b1f:	83 f8 00             	cmp    $0x0,%ax
    7b22:	b8 01 00             	mov    $0x1,%ax
    7b25:	7c 02                	jl     0x7b29
    7b27:	ff c8                	dec    %ax
    7b29:	0b c0                	or     %ax,%ax
    7b2b:	74 03                	je     0x7b30
    7b2d:	b8 01 00             	mov    $0x1,%ax
    7b30:	0b c0                	or     %ax,%ax
    7b32:	75 1f                	jne    0x7b53
    7b34:	8a 46 fc             	mov    -0x4(%bp),%al
    7b37:	98                   	cbtw
    7b38:	98                   	cbtw
    7b39:	83 f8 04             	cmp    $0x4,%ax
    7b3c:	b8 01 00             	mov    $0x1,%ax
    7b3f:	7f 02                	jg     0x7b43
    7b41:	ff c8                	dec    %ax
    7b43:	0b c0                	or     %ax,%ax
    7b45:	74 03                	je     0x7b4a
    7b47:	b8 01 00             	mov    $0x1,%ax
    7b4a:	0b c0                	or     %ax,%ax
    7b4c:	75 05                	jne    0x7b53
    7b4e:	b8 00 00             	mov    $0x0,%ax
    7b51:	eb 03                	jmp    0x7b56
    7b53:	b8 01 00             	mov    $0x1,%ax
    7b56:	0b c0                	or     %ax,%ax
    7b58:	74 03                	je     0x7b5d
    7b5a:	b8 01 00             	mov    $0x1,%ax
    7b5d:	0b c0                	or     %ax,%ax
    7b5f:	75 29                	jne    0x7b8a
    7b61:	8b 36 cb 07          	mov    0x7cb,%si
    7b65:	8a 44 01             	mov    0x1(%si),%al
    7b68:	81 e0 ff 00          	and    $0xff,%ax
    7b6c:	88 46 fd             	mov    %al,-0x3(%bp)
    7b6f:	98                   	cbtw
    7b70:	83 f8 00             	cmp    $0x0,%ax
    7b73:	b8 01 00             	mov    $0x1,%ax
    7b76:	7c 02                	jl     0x7b7a
    7b78:	ff c8                	dec    %ax
    7b7a:	0b c0                	or     %ax,%ax
    7b7c:	74 03                	je     0x7b81
    7b7e:	b8 01 00             	mov    $0x1,%ax
    7b81:	0b c0                	or     %ax,%ax
    7b83:	75 05                	jne    0x7b8a
    7b85:	b8 00 00             	mov    $0x0,%ax
    7b88:	eb 03                	jmp    0x7b8d
    7b8a:	b8 01 00             	mov    $0x1,%ax
    7b8d:	0b c0                	or     %ax,%ax
    7b8f:	74 03                	je     0x7b94
    7b91:	b8 01 00             	mov    $0x1,%ax
    7b94:	0b c0                	or     %ax,%ax
    7b96:	75 25                	jne    0x7bbd
    7b98:	8a 46 fd             	mov    -0x3(%bp),%al
    7b9b:	98                   	cbtw
    7b9c:	98                   	cbtw
    7b9d:	50                   	push   %ax
    7b9e:	8a 46 fc             	mov    -0x4(%bp),%al
    7ba1:	98                   	cbtw
    7ba2:	98                   	cbtw
    7ba3:	5a                   	pop    %dx
    7ba4:	3b d0                	cmp    %ax,%dx
    7ba6:	b8 01 00             	mov    $0x1,%ax
    7ba9:	7f 02                	jg     0x7bad
    7bab:	ff c8                	dec    %ax
    7bad:	0b c0                	or     %ax,%ax
    7baf:	74 03                	je     0x7bb4
    7bb1:	b8 01 00             	mov    $0x1,%ax
    7bb4:	0b c0                	or     %ax,%ax
    7bb6:	75 05                	jne    0x7bbd
    7bb8:	b8 00 00             	mov    $0x0,%ax
    7bbb:	eb 03                	jmp    0x7bc0
    7bbd:	b8 01 00             	mov    $0x1,%ax
    7bc0:	0b c0                	or     %ax,%ax
    7bc2:	74 03                	je     0x7bc7
    7bc4:	b8 01 00             	mov    $0x1,%ax
    7bc7:	0b c0                	or     %ax,%ax
    7bc9:	75 29                	jne    0x7bf4
    7bcb:	8b 36 cb 07          	mov    0x7cb,%si
    7bcf:	8a 44 02             	mov    0x2(%si),%al
    7bd2:	81 e0 ff 00          	and    $0xff,%ax
    7bd6:	88 46 fe             	mov    %al,-0x2(%bp)
    7bd9:	98                   	cbtw
    7bda:	83 f8 00             	cmp    $0x0,%ax
    7bdd:	b8 01 00             	mov    $0x1,%ax
    7be0:	7c 02                	jl     0x7be4
    7be2:	ff c8                	dec    %ax
    7be4:	0b c0                	or     %ax,%ax
    7be6:	74 03                	je     0x7beb
    7be8:	b8 01 00             	mov    $0x1,%ax
    7beb:	0b c0                	or     %ax,%ax
    7bed:	75 05                	jne    0x7bf4
    7bef:	b8 00 00             	mov    $0x0,%ax
    7bf2:	eb 03                	jmp    0x7bf7
    7bf4:	b8 01 00             	mov    $0x1,%ax
    7bf7:	0b c0                	or     %ax,%ax
    7bf9:	74 03                	je     0x7bfe
    7bfb:	b8 01 00             	mov    $0x1,%ax
    7bfe:	0b c0                	or     %ax,%ax
    7c00:	75 25                	jne    0x7c27
    7c02:	8a 46 fe             	mov    -0x2(%bp),%al
    7c05:	98                   	cbtw
    7c06:	98                   	cbtw
    7c07:	50                   	push   %ax
    7c08:	8a 46 fc             	mov    -0x4(%bp),%al
    7c0b:	98                   	cbtw
    7c0c:	98                   	cbtw
    7c0d:	5a                   	pop    %dx
    7c0e:	3b d0                	cmp    %ax,%dx
    7c10:	b8 01 00             	mov    $0x1,%ax
    7c13:	7d 02                	jge    0x7c17
    7c15:	ff c8                	dec    %ax
    7c17:	0b c0                	or     %ax,%ax
    7c19:	74 03                	je     0x7c1e
    7c1b:	b8 01 00             	mov    $0x1,%ax
    7c1e:	0b c0                	or     %ax,%ax
    7c20:	75 05                	jne    0x7c27
    7c22:	b8 00 00             	mov    $0x0,%ax
    7c25:	eb 03                	jmp    0x7c2a
    7c27:	b8 01 00             	mov    $0x1,%ax
    7c2a:	8b e5                	mov    %bp,%sp
    7c2c:	5d                   	pop    %bp
    7c2d:	c3                   	ret
    7c2e:	55                   	push   %bp
    7c2f:	8b ec                	mov    %sp,%bp
    7c31:	83 ec 08             	sub    $0x8,%sp
    7c34:	8b 76 06             	mov    0x6(%bp),%si
    7c37:	8a 04                	mov    (%si),%al
    7c39:	98                   	cbtw
    7c3a:	0b c0                	or     %ax,%ax
    7c3c:	74 13                	je     0x7c51
    7c3e:	8b 76 06             	mov    0x6(%bp),%si
    7c41:	8a 04                	mov    (%si),%al
    7c43:	98                   	cbtw
    7c44:	8b 36 db 23          	mov    0x23db,%si
    7c48:	88 04                	mov    %al,(%si)
    7c4a:	98                   	cbtw
    7c4b:	8b 36 dd 23          	mov    0x23dd,%si
    7c4f:	88 04                	mov    %al,(%si)
    7c51:	e8 a0 b8             	call   0x34f4
    7c54:	83 c0 30             	add    $0x30,%ax
    7c57:	8b 36 db 23          	mov    0x23db,%si
    7c5b:	83 c6 09             	add    $0x9,%si
    7c5e:	88 04                	mov    %al,(%si)
    7c60:	ff 36 db 23          	push   0x23db
    7c64:	ff 36 dd 23          	push   0x23dd
    7c68:	e8 36 ec             	call   0x68a1
    7c6b:	83 c4 04             	add    $0x4,%sp
    7c6e:	ff 36 cd 07          	push   0x7cd
    7c72:	e8 ea 0a             	call   0x875f
    7c75:	83 c4 02             	add    $0x2,%sp
    7c78:	8d 06 09 61          	lea    0x6109,%ax
    7c7c:	89 06 0b 61          	mov    %ax,0x610b
    7c80:	8b 06 0b 61          	mov    0x610b,%ax
    7c84:	83 e0 01             	and    $0x1,%ax
    7c87:	0b c0                	or     %ax,%ax
    7c89:	74 06                	je     0x7c91
    7c8b:	81 06 0b 61 fe ff    	addw   $0xfffe,0x610b
    7c91:	b8 00 00             	mov    $0x0,%ax
    7c94:	89 46 f8             	mov    %ax,-0x8(%bp)
    7c97:	81 7e f8 19 00       	cmpw   $0x19,-0x8(%bp)
    7c9c:	7d 2f                	jge    0x7ccd
    7c9e:	e8 8c f0             	call   0x6d2d
    7ca1:	89 46 fa             	mov    %ax,-0x6(%bp)
    7ca4:	83 f8 00             	cmp    $0x0,%ax
    7ca7:	7c 02                	jl     0x7cab
    7ca9:	eb 22                	jmp    0x7ccd
    7cab:	e8 97 d9             	call   0x5645
    7cae:	b8 12 00             	mov    $0x12,%ax
    7cb1:	89 46 fe             	mov    %ax,-0x2(%bp)
    7cb4:	b0 00                	mov    $0x0,%al
    7cb6:	89 06 e1 25          	mov    %ax,0x25e1
    7cba:	e8 86 d9             	call   0x5643
    7cbd:	8b 06 e1 25          	mov    0x25e1,%ax
    7cc1:	3b 46 fe             	cmp    -0x2(%bp),%ax
    7cc4:	7d 02                	jge    0x7cc8
    7cc6:	eb f5                	jmp    0x7cbd
    7cc8:	ff 46 f8             	incw   -0x8(%bp)
    7ccb:	eb ca                	jmp    0x7c97
    7ccd:	8b 46 fa             	mov    -0x6(%bp),%ax
    7cd0:	0b c0                	or     %ax,%ax
    7cd2:	74 02                	je     0x7cd6
    7cd4:	eb 0f                	jmp    0x7ce5
    7cd6:	b8 00 00             	mov    $0x0,%ax
    7cd9:	50                   	push   %ax
    7cda:	8d 06 07 06          	lea    0x607,%ax
    7cde:	50                   	push   %ax
    7cdf:	e8 af dc             	call   0x5991
    7ce2:	83 c4 04             	add    $0x4,%sp
    7ce5:	81 7e fa 00 00       	cmpw   $0x0,-0x6(%bp)
    7cea:	7d 0f                	jge    0x7cfb
    7cec:	b8 00 00             	mov    $0x0,%ax
    7cef:	50                   	push   %ax
    7cf0:	8d 06 2a 06          	lea    0x62a,%ax
    7cf4:	50                   	push   %ax
    7cf5:	e8 99 dc             	call   0x5991
    7cf8:	83 c4 04             	add    $0x4,%sp
    7cfb:	8b 46 04             	mov    0x4(%bp),%ax
    7cfe:	0b c0                	or     %ax,%ax
    7d00:	74 03                	je     0x7d05
    7d02:	e8 4c 02             	call   0x7f51
    7d05:	8b 06 cb 07          	mov    0x7cb,%ax
    7d09:	89 46 fc             	mov    %ax,-0x4(%bp)
    7d0c:	8b 76 fc             	mov    -0x4(%bp),%si
    7d0f:	8a 44 01             	mov    0x1(%si),%al
    7d12:	81 e0 ff 00          	and    $0xff,%ax
    7d16:	0b c0                	or     %ax,%ax
    7d18:	74 03                	je     0x7d1d
    7d1a:	b8 01 00             	mov    $0x1,%ax
    7d1d:	83 f0 01             	xor    $0x1,%ax
    7d20:	89 06 29 61          	mov    %ax,0x6129
    7d24:	0b c0                	or     %ax,%ax
    7d26:	74 1d                	je     0x7d45
    7d28:	e8 d3 01             	call   0x7efe
    7d2b:	8b 76 fc             	mov    -0x4(%bp),%si
    7d2e:	88 04                	mov    %al,(%si)
    7d30:	b8 00 00             	mov    $0x0,%ax
    7d33:	8b 76 fc             	mov    -0x4(%bp),%si
    7d36:	88 44 01             	mov    %al,0x1(%si)
    7d39:	8b 06 2e 4b          	mov    0x4b2e,%ax
    7d3d:	8b 76 fc             	mov    -0x4(%bp),%si
    7d40:	89 44 0f             	mov    %ax,0xf(%si)
    7d43:	eb 0a                	jmp    0x7d4f
    7d45:	8b 76 fc             	mov    -0x4(%bp),%si
    7d48:	8b 44 0f             	mov    0xf(%si),%ax
    7d4b:	89 06 2e 4b          	mov    %ax,0x4b2e
    7d4f:	e8 c2 b5             	call   0x3314
    7d52:	8d 06 1b 20          	lea    0x201b,%ax
    7d56:	89 06 af 25          	mov    %ax,0x25af
    7d5a:	8b 76 fc             	mov    -0x4(%bp),%si
    7d5d:	8a 04                	mov    (%si),%al
    7d5f:	81 e0 ff 00          	and    $0xff,%ax
    7d63:	8b 76 fc             	mov    -0x4(%bp),%si
    7d66:	8a 54 01             	mov    0x1(%si),%dl
    7d69:	81 e2 ff 00          	and    $0xff,%dx
    7d6d:	3b d0                	cmp    %ax,%dx
    7d6f:	72 0f                	jb     0x7d80
    7d71:	b8 00 00             	mov    $0x0,%ax
    7d74:	50                   	push   %ax
    7d75:	8d 06 46 06          	lea    0x646,%ax
    7d79:	50                   	push   %ax
    7d7a:	e8 14 dc             	call   0x5991
    7d7d:	83 c4 04             	add    $0x4,%sp
    7d80:	8b 76 fc             	mov    -0x4(%bp),%si
    7d83:	fe 44 01             	incb   0x1(%si)
    7d86:	8b e5                	mov    %bp,%sp
    7d88:	5d                   	pop    %bp
    7d89:	c3                   	ret
    7d8a:	55                   	push   %bp
    7d8b:	8b ec                	mov    %sp,%bp
    7d8d:	83 ec 08             	sub    $0x8,%sp
    7d90:	b8 00 00             	mov    $0x0,%ax
    7d93:	89 46 fe             	mov    %ax,-0x2(%bp)
    7d96:	8b 06 cb 07          	mov    0x7cb,%ax
    7d9a:	89 46 fc             	mov    %ax,-0x4(%bp)
    7d9d:	b8 00 00             	mov    $0x0,%ax
    7da0:	89 46 fa             	mov    %ax,-0x6(%bp)
    7da3:	8b 46 fa             	mov    -0x6(%bp),%ax
    7da6:	8b 76 fc             	mov    -0x4(%bp),%si
    7da9:	8a 14                	mov    (%si),%dl
    7dab:	81 e2 ff 00          	and    $0xff,%dx
    7daf:	3b d0                	cmp    %ax,%dx
    7db1:	77 03                	ja     0x7db6
    7db3:	e9 e3 00             	jmp    0x7e99
    7db6:	8b 46 fe             	mov    -0x2(%bp),%ax
    7db9:	0b c0                	or     %ax,%ax
    7dbb:	74 02                	je     0x7dbf
    7dbd:	eb 5c                	jmp    0x7e1b
    7dbf:	8b 76 fc             	mov    -0x4(%bp),%si
    7dc2:	8d 44 0b             	lea    0xb(%si),%ax
    7dc5:	03 46 fa             	add    -0x6(%bp),%ax
    7dc8:	8b f0                	mov    %ax,%si
    7dca:	8a 04                	mov    (%si),%al
    7dcc:	81 e0 ff 00          	and    $0xff,%ax
    7dd0:	83 f8 00             	cmp    $0x0,%ax
    7dd3:	75 46                	jne    0x7e1b
    7dd5:	8b 46 fa             	mov    -0x6(%bp),%ax
    7dd8:	89 06 c6 48          	mov    %ax,0x48c6
    7ddc:	b8 00 00             	mov    $0x0,%ax
    7ddf:	50                   	push   %ax
    7de0:	e8 a4 bd             	call   0x3b87
    7de3:	83 c4 02             	add    $0x2,%sp
    7de6:	b8 00 00             	mov    $0x0,%ax
    7de9:	8b 76 fc             	mov    -0x4(%bp),%si
    7dec:	8d 54 03             	lea    0x3(%si),%dx
    7def:	8b 5e fa             	mov    -0x6(%bp),%bx
    7df2:	d1 e3                	shl    %bx
    7df4:	03 d3                	add    %bx,%dx
    7df6:	8b f2                	mov    %dx,%si
    7df8:	89 04                	mov    %ax,(%si)
    7dfa:	b8 01 00             	mov    $0x1,%ax
    7dfd:	8b 76 fc             	mov    -0x4(%bp),%si
    7e00:	8d 54 0b             	lea    0xb(%si),%dx
    7e03:	03 56 fa             	add    -0x6(%bp),%dx
    7e06:	8b f2                	mov    %dx,%si
    7e08:	88 04                	mov    %al,(%si)
    7e0a:	8b 46 fa             	mov    -0x6(%bp),%ax
    7e0d:	8b 76 fc             	mov    -0x4(%bp),%si
    7e10:	88 44 02             	mov    %al,0x2(%si)
    7e13:	b8 01 00             	mov    $0x1,%ax
    7e16:	89 46 fe             	mov    %ax,-0x2(%bp)
    7e19:	eb 78                	jmp    0x7e93
    7e1b:	b8 00 00             	mov    $0x0,%ax
    7e1e:	50                   	push   %ax
    7e1f:	e8 04 be             	call   0x3c26
    7e22:	83 c4 02             	add    $0x2,%sp
    7e25:	89 46 f8             	mov    %ax,-0x8(%bp)
    7e28:	8d 06 b3 57          	lea    0x57b3,%ax
    7e2c:	8b 76 f8             	mov    -0x8(%bp),%si
    7e2f:	89 44 44             	mov    %ax,0x44(%si)
    7e32:	8d 06 ee 68          	lea    0x68ee,%ax
    7e36:	8b 76 f8             	mov    -0x8(%bp),%si
    7e39:	89 44 46             	mov    %ax,0x46(%si)
    7e3c:	b8 02 00             	mov    $0x2,%ax
    7e3f:	50                   	push   %ax
    7e40:	8b 76 f8             	mov    -0x8(%bp),%si
    7e43:	8b 44 38             	mov    0x38(%si),%ax
    7e46:	5b                   	pop    %bx
    7e47:	99                   	cwtd
    7e48:	f7 fb                	idiv   %bx
    7e4a:	83 c2 01             	add    $0x1,%dx
    7e4d:	8b 76 f8             	mov    -0x8(%bp),%si
    7e50:	89 54 2a             	mov    %dx,0x2a(%si)
    7e53:	8b 46 f8             	mov    -0x8(%bp),%ax
    7e56:	8b 76 f8             	mov    -0x8(%bp),%si
    7e59:	89 44 20             	mov    %ax,0x20(%si)
    7e5c:	8b 76 fc             	mov    -0x4(%bp),%si
    7e5f:	8d 44 0b             	lea    0xb(%si),%ax
    7e62:	03 46 fa             	add    -0x6(%bp),%ax
    7e65:	8b f0                	mov    %ax,%si
    7e67:	8a 04                	mov    (%si),%al
    7e69:	81 e0 ff 00          	and    $0xff,%ax
    7e6d:	8b 76 f8             	mov    -0x8(%bp),%si
    7e70:	89 04                	mov    %ax,(%si)
    7e72:	b8 6a 00             	mov    $0x6a,%ax
    7e75:	50                   	push   %ax
    7e76:	8d 06 2e 46          	lea    0x462e,%ax
    7e7a:	50                   	push   %ax
    7e7b:	bb 6a 00             	mov    $0x6a,%bx
    7e7e:	8b 76 f8             	mov    -0x8(%bp),%si
    7e81:	8b 44 38             	mov    0x38(%si),%ax
    7e84:	f7 eb                	imul   %bx
    7e86:	5e                   	pop    %si
    7e87:	03 f0                	add    %ax,%si
    7e89:	56                   	push   %si
    7e8a:	ff 76 f8             	push   -0x8(%bp)
    7e8d:	e8 ff 18             	call   0x978f
    7e90:	83 c4 06             	add    $0x6,%sp
    7e93:	ff 46 fa             	incw   -0x6(%bp)
    7e96:	e9 0a ff             	jmp    0x7da3
    7e99:	b8 02 00             	mov    $0x2,%ax
    7e9c:	50                   	push   %ax
    7e9d:	8b 76 fc             	mov    -0x4(%bp),%si
    7ea0:	8a 04                	mov    (%si),%al
    7ea2:	81 e0 ff 00          	and    $0xff,%ax
    7ea6:	5b                   	pop    %bx
    7ea7:	33 d2                	xor    %dx,%dx
    7ea9:	f7 f3                	div    %bx
    7eab:	0b d2                	or     %dx,%dx
    7ead:	74 0a                	je     0x7eb9
    7eaf:	b8 00 00             	mov    $0x0,%ax
    7eb2:	50                   	push   %ax
    7eb3:	e8 18 bc             	call   0x3ace
    7eb6:	83 c4 02             	add    $0x2,%sp
    7eb9:	e8 24 f0             	call   0x6ee0
    7ebc:	0b c0                	or     %ax,%ax
    7ebe:	74 02                	je     0x7ec2
    7ec0:	eb 0f                	jmp    0x7ed1
    7ec2:	b8 00 00             	mov    $0x0,%ax
    7ec5:	50                   	push   %ax
    7ec6:	8d 06 70 06          	lea    0x670,%ax
    7eca:	50                   	push   %ax
    7ecb:	e8 c3 da             	call   0x5991
    7ece:	83 c4 04             	add    $0x4,%sp
    7ed1:	e8 8d f0             	call   0x6f61
    7ed4:	0b c0                	or     %ax,%ax
    7ed6:	74 02                	je     0x7eda
    7ed8:	eb 0f                	jmp    0x7ee9
    7eda:	b8 01 00             	mov    $0x1,%ax
    7edd:	50                   	push   %ax
    7ede:	8d 06 93 06          	lea    0x693,%ax
    7ee2:	50                   	push   %ax
    7ee3:	e8 ab da             	call   0x5991
    7ee6:	83 c4 04             	add    $0x4,%sp
    7ee9:	e8 28 b4             	call   0x3314
    7eec:	8d 06 b7 06          	lea    0x6b7,%ax
    7ef0:	50                   	push   %ax
    7ef1:	e8 93 86             	call   0x587
    7ef4:	83 c4 02             	add    $0x2,%sp
    7ef7:	e8 d7 f0             	call   0x6fd1
    7efa:	8b e5                	mov    %bp,%sp
    7efc:	5d                   	pop    %bp
    7efd:	c3                   	ret
    7efe:	55                   	push   %bp
    7eff:	8b ec                	mov    %sp,%bp
    7f01:	83 ec 02             	sub    $0x2,%sp
    7f04:	e8 0d b4             	call   0x3314
    7f07:	8d 06 d9 06          	lea    0x6d9,%ax
    7f0b:	50                   	push   %ax
    7f0c:	e8 78 86             	call   0x587
    7f0f:	83 c4 02             	add    $0x2,%sp
    7f12:	b8 01 00             	mov    $0x1,%ax
    7f15:	0b c0                	or     %ax,%ax
    7f17:	74 34                	je     0x7f4d
    7f19:	e8 2b b6             	call   0x3547
    7f1c:	0b c0                	or     %ax,%ax
    7f1e:	74 0b                	je     0x7f2b
    7f20:	b8 00 00             	mov    $0x0,%ax
    7f23:	50                   	push   %ax
    7f24:	50                   	push   %ax
    7f25:	e8 69 da             	call   0x5991
    7f28:	83 c4 04             	add    $0x4,%sp
    7f2b:	e8 95 83             	call   0x2c3
    7f2e:	81 e0 ff 00          	and    $0xff,%ax
    7f32:	83 e8 30             	sub    $0x30,%ax
    7f35:	89 46 fe             	mov    %ax,-0x2(%bp)
    7f38:	83 f8 01             	cmp    $0x1,%ax
    7f3b:	7c 0e                	jl     0x7f4b
    7f3d:	81 7e fe 04 00       	cmpw   $0x4,-0x2(%bp)
    7f42:	7f 07                	jg     0x7f4b
    7f44:	8b 46 fe             	mov    -0x2(%bp),%ax
    7f47:	8b e5                	mov    %bp,%sp
    7f49:	5d                   	pop    %bp
    7f4a:	c3                   	ret
    7f4b:	eb c5                	jmp    0x7f12
    7f4d:	8b e5                	mov    %bp,%sp
    7f4f:	5d                   	pop    %bp
    7f50:	c3                   	ret
    7f51:	55                   	push   %bp
    7f52:	8b ec                	mov    %sp,%bp
    7f54:	83 ec 02             	sub    $0x2,%sp
    7f57:	b8 00 00             	mov    $0x0,%ax
    7f5a:	8b 36 cb 07          	mov    0x7cb,%si
    7f5e:	88 04                	mov    %al,(%si)
    7f60:	b8 00 00             	mov    $0x0,%ax
    7f63:	8b 36 cb 07          	mov    0x7cb,%si
    7f67:	88 44 01             	mov    %al,0x1(%si)
    7f6a:	b8 00 00             	mov    $0x0,%ax
    7f6d:	8b 36 cb 07          	mov    0x7cb,%si
    7f71:	88 44 02             	mov    %al,0x2(%si)
    7f74:	b8 00 00             	mov    $0x0,%ax
    7f77:	8b 36 cb 07          	mov    0x7cb,%si
    7f7b:	89 44 0f             	mov    %ax,0xf(%si)
    7f7e:	b8 00 00             	mov    $0x0,%ax
    7f81:	89 46 fe             	mov    %ax,-0x2(%bp)
    7f84:	81 7e fe 04 00       	cmpw   $0x4,-0x2(%bp)
    7f89:	7d 2b                	jge    0x7fb6
    7f8b:	b8 00 00             	mov    $0x0,%ax
    7f8e:	8b 36 cb 07          	mov    0x7cb,%si
    7f92:	8d 54 03             	lea    0x3(%si),%dx
    7f95:	8b 5e fe             	mov    -0x2(%bp),%bx
    7f98:	d1 e3                	shl    %bx
    7f9a:	03 d3                	add    %bx,%dx
    7f9c:	8b f2                	mov    %dx,%si
    7f9e:	89 04                	mov    %ax,(%si)
    7fa0:	b8 00 00             	mov    $0x0,%ax
    7fa3:	8b 36 cb 07          	mov    0x7cb,%si
    7fa7:	8d 54 0b             	lea    0xb(%si),%dx
    7faa:	03 56 fe             	add    -0x2(%bp),%dx
    7fad:	8b f2                	mov    %dx,%si
    7faf:	88 04                	mov    %al,(%si)
    7fb1:	ff 46 fe             	incw   -0x2(%bp)
    7fb4:	eb ce                	jmp    0x7f84
    7fb6:	8b e5                	mov    %bp,%sp
    7fb8:	5d                   	pop    %bp
    7fb9:	c3                   	ret
    7fba:	55                   	push   %bp
    7fbb:	8b ec                	mov    %sp,%bp
    7fbd:	83 ec 04             	sub    $0x4,%sp
    7fc0:	e8 05 0d             	call   0x8cc8
    7fc3:	83 f8 00             	cmp    $0x0,%ax
    7fc6:	7c 02                	jl     0x7fca
    7fc8:	eb f6                	jmp    0x7fc0
    7fca:	b8 00 00             	mov    $0x0,%ax
    7fcd:	89 46 fc             	mov    %ax,-0x4(%bp)
    7fd0:	b8 01 00             	mov    $0x1,%ax
    7fd3:	0b c0                	or     %ax,%ax
    7fd5:	74 5c                	je     0x8033
    7fd7:	b8 02 00             	mov    $0x2,%ax
    7fda:	50                   	push   %ax
    7fdb:	e8 8b 00             	call   0x8069
    7fde:	83 c4 02             	add    $0x2,%sp
    7fe1:	e8 a0 00             	call   0x8084
    7fe4:	0b c0                	or     %ax,%ax
    7fe6:	74 02                	je     0x7fea
    7fe8:	eb 02                	jmp    0x7fec
    7fea:	eb f5                	jmp    0x7fe1
    7fec:	b8 40 00             	mov    $0x40,%ax
    7fef:	50                   	push   %ax
    7ff0:	e8 e4 0c             	call   0x8cd7
    7ff3:	83 c4 02             	add    $0x2,%sp
    7ff6:	e8 4e b5             	call   0x3547
    7ff9:	0b c0                	or     %ax,%ax
    7ffb:	74 0b                	je     0x8008
    7ffd:	b8 00 00             	mov    $0x0,%ax
    8000:	50                   	push   %ax
    8001:	50                   	push   %ax
    8002:	e8 8c d9             	call   0x5991
    8005:	83 c4 04             	add    $0x4,%sp
    8008:	e8 bd 0c             	call   0x8cc8
    800b:	89 46 fe             	mov    %ax,-0x2(%bp)
    800e:	83 f8 00             	cmp    $0x0,%ax
    8011:	7d 02                	jge    0x8015
    8013:	eb bb                	jmp    0x7fd0
    8015:	81 7e fe 40 00       	cmpw   $0x40,-0x2(%bp)
    801a:	75 0f                	jne    0x802b
    801c:	ff 46 fc             	incw   -0x4(%bp)
    801f:	8b 46 fc             	mov    -0x4(%bp),%ax
    8022:	83 f8 0a             	cmp    $0xa,%ax
    8025:	75 02                	jne    0x8029
    8027:	eb 0a                	jmp    0x8033
    8029:	eb a5                	jmp    0x7fd0
    802b:	b8 00 00             	mov    $0x0,%ax
    802e:	89 46 fc             	mov    %ax,-0x4(%bp)
    8031:	eb 9d                	jmp    0x7fd0
    8033:	b8 00 00             	mov    $0x0,%ax
    8036:	50                   	push   %ax
    8037:	e8 9d 0c             	call   0x8cd7
    803a:	83 c4 02             	add    $0x2,%sp
    803d:	b8 01 00             	mov    $0x1,%ax
    8040:	0b c0                	or     %ax,%ax
    8042:	74 21                	je     0x8065
    8044:	e8 53 00             	call   0x809a
    8047:	89 46 fe             	mov    %ax,-0x2(%bp)
    804a:	83 f8 ff             	cmp    $0xffff,%ax
    804d:	75 0b                	jne    0x805a
    804f:	8d 06 00 07          	lea    0x700,%ax
    8053:	50                   	push   %ax
    8054:	e8 3a d9             	call   0x5991
    8057:	83 c4 02             	add    $0x2,%sp
    805a:	81 7e fe 40 00       	cmpw   $0x40,-0x2(%bp)
    805f:	74 02                	je     0x8063
    8061:	eb 02                	jmp    0x8065
    8063:	eb d8                	jmp    0x803d
    8065:	8b e5                	mov    %bp,%sp
    8067:	5d                   	pop    %bp
    8068:	c3                   	ret
    8069:	55                   	push   %bp
    806a:	8b ec                	mov    %sp,%bp
    806c:	e8 d6 d5             	call   0x5645
    806f:	8b 46 04             	mov    0x4(%bp),%ax
    8072:	89 06 03 62          	mov    %ax,0x6203
    8076:	b8 00 00             	mov    $0x0,%ax
    8079:	89 06 e1 25          	mov    %ax,0x25e1
    807d:	e8 c3 d5             	call   0x5643
    8080:	8b e5                	mov    %bp,%sp
    8082:	5d                   	pop    %bp
    8083:	c3                   	ret
    8084:	55                   	push   %bp
    8085:	8b ec                	mov    %sp,%bp
    8087:	8b 06 03 62          	mov    0x6203,%ax
    808b:	3b 06 e1 25          	cmp    0x25e1,%ax
    808f:	b8 01 00             	mov    $0x1,%ax
    8092:	7c 02                	jl     0x8096
    8094:	ff c8                	dec    %ax
    8096:	8b e5                	mov    %bp,%sp
    8098:	5d                   	pop    %bp
    8099:	c3                   	ret
    809a:	55                   	push   %bp
    809b:	8b ec                	mov    %sp,%bp
    809d:	83 ec 02             	sub    $0x2,%sp
    80a0:	b8 b4 00             	mov    $0xb4,%ax
    80a3:	50                   	push   %ax
    80a4:	e8 c2 ff             	call   0x8069
    80a7:	83 c4 02             	add    $0x2,%sp
    80aa:	b8 01 00             	mov    $0x1,%ax
    80ad:	0b c0                	or     %ax,%ax
    80af:	74 34                	je     0x80e5
    80b1:	e8 14 0c             	call   0x8cc8
    80b4:	89 46 fe             	mov    %ax,-0x2(%bp)
    80b7:	83 f8 00             	cmp    $0x0,%ax
    80ba:	7c 07                	jl     0x80c3
    80bc:	8b 46 fe             	mov    -0x2(%bp),%ax
    80bf:	8b e5                	mov    %bp,%sp
    80c1:	5d                   	pop    %bp
    80c2:	c3                   	ret
    80c3:	e8 81 b4             	call   0x3547
    80c6:	0b c0                	or     %ax,%ax
    80c8:	74 0b                	je     0x80d5
    80ca:	b8 00 00             	mov    $0x0,%ax
    80cd:	50                   	push   %ax
    80ce:	50                   	push   %ax
    80cf:	e8 bf d8             	call   0x5991
    80d2:	83 c4 04             	add    $0x4,%sp
    80d5:	e8 ac ff             	call   0x8084
    80d8:	0b c0                	or     %ax,%ax
    80da:	74 07                	je     0x80e3
    80dc:	b8 ff ff             	mov    $0xffff,%ax
    80df:	8b e5                	mov    %bp,%sp
    80e1:	5d                   	pop    %bp
    80e2:	c3                   	ret
    80e3:	eb c5                	jmp    0x80aa
    80e5:	8b e5                	mov    %bp,%sp
    80e7:	5d                   	pop    %bp
    80e8:	c3                   	ret
    80e9:	55                   	push   %bp
    80ea:	8b ec                	mov    %sp,%bp
    80ec:	83 ec 04             	sub    $0x4,%sp
    80ef:	8b 76 04             	mov    0x4(%bp),%si
    80f2:	8b 44 38             	mov    0x38(%si),%ax
    80f5:	3b 06 c6 48          	cmp    0x48c6,%ax
    80f9:	75 10                	jne    0x810b
    80fb:	8b 06 fd 23          	mov    0x23fd,%ax
    80ff:	89 46 fc             	mov    %ax,-0x4(%bp)
    8102:	b8 00 00             	mov    $0x0,%ax
    8105:	89 06 fd 23          	mov    %ax,0x23fd
    8109:	eb 39                	jmp    0x8144
    810b:	e8 8c ff             	call   0x809a
    810e:	89 46 fc             	mov    %ax,-0x4(%bp)
    8111:	83 f8 00             	cmp    $0x0,%ax
    8114:	7d 02                	jge    0x8118
    8116:	eb 0b                	jmp    0x8123
    8118:	e8 7f ff             	call   0x809a
    811b:	89 46 fe             	mov    %ax,-0x2(%bp)
    811e:	83 f8 00             	cmp    $0x0,%ax
    8121:	7d 0f                	jge    0x8132
    8123:	b8 00 00             	mov    $0x0,%ax
    8126:	50                   	push   %ax
    8127:	8d 06 1b 07          	lea    0x71b,%ax
    812b:	50                   	push   %ax
    812c:	e8 62 d8             	call   0x5991
    812f:	83 c4 04             	add    $0x4,%sp
    8132:	8b 46 fc             	mov    -0x4(%bp),%ax
    8135:	8b 56 fe             	mov    -0x2(%bp),%dx
    8138:	bb 08 00             	mov    $0x8,%bx
    813b:	8b cb                	mov    %bx,%cx
    813d:	d3 e2                	shl    %cl,%dx
    813f:	0b c2                	or     %dx,%ax
    8141:	89 46 fc             	mov    %ax,-0x4(%bp)
    8144:	ff 76 fc             	push   -0x4(%bp)
    8147:	8b 76 04             	mov    0x4(%bp),%si
    814a:	ff 74 38             	push   0x38(%si)
    814d:	e8 fa 03             	call   0x854a
    8150:	83 c4 04             	add    $0x4,%sp
    8153:	8b e5                	mov    %bp,%sp
    8155:	5d                   	pop    %bp
    8156:	c3                   	ret
    8157:	55                   	push   %bp
    8158:	8b ec                	mov    %sp,%bp
    815a:	8b 06 ff 23          	mov    0x23ff,%ax
    815e:	0b c0                	or     %ax,%ax
    8160:	74 09                	je     0x816b
    8162:	b8 00 00             	mov    $0x0,%ax
    8165:	89 06 ff 23          	mov    %ax,0x23ff
    8169:	eb 07                	jmp    0x8172
    816b:	e8 55 81             	call   0x2c3
    816e:	89 06 fd 23          	mov    %ax,0x23fd
    8172:	e8 af 82             	call   0x424
    8175:	8b 06 fd 23          	mov    0x23fd,%ax
    8179:	81 e0 ff 00          	and    $0xff,%ax
    817d:	50                   	push   %ax
    817e:	e8 56 0b             	call   0x8cd7
    8181:	83 c4 02             	add    $0x2,%sp
    8184:	8b 06 fd 23          	mov    0x23fd,%ax
    8188:	ba 08 00             	mov    $0x8,%dx
    818b:	8b ca                	mov    %dx,%cx
    818d:	d3 f8                	sar    %cl,%ax
    818f:	50                   	push   %ax
    8190:	e8 44 0b             	call   0x8cd7
    8193:	83 c4 02             	add    $0x2,%sp
    8196:	8b e5                	mov    %bp,%sp
    8198:	5d                   	pop    %bp
    8199:	c3                   	ret
    819a:	55                   	push   %bp
    819b:	8b ec                	mov    %sp,%bp
    819d:	e8 ea 0b             	call   0x8d8a
    81a0:	b8 00 00             	mov    $0x0,%ax
    81a3:	8b e5                	mov    %bp,%sp
    81a5:	5d                   	pop    %bp
    81a6:	c3                   	ret
    81a7:	55                   	push   %bp
    81a8:	8b ec                	mov    %sp,%bp
    81aa:	83 ec 04             	sub    $0x4,%sp
    81ad:	e8 33 0b             	call   0x8ce3
    81b0:	e8 61 b1             	call   0x3314
    81b3:	8d 06 2f 07          	lea    0x72f,%ax
    81b7:	50                   	push   %ax
    81b8:	e8 cc 83             	call   0x587
    81bb:	83 c4 02             	add    $0x2,%sp
    81be:	e8 f9 fd             	call   0x7fba
    81c1:	8b 06 2e 4b          	mov    0x4b2e,%ax
    81c5:	81 e0 ff 00          	and    $0xff,%ax
    81c9:	50                   	push   %ax
    81ca:	e8 0a 0b             	call   0x8cd7
    81cd:	83 c4 02             	add    $0x2,%sp
    81d0:	8b 06 2e 4b          	mov    0x4b2e,%ax
    81d4:	ba 08 00             	mov    $0x8,%dx
    81d7:	8b ca                	mov    %dx,%cx
    81d9:	d3 e8                	shr    %cl,%ax
    81db:	50                   	push   %ax
    81dc:	e8 f8 0a             	call   0x8cd7
    81df:	83 c4 02             	add    $0x2,%sp
    81e2:	e8 b5 fe             	call   0x809a
    81e5:	89 46 fc             	mov    %ax,-0x4(%bp)
    81e8:	83 f8 00             	cmp    $0x0,%ax
    81eb:	7d 02                	jge    0x81ef
    81ed:	eb 0b                	jmp    0x81fa
    81ef:	e8 a8 fe             	call   0x809a
    81f2:	89 46 fe             	mov    %ax,-0x2(%bp)
    81f5:	83 f8 00             	cmp    $0x0,%ax
    81f8:	7d 0f                	jge    0x8209
    81fa:	b8 00 00             	mov    $0x0,%ax
    81fd:	50                   	push   %ax
    81fe:	8d 06 50 07          	lea    0x750,%ax
    8202:	50                   	push   %ax
    8203:	e8 8b d7             	call   0x5991
    8206:	83 c4 04             	add    $0x4,%sp
    8209:	8b 46 fc             	mov    -0x4(%bp),%ax
    820c:	8b 56 fe             	mov    -0x2(%bp),%dx
    820f:	bb 08 00             	mov    $0x8,%bx
    8212:	8b cb                	mov    %bx,%cx
    8214:	d3 e2                	shl    %cl,%dx
    8216:	0b c2                	or     %dx,%ax
    8218:	89 46 fc             	mov    %ax,-0x4(%bp)
    821b:	8b 46 fc             	mov    -0x4(%bp),%ax
    821e:	3b 06 2e 4b          	cmp    0x4b2e,%ax
    8222:	75 0f                	jne    0x8233
    8224:	b8 00 00             	mov    $0x0,%ax
    8227:	50                   	push   %ax
    8228:	8d 06 71 07          	lea    0x771,%ax
    822c:	50                   	push   %ax
    822d:	e8 61 d7             	call   0x5991
    8230:	83 c4 04             	add    $0x4,%sp
    8233:	8b 46 fc             	mov    -0x4(%bp),%ax
    8236:	3b 06 2e 4b          	cmp    0x4b2e,%ax
    823a:	b8 01 00             	mov    $0x1,%ax
    823d:	77 02                	ja     0x8241
    823f:	ff c8                	dec    %ax
    8241:	89 06 c6 48          	mov    %ax,0x48c6
    8245:	0b c0                	or     %ax,%ax
    8247:	74 07                	je     0x8250
    8249:	8b 46 fc             	mov    -0x4(%bp),%ax
    824c:	89 06 2e 4b          	mov    %ax,0x4b2e
    8250:	8d 06 1b 20          	lea    0x201b,%ax
    8254:	89 06 af 25          	mov    %ax,0x25af
    8258:	b8 02 00             	mov    $0x2,%ax
    825b:	8b 36 cb 07          	mov    0x7cb,%si
    825f:	88 04                	mov    %al,(%si)
    8261:	81 e0 ff 00          	and    $0xff,%ax
    8265:	8b 36 cb 07          	mov    0x7cb,%si
    8269:	88 44 01             	mov    %al,0x1(%si)
    826c:	8b e5                	mov    %bp,%sp
    826e:	5d                   	pop    %bp
    826f:	c3                   	ret
    8270:	55                   	push   %bp
    8271:	8b ec                	mov    %sp,%bp
    8273:	83 ec 02             	sub    $0x2,%sp
    8276:	8b 06 c6 48          	mov    0x48c6,%ax
    827a:	0b c0                	or     %ax,%ax
    827c:	74 02                	je     0x8280
    827e:	eb 0a                	jmp    0x828a
    8280:	b8 00 00             	mov    $0x0,%ax
    8283:	50                   	push   %ax
    8284:	e8 00 b9             	call   0x3b87
    8287:	83 c4 02             	add    $0x2,%sp
    828a:	b8 00 00             	mov    $0x0,%ax
    828d:	50                   	push   %ax
    828e:	e8 95 b9             	call   0x3c26
    8291:	83 c4 02             	add    $0x2,%sp
    8294:	89 46 fe             	mov    %ax,-0x2(%bp)
    8297:	8d 06 b3 57          	lea    0x57b3,%ax
    829b:	8b 76 fe             	mov    -0x2(%bp),%si
    829e:	89 44 44             	mov    %ax,0x44(%si)
    82a1:	8d 06 ee 68          	lea    0x68ee,%ax
    82a5:	8b 76 fe             	mov    -0x2(%bp),%si
    82a8:	89 44 46             	mov    %ax,0x46(%si)
    82ab:	b8 02 00             	mov    $0x2,%ax
    82ae:	50                   	push   %ax
    82af:	8b 76 fe             	mov    -0x2(%bp),%si
    82b2:	8b 44 38             	mov    0x38(%si),%ax
    82b5:	5b                   	pop    %bx
    82b6:	99                   	cwtd
    82b7:	f7 fb                	idiv   %bx
    82b9:	83 c2 01             	add    $0x1,%dx
    82bc:	8b 76 fe             	mov    -0x2(%bp),%si
    82bf:	89 54 2a             	mov    %dx,0x2a(%si)
    82c2:	8b 46 fe             	mov    -0x2(%bp),%ax
    82c5:	8b 76 fe             	mov    -0x2(%bp),%si
    82c8:	89 44 20             	mov    %ax,0x20(%si)
    82cb:	b8 01 00             	mov    $0x1,%ax
    82ce:	8b 76 fe             	mov    -0x2(%bp),%si
    82d1:	89 04                	mov    %ax,(%si)
    82d3:	b8 6a 00             	mov    $0x6a,%ax
    82d6:	50                   	push   %ax
    82d7:	8d 06 2e 46          	lea    0x462e,%ax
    82db:	50                   	push   %ax
    82dc:	bb 6a 00             	mov    $0x6a,%bx
    82df:	8b 76 fe             	mov    -0x2(%bp),%si
    82e2:	8b 44 38             	mov    0x38(%si),%ax
    82e5:	f7 eb                	imul   %bx
    82e7:	5e                   	pop    %si
    82e8:	03 f0                	add    %ax,%si
    82ea:	56                   	push   %si
    82eb:	ff 76 fe             	push   -0x2(%bp)
    82ee:	e8 9e 14             	call   0x978f
    82f1:	83 c4 06             	add    $0x6,%sp
    82f4:	8b 06 c6 48          	mov    0x48c6,%ax
    82f8:	0b c0                	or     %ax,%ax
    82fa:	74 0a                	je     0x8306
    82fc:	b8 00 00             	mov    $0x0,%ax
    82ff:	50                   	push   %ax
    8300:	e8 84 b8             	call   0x3b87
    8303:	83 c4 02             	add    $0x2,%sp
    8306:	b8 00 00             	mov    $0x0,%ax
    8309:	50                   	push   %ax
    830a:	e8 ca 09             	call   0x8cd7
    830d:	83 c4 02             	add    $0x2,%sp
    8310:	b8 00 00             	mov    $0x0,%ax
    8313:	50                   	push   %ax
    8314:	e8 c0 09             	call   0x8cd7
    8317:	83 c4 02             	add    $0x2,%sp
    831a:	8b e5                	mov    %bp,%sp
    831c:	5d                   	pop    %bp
    831d:	c3                   	ret
    831e:	55                   	push   %bp
    831f:	8b ec                	mov    %sp,%bp
    8321:	53                   	push   %bx
    8322:	51                   	push   %cx
    8323:	52                   	push   %dx
    8324:	56                   	push   %si
    8325:	8b 46 04             	mov    0x4(%bp),%ax
    8328:	a3 8d 24             	mov    %ax,0x248d
    832b:	83 3e 10 00 00       	cmpw   $0x0,0x10
    8330:	74 03                	je     0x8335
    8332:	e9 33 01             	jmp    0x8468
    8335:	a1 2a 4b             	mov    0x4b2a,%ax
    8338:	0b 06 2c 4b          	or     0x4b2c,%ax
    833c:	75 03                	jne    0x8341
    833e:	e9 27 01             	jmp    0x8468
    8341:	bb ff ff             	mov    $0xffff,%bx
    8344:	b4 48                	mov    $0x48,%ah
    8346:	cd 21                	int    $0x21
    8348:	73 16                	jae    0x8360
    834a:	3d 08 00             	cmp    $0x8,%ax
    834d:	75 0a                	jne    0x8359
    834f:	89 1e 8b 24          	mov    %bx,0x248b
    8353:	b4 48                	mov    $0x48,%ah
    8355:	cd 21                	int    $0x21
    8357:	73 07                	jae    0x8360
    8359:	8d 06 6f 24          	lea    0x246f,%ax
    835d:	e8 23 01             	call   0x8483
    8360:	a3 89 24             	mov    %ax,0x2489
    8363:	33 db                	xor    %bx,%bx
    8365:	89 1e 87 24          	mov    %bx,0x2487
    8369:	89 1e 95 24          	mov    %bx,0x2495
    836d:	a3 97 24             	mov    %ax,0x2497
    8370:	83 3e 2a 4b 00       	cmpw   $0x0,0x4b2a
    8375:	75 03                	jne    0x837a
    8377:	e9 aa 00             	jmp    0x8424
    837a:	8b 16 2a 4b          	mov    0x4b2a,%dx
    837e:	b8 00 3d             	mov    $0x3d00,%ax
    8381:	cd 21                	int    $0x21
    8383:	73 07                	jae    0x838c
    8385:	8d 06 01 24          	lea    0x2401,%ax
    8389:	e8 f7 00             	call   0x8483
    838c:	8b d8                	mov    %ax,%bx
    838e:	33 d2                	xor    %dx,%dx
    8390:	33 c9                	xor    %cx,%cx
    8392:	b8 02 42             	mov    $0x4202,%ax
    8395:	cd 21                	int    $0x21
    8397:	a3 9b 24             	mov    %ax,0x249b
    839a:	89 16 9d 24          	mov    %dx,0x249d
    839e:	53                   	push   %bx
    839f:	b9 04 00             	mov    $0x4,%cx
    83a2:	d1 ea                	shr    %dx
    83a4:	d1 d8                	rcr    %ax
    83a6:	e2 fa                	loop   0x83a2
    83a8:	40                   	inc    %ax
    83a9:	8b c8                	mov    %ax,%cx
    83ab:	a1 8b 24             	mov    0x248b,%ax
    83ae:	2b c1                	sub    %cx,%ax
    83b0:	73 07                	jae    0x83b9
    83b2:	8d 06 23 24          	lea    0x2423,%ax
    83b6:	e8 ca 00             	call   0x8483
    83b9:	bb 10 00             	mov    $0x10,%bx
    83bc:	f7 e3                	mul    %bx
    83be:	a3 8f 24             	mov    %ax,0x248f
    83c1:	89 16 91 24          	mov    %dx,0x2491
    83c5:	5b                   	pop    %bx
    83c6:	33 c9                	xor    %cx,%cx
    83c8:	33 d2                	xor    %dx,%dx
    83ca:	b8 00 42             	mov    $0x4200,%ax
    83cd:	cd 21                	int    $0x21
    83cf:	8b 36 9d 24          	mov    0x249d,%si
    83d3:	1e                   	push   %ds
    83d4:	8e 1e 89 24          	mov    0x2489,%ds
    83d8:	83 fe 00             	cmp    $0x0,%si
    83db:	74 1c                	je     0x83f9
    83dd:	ba 00 00             	mov    $0x0,%dx
    83e0:	b9 00 80             	mov    $0x8000,%cx
    83e3:	b4 3f                	mov    $0x3f,%ah
    83e5:	cd 21                	int    $0x21
    83e7:	ba 00 80             	mov    $0x8000,%dx
    83ea:	b4 3f                	mov    $0x3f,%ah
    83ec:	cd 21                	int    $0x21
    83ee:	8c da                	mov    %ds,%dx
    83f0:	81 c2 00 10          	add    $0x1000,%dx
    83f4:	8e da                	mov    %dx,%ds
    83f6:	4e                   	dec    %si
    83f7:	eb df                	jmp    0x83d8
    83f9:	ba 00 00             	mov    $0x0,%dx
    83fc:	26 8b 0e 9b 24       	mov    %es:0x249b,%cx
    8401:	b4 3f                	mov    $0x3f,%ah
    8403:	cd 21                	int    $0x21
    8405:	b4 3e                	mov    $0x3e,%ah
    8407:	cd 21                	int    $0x21
    8409:	26 8e 1e 89 24       	mov    %es:0x2489,%ds
    840e:	26 8b 1e 87 24       	mov    %es:0x2487,%bx
    8413:	8b 07                	mov    (%bx),%ax
    8415:	26 a3 8d 24          	mov    %ax,%es:0x248d
    8419:	1f                   	pop    %ds
    841a:	e8 0c 01             	call   0x8529
    841d:	83 3e 2c 4b 00       	cmpw   $0x0,0x4b2c
    8422:	74 44                	je     0x8468
    8424:	8b 16 2c 4b          	mov    0x4b2c,%dx
    8428:	33 c9                	xor    %cx,%cx
    842a:	b4 3c                	mov    $0x3c,%ah
    842c:	cd 21                	int    $0x21
    842e:	73 07                	jae    0x8437
    8430:	8d 06 4c 24          	lea    0x244c,%ax
    8434:	e8 4c 00             	call   0x8483
    8437:	a3 93 24             	mov    %ax,0x2493
    843a:	83 3e 2a 4b 00       	cmpw   $0x0,0x4b2a
    843f:	75 27                	jne    0x8468
    8441:	b8 10 00             	mov    $0x10,%ax
    8444:	f7 26 8b 24          	mulw   0x248b
    8448:	a3 9b 24             	mov    %ax,0x249b
    844b:	89 16 9d 24          	mov    %dx,0x249d
    844f:	1e                   	push   %ds
    8450:	a1 8d 24             	mov    0x248d,%ax
    8453:	8b 1e 87 24          	mov    0x2487,%bx
    8457:	8e 1e 89 24          	mov    0x2489,%ds
    845b:	89 07                	mov    %ax,(%bx)
    845d:	26 a1 8b 24          	mov    %es:0x248b,%ax
    8461:	89 47 02             	mov    %ax,0x2(%bx)
    8464:	1f                   	pop    %ds
    8465:	e8 c1 00             	call   0x8529
    8468:	a1 8d 24             	mov    0x248d,%ax
    846b:	5e                   	pop    %si
    846c:	5a                   	pop    %dx
    846d:	59                   	pop    %cx
    846e:	5b                   	pop    %bx
    846f:	5d                   	pop    %bp
    8470:	c3                   	ret
    8471:	83 3e 89 24 00       	cmpw   $0x0,0x2489
    8476:	74 0a                	je     0x8482
    8478:	06                   	push   %es
    8479:	8e 06 89 24          	mov    0x2489,%es
    847d:	b4 49                	mov    $0x49,%ah
    847f:	cd 21                	int    $0x21
    8481:	07                   	pop    %es
    8482:	c3                   	ret
    8483:	50                   	push   %ax
    8484:	e8 00 81             	call   0x587
    8487:	e8 e7 ff             	call   0x8471
    848a:	e8 98 7c             	call   0x125
    848d:	83 3e 10 00 00       	cmpw   $0x0,0x10
    8492:	74 03                	je     0x8497
    8494:	e9 91 00             	jmp    0x8528
    8497:	83 3e 2a 4b 00       	cmpw   $0x0,0x4b2a
    849c:	74 50                	je     0x84ee
    849e:	3d 00 00             	cmp    $0x0,%ax
    84a1:	74 09                	je     0x84ac
    84a3:	c7 06 2a 4b 00 00    	movw   $0x0,0x4b2a
    84a9:	eb 43                	jmp    0x84ee
    84ab:	90                   	nop
    84ac:	06                   	push   %es
    84ad:	53                   	push   %bx
    84ae:	51                   	push   %cx
    84af:	8b 1e 95 24          	mov    0x2495,%bx
    84b3:	8e 06 97 24          	mov    0x2497,%es
    84b7:	26 8b 0f             	mov    %es:(%bx),%cx
    84ba:	3b 0e e3 25          	cmp    0x25e3,%cx
    84be:	75 25                	jne    0x84e5
    84c0:	26 8b 47 02          	mov    %es:0x2(%bx),%ax
    84c4:	a3 99 24             	mov    %ax,0x2499
    84c7:	e8 5f 00             	call   0x8529
    84ca:	75 1c                	jne    0x84e8
    84cc:	c7 06 2a 4b 00 00    	movw   $0x0,0x4b2a
    84d2:	8b 0e 8f 24          	mov    0x248f,%cx
    84d6:	89 0e 9b 24          	mov    %cx,0x249b
    84da:	8b 0e 91 24          	mov    0x2491,%cx
    84de:	89 0e 9d 24          	mov    %cx,0x249d
    84e2:	eb 04                	jmp    0x84e8
    84e4:	90                   	nop
    84e5:	a1 99 24             	mov    0x2499,%ax
    84e8:	59                   	pop    %cx
    84e9:	5b                   	pop    %bx
    84ea:	07                   	pop    %es
    84eb:	eb 3b                	jmp    0x8528
    84ed:	90                   	nop
    84ee:	83 3e 2c 4b 00       	cmpw   $0x0,0x4b2c
    84f3:	74 33                	je     0x8528
    84f5:	3b 06 99 24          	cmp    0x2499,%ax
    84f9:	74 2d                	je     0x8528
    84fb:	06                   	push   %es
    84fc:	53                   	push   %bx
    84fd:	51                   	push   %cx
    84fe:	8b 1e 95 24          	mov    0x2495,%bx
    8502:	8e 06 97 24          	mov    0x2497,%es
    8506:	8b 0e e3 25          	mov    0x25e3,%cx
    850a:	26 89 0f             	mov    %cx,%es:(%bx)
    850d:	26 89 47 02          	mov    %ax,%es:0x2(%bx)
    8511:	c6 06 9f 24 01       	movb   $0x1,0x249f
    8516:	90                   	nop
    8517:	a3 99 24             	mov    %ax,0x2499
    851a:	e8 0c 00             	call   0x8529
    851d:	75 06                	jne    0x8525
    851f:	c7 06 2c 4b 00 00    	movw   $0x0,0x4b2c
    8525:	59                   	pop    %cx
    8526:	5b                   	pop    %bx
    8527:	07                   	pop    %es
    8528:	c3                   	ret
    8529:	83 06 95 24 04       	addw   $0x4,0x2495
    852e:	73 06                	jae    0x8536
    8530:	81 06 97 24 00 10    	addw   $0x1000,0x2497
    8536:	83 2e 9b 24 04       	subw   $0x4,0x249b
    853b:	73 04                	jae    0x8541
    853d:	ff 0e 9d 24          	decw   0x249d
    8541:	8b 0e 9b 24          	mov    0x249b,%cx
    8545:	0b 0e 9d 24          	or     0x249d,%cx
    8549:	c3                   	ret
    854a:	55                   	push   %bp
    854b:	8b ec                	mov    %sp,%bp
    854d:	8b 46 06             	mov    0x6(%bp),%ax
    8550:	5d                   	pop    %bp
    8551:	c3                   	ret
    8552:	53                   	push   %bx
    8553:	51                   	push   %cx
    8554:	52                   	push   %dx
    8555:	56                   	push   %si
    8556:	57                   	push   %di
    8557:	06                   	push   %es
    8558:	80 3e 9f 24 00       	cmpb   $0x0,0x249f
    855d:	74 38                	je     0x8597
    855f:	8b 1e 93 24          	mov    0x2493,%bx
    8563:	8b 36 97 24          	mov    0x2497,%si
    8567:	2b 36 89 24          	sub    0x2489,%si
    856b:	1e                   	push   %ds
    856c:	8b 3e 89 24          	mov    0x2489,%di
    8570:	83 fe 00             	cmp    $0x0,%si
    8573:	74 10                	je     0x8585
    8575:	8e df                	mov    %di,%ds
    8577:	ba 00 00             	mov    $0x0,%dx
    857a:	b9 10 00             	mov    $0x10,%cx
    857d:	b4 40                	mov    $0x40,%ah
    857f:	cd 21                	int    $0x21
    8581:	47                   	inc    %di
    8582:	4e                   	dec    %si
    8583:	eb eb                	jmp    0x8570
    8585:	26 8e 1e 97 24       	mov    %es:0x2497,%ds
    858a:	ba 00 00             	mov    $0x0,%dx
    858d:	26 8b 0e 95 24       	mov    %es:0x2495,%cx
    8592:	b4 40                	mov    $0x40,%ah
    8594:	cd 21                	int    $0x21
    8596:	1f                   	pop    %ds
    8597:	8b 1e 93 24          	mov    0x2493,%bx
    859b:	83 fb 00             	cmp    $0x0,%bx
    859e:	74 04                	je     0x85a4
    85a0:	b4 3e                	mov    $0x3e,%ah
    85a2:	cd 21                	int    $0x21
    85a4:	e8 ca fe             	call   0x8471
    85a7:	07                   	pop    %es
    85a8:	5f                   	pop    %di
    85a9:	5e                   	pop    %si
    85aa:	5a                   	pop    %dx
    85ab:	59                   	pop    %cx
    85ac:	5b                   	pop    %bx
    85ad:	c3                   	ret
    85ae:	55                   	push   %bp
    85af:	8b ec                	mov    %sp,%bp
    85b1:	83 ec 0c             	sub    $0xc,%sp
    85b4:	b8 01 00             	mov    $0x1,%ax
    85b7:	89 46 f4             	mov    %ax,-0xc(%bp)
    85ba:	8b 46 f4             	mov    -0xc(%bp),%ax
    85bd:	3b 46 04             	cmp    0x4(%bp),%ax
    85c0:	7c 03                	jl     0x85c5
    85c2:	e9 5e 01             	jmp    0x8723
    85c5:	8b 76 06             	mov    0x6(%bp),%si
    85c8:	8b 46 f4             	mov    -0xc(%bp),%ax
    85cb:	d1 e0                	shl    %ax
    85cd:	03 f0                	add    %ax,%si
    85cf:	8b 34                	mov    (%si),%si
    85d1:	89 76 f6             	mov    %si,-0xa(%bp)
    85d4:	8b 76 f6             	mov    -0xa(%bp),%si
    85d7:	8a 04                	mov    (%si),%al
    85d9:	98                   	cbtw
    85da:	83 f8 2d             	cmp    $0x2d,%ax
    85dd:	74 03                	je     0x85e2
    85df:	e9 41 01             	jmp    0x8723
    85e2:	ff 46 f6             	incw   -0xa(%bp)
    85e5:	8b 76 f6             	mov    -0xa(%bp),%si
    85e8:	8a 04                	mov    (%si),%al
    85ea:	98                   	cbtw
    85eb:	0b c0                	or     %ax,%ax
    85ed:	74 02                	je     0x85f1
    85ef:	eb 03                	jmp    0x85f4
    85f1:	e9 2f 01             	jmp    0x8723
    85f4:	8b 76 f6             	mov    -0xa(%bp),%si
    85f7:	ff 46 f6             	incw   -0xa(%bp)
    85fa:	8a 04                	mov    (%si),%al
    85fc:	98                   	cbtw
    85fd:	88 46 f8             	mov    %al,-0x8(%bp)
    8600:	8d 46 0a             	lea    0xa(%bp),%ax
    8603:	89 46 fb             	mov    %ax,-0x5(%bp)
    8606:	8b 46 08             	mov    0x8(%bp),%ax
    8609:	89 46 f9             	mov    %ax,-0x7(%bp)
    860c:	8b 76 f9             	mov    -0x7(%bp),%si
    860f:	8a 04                	mov    (%si),%al
    8611:	98                   	cbtw
    8612:	0b c0                	or     %ax,%ax
    8614:	74 1e                	je     0x8634
    8616:	8a 46 f8             	mov    -0x8(%bp),%al
    8619:	98                   	cbtw
    861a:	98                   	cbtw
    861b:	50                   	push   %ax
    861c:	8b 76 f9             	mov    -0x7(%bp),%si
    861f:	8a 04                	mov    (%si),%al
    8621:	98                   	cbtw
    8622:	5a                   	pop    %dx
    8623:	3b c2                	cmp    %dx,%ax
    8625:	74 0d                	je     0x8634
    8627:	ff 46 f9             	incw   -0x7(%bp)
    862a:	ff 46 f9             	incw   -0x7(%bp)
    862d:	81 46 fb 02 00       	addw   $0x2,-0x5(%bp)
    8632:	eb d8                	jmp    0x860c
    8634:	8b 76 f9             	mov    -0x7(%bp),%si
    8637:	8a 04                	mov    (%si),%al
    8639:	98                   	cbtw
    863a:	83 f8 00             	cmp    $0x0,%ax
    863d:	75 29                	jne    0x8668
    863f:	8d 06 95 07          	lea    0x795,%ax
    8643:	50                   	push   %ax
    8644:	e8 40 7f             	call   0x587
    8647:	83 c4 02             	add    $0x2,%sp
    864a:	ff 76 08             	push   0x8(%bp)
    864d:	e8 37 7f             	call   0x587
    8650:	83 c4 02             	add    $0x2,%sp
    8653:	8d 06 a8 07          	lea    0x7a8,%ax
    8657:	50                   	push   %ax
    8658:	e8 2c 7f             	call   0x587
    865b:	83 c4 02             	add    $0x2,%sp
    865e:	b8 80 00             	mov    $0x80,%ax
    8661:	50                   	push   %ax
    8662:	e8 c0 7a             	call   0x125
    8665:	83 c4 02             	add    $0x2,%sp
    8668:	8b 76 f9             	mov    -0x7(%bp),%si
    866b:	83 c6 01             	add    $0x1,%si
    866e:	8a 04                	mov    (%si),%al
    8670:	98                   	cbtw
    8671:	88 46 f8             	mov    %al,-0x8(%bp)
    8674:	8b 76 f6             	mov    -0xa(%bp),%si
    8677:	8a 04                	mov    (%si),%al
    8679:	98                   	cbtw
    867a:	83 f8 00             	cmp    $0x0,%ax
    867d:	75 1c                	jne    0x869b
    867f:	8a 46 f8             	mov    -0x8(%bp),%al
    8682:	98                   	cbtw
    8683:	98                   	cbtw
    8684:	83 f8 26             	cmp    $0x26,%ax
    8687:	74 12                	je     0x869b
    8689:	8b 76 06             	mov    0x6(%bp),%si
    868c:	ff 46 f4             	incw   -0xc(%bp)
    868f:	8b 46 f4             	mov    -0xc(%bp),%ax
    8692:	d1 e0                	shl    %ax
    8694:	03 f0                	add    %ax,%si
    8696:	8b 34                	mov    (%si),%si
    8698:	89 76 f6             	mov    %si,-0xa(%bp)
    869b:	8b 76 fb             	mov    -0x5(%bp),%si
    869e:	8b 34                	mov    (%si),%si
    86a0:	89 76 fd             	mov    %si,-0x3(%bp)
    86a3:	8a 46 f8             	mov    -0x8(%bp),%al
    86a6:	98                   	cbtw
    86a7:	98                   	cbtw
    86a8:	50                   	push   %ax
    86a9:	eb 48                	jmp    0x86f3
    86ab:	ff 76 f6             	push   -0xa(%bp)
    86ae:	e8 3f 0f             	call   0x95f0
    86b1:	83 c4 02             	add    $0x2,%sp
    86b4:	8b 76 fd             	mov    -0x3(%bp),%si
    86b7:	89 04                	mov    %ax,(%si)
    86b9:	eb 4b                	jmp    0x8706
    86bb:	8b 46 f6             	mov    -0xa(%bp),%ax
    86be:	8b 76 fd             	mov    -0x3(%bp),%si
    86c1:	89 04                	mov    %ax,(%si)
    86c3:	eb 41                	jmp    0x8706
    86c5:	b8 01 00             	mov    $0x1,%ax
    86c8:	8b 76 fd             	mov    -0x3(%bp),%si
    86cb:	89 04                	mov    %ax,(%si)
    86cd:	eb 37                	jmp    0x8706
    86cf:	8d 06 ac 07          	lea    0x7ac,%ax
    86d3:	50                   	push   %ax
    86d4:	e8 b0 7e             	call   0x587
    86d7:	83 c4 02             	add    $0x2,%sp
    86da:	8a 46 f8             	mov    -0x8(%bp),%al
    86dd:	98                   	cbtw
    86de:	98                   	cbtw
    86df:	50                   	push   %ax
    86e0:	e8 59 7d             	call   0x43c
    86e3:	83 c4 02             	add    $0x2,%sp
    86e6:	8d 06 be 07          	lea    0x7be,%ax
    86ea:	50                   	push   %ax
    86eb:	e8 99 7e             	call   0x587
    86ee:	83 c4 02             	add    $0x2,%sp
    86f1:	eb 13                	jmp    0x8706
    86f3:	e8 de 11             	call   0x98d4
    86f6:	03 00                	add    (%bx,%si),%ax
    86f8:	26 00 2a             	add    %ch,%es:(%bp,%si)
    86fb:	00 23                	add    %ah,(%bp,%di)
    86fd:	00 cf                	add    %cl,%bh
    86ff:	87 c5                	xchg   %ax,%bp
    8701:	87 bb 87 ab          	xchg   %di,-0x5479(%bp,%di)
    8705:	87 8a 46 f8          	xchg   %cx,-0x7ba(%bp,%si)
    8709:	98                   	cbtw
    870a:	98                   	cbtw
    870b:	83 f8 26             	cmp    $0x26,%ax
    870e:	75 0d                	jne    0x871d
    8710:	8b 76 f6             	mov    -0xa(%bp),%si
    8713:	8a 04                	mov    (%si),%al
    8715:	98                   	cbtw
    8716:	0b c0                	or     %ax,%ax
    8718:	74 03                	je     0x871d
    871a:	e9 d7 fe             	jmp    0x85f4
    871d:	ff 46 f4             	incw   -0xc(%bp)
    8720:	e9 97 fe             	jmp    0x85ba
    8723:	8b 46 f4             	mov    -0xc(%bp),%ax
    8726:	8b e5                	mov    %bp,%sp
    8728:	5d                   	pop    %bp
    8729:	c3                   	ret
	...
    8736:	00 3e 00 40          	add    %bh,0x4000
	...
    8746:	00 46 66             	add    %al,0x66(%bp)
    8749:	4a                   	dec    %dx
    874a:	45                   	inc    %bp
    874b:	42                   	inc    %dx
    874c:	66 df 02             	data32 filds (%bp,%si)
    874f:	25 00 09             	and    $0x900,%ax
    8752:	2a 20                	sub    (%bx,%si),%ah
    8754:	50                   	push   %ax
    8755:	f6 00 02             	testb  $0x2,(%bx,%si)
    8758:	2e a0 2a 88          	mov    %cs:0x882a,%al
    875c:	32 e4                	xor    %ah,%ah
    875e:	c3                   	ret
    875f:	55                   	push   %bp
    8760:	8b ec                	mov    %sp,%bp
    8762:	8b 46 04             	mov    0x4(%bp),%ax
    8765:	2e a3 35 88          	mov    %ax,%cs:0x8835
    8769:	53                   	push   %bx
    876a:	51                   	push   %cx
    876b:	52                   	push   %dx
    876c:	56                   	push   %si
    876d:	57                   	push   %di
    876e:	fa                   	cli
    876f:	0e                   	push   %cs
    8770:	0e                   	push   %cs
    8771:	8d 06 c2 89          	lea    -0x763e,%ax
    8775:	50                   	push   %ax
    8776:	b8 0e 00             	mov    $0xe,%ax
    8779:	50                   	push   %ax
    877a:	e8 d5 a4             	call   0x2c52
    877d:	83 c4 08             	add    $0x8,%sp
    8780:	3d 00 00             	cmp    $0x0,%ax
    8783:	7d 05                	jge    0x878a
    8785:	33 c0                	xor    %ax,%ax
    8787:	eb 3a                	jmp    0x87c3
    8789:	90                   	nop
    878a:	0e                   	push   %cs
    878b:	0e                   	push   %cs
    878c:	8d 06 04 8a          	lea    -0x75fc,%ax
    8790:	50                   	push   %ax
    8791:	b8 13 00             	mov    $0x13,%ax
    8794:	50                   	push   %ax
    8795:	e8 ba a4             	call   0x2c52
    8798:	83 c4 08             	add    $0x8,%sp
    879b:	3d 00 00             	cmp    $0x0,%ax
    879e:	7d 05                	jge    0x87a5
    87a0:	33 c0                	xor    %ax,%ax
    87a2:	eb 1f                	jmp    0x87c3
    87a4:	90                   	nop
    87a5:	0e                   	push   %cs
    87a6:	0e                   	push   %cs
    87a7:	8d 06 e1 89          	lea    -0x761f,%ax
    87ab:	50                   	push   %ax
    87ac:	b8 1c 00             	mov    $0x1c,%ax
    87af:	50                   	push   %ax
    87b0:	e8 9f a4             	call   0x2c52
    87b3:	83 c4 08             	add    $0x8,%sp
    87b6:	3d 00 00             	cmp    $0x0,%ax
    87b9:	7d 05                	jge    0x87c0
    87bb:	33 c0                	xor    %ax,%ax
    87bd:	eb 04                	jmp    0x87c3
    87bf:	90                   	nop
    87c0:	b8 01 00             	mov    $0x1,%ax
    87c3:	fb                   	sti
    87c4:	5f                   	pop    %di
    87c5:	5e                   	pop    %si
    87c6:	5a                   	pop    %dx
    87c7:	59                   	pop    %cx
    87c8:	5b                   	pop    %bx
    87c9:	5d                   	pop    %bp
    87ca:	c3                   	ret
    87cb:	58                   	pop    %ax
    87cc:	9c                   	pushf
    87cd:	0e                   	push   %cs
    87ce:	50                   	push   %ax
    87cf:	e8 8b 00             	call   0x885d
    87d2:	2e 8c 16 2b 88       	mov    %ss,%cs:-0x77d5
    87d7:	2e 89 26 2d 88       	mov    %sp,%cs:-0x77d3
    87dc:	8b 46 1c             	mov    0x1c(%bp),%ax
    87df:	8b 66 1e             	mov    0x1e(%bp),%sp
    87e2:	2e c6 06 2a 88 02    	movb   $0x2,%cs:-0x77d6
    87e8:	ff d0                	call   *%ax
    87ea:	2e c6 06 2a 88 00    	movb   $0x0,%cs:-0x77d6
    87f0:	fa                   	cli
    87f1:	2e 8e 16 2b 88       	mov    %cs:-0x77d5,%ss
    87f6:	2e 8b 26 2d 88       	mov    %cs:-0x77d3,%sp
    87fb:	e8 6e 00             	call   0x886c
    87fe:	cf                   	iret
    87ff:	55                   	push   %bp
    8800:	8b ec                	mov    %sp,%bp
    8802:	53                   	push   %bx
    8803:	51                   	push   %cx
    8804:	52                   	push   %dx
    8805:	06                   	push   %es
    8806:	8b 46 12             	mov    0x12(%bp),%ax
    8809:	8e c0                	mov    %ax,%es
    880b:	8b 5e 10             	mov    0x10(%bp),%bx
    880e:	8a 46 0e             	mov    0xe(%bp),%al
    8811:	8a 4e 0c             	mov    0xc(%bp),%cl
    8814:	8a 6e 0a             	mov    0xa(%bp),%ch
    8817:	8a 76 08             	mov    0x8(%bp),%dh
    881a:	8a 56 06             	mov    0x6(%bp),%dl
    881d:	8a 66 04             	mov    0x4(%bp),%ah
    8820:	cd 13                	int    $0x13
    8822:	07                   	pop    %es
    8823:	5a                   	pop    %dx
    8824:	59                   	pop    %cx
    8825:	5b                   	pop    %bx
    8826:	5d                   	pop    %bp
    8827:	c3                   	ret
    8828:	55                   	push   %bp
    8829:	8b ec                	mov    %sp,%bp
    882b:	8b 46 04             	mov    0x4(%bp),%ax
    882e:	3d 00 00             	cmp    $0x0,%ax
    8831:	75 02                	jne    0x8835
    8833:	5d                   	pop    %bp
    8834:	c3                   	ret
    8835:	fa                   	cli
    8836:	2e a3 33 88          	mov    %ax,%cs:0x8833
    883a:	2e c6 06 2a 88 03    	movb   $0x3,%cs:-0x77d6
    8840:	5d                   	pop    %bp
    8841:	e8 19 00             	call   0x885d
    8844:	2e 8c 16 2f 88       	mov    %ss,%cs:-0x77d1
    8849:	2e 89 26 31 88       	mov    %sp,%cs:-0x77cf
    884e:	2e 8e 16 2b 88       	mov    %cs:-0x77d5,%ss
    8853:	2e 8b 26 2d 88       	mov    %cs:-0x77d3,%sp
    8858:	fb                   	sti
    8859:	e8 10 00             	call   0x886c
    885c:	cf                   	iret
    885d:	9c                   	pushf
    885e:	55                   	push   %bp
    885f:	1e                   	push   %ds
    8860:	06                   	push   %es
    8861:	57                   	push   %di
    8862:	56                   	push   %si
    8863:	52                   	push   %dx
    8864:	51                   	push   %cx
    8865:	53                   	push   %bx
    8866:	50                   	push   %ax
    8867:	8b ec                	mov    %sp,%bp
    8869:	ff 66 14             	jmp    *0x14(%bp)
    886c:	5b                   	pop    %bx
    886d:	8b ec                	mov    %sp,%bp
    886f:	89 5e 14             	mov    %bx,0x14(%bp)
    8872:	58                   	pop    %ax
    8873:	5b                   	pop    %bx
    8874:	59                   	pop    %cx
    8875:	5a                   	pop    %dx
    8876:	5e                   	pop    %si
    8877:	5f                   	pop    %di
    8878:	07                   	pop    %es
    8879:	1f                   	pop    %ds
    887a:	5d                   	pop    %bp
    887b:	9d                   	popf
    887c:	c3                   	ret
    887d:	2e c6 06 2a 88 01    	movb   $0x1,%cs:-0x77d6
    8883:	e8 d7 ff             	call   0x885d
    8886:	fa                   	cli
    8887:	2e 8c 16 2f 88       	mov    %ss,%cs:-0x77d1
    888c:	2e 89 26 31 88       	mov    %sp,%cs:-0x77cf
    8891:	2e 8e 16 2b 88       	mov    %cs:-0x77d5,%ss
    8896:	2e 8b 26 2d 88       	mov    %cs:-0x77d3,%sp
    889b:	e8 ce ff             	call   0x886c
    889e:	cf                   	iret
    889f:	2e c6 06 2a 88 02    	movb   $0x2,%cs:-0x77d6
    88a5:	e8 b5 ff             	call   0x885d
    88a8:	fa                   	cli
    88a9:	2e 8c 16 2b 88       	mov    %ss,%cs:-0x77d5
    88ae:	2e 89 26 2d 88       	mov    %sp,%cs:-0x77d3
    88b3:	2e 8e 16 2f 88       	mov    %cs:-0x77d1,%ss
    88b8:	2e 8b 26 31 88       	mov    %cs:-0x77cf,%sp
    88bd:	e8 ac ff             	call   0x886c
    88c0:	fb                   	sti
    88c1:	c3                   	ret
    88c2:	50                   	push   %ax
    88c3:	06                   	push   %es
    88c4:	57                   	push   %di
    88c5:	2e c4 3e 37 88       	les    %cs:-0x77c9,%di
    88ca:	26 80 0d 80          	orb    $0x80,%es:(%di)
    88ce:	b0 20                	mov    $0x20,%al
    88d0:	e6 20                	out    %al,$0x20
    88d2:	5f                   	pop    %di
    88d3:	07                   	pop    %es
    88d4:	58                   	pop    %ax
    88d5:	83 c4 08             	add    $0x8,%sp
    88d8:	2e 80 3e 2a 88 01    	cmpb   $0x1,%cs:-0x77d6
    88de:	74 bf                	je     0x889f
    88e0:	cf                   	iret
    88e1:	83 c4 02             	add    $0x2,%sp
    88e4:	2e 80 3e 2a 88 03    	cmpb   $0x3,%cs:-0x77d6
    88ea:	75 0a                	jne    0x88f6
    88ec:	2e ff 0e 33 88       	decw   %cs:-0x77cd
    88f1:	7f 10                	jg     0x8903
    88f3:	eb 09                	jmp    0x88fe
    88f5:	90                   	nop
    88f6:	2e 80 3e 2a 88 01    	cmpb   $0x1,%cs:-0x77d6
    88fc:	75 05                	jne    0x8903
    88fe:	9c                   	pushf
    88ff:	0e                   	push   %cs
    8900:	e8 9c ff             	call   0x889f
    8903:	cf                   	iret
    8904:	2e 80 3e 2a 88 01    	cmpb   $0x1,%cs:-0x77d6
    890a:	74 f8                	je     0x8904
    890c:	2e 80 3e 2a 88 02    	cmpb   $0x2,%cs:-0x77d6
    8912:	74 04                	je     0x8918
    8914:	83 c4 02             	add    $0x2,%sp
    8917:	cf                   	iret
    8918:	83 c4 08             	add    $0x8,%sp
    891b:	fb                   	sti
    891c:	e8 3e ff             	call   0x885d
    891f:	33 c0                	xor    %ax,%ax
    8921:	8e d8                	mov    %ax,%ds
    8923:	bb 78 00             	mov    $0x78,%bx
    8926:	c5 37                	lds    (%bx),%si
    8928:	0e                   	push   %cs
    8929:	1f                   	pop    %ds
    892a:	be 4d 88             	mov    $0x884d,%si
    892d:	2e c4 3e 37 88       	les    %cs:-0x77c9,%di
    8932:	fa                   	cli
    8933:	8a 44 02             	mov    0x2(%si),%al
    8936:	b0 ff                	mov    $0xff,%al
    8938:	26 88 45 02          	mov    %al,%es:0x2(%di)
    893c:	fb                   	sti
    893d:	2e 81 3e 35 88 f2 03 	cmpw   $0x3f2,%cs:-0x77cb
    8944:	74 1b                	je     0x8961
    8946:	ba f2 03             	mov    $0x3f2,%dx
    8949:	b0 04                	mov    $0x4,%al
    894b:	ee                   	out    %al,(%dx)
    894c:	32 c0                	xor    %al,%al
    894e:	26 88 45 01          	mov    %al,%es:0x1(%di)
    8952:	2e 8b 16 35 88       	mov    %cs:-0x77cb,%dx
    8957:	b0 0c                	mov    $0xc,%al
    8959:	ee                   	out    %al,(%dx)
    895a:	0e                   	push   %cs
    895b:	07                   	pop    %es
    895c:	2e 8d 3e 3b 88       	lea    %cs:-0x77c5,%di
    8961:	32 e4                	xor    %ah,%ah
    8963:	8a 46 01             	mov    0x1(%bp),%al
    8966:	3d 06 00             	cmp    $0x6,%ax
    8969:	7c 07                	jl     0x8972
    896b:	b4 01                	mov    $0x1,%ah
    896d:	32 c0                	xor    %al,%al
    896f:	e9 6e 01             	jmp    0x8ae0
    8972:	a8 02                	test   $0x2,%al
    8974:	74 03                	je     0x8979
    8976:	eb 24                	jmp    0x899c
    8978:	90                   	nop
    8979:	a8 04                	test   $0x4,%al
    897b:	74 03                	je     0x8980
    897d:	e9 1d 01             	jmp    0x8a9d
    8980:	a8 01                	test   $0x1,%al
    8982:	74 03                	je     0x8987
    8984:	eb 0d                	jmp    0x8993
    8986:	90                   	nop
    8987:	e8 4a 02             	call   0x8bd4
    898a:	26 88 65 03          	mov    %ah,%es:0x3(%di)
    898e:	32 c0                	xor    %al,%al
    8990:	e9 4d 01             	jmp    0x8ae0
    8993:	26 8a 45 03          	mov    %es:0x3(%di),%al
    8997:	32 e4                	xor    %ah,%ah
    8999:	e9 44 01             	jmp    0x8ae0
    899c:	e8 94 02             	call   0x8c33
    899f:	33 c0                	xor    %ax,%ax
    89a1:	8a 46 00             	mov    0x0(%bp),%al
    89a4:	8a 4c 03             	mov    0x3(%si),%cl
    89a7:	ba 80 00             	mov    $0x80,%dx
    89aa:	d3 e2                	shl    %cl,%dx
    89ac:	8a 54 06             	mov    0x6(%si),%dl
    89af:	32 f6                	xor    %dh,%dh
    89b1:	f7 e2                	mul    %dx
    89b3:	2d 01 00             	sub    $0x1,%ax
    89b6:	e6 05                	out    %al,$0x5
    89b8:	86 e0                	xchg   %ah,%al
    89ba:	e6 05                	out    %al,$0x5
    89bc:	86 e0                	xchg   %ah,%al
    89be:	03 c3                	add    %bx,%ax
    89c0:	73 0d                	jae    0x89cf
    89c2:	8a 46 01             	mov    0x1(%bp),%al
    89c5:	f6 c4 04             	test   $0x4,%ah
    89c8:	75 05                	jne    0x89cf
    89ca:	b4 09                	mov    $0x9,%ah
    89cc:	e9 94 00             	jmp    0x8a63
    89cf:	e8 78 01             	call   0x8b4a
    89d2:	74 04                	je     0x89d8
    89d4:	e9 8c 00             	jmp    0x8a63
    89d7:	90                   	nop
    89d8:	32 e4                	xor    %ah,%ah
    89da:	8a 46 01             	mov    0x1(%bp),%al
    89dd:	d0 e0                	shl    %al
    89df:	bb 43 88             	mov    $0x8843,%bx
    89e2:	03 d8                	add    %ax,%bx
    89e4:	2e 8b 07             	mov    %cs:(%bx),%ax
    89e7:	e6 0b                	out    %al,$0xb
    89e9:	b0 02                	mov    $0x2,%al
    89eb:	e6 0a                	out    %al,$0xa
    89ed:	8a fc                	mov    %ah,%bh
    89ef:	e8 1d 01             	call   0x8b0f
    89f2:	e8 5e 02             	call   0x8c53
    89f5:	8a 7e 07             	mov    0x7(%bp),%bh
    89f8:	e8 14 01             	call   0x8b0f
    89fb:	8a 7e 04             	mov    0x4(%bp),%bh
    89fe:	e8 0e 01             	call   0x8b0f
    8a01:	83 c6 03             	add    $0x3,%si
    8a04:	e8 fc 00             	call   0x8b03
    8a07:	46                   	inc    %si
    8a08:	46                   	inc    %si
    8a09:	06                   	push   %es
    8a0a:	57                   	push   %di
    8a0b:	2e c4 3e 37 88       	les    %cs:-0x77c9,%di
    8a10:	26 80 25 7f          	andb   $0x7f,%es:(%di)
    8a14:	5f                   	pop    %di
    8a15:	07                   	pop    %es
    8a16:	e8 ea 00             	call   0x8b03
    8a19:	83 ee 05             	sub    $0x5,%si
    8a1c:	e8 84 01             	call   0x8ba3
    8a1f:	75 42                	jne    0x8a63
    8a21:	57                   	push   %di
    8a22:	b9 07 00             	mov    $0x7,%cx
    8a25:	83 c7 04             	add    $0x4,%di
    8a28:	fc                   	cld
    8a29:	e8 7d 02             	call   0x8ca9
    8a2c:	74 fb                	je     0x8a29
    8a2e:	f6 e2                	mul    %dl
    8a30:	ec                   	in     (%dx),%al
    8a31:	aa                   	stos   %al,%es:(%di)
    8a32:	e2 f5                	loop   0x8a29
    8a34:	5f                   	pop    %di
    8a35:	26 f6 45 04 c0       	testb  $0xc0,%es:0x4(%di)
    8a3a:	74 25                	je     0x8a61
    8a3c:	26 f6 45 04 08       	testb  $0x8,%es:0x4(%di)
    8a41:	74 05                	je     0x8a48
    8a43:	b4 80                	mov    $0x80,%ah
    8a45:	eb 1c                	jmp    0x8a63
    8a47:	90                   	nop
    8a48:	26 8a 65 05          	mov    %es:0x5(%di),%ah
    8a4c:	f6 c4 30             	test   $0x30,%ah
    8a4f:	74 05                	je     0x8a56
    8a51:	d0 ec                	shr    %ah
    8a53:	eb 0e                	jmp    0x8a63
    8a55:	90                   	nop
    8a56:	f6 c4 03             	test   $0x3,%ah
    8a59:	74 03                	je     0x8a5e
    8a5b:	80 c4 01             	add    $0x1,%ah
    8a5e:	eb 03                	jmp    0x8a63
    8a60:	90                   	nop
    8a61:	b4 00                	mov    $0x0,%ah
    8a63:	26 88 65 03          	mov    %ah,%es:0x3(%di)
    8a67:	b0 06                	mov    $0x6,%al
    8a69:	e6 0a                	out    %al,$0xa
    8a6b:	32 c0                	xor    %al,%al
    8a6d:	f6 c4 54             	test   $0x54,%ah
    8a70:	eb 28                	jmp    0x8a9a
    8a72:	90                   	nop
    8a73:	91                   	xchg   %ax,%cx
    8a74:	e6 0c                	out    %al,$0xc
    8a76:	e4 05                	in     $0x5,%al
    8a78:	8a d8                	mov    %al,%bl
    8a7a:	e4 05                	in     $0x5,%al
    8a7c:	8a f8                	mov    %al,%bh
    8a7e:	8a 4c 03             	mov    0x3(%si),%cl
    8a81:	b8 80 00             	mov    $0x80,%ax
    8a84:	d3 e0                	shl    %cl,%ax
    8a86:	48                   	dec    %ax
    8a87:	93                   	xchg   %ax,%bx
    8a88:	33 d2                	xor    %dx,%dx
    8a8a:	f7 f3                	div    %bx
    8a8c:	0b d2                	or     %dx,%dx
    8a8e:	74 01                	je     0x8a91
    8a90:	40                   	inc    %ax
    8a91:	8a 66 00             	mov    0x0(%bp),%ah
    8a94:	2a e0                	sub    %al,%ah
    8a96:	8a c4                	mov    %ah,%al
    8a98:	8a e5                	mov    %ch,%ah
    8a9a:	eb 44                	jmp    0x8ae0
    8a9c:	90                   	nop
    8a9d:	a8 01                	test   $0x1,%al
    8a9f:	75 03                	jne    0x8aa4
    8aa1:	e9 f8 fe             	jmp    0x899c
    8aa4:	b0 4a                	mov    $0x4a,%al
    8aa6:	e6 0b                	out    %al,$0xb
    8aa8:	e8 88 01             	call   0x8c33
    8aab:	b0 ff                	mov    $0xff,%al
    8aad:	e6 05                	out    %al,$0x5
    8aaf:	e6 05                	out    %al,$0x5
    8ab1:	e8 96 00             	call   0x8b4a
    8ab4:	74 02                	je     0x8ab8
    8ab6:	eb ab                	jmp    0x8a63
    8ab8:	b0 02                	mov    $0x2,%al
    8aba:	e6 0a                	out    %al,$0xa
    8abc:	b7 4d                	mov    $0x4d,%bh
    8abe:	e8 4e 00             	call   0x8b0f
    8ac1:	8a 7e 07             	mov    0x7(%bp),%bh
    8ac4:	d0 e7                	shl    %bh
    8ac6:	d0 e7                	shl    %bh
    8ac8:	0a 7e 06             	or     0x6(%bp),%bh
    8acb:	e8 41 00             	call   0x8b0f
    8ace:	83 c6 03             	add    $0x3,%si
    8ad1:	e8 2f 00             	call   0x8b03
    8ad4:	83 c6 04             	add    $0x4,%si
    8ad7:	e8 29 00             	call   0x8b03
    8ada:	83 ee 07             	sub    $0x7,%si
    8add:	e9 3c ff             	jmp    0x8a1c
    8ae0:	89 46 00             	mov    %ax,0x0(%bp)
    8ae3:	2e 81 3e 35 88 f2 03 	cmpw   $0x3f2,%cs:-0x77cb
    8aea:	74 0e                	je     0x8afa
    8aec:	b0 04                	mov    $0x4,%al
    8aee:	2e 8b 16 35 88       	mov    %cs:-0x77cb,%dx
    8af3:	ee                   	out    %al,(%dx)
    8af4:	ba f2 03             	mov    $0x3f2,%dx
    8af7:	b0 0c                	mov    $0xc,%al
    8af9:	ee                   	out    %al,(%dx)
    8afa:	e8 6f fd             	call   0x886c
    8afd:	cf                   	iret
    8afe:	b7 03                	mov    $0x3,%bh
    8b00:	e8 0c 00             	call   0x8b0f
    8b03:	e8 a3 01             	call   0x8ca9
    8b06:	75 fb                	jne    0x8b03
    8b08:	f6 e2                	mul    %dl
    8b0a:	8b 1c                	mov    (%si),%bx
    8b0c:	8a c3                	mov    %bl,%al
    8b0e:	ee                   	out    %al,(%dx)
    8b0f:	e8 97 01             	call   0x8ca9
    8b12:	75 fb                	jne    0x8b0f
    8b14:	f6 e2                	mul    %dl
    8b16:	8a c7                	mov    %bh,%al
    8b18:	ee                   	out    %al,(%dx)
    8b19:	c3                   	ret
    8b1a:	e8 4a 01             	call   0x8c67
    8b1d:	b9 64 00             	mov    $0x64,%cx
    8b20:	e8 86 01             	call   0x8ca9
    8b23:	74 08                	je     0x8b2d
    8b25:	49                   	dec    %cx
    8b26:	75 f8                	jne    0x8b20
    8b28:	b4 80                	mov    $0x80,%ah
    8b2a:	eb 1b                	jmp    0x8b47
    8b2c:	90                   	nop
    8b2d:	f6 e2                	mul    %dl
    8b2f:	b0 07                	mov    $0x7,%al
    8b31:	ee                   	out    %al,(%dx)
    8b32:	8a 7e 06             	mov    0x6(%bp),%bh
    8b35:	e8 d7 ff             	call   0x8b0f
    8b38:	e8 68 00             	call   0x8ba3
    8b3b:	75 0a                	jne    0x8b47
    8b3d:	e8 45 00             	call   0x8b85
    8b40:	a8 c0                	test   $0xc0,%al
    8b42:	b4 80                	mov    $0x80,%ah
    8b44:	eb 03                	jmp    0x8b49
    8b46:	90                   	nop
    8b47:	0a e4                	or     %ah,%ah
    8b49:	c3                   	ret
    8b4a:	b0 01                	mov    $0x1,%al
    8b4c:	8a 4e 06             	mov    0x6(%bp),%cl
    8b4f:	d2 e0                	shl    %cl,%al
    8b51:	26 84 05             	test   %al,%es:(%di)
    8b54:	75 08                	jne    0x8b5e
    8b56:	26 08 05             	or     %al,%es:(%di)
    8b59:	e8 be ff             	call   0x8b1a
    8b5c:	75 26                	jne    0x8b84
    8b5e:	e8 06 01             	call   0x8c67
    8b61:	b7 0f                	mov    $0xf,%bh
    8b63:	e8 a9 ff             	call   0x8b0f
    8b66:	e8 ea 00             	call   0x8c53
    8b69:	e8 37 00             	call   0x8ba3
    8b6c:	75 16                	jne    0x8b84
    8b6e:	33 c0                	xor    %ax,%ax
    8b70:	0a 44 09             	or     0x9(%si),%al
    8b73:	74 08                	je     0x8b7d
    8b75:	b9 04 01             	mov    $0x104,%cx
    8b78:	e2 fe                	loop   0x8b78
    8b7a:	48                   	dec    %ax
    8b7b:	75 f8                	jne    0x8b75
    8b7d:	e8 05 00             	call   0x8b85
    8b80:	a8 c0                	test   $0xc0,%al
    8b82:	b4 40                	mov    $0x40,%ah
    8b84:	c3                   	ret
    8b85:	b7 08                	mov    $0x8,%bh
    8b87:	e8 85 ff             	call   0x8b0f
    8b8a:	b1 02                	mov    $0x2,%cl
    8b8c:	e8 1a 01             	call   0x8ca9
    8b8f:	74 fb                	je     0x8b8c
    8b91:	f6 e2                	mul    %dl
    8b93:	ec                   	in     (%dx),%al
    8b94:	fe c9                	dec    %cl
    8b96:	74 06                	je     0x8b9e
    8b98:	26 88 45 04          	mov    %al,%es:0x4(%di)
    8b9c:	eb ee                	jmp    0x8b8c
    8b9e:	26 8a 45 04          	mov    %es:0x4(%di),%al
    8ba2:	c3                   	ret
    8ba3:	fa                   	cli
    8ba4:	06                   	push   %es
    8ba5:	57                   	push   %di
    8ba6:	2e c4 3e 37 88       	les    %cs:-0x77c9,%di
    8bab:	26 f6 05 80          	testb  $0x80,%es:(%di)
    8baf:	75 0e                	jne    0x8bbf
    8bb1:	5f                   	pop    %di
    8bb2:	07                   	pop    %es
    8bb3:	26 f6 45 01 0f       	testb  $0xf,%es:0x1(%di)
    8bb8:	74 11                	je     0x8bcb
    8bba:	e8 c0 fc             	call   0x887d
    8bbd:	eb e4                	jmp    0x8ba3
    8bbf:	fb                   	sti
    8bc0:	26 80 25 7f          	andb   $0x7f,%es:(%di)
    8bc4:	5f                   	pop    %di
    8bc5:	07                   	pop    %es
    8bc6:	b4 00                	mov    $0x0,%ah
    8bc8:	eb 07                	jmp    0x8bd1
    8bca:	90                   	nop
    8bcb:	fb                   	sti
    8bcc:	e8 05 00             	call   0x8bd4
    8bcf:	b4 80                	mov    $0x80,%ah
    8bd1:	0a e4                	or     %ah,%ah
    8bd3:	c3                   	ret
    8bd4:	2e 8b 16 35 88       	mov    %cs:-0x77cb,%dx
    8bd9:	26 8a 45 01          	mov    %es:0x1(%di),%al
    8bdd:	24 0f                	and    $0xf,%al
    8bdf:	74 12                	je     0x8bf3
    8be1:	d0 e8                	shr    %al
    8be3:	a8 04                	test   $0x4,%al
    8be5:	74 02                	je     0x8be9
    8be7:	b0 03                	mov    $0x3,%al
    8be9:	26 8a 65 01          	mov    %es:0x1(%di),%ah
    8bed:	b1 04                	mov    $0x4,%cl
    8bef:	d2 e4                	shl    %cl,%ah
    8bf1:	0a c4                	or     %ah,%al
    8bf3:	0c 08                	or     $0x8,%al
    8bf5:	ee                   	out    %al,(%dx)
    8bf6:	50                   	push   %ax
    8bf7:	f6 e2                	mul    %dl
    8bf9:	58                   	pop    %ax
    8bfa:	26 80 25 00          	andb   $0x0,%es:(%di)
    8bfe:	06                   	push   %es
    8bff:	57                   	push   %di
