
a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 4f 00 00 	mov    0x4fd9(%rip),%rax        # 5fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 8a 4f 00 00    	pushq  0x4f8a(%rip)        # 5fb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 8b 4f 00 00 	bnd jmpq *0x4f8b(%rip)        # 5fb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop

Disassembly of section .plt.got:

0000000000001060 <__cxa_finalize@plt>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	f2 ff 25 8d 4f 00 00 	bnd jmpq *0x4f8d(%rip)        # 5ff8 <__cxa_finalize@GLIBC_2.2.5>
    106b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001070 <write@plt>:
    1070:	f3 0f 1e fa          	endbr64 
    1074:	f2 ff 25 45 4f 00 00 	bnd jmpq *0x4f45(%rip)        # 5fc0 <write@GLIBC_2.2.5>
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001080 <__stack_chk_fail@plt>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	f2 ff 25 3d 4f 00 00 	bnd jmpq *0x4f3d(%rip)        # 5fc8 <__stack_chk_fail@GLIBC_2.4>
    108b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001090 <printf@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 35 4f 00 00 	bnd jmpq *0x4f35(%rip)        # 5fd0 <printf@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010a0 <_start>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	31 ed                	xor    %ebp,%ebp
    10a6:	49 89 d1             	mov    %rdx,%r9
    10a9:	5e                   	pop    %rsi
    10aa:	48 89 e2             	mov    %rsp,%rdx
    10ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10b1:	50                   	push   %rax
    10b2:	54                   	push   %rsp
    10b3:	4c 8d 05 26 2a 00 00 	lea    0x2a26(%rip),%r8        # 3ae0 <__libc_csu_fini>
    10ba:	48 8d 0d af 29 00 00 	lea    0x29af(%rip),%rcx        # 3a70 <__libc_csu_init>
    10c1:	48 8d 3d 3c 19 00 00 	lea    0x193c(%rip),%rdi        # 2a04 <main>
    10c8:	ff 15 12 4f 00 00    	callq  *0x4f12(%rip)        # 5fe0 <__libc_start_main@GLIBC_2.2.5>
    10ce:	f4                   	hlt    
    10cf:	90                   	nop

00000000000010d0 <deregister_tm_clones>:
    10d0:	48 8d 3d 39 4f 00 00 	lea    0x4f39(%rip),%rdi        # 6010 <__TMC_END__>
    10d7:	48 8d 05 32 4f 00 00 	lea    0x4f32(%rip),%rax        # 6010 <__TMC_END__>
    10de:	48 39 f8             	cmp    %rdi,%rax
    10e1:	74 15                	je     10f8 <deregister_tm_clones+0x28>
    10e3:	48 8b 05 ee 4e 00 00 	mov    0x4eee(%rip),%rax        # 5fd8 <_ITM_deregisterTMCloneTable>
    10ea:	48 85 c0             	test   %rax,%rax
    10ed:	74 09                	je     10f8 <deregister_tm_clones+0x28>
    10ef:	ff e0                	jmpq   *%rax
    10f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10f8:	c3                   	retq   
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <register_tm_clones>:
    1100:	48 8d 3d 09 4f 00 00 	lea    0x4f09(%rip),%rdi        # 6010 <__TMC_END__>
    1107:	48 8d 35 02 4f 00 00 	lea    0x4f02(%rip),%rsi        # 6010 <__TMC_END__>
    110e:	48 29 fe             	sub    %rdi,%rsi
    1111:	48 89 f0             	mov    %rsi,%rax
    1114:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1118:	48 c1 f8 03          	sar    $0x3,%rax
    111c:	48 01 c6             	add    %rax,%rsi
    111f:	48 d1 fe             	sar    %rsi
    1122:	74 14                	je     1138 <register_tm_clones+0x38>
    1124:	48 8b 05 c5 4e 00 00 	mov    0x4ec5(%rip),%rax        # 5ff0 <_ITM_registerTMCloneTable>
    112b:	48 85 c0             	test   %rax,%rax
    112e:	74 08                	je     1138 <register_tm_clones+0x38>
    1130:	ff e0                	jmpq   *%rax
    1132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1138:	c3                   	retq   
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <__do_global_dtors_aux>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	80 3d c5 4e 00 00 00 	cmpb   $0x0,0x4ec5(%rip)        # 6010 <__TMC_END__>
    114b:	75 2b                	jne    1178 <__do_global_dtors_aux+0x38>
    114d:	55                   	push   %rbp
    114e:	48 83 3d a2 4e 00 00 	cmpq   $0x0,0x4ea2(%rip)        # 5ff8 <__cxa_finalize@GLIBC_2.2.5>
    1155:	00 
    1156:	48 89 e5             	mov    %rsp,%rbp
    1159:	74 0c                	je     1167 <__do_global_dtors_aux+0x27>
    115b:	48 8b 3d a6 4e 00 00 	mov    0x4ea6(%rip),%rdi        # 6008 <__dso_handle>
    1162:	e8 f9 fe ff ff       	callq  1060 <__cxa_finalize@plt>
    1167:	e8 64 ff ff ff       	callq  10d0 <deregister_tm_clones>
    116c:	c6 05 9d 4e 00 00 01 	movb   $0x1,0x4e9d(%rip)        # 6010 <__TMC_END__>
    1173:	5d                   	pop    %rbp
    1174:	c3                   	retq   
    1175:	0f 1f 00             	nopl   (%rax)
    1178:	c3                   	retq   
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <frame_dummy>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	e9 77 ff ff ff       	jmpq   1100 <register_tm_clones>

0000000000001189 <print_c>:
    1189:	f3 0f 1e fa          	endbr64 
    118d:	55                   	push   %rbp
    118e:	48 89 e5             	mov    %rsp,%rbp
    1191:	48 83 ec 30          	sub    $0x30,%rsp
    1195:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1199:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    119d:	89 55 dc             	mov    %edx,-0x24(%rbp)
    11a0:	89 4d d8             	mov    %ecx,-0x28(%rbp)
    11a3:	44 89 45 d4          	mov    %r8d,-0x2c(%rbp)
    11a7:	44 89 4d d0          	mov    %r9d,-0x30(%rbp)
    11ab:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11af:	8b 00                	mov    (%rax),%eax
    11b1:	83 f8 2f             	cmp    $0x2f,%eax
    11b4:	77 24                	ja     11da <print_c+0x51>
    11b6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11ba:	48 8b 50 10          	mov    0x10(%rax),%rdx
    11be:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11c2:	8b 00                	mov    (%rax),%eax
    11c4:	89 c0                	mov    %eax,%eax
    11c6:	48 01 d0             	add    %rdx,%rax
    11c9:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    11cd:	8b 12                	mov    (%rdx),%edx
    11cf:	8d 4a 08             	lea    0x8(%rdx),%ecx
    11d2:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    11d6:	89 0a                	mov    %ecx,(%rdx)
    11d8:	eb 14                	jmp    11ee <print_c+0x65>
    11da:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11de:	48 8b 40 08          	mov    0x8(%rax),%rax
    11e2:	48 8d 48 08          	lea    0x8(%rax),%rcx
    11e6:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    11ea:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    11ee:	8b 00                	mov    (%rax),%eax
    11f0:	88 45 ff             	mov    %al,-0x1(%rbp)
    11f3:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
    11f7:	44 8b 45 d0          	mov    -0x30(%rbp),%r8d
    11fb:	8b 7d d4             	mov    -0x2c(%rbp),%edi
    11fe:	8b 4d d8             	mov    -0x28(%rbp),%ecx
    1201:	8b 55 dc             	mov    -0x24(%rbp),%edx
    1204:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    1208:	45 89 c1             	mov    %r8d,%r9d
    120b:	41 89 f8             	mov    %edi,%r8d
    120e:	89 c7                	mov    %eax,%edi
    1210:	e8 d6 1e 00 00       	callq  30eb <print_char>
    1215:	c9                   	leaveq 
    1216:	c3                   	retq   

0000000000001217 <print_s>:
    1217:	f3 0f 1e fa          	endbr64 
    121b:	55                   	push   %rbp
    121c:	48 89 e5             	mov    %rsp,%rbp
    121f:	48 83 ec 30          	sub    $0x30,%rsp
    1223:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1227:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    122b:	89 55 dc             	mov    %edx,-0x24(%rbp)
    122e:	89 4d d8             	mov    %ecx,-0x28(%rbp)
    1231:	44 89 45 d4          	mov    %r8d,-0x2c(%rbp)
    1235:	44 89 4d d0          	mov    %r9d,-0x30(%rbp)
    1239:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    1240:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1244:	8b 00                	mov    (%rax),%eax
    1246:	83 f8 2f             	cmp    $0x2f,%eax
    1249:	77 24                	ja     126f <print_s+0x58>
    124b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    124f:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1253:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1257:	8b 00                	mov    (%rax),%eax
    1259:	89 c0                	mov    %eax,%eax
    125b:	48 01 d0             	add    %rdx,%rax
    125e:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1262:	8b 12                	mov    (%rdx),%edx
    1264:	8d 4a 08             	lea    0x8(%rdx),%ecx
    1267:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    126b:	89 0a                	mov    %ecx,(%rdx)
    126d:	eb 14                	jmp    1283 <print_s+0x6c>
    126f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1273:	48 8b 40 08          	mov    0x8(%rax),%rax
    1277:	48 8d 48 08          	lea    0x8(%rax),%rcx
    127b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    127f:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    1283:	48 8b 00             	mov    (%rax),%rax
    1286:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    128a:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    128f:	75 22                	jne    12b3 <print_s+0x9c>
    1291:	48 8d 05 6c 2d 00 00 	lea    0x2d6c(%rip),%rax        # 4004 <_IO_stdin_used+0x4>
    1298:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    129c:	83 7d d4 05          	cmpl   $0x5,-0x2c(%rbp)
    12a0:	7e 11                	jle    12b3 <print_s+0x9c>
    12a2:	48 8d 05 62 2d 00 00 	lea    0x2d62(%rip),%rax        # 400b <_IO_stdin_used+0xb>
    12a9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12ad:	eb 04                	jmp    12b3 <print_s+0x9c>
    12af:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
    12b3:	8b 45 f0             	mov    -0x10(%rbp),%eax
    12b6:	48 63 d0             	movslq %eax,%rdx
    12b9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12bd:	48 01 d0             	add    %rdx,%rax
    12c0:	0f b6 00             	movzbl (%rax),%eax
    12c3:	84 c0                	test   %al,%al
    12c5:	75 e8                	jne    12af <print_s+0x98>
    12c7:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
    12cb:	78 0e                	js     12db <print_s+0xc4>
    12cd:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    12d0:	3b 45 f0             	cmp    -0x10(%rbp),%eax
    12d3:	7d 06                	jge    12db <print_s+0xc4>
    12d5:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    12d8:	89 45 f0             	mov    %eax,-0x10(%rbp)
    12db:	8b 45 d8             	mov    -0x28(%rbp),%eax
    12de:	3b 45 f0             	cmp    -0x10(%rbp),%eax
    12e1:	0f 8e 98 00 00 00    	jle    137f <print_s+0x168>
    12e7:	8b 45 dc             	mov    -0x24(%rbp),%eax
    12ea:	83 e0 01             	and    $0x1,%eax
    12ed:	85 c0                	test   %eax,%eax
    12ef:	74 47                	je     1338 <print_s+0x121>
    12f1:	8b 45 f0             	mov    -0x10(%rbp),%eax
    12f4:	48 63 d0             	movslq %eax,%rdx
    12f7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12fb:	48 89 c6             	mov    %rax,%rsi
    12fe:	bf 01 00 00 00       	mov    $0x1,%edi
    1303:	e8 68 fd ff ff       	callq  1070 <write@plt>
    1308:	8b 45 d8             	mov    -0x28(%rbp),%eax
    130b:	2b 45 f0             	sub    -0x10(%rbp),%eax
    130e:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1311:	eb 1a                	jmp    132d <print_s+0x116>
    1313:	ba 01 00 00 00       	mov    $0x1,%edx
    1318:	48 8d 35 f3 2c 00 00 	lea    0x2cf3(%rip),%rsi        # 4012 <_IO_stdin_used+0x12>
    131f:	bf 01 00 00 00       	mov    $0x1,%edi
    1324:	e8 47 fd ff ff       	callq  1070 <write@plt>
    1329:	83 6d f4 01          	subl   $0x1,-0xc(%rbp)
    132d:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
    1331:	7f e0                	jg     1313 <print_s+0xfc>
    1333:	8b 45 d8             	mov    -0x28(%rbp),%eax
    1336:	eb 5e                	jmp    1396 <print_s+0x17f>
    1338:	8b 45 d8             	mov    -0x28(%rbp),%eax
    133b:	2b 45 f0             	sub    -0x10(%rbp),%eax
    133e:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1341:	eb 1a                	jmp    135d <print_s+0x146>
    1343:	ba 01 00 00 00       	mov    $0x1,%edx
    1348:	48 8d 35 c3 2c 00 00 	lea    0x2cc3(%rip),%rsi        # 4012 <_IO_stdin_used+0x12>
    134f:	bf 01 00 00 00       	mov    $0x1,%edi
    1354:	e8 17 fd ff ff       	callq  1070 <write@plt>
    1359:	83 6d f4 01          	subl   $0x1,-0xc(%rbp)
    135d:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
    1361:	7f e0                	jg     1343 <print_s+0x12c>
    1363:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1366:	48 63 d0             	movslq %eax,%rdx
    1369:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    136d:	48 89 c6             	mov    %rax,%rsi
    1370:	bf 01 00 00 00       	mov    $0x1,%edi
    1375:	e8 f6 fc ff ff       	callq  1070 <write@plt>
    137a:	8b 45 d8             	mov    -0x28(%rbp),%eax
    137d:	eb 17                	jmp    1396 <print_s+0x17f>
    137f:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1382:	48 63 d0             	movslq %eax,%rdx
    1385:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1389:	48 89 c6             	mov    %rax,%rsi
    138c:	bf 01 00 00 00       	mov    $0x1,%edi
    1391:	e8 da fc ff ff       	callq  1070 <write@plt>
    1396:	c9                   	leaveq 
    1397:	c3                   	retq   

0000000000001398 <print_percentage>:
    1398:	f3 0f 1e fa          	endbr64 
    139c:	55                   	push   %rbp
    139d:	48 89 e5             	mov    %rsp,%rbp
    13a0:	48 83 ec 20          	sub    $0x20,%rsp
    13a4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    13a8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    13ac:	89 55 ec             	mov    %edx,-0x14(%rbp)
    13af:	89 4d e8             	mov    %ecx,-0x18(%rbp)
    13b2:	44 89 45 e4          	mov    %r8d,-0x1c(%rbp)
    13b6:	44 89 4d e0          	mov    %r9d,-0x20(%rbp)
    13ba:	ba 01 00 00 00       	mov    $0x1,%edx
    13bf:	48 8d 35 4e 2c 00 00 	lea    0x2c4e(%rip),%rsi        # 4014 <_IO_stdin_used+0x14>
    13c6:	bf 01 00 00 00       	mov    $0x1,%edi
    13cb:	e8 a0 fc ff ff       	callq  1070 <write@plt>
    13d0:	c9                   	leaveq 
    13d1:	c3                   	retq   

00000000000013d2 <print_int>:
    13d2:	f3 0f 1e fa          	endbr64 
    13d6:	55                   	push   %rbp
    13d7:	48 89 e5             	mov    %rsp,%rbp
    13da:	48 83 ec 40          	sub    $0x40,%rsp
    13de:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    13e2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    13e6:	89 55 cc             	mov    %edx,-0x34(%rbp)
    13e9:	89 4d c8             	mov    %ecx,-0x38(%rbp)
    13ec:	44 89 45 c4          	mov    %r8d,-0x3c(%rbp)
    13f0:	44 89 4d c0          	mov    %r9d,-0x40(%rbp)
    13f4:	c7 45 e8 fe 03 00 00 	movl   $0x3fe,-0x18(%rbp)
    13fb:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    1402:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1406:	8b 00                	mov    (%rax),%eax
    1408:	83 f8 2f             	cmp    $0x2f,%eax
    140b:	77 24                	ja     1431 <print_int+0x5f>
    140d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1411:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1415:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1419:	8b 00                	mov    (%rax),%eax
    141b:	89 c0                	mov    %eax,%eax
    141d:	48 01 d0             	add    %rdx,%rax
    1420:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1424:	8b 12                	mov    (%rdx),%edx
    1426:	8d 4a 08             	lea    0x8(%rdx),%ecx
    1429:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    142d:	89 0a                	mov    %ecx,(%rdx)
    142f:	eb 14                	jmp    1445 <print_int+0x73>
    1431:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1435:	48 8b 40 08          	mov    0x8(%rax),%rax
    1439:	48 8d 48 08          	lea    0x8(%rax),%rcx
    143d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1441:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    1445:	48 8b 00             	mov    (%rax),%rax
    1448:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    144c:	8b 55 c0             	mov    -0x40(%rbp),%edx
    144f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1453:	89 d6                	mov    %edx,%esi
    1455:	48 89 c7             	mov    %rax,%rdi
    1458:	e8 29 1c 00 00       	callq  3086 <convert_size_number>
    145d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1461:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1466:	75 16                	jne    147e <print_int+0xac>
    1468:	8b 45 e8             	mov    -0x18(%rbp),%eax
    146b:	8d 50 ff             	lea    -0x1(%rax),%edx
    146e:	89 55 e8             	mov    %edx,-0x18(%rbp)
    1471:	48 63 d0             	movslq %eax,%rdx
    1474:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1478:	48 01 d0             	add    %rdx,%rax
    147b:	c6 00 30             	movb   $0x30,(%rax)
    147e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1482:	48 05 ff 03 00 00    	add    $0x3ff,%rax
    1488:	c6 00 00             	movb   $0x0,(%rax)
    148b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    148f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1493:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1498:	79 77                	jns    1511 <print_int+0x13f>
    149a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    149e:	48 f7 d8             	neg    %rax
    14a1:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    14a5:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
    14ac:	eb 63                	jmp    1511 <print_int+0x13f>
    14ae:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    14b2:	48 ba cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rdx
    14b9:	cc cc cc 
    14bc:	48 89 c8             	mov    %rcx,%rax
    14bf:	48 f7 e2             	mul    %rdx
    14c2:	48 c1 ea 03          	shr    $0x3,%rdx
    14c6:	48 89 d0             	mov    %rdx,%rax
    14c9:	48 c1 e0 02          	shl    $0x2,%rax
    14cd:	48 01 d0             	add    %rdx,%rax
    14d0:	48 01 c0             	add    %rax,%rax
    14d3:	48 29 c1             	sub    %rax,%rcx
    14d6:	48 89 ca             	mov    %rcx,%rdx
    14d9:	89 d0                	mov    %edx,%eax
    14db:	8d 48 30             	lea    0x30(%rax),%ecx
    14de:	8b 45 e8             	mov    -0x18(%rbp),%eax
    14e1:	8d 50 ff             	lea    -0x1(%rax),%edx
    14e4:	89 55 e8             	mov    %edx,-0x18(%rbp)
    14e7:	48 63 d0             	movslq %eax,%rdx
    14ea:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    14ee:	48 01 d0             	add    %rdx,%rax
    14f1:	89 ca                	mov    %ecx,%edx
    14f3:	88 10                	mov    %dl,(%rax)
    14f5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    14f9:	48 ba cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rdx
    1500:	cc cc cc 
    1503:	48 f7 e2             	mul    %rdx
    1506:	48 89 d0             	mov    %rdx,%rax
    1509:	48 c1 e8 03          	shr    $0x3,%rax
    150d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1511:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    1516:	75 96                	jne    14ae <print_int+0xdc>
    1518:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    151c:	44 8b 4d c4          	mov    -0x3c(%rbp),%r9d
    1520:	44 8b 45 c8          	mov    -0x38(%rbp),%r8d
    1524:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    1527:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    152b:	8b 75 e8             	mov    -0x18(%rbp),%esi
    152e:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1531:	48 83 ec 08          	sub    $0x8,%rsp
    1535:	8b 7d c0             	mov    -0x40(%rbp),%edi
    1538:	57                   	push   %rdi
    1539:	89 c7                	mov    %eax,%edi
    153b:	e8 16 1d 00 00       	callq  3256 <print_num>
    1540:	48 83 c4 10          	add    $0x10,%rsp
    1544:	c9                   	leaveq 
    1545:	c3                   	retq   

0000000000001546 <print_binary>:
    1546:	f3 0f 1e fa          	endbr64 
    154a:	55                   	push   %rbp
    154b:	48 89 e5             	mov    %rsp,%rbp
    154e:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
    1555:	48 89 bd 48 ff ff ff 	mov    %rdi,-0xb8(%rbp)
    155c:	48 89 b5 40 ff ff ff 	mov    %rsi,-0xc0(%rbp)
    1563:	89 95 3c ff ff ff    	mov    %edx,-0xc4(%rbp)
    1569:	89 8d 38 ff ff ff    	mov    %ecx,-0xc8(%rbp)
    156f:	44 89 85 34 ff ff ff 	mov    %r8d,-0xcc(%rbp)
    1576:	44 89 8d 30 ff ff ff 	mov    %r9d,-0xd0(%rbp)
    157d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1584:	00 00 
    1586:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    158a:	31 c0                	xor    %eax,%eax
    158c:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    1593:	8b 00                	mov    (%rax),%eax
    1595:	83 f8 2f             	cmp    $0x2f,%eax
    1598:	77 30                	ja     15ca <print_binary+0x84>
    159a:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    15a1:	48 8b 50 10          	mov    0x10(%rax),%rdx
    15a5:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    15ac:	8b 00                	mov    (%rax),%eax
    15ae:	89 c0                	mov    %eax,%eax
    15b0:	48 01 d0             	add    %rdx,%rax
    15b3:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
    15ba:	8b 12                	mov    (%rdx),%edx
    15bc:	8d 4a 08             	lea    0x8(%rdx),%ecx
    15bf:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
    15c6:	89 0a                	mov    %ecx,(%rdx)
    15c8:	eb 1a                	jmp    15e4 <print_binary+0x9e>
    15ca:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    15d1:	48 8b 40 08          	mov    0x8(%rax),%rax
    15d5:	48 8d 48 08          	lea    0x8(%rax),%rcx
    15d9:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
    15e0:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    15e4:	8b 00                	mov    (%rax),%eax
    15e6:	89 85 6c ff ff ff    	mov    %eax,-0x94(%rbp)
    15ec:	c7 85 5c ff ff ff 00 	movl   $0x80000000,-0xa4(%rbp)
    15f3:	00 00 80 
    15f6:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
    15fc:	ba 00 00 00 00       	mov    $0x0,%edx
    1601:	f7 b5 5c ff ff ff    	divl   -0xa4(%rbp)
    1607:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
    160d:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%rbp)
    1614:	00 00 00 
    1617:	eb 38                	jmp    1651 <print_binary+0x10b>
    1619:	8b 85 5c ff ff ff    	mov    -0xa4(%rbp),%eax
    161f:	d1 e8                	shr    %eax
    1621:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%rbp)
    1627:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
    162d:	ba 00 00 00 00       	mov    $0x0,%edx
    1632:	f7 b5 5c ff ff ff    	divl   -0xa4(%rbp)
    1638:	83 e0 01             	and    $0x1,%eax
    163b:	89 c2                	mov    %eax,%edx
    163d:	8b 85 60 ff ff ff    	mov    -0xa0(%rbp),%eax
    1643:	89 94 85 70 ff ff ff 	mov    %edx,-0x90(%rbp,%rax,4)
    164a:	83 85 60 ff ff ff 01 	addl   $0x1,-0xa0(%rbp)
    1651:	83 bd 60 ff ff ff 1f 	cmpl   $0x1f,-0xa0(%rbp)
    1658:	76 bf                	jbe    1619 <print_binary+0xd3>
    165a:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%rbp)
    1661:	00 00 00 
    1664:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%rbp)
    166b:	00 00 00 
    166e:	c7 85 68 ff ff ff 00 	movl   $0x0,-0x98(%rbp)
    1675:	00 00 00 
    1678:	eb 62                	jmp    16dc <print_binary+0x196>
    167a:	8b 85 60 ff ff ff    	mov    -0xa0(%rbp),%eax
    1680:	8b 84 85 70 ff ff ff 	mov    -0x90(%rbp,%rax,4),%eax
    1687:	01 85 64 ff ff ff    	add    %eax,-0x9c(%rbp)
    168d:	83 bd 64 ff ff ff 00 	cmpl   $0x0,-0x9c(%rbp)
    1694:	75 09                	jne    169f <print_binary+0x159>
    1696:	83 bd 60 ff ff ff 1f 	cmpl   $0x1f,-0xa0(%rbp)
    169d:	75 36                	jne    16d5 <print_binary+0x18f>
    169f:	8b 85 60 ff ff ff    	mov    -0xa0(%rbp),%eax
    16a5:	8b 84 85 70 ff ff ff 	mov    -0x90(%rbp,%rax,4),%eax
    16ac:	83 c0 30             	add    $0x30,%eax
    16af:	88 85 5b ff ff ff    	mov    %al,-0xa5(%rbp)
    16b5:	48 8d 85 5b ff ff ff 	lea    -0xa5(%rbp),%rax
    16bc:	ba 01 00 00 00       	mov    $0x1,%edx
    16c1:	48 89 c6             	mov    %rax,%rsi
    16c4:	bf 01 00 00 00       	mov    $0x1,%edi
    16c9:	e8 a2 f9 ff ff       	callq  1070 <write@plt>
    16ce:	83 85 68 ff ff ff 01 	addl   $0x1,-0x98(%rbp)
    16d5:	83 85 60 ff ff ff 01 	addl   $0x1,-0xa0(%rbp)
    16dc:	83 bd 60 ff ff ff 1f 	cmpl   $0x1f,-0xa0(%rbp)
    16e3:	76 95                	jbe    167a <print_binary+0x134>
    16e5:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
    16eb:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    16ef:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    16f6:	00 00 
    16f8:	74 05                	je     16ff <print_binary+0x1b9>
    16fa:	e8 81 f9 ff ff       	callq  1080 <__stack_chk_fail@plt>
    16ff:	c9                   	leaveq 
    1700:	c3                   	retq   

0000000000001701 <print_unsigned>:
    1701:	f3 0f 1e fa          	endbr64 
    1705:	55                   	push   %rbp
    1706:	48 89 e5             	mov    %rsp,%rbp
    1709:	48 83 ec 30          	sub    $0x30,%rsp
    170d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1711:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1715:	89 55 dc             	mov    %edx,-0x24(%rbp)
    1718:	89 4d d8             	mov    %ecx,-0x28(%rbp)
    171b:	44 89 45 d4          	mov    %r8d,-0x2c(%rbp)
    171f:	44 89 4d d0          	mov    %r9d,-0x30(%rbp)
    1723:	c7 45 f4 fe 03 00 00 	movl   $0x3fe,-0xc(%rbp)
    172a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    172e:	8b 00                	mov    (%rax),%eax
    1730:	83 f8 2f             	cmp    $0x2f,%eax
    1733:	77 24                	ja     1759 <print_unsigned+0x58>
    1735:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1739:	48 8b 50 10          	mov    0x10(%rax),%rdx
    173d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1741:	8b 00                	mov    (%rax),%eax
    1743:	89 c0                	mov    %eax,%eax
    1745:	48 01 d0             	add    %rdx,%rax
    1748:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    174c:	8b 12                	mov    (%rdx),%edx
    174e:	8d 4a 08             	lea    0x8(%rdx),%ecx
    1751:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1755:	89 0a                	mov    %ecx,(%rdx)
    1757:	eb 14                	jmp    176d <print_unsigned+0x6c>
    1759:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    175d:	48 8b 40 08          	mov    0x8(%rax),%rax
    1761:	48 8d 48 08          	lea    0x8(%rax),%rcx
    1765:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1769:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    176d:	48 8b 00             	mov    (%rax),%rax
    1770:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1774:	8b 55 d0             	mov    -0x30(%rbp),%edx
    1777:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    177b:	89 d6                	mov    %edx,%esi
    177d:	48 89 c7             	mov    %rax,%rdi
    1780:	e8 34 19 00 00       	callq  30b9 <convert_size_unsgnd>
    1785:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1789:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    178e:	75 16                	jne    17a6 <print_unsigned+0xa5>
    1790:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1793:	8d 50 ff             	lea    -0x1(%rax),%edx
    1796:	89 55 f4             	mov    %edx,-0xc(%rbp)
    1799:	48 63 d0             	movslq %eax,%rdx
    179c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    17a0:	48 01 d0             	add    %rdx,%rax
    17a3:	c6 00 30             	movb   $0x30,(%rax)
    17a6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    17aa:	48 05 ff 03 00 00    	add    $0x3ff,%rax
    17b0:	c6 00 00             	movb   $0x0,(%rax)
    17b3:	eb 63                	jmp    1818 <print_unsigned+0x117>
    17b5:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    17b9:	48 ba cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rdx
    17c0:	cc cc cc 
    17c3:	48 89 c8             	mov    %rcx,%rax
    17c6:	48 f7 e2             	mul    %rdx
    17c9:	48 c1 ea 03          	shr    $0x3,%rdx
    17cd:	48 89 d0             	mov    %rdx,%rax
    17d0:	48 c1 e0 02          	shl    $0x2,%rax
    17d4:	48 01 d0             	add    %rdx,%rax
    17d7:	48 01 c0             	add    %rax,%rax
    17da:	48 29 c1             	sub    %rax,%rcx
    17dd:	48 89 ca             	mov    %rcx,%rdx
    17e0:	89 d0                	mov    %edx,%eax
    17e2:	8d 48 30             	lea    0x30(%rax),%ecx
    17e5:	8b 45 f4             	mov    -0xc(%rbp),%eax
    17e8:	8d 50 ff             	lea    -0x1(%rax),%edx
    17eb:	89 55 f4             	mov    %edx,-0xc(%rbp)
    17ee:	48 63 d0             	movslq %eax,%rdx
    17f1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    17f5:	48 01 d0             	add    %rdx,%rax
    17f8:	89 ca                	mov    %ecx,%edx
    17fa:	88 10                	mov    %dl,(%rax)
    17fc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1800:	48 ba cd cc cc cc cc 	movabs $0xcccccccccccccccd,%rdx
    1807:	cc cc cc 
    180a:	48 f7 e2             	mul    %rdx
    180d:	48 89 d0             	mov    %rdx,%rax
    1810:	48 c1 e8 03          	shr    $0x3,%rax
    1814:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1818:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    181d:	75 96                	jne    17b5 <print_unsigned+0xb4>
    181f:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    1823:	44 8b 45 d4          	mov    -0x2c(%rbp),%r8d
    1827:	8b 7d d8             	mov    -0x28(%rbp),%edi
    182a:	8b 4d dc             	mov    -0x24(%rbp),%ecx
    182d:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1831:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1834:	48 83 ec 08          	sub    $0x8,%rsp
    1838:	8b 75 d0             	mov    -0x30(%rbp),%esi
    183b:	56                   	push   %rsi
    183c:	45 89 c1             	mov    %r8d,%r9d
    183f:	41 89 f8             	mov    %edi,%r8d
    1842:	89 c6                	mov    %eax,%esi
    1844:	bf 00 00 00 00       	mov    $0x0,%edi
    1849:	e8 92 1d 00 00       	callq  35e0 <write_uint>
    184e:	48 83 c4 10          	add    $0x10,%rsp
    1852:	c9                   	leaveq 
    1853:	c3                   	retq   

0000000000001854 <print_octal>:
    1854:	f3 0f 1e fa          	endbr64 
    1858:	55                   	push   %rbp
    1859:	48 89 e5             	mov    %rsp,%rbp
    185c:	48 83 ec 40          	sub    $0x40,%rsp
    1860:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1864:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    1868:	89 55 cc             	mov    %edx,-0x34(%rbp)
    186b:	89 4d c8             	mov    %ecx,-0x38(%rbp)
    186e:	44 89 45 c4          	mov    %r8d,-0x3c(%rbp)
    1872:	44 89 4d c0          	mov    %r9d,-0x40(%rbp)
    1876:	c7 45 ec fe 03 00 00 	movl   $0x3fe,-0x14(%rbp)
    187d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1881:	8b 00                	mov    (%rax),%eax
    1883:	83 f8 2f             	cmp    $0x2f,%eax
    1886:	77 24                	ja     18ac <print_octal+0x58>
    1888:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    188c:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1890:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1894:	8b 00                	mov    (%rax),%eax
    1896:	89 c0                	mov    %eax,%eax
    1898:	48 01 d0             	add    %rdx,%rax
    189b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    189f:	8b 12                	mov    (%rdx),%edx
    18a1:	8d 4a 08             	lea    0x8(%rdx),%ecx
    18a4:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    18a8:	89 0a                	mov    %ecx,(%rdx)
    18aa:	eb 14                	jmp    18c0 <print_octal+0x6c>
    18ac:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    18b0:	48 8b 40 08          	mov    0x8(%rax),%rax
    18b4:	48 8d 48 08          	lea    0x8(%rax),%rcx
    18b8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    18bc:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    18c0:	48 8b 00             	mov    (%rax),%rax
    18c3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    18c7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    18cb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    18cf:	8b 55 c0             	mov    -0x40(%rbp),%edx
    18d2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    18d6:	89 d6                	mov    %edx,%esi
    18d8:	48 89 c7             	mov    %rax,%rdi
    18db:	e8 d9 17 00 00       	callq  30b9 <convert_size_unsgnd>
    18e0:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    18e4:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    18e9:	75 16                	jne    1901 <print_octal+0xad>
    18eb:	8b 45 ec             	mov    -0x14(%rbp),%eax
    18ee:	8d 50 ff             	lea    -0x1(%rax),%edx
    18f1:	89 55 ec             	mov    %edx,-0x14(%rbp)
    18f4:	48 63 d0             	movslq %eax,%rdx
    18f7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    18fb:	48 01 d0             	add    %rdx,%rax
    18fe:	c6 00 30             	movb   $0x30,(%rax)
    1901:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1905:	48 05 ff 03 00 00    	add    $0x3ff,%rax
    190b:	c6 00 00             	movb   $0x0,(%rax)
    190e:	eb 2d                	jmp    193d <print_octal+0xe9>
    1910:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1914:	83 e0 07             	and    $0x7,%eax
    1917:	8d 48 30             	lea    0x30(%rax),%ecx
    191a:	8b 45 ec             	mov    -0x14(%rbp),%eax
    191d:	8d 50 ff             	lea    -0x1(%rax),%edx
    1920:	89 55 ec             	mov    %edx,-0x14(%rbp)
    1923:	48 63 d0             	movslq %eax,%rdx
    1926:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    192a:	48 01 d0             	add    %rdx,%rax
    192d:	89 ca                	mov    %ecx,%edx
    192f:	88 10                	mov    %dl,(%rax)
    1931:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1935:	48 c1 e8 03          	shr    $0x3,%rax
    1939:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    193d:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    1942:	75 cc                	jne    1910 <print_octal+0xbc>
    1944:	8b 45 cc             	mov    -0x34(%rbp),%eax
    1947:	83 e0 08             	and    $0x8,%eax
    194a:	85 c0                	test   %eax,%eax
    194c:	74 1d                	je     196b <print_octal+0x117>
    194e:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1953:	74 16                	je     196b <print_octal+0x117>
    1955:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1958:	8d 50 ff             	lea    -0x1(%rax),%edx
    195b:	89 55 ec             	mov    %edx,-0x14(%rbp)
    195e:	48 63 d0             	movslq %eax,%rdx
    1961:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1965:	48 01 d0             	add    %rdx,%rax
    1968:	c6 00 30             	movb   $0x30,(%rax)
    196b:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    196f:	44 8b 45 c4          	mov    -0x3c(%rbp),%r8d
    1973:	8b 7d c8             	mov    -0x38(%rbp),%edi
    1976:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    1979:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    197d:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1980:	48 83 ec 08          	sub    $0x8,%rsp
    1984:	8b 75 c0             	mov    -0x40(%rbp),%esi
    1987:	56                   	push   %rsi
    1988:	45 89 c1             	mov    %r8d,%r9d
    198b:	41 89 f8             	mov    %edi,%r8d
    198e:	89 c6                	mov    %eax,%esi
    1990:	bf 00 00 00 00       	mov    $0x0,%edi
    1995:	e8 46 1c 00 00       	callq  35e0 <write_uint>
    199a:	48 83 c4 10          	add    $0x10,%rsp
    199e:	c9                   	leaveq 
    199f:	c3                   	retq   

00000000000019a0 <print_hexadecimal>:
    19a0:	f3 0f 1e fa          	endbr64 
    19a4:	55                   	push   %rbp
    19a5:	48 89 e5             	mov    %rsp,%rbp
    19a8:	48 83 ec 20          	sub    $0x20,%rsp
    19ac:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    19b0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    19b4:	89 55 ec             	mov    %edx,-0x14(%rbp)
    19b7:	89 4d e8             	mov    %ecx,-0x18(%rbp)
    19ba:	44 89 45 e4          	mov    %r8d,-0x1c(%rbp)
    19be:	44 89 4d e0          	mov    %r9d,-0x20(%rbp)
    19c2:	8b 7d e8             	mov    -0x18(%rbp),%edi
    19c5:	8b 4d ec             	mov    -0x14(%rbp),%ecx
    19c8:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    19cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    19d0:	8b 75 e0             	mov    -0x20(%rbp),%esi
    19d3:	56                   	push   %rsi
    19d4:	8b 75 e4             	mov    -0x1c(%rbp),%esi
    19d7:	56                   	push   %rsi
    19d8:	41 89 f9             	mov    %edi,%r9d
    19db:	41 b8 78 00 00 00    	mov    $0x78,%r8d
    19e1:	48 8d 35 2f 26 00 00 	lea    0x262f(%rip),%rsi        # 4017 <_IO_stdin_used+0x17>
    19e8:	48 89 c7             	mov    %rax,%rdi
    19eb:	e8 5c 00 00 00       	callq  1a4c <print_hexa>
    19f0:	48 83 c4 10          	add    $0x10,%rsp
    19f4:	c9                   	leaveq 
    19f5:	c3                   	retq   

00000000000019f6 <print_hexa_upper>:
    19f6:	f3 0f 1e fa          	endbr64 
    19fa:	55                   	push   %rbp
    19fb:	48 89 e5             	mov    %rsp,%rbp
    19fe:	48 83 ec 20          	sub    $0x20,%rsp
    1a02:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1a06:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1a0a:	89 55 ec             	mov    %edx,-0x14(%rbp)
    1a0d:	89 4d e8             	mov    %ecx,-0x18(%rbp)
    1a10:	44 89 45 e4          	mov    %r8d,-0x1c(%rbp)
    1a14:	44 89 4d e0          	mov    %r9d,-0x20(%rbp)
    1a18:	8b 7d e8             	mov    -0x18(%rbp),%edi
    1a1b:	8b 4d ec             	mov    -0x14(%rbp),%ecx
    1a1e:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1a22:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1a26:	8b 75 e0             	mov    -0x20(%rbp),%esi
    1a29:	56                   	push   %rsi
    1a2a:	8b 75 e4             	mov    -0x1c(%rbp),%esi
    1a2d:	56                   	push   %rsi
    1a2e:	41 89 f9             	mov    %edi,%r9d
    1a31:	41 b8 58 00 00 00    	mov    $0x58,%r8d
    1a37:	48 8d 35 ea 25 00 00 	lea    0x25ea(%rip),%rsi        # 4028 <_IO_stdin_used+0x28>
    1a3e:	48 89 c7             	mov    %rax,%rdi
    1a41:	e8 06 00 00 00       	callq  1a4c <print_hexa>
    1a46:	48 83 c4 10          	add    $0x10,%rsp
    1a4a:	c9                   	leaveq 
    1a4b:	c3                   	retq   

0000000000001a4c <print_hexa>:
    1a4c:	f3 0f 1e fa          	endbr64 
    1a50:	55                   	push   %rbp
    1a51:	48 89 e5             	mov    %rsp,%rbp
    1a54:	48 83 ec 50          	sub    $0x50,%rsp
    1a58:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1a5c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    1a60:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    1a64:	89 4d c4             	mov    %ecx,-0x3c(%rbp)
    1a67:	44 89 c0             	mov    %r8d,%eax
    1a6a:	44 89 4d bc          	mov    %r9d,-0x44(%rbp)
    1a6e:	88 45 c0             	mov    %al,-0x40(%rbp)
    1a71:	c7 45 ec fe 03 00 00 	movl   $0x3fe,-0x14(%rbp)
    1a78:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1a7c:	8b 00                	mov    (%rax),%eax
    1a7e:	83 f8 2f             	cmp    $0x2f,%eax
    1a81:	77 24                	ja     1aa7 <print_hexa+0x5b>
    1a83:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1a87:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1a8b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1a8f:	8b 00                	mov    (%rax),%eax
    1a91:	89 c0                	mov    %eax,%eax
    1a93:	48 01 d0             	add    %rdx,%rax
    1a96:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1a9a:	8b 12                	mov    (%rdx),%edx
    1a9c:	8d 4a 08             	lea    0x8(%rdx),%ecx
    1a9f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1aa3:	89 0a                	mov    %ecx,(%rdx)
    1aa5:	eb 14                	jmp    1abb <print_hexa+0x6f>
    1aa7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1aab:	48 8b 40 08          	mov    0x8(%rax),%rax
    1aaf:	48 8d 48 08          	lea    0x8(%rax),%rcx
    1ab3:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1ab7:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    1abb:	48 8b 00             	mov    (%rax),%rax
    1abe:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1ac2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1ac6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1aca:	8b 55 18             	mov    0x18(%rbp),%edx
    1acd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1ad1:	89 d6                	mov    %edx,%esi
    1ad3:	48 89 c7             	mov    %rax,%rdi
    1ad6:	e8 de 15 00 00       	callq  30b9 <convert_size_unsgnd>
    1adb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1adf:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    1ae4:	75 16                	jne    1afc <print_hexa+0xb0>
    1ae6:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1ae9:	8d 50 ff             	lea    -0x1(%rax),%edx
    1aec:	89 55 ec             	mov    %edx,-0x14(%rbp)
    1aef:	48 63 d0             	movslq %eax,%rdx
    1af2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1af6:	48 01 d0             	add    %rdx,%rax
    1af9:	c6 00 30             	movb   $0x30,(%rax)
    1afc:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1b00:	48 05 ff 03 00 00    	add    $0x3ff,%rax
    1b06:	c6 00 00             	movb   $0x0,(%rax)
    1b09:	eb 36                	jmp    1b41 <print_hexa+0xf5>
    1b0b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1b0f:	83 e0 0f             	and    $0xf,%eax
    1b12:	48 89 c2             	mov    %rax,%rdx
    1b15:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1b19:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    1b1d:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1b20:	8d 50 ff             	lea    -0x1(%rax),%edx
    1b23:	89 55 ec             	mov    %edx,-0x14(%rbp)
    1b26:	48 63 d0             	movslq %eax,%rdx
    1b29:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1b2d:	48 01 c2             	add    %rax,%rdx
    1b30:	0f b6 01             	movzbl (%rcx),%eax
    1b33:	88 02                	mov    %al,(%rdx)
    1b35:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1b39:	48 c1 e8 04          	shr    $0x4,%rax
    1b3d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1b41:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    1b46:	75 c3                	jne    1b0b <print_hexa+0xbf>
    1b48:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    1b4b:	83 e0 08             	and    $0x8,%eax
    1b4e:	85 c0                	test   %eax,%eax
    1b50:	74 36                	je     1b88 <print_hexa+0x13c>
    1b52:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1b57:	74 2f                	je     1b88 <print_hexa+0x13c>
    1b59:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1b5c:	8d 50 ff             	lea    -0x1(%rax),%edx
    1b5f:	89 55 ec             	mov    %edx,-0x14(%rbp)
    1b62:	48 63 d0             	movslq %eax,%rdx
    1b65:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1b69:	48 01 c2             	add    %rax,%rdx
    1b6c:	0f b6 45 c0          	movzbl -0x40(%rbp),%eax
    1b70:	88 02                	mov    %al,(%rdx)
    1b72:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1b75:	8d 50 ff             	lea    -0x1(%rax),%edx
    1b78:	89 55 ec             	mov    %edx,-0x14(%rbp)
    1b7b:	48 63 d0             	movslq %eax,%rdx
    1b7e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1b82:	48 01 d0             	add    %rdx,%rax
    1b85:	c6 00 30             	movb   $0x30,(%rax)
    1b88:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    1b8c:	8b 7d bc             	mov    -0x44(%rbp),%edi
    1b8f:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
    1b92:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    1b96:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1b99:	48 83 ec 08          	sub    $0x8,%rsp
    1b9d:	8b 75 18             	mov    0x18(%rbp),%esi
    1ba0:	56                   	push   %rsi
    1ba1:	44 8b 4d 10          	mov    0x10(%rbp),%r9d
    1ba5:	41 89 f8             	mov    %edi,%r8d
    1ba8:	89 c6                	mov    %eax,%esi
    1baa:	bf 00 00 00 00       	mov    $0x0,%edi
    1baf:	e8 2c 1a 00 00       	callq  35e0 <write_uint>
    1bb4:	48 83 c4 10          	add    $0x10,%rsp
    1bb8:	c9                   	leaveq 
    1bb9:	c3                   	retq   

0000000000001bba <print_pointer>:
    1bba:	f3 0f 1e fa          	endbr64 
    1bbe:	55                   	push   %rbp
    1bbf:	48 89 e5             	mov    %rsp,%rbp
    1bc2:	48 83 ec 60          	sub    $0x60,%rsp
    1bc6:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    1bca:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    1bce:	89 55 ac             	mov    %edx,-0x54(%rbp)
    1bd1:	89 4d a8             	mov    %ecx,-0x58(%rbp)
    1bd4:	44 89 45 a4          	mov    %r8d,-0x5c(%rbp)
    1bd8:	44 89 4d a0          	mov    %r9d,-0x60(%rbp)
    1bdc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1be3:	00 00 
    1be5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1be9:	31 c0                	xor    %eax,%eax
    1beb:	c6 45 c2 00          	movb   $0x0,-0x3e(%rbp)
    1bef:	c6 45 c3 20          	movb   $0x20,-0x3d(%rbp)
    1bf3:	c7 45 c4 fe 03 00 00 	movl   $0x3fe,-0x3c(%rbp)
    1bfa:	c7 45 c8 02 00 00 00 	movl   $0x2,-0x38(%rbp)
    1c01:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%rbp)
    1c08:	48 b8 30 31 32 33 34 	movabs $0x3736353433323130,%rax
    1c0f:	35 36 37 
    1c12:	48 ba 38 39 61 62 63 	movabs $0x6665646362613938,%rdx
    1c19:	64 65 66 
    1c1c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1c20:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    1c24:	c6 45 f0 00          	movb   $0x0,-0x10(%rbp)
    1c28:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1c2c:	8b 00                	mov    (%rax),%eax
    1c2e:	83 f8 2f             	cmp    $0x2f,%eax
    1c31:	77 24                	ja     1c57 <print_pointer+0x9d>
    1c33:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1c37:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1c3b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1c3f:	8b 00                	mov    (%rax),%eax
    1c41:	89 c0                	mov    %eax,%eax
    1c43:	48 01 d0             	add    %rdx,%rax
    1c46:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    1c4a:	8b 12                	mov    (%rdx),%edx
    1c4c:	8d 4a 08             	lea    0x8(%rdx),%ecx
    1c4f:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    1c53:	89 0a                	mov    %ecx,(%rdx)
    1c55:	eb 14                	jmp    1c6b <print_pointer+0xb1>
    1c57:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1c5b:	48 8b 40 08          	mov    0x8(%rax),%rax
    1c5f:	48 8d 48 08          	lea    0x8(%rax),%rcx
    1c63:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    1c67:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    1c6b:	48 8b 00             	mov    (%rax),%rax
    1c6e:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1c72:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    1c77:	75 1b                	jne    1c94 <print_pointer+0xda>
    1c79:	ba 05 00 00 00       	mov    $0x5,%edx
    1c7e:	48 8d 35 b4 23 00 00 	lea    0x23b4(%rip),%rsi        # 4039 <_IO_stdin_used+0x39>
    1c85:	bf 01 00 00 00       	mov    $0x1,%edi
    1c8a:	e8 e1 f3 ff ff       	callq  1070 <write@plt>
    1c8f:	e9 c4 00 00 00       	jmpq   1d58 <print_pointer+0x19e>
    1c94:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1c98:	48 05 ff 03 00 00    	add    $0x3ff,%rax
    1c9e:	c6 00 00             	movb   $0x0,(%rax)
    1ca1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1ca5:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1ca9:	eb 34                	jmp    1cdf <print_pointer+0x125>
    1cab:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1caf:	83 e0 0f             	and    $0xf,%eax
    1cb2:	48 89 c1             	mov    %rax,%rcx
    1cb5:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    1cb8:	8d 50 ff             	lea    -0x1(%rax),%edx
    1cbb:	89 55 c4             	mov    %edx,-0x3c(%rbp)
    1cbe:	48 63 d0             	movslq %eax,%rdx
    1cc1:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1cc5:	48 01 c2             	add    %rax,%rdx
    1cc8:	0f b6 44 0d e0       	movzbl -0x20(%rbp,%rcx,1),%eax
    1ccd:	88 02                	mov    %al,(%rdx)
    1ccf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1cd3:	48 c1 e8 04          	shr    $0x4,%rax
    1cd7:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1cdb:	83 45 c8 01          	addl   $0x1,-0x38(%rbp)
    1cdf:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    1ce4:	75 c5                	jne    1cab <print_pointer+0xf1>
    1ce6:	8b 45 ac             	mov    -0x54(%rbp),%eax
    1ce9:	83 e0 04             	and    $0x4,%eax
    1cec:	85 c0                	test   %eax,%eax
    1cee:	74 0e                	je     1cfe <print_pointer+0x144>
    1cf0:	8b 45 ac             	mov    -0x54(%rbp),%eax
    1cf3:	83 e0 01             	and    $0x1,%eax
    1cf6:	85 c0                	test   %eax,%eax
    1cf8:	75 04                	jne    1cfe <print_pointer+0x144>
    1cfa:	c6 45 c3 30          	movb   $0x30,-0x3d(%rbp)
    1cfe:	8b 45 ac             	mov    -0x54(%rbp),%eax
    1d01:	83 e0 02             	and    $0x2,%eax
    1d04:	85 c0                	test   %eax,%eax
    1d06:	74 0a                	je     1d12 <print_pointer+0x158>
    1d08:	c6 45 c2 2b          	movb   $0x2b,-0x3e(%rbp)
    1d0c:	83 45 c8 01          	addl   $0x1,-0x38(%rbp)
    1d10:	eb 12                	jmp    1d24 <print_pointer+0x16a>
    1d12:	8b 45 ac             	mov    -0x54(%rbp),%eax
    1d15:	83 e0 10             	and    $0x10,%eax
    1d18:	85 c0                	test   %eax,%eax
    1d1a:	74 08                	je     1d24 <print_pointer+0x16a>
    1d1c:	c6 45 c2 20          	movb   $0x20,-0x3e(%rbp)
    1d20:	83 45 c8 01          	addl   $0x1,-0x38(%rbp)
    1d24:	83 45 c4 01          	addl   $0x1,-0x3c(%rbp)
    1d28:	0f be 7d c2          	movsbl -0x3e(%rbp),%edi
    1d2c:	44 0f be 4d c3       	movsbl -0x3d(%rbp),%r9d
    1d31:	44 8b 55 ac          	mov    -0x54(%rbp),%r10d
    1d35:	8b 4d a8             	mov    -0x58(%rbp),%ecx
    1d38:	8b 55 c8             	mov    -0x38(%rbp),%edx
    1d3b:	8b 75 c4             	mov    -0x3c(%rbp),%esi
    1d3e:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1d42:	44 8b 45 cc          	mov    -0x34(%rbp),%r8d
    1d46:	41 50                	push   %r8
    1d48:	57                   	push   %rdi
    1d49:	45 89 d0             	mov    %r10d,%r8d
    1d4c:	48 89 c7             	mov    %rax,%rdi
    1d4f:	e8 35 1a 00 00       	callq  3789 <write_pointer>
    1d54:	48 83 c4 10          	add    $0x10,%rsp
    1d58:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    1d5c:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    1d63:	00 00 
    1d65:	74 05                	je     1d6c <print_pointer+0x1b2>
    1d67:	e8 14 f3 ff ff       	callq  1080 <__stack_chk_fail@plt>
    1d6c:	c9                   	leaveq 
    1d6d:	c3                   	retq   

0000000000001d6e <print_non_printable>:
    1d6e:	f3 0f 1e fa          	endbr64 
    1d72:	55                   	push   %rbp
    1d73:	48 89 e5             	mov    %rsp,%rbp
    1d76:	48 83 ec 30          	sub    $0x30,%rsp
    1d7a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1d7e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1d82:	89 55 dc             	mov    %edx,-0x24(%rbp)
    1d85:	89 4d d8             	mov    %ecx,-0x28(%rbp)
    1d88:	44 89 45 d4          	mov    %r8d,-0x2c(%rbp)
    1d8c:	44 89 4d d0          	mov    %r9d,-0x30(%rbp)
    1d90:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    1d97:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    1d9e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1da2:	8b 00                	mov    (%rax),%eax
    1da4:	83 f8 2f             	cmp    $0x2f,%eax
    1da7:	77 24                	ja     1dcd <print_non_printable+0x5f>
    1da9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1dad:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1db1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1db5:	8b 00                	mov    (%rax),%eax
    1db7:	89 c0                	mov    %eax,%eax
    1db9:	48 01 d0             	add    %rdx,%rax
    1dbc:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1dc0:	8b 12                	mov    (%rdx),%edx
    1dc2:	8d 4a 08             	lea    0x8(%rdx),%ecx
    1dc5:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1dc9:	89 0a                	mov    %ecx,(%rdx)
    1dcb:	eb 14                	jmp    1de1 <print_non_printable+0x73>
    1dcd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1dd1:	48 8b 40 08          	mov    0x8(%rax),%rax
    1dd5:	48 8d 48 08          	lea    0x8(%rax),%rcx
    1dd9:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1ddd:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    1de1:	48 8b 00             	mov    (%rax),%rax
    1de4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1de8:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1ded:	0f 85 8f 00 00 00    	jne    1e82 <print_non_printable+0x114>
    1df3:	ba 06 00 00 00       	mov    $0x6,%edx
    1df8:	48 8d 35 40 22 00 00 	lea    0x2240(%rip),%rsi        # 403f <_IO_stdin_used+0x3f>
    1dff:	bf 01 00 00 00       	mov    $0x1,%edi
    1e04:	e8 67 f2 ff ff       	callq  1070 <write@plt>
    1e09:	e9 bd 00 00 00       	jmpq   1ecb <print_non_printable+0x15d>
    1e0e:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1e11:	48 63 d0             	movslq %eax,%rdx
    1e14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e18:	48 01 d0             	add    %rdx,%rax
    1e1b:	0f b6 00             	movzbl (%rax),%eax
    1e1e:	0f be c0             	movsbl %al,%eax
    1e21:	89 c7                	mov    %eax,%edi
    1e23:	e8 18 11 00 00       	callq  2f40 <is_printable>
    1e28:	85 c0                	test   %eax,%eax
    1e2a:	74 26                	je     1e52 <print_non_printable+0xe4>
    1e2c:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1e2f:	48 63 d0             	movslq %eax,%rdx
    1e32:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e36:	48 01 d0             	add    %rdx,%rax
    1e39:	8b 4d f0             	mov    -0x10(%rbp),%ecx
    1e3c:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1e3f:	01 ca                	add    %ecx,%edx
    1e41:	48 63 ca             	movslq %edx,%rcx
    1e44:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1e48:	48 01 ca             	add    %rcx,%rdx
    1e4b:	0f b6 00             	movzbl (%rax),%eax
    1e4e:	88 02                	mov    %al,(%rdx)
    1e50:	eb 2c                	jmp    1e7e <print_non_printable+0x110>
    1e52:	8b 55 f0             	mov    -0x10(%rbp),%edx
    1e55:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1e58:	01 c2                	add    %eax,%edx
    1e5a:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1e5d:	48 63 c8             	movslq %eax,%rcx
    1e60:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e64:	48 01 c8             	add    %rcx,%rax
    1e67:	0f b6 00             	movzbl (%rax),%eax
    1e6a:	0f be c0             	movsbl %al,%eax
    1e6d:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    1e71:	48 89 ce             	mov    %rcx,%rsi
    1e74:	89 c7                	mov    %eax,%edi
    1e76:	e8 ec 10 00 00       	callq  2f67 <append_hexa_code>
    1e7b:	01 45 f4             	add    %eax,-0xc(%rbp)
    1e7e:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
    1e82:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1e85:	48 63 d0             	movslq %eax,%rdx
    1e88:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e8c:	48 01 d0             	add    %rdx,%rax
    1e8f:	0f b6 00             	movzbl (%rax),%eax
    1e92:	84 c0                	test   %al,%al
    1e94:	0f 85 74 ff ff ff    	jne    1e0e <print_non_printable+0xa0>
    1e9a:	8b 55 f0             	mov    -0x10(%rbp),%edx
    1e9d:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1ea0:	01 d0                	add    %edx,%eax
    1ea2:	48 63 d0             	movslq %eax,%rdx
    1ea5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1ea9:	48 01 d0             	add    %rdx,%rax
    1eac:	c6 00 00             	movb   $0x0,(%rax)
    1eaf:	8b 55 f0             	mov    -0x10(%rbp),%edx
    1eb2:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1eb5:	01 d0                	add    %edx,%eax
    1eb7:	48 63 d0             	movslq %eax,%rdx
    1eba:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1ebe:	48 89 c6             	mov    %rax,%rsi
    1ec1:	bf 01 00 00 00       	mov    $0x1,%edi
    1ec6:	e8 a5 f1 ff ff       	callq  1070 <write@plt>
    1ecb:	c9                   	leaveq 
    1ecc:	c3                   	retq   

0000000000001ecd <print_reverse>:
    1ecd:	f3 0f 1e fa          	endbr64 
    1ed1:	55                   	push   %rbp
    1ed2:	48 89 e5             	mov    %rsp,%rbp
    1ed5:	48 83 ec 40          	sub    $0x40,%rsp
    1ed9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1edd:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    1ee1:	89 55 cc             	mov    %edx,-0x34(%rbp)
    1ee4:	89 4d c8             	mov    %ecx,-0x38(%rbp)
    1ee7:	44 89 45 c4          	mov    %r8d,-0x3c(%rbp)
    1eeb:	44 89 4d c0          	mov    %r9d,-0x40(%rbp)
    1eef:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1ef6:	00 00 
    1ef8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1efc:	31 c0                	xor    %eax,%eax
    1efe:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    1f05:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1f09:	8b 00                	mov    (%rax),%eax
    1f0b:	83 f8 2f             	cmp    $0x2f,%eax
    1f0e:	77 24                	ja     1f34 <print_reverse+0x67>
    1f10:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1f14:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1f18:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1f1c:	8b 00                	mov    (%rax),%eax
    1f1e:	89 c0                	mov    %eax,%eax
    1f20:	48 01 d0             	add    %rdx,%rax
    1f23:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1f27:	8b 12                	mov    (%rdx),%edx
    1f29:	8d 4a 08             	lea    0x8(%rdx),%ecx
    1f2c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1f30:	89 0a                	mov    %ecx,(%rdx)
    1f32:	eb 14                	jmp    1f48 <print_reverse+0x7b>
    1f34:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1f38:	48 8b 40 08          	mov    0x8(%rax),%rax
    1f3c:	48 8d 48 08          	lea    0x8(%rax),%rcx
    1f40:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1f44:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    1f48:	48 8b 00             	mov    (%rax),%rax
    1f4b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1f4f:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    1f54:	75 0b                	jne    1f61 <print_reverse+0x94>
    1f56:	48 8d 05 e9 20 00 00 	lea    0x20e9(%rip),%rax        # 4046 <_IO_stdin_used+0x46>
    1f5d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1f61:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    1f68:	eb 04                	jmp    1f6e <print_reverse+0xa1>
    1f6a:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    1f6e:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1f71:	48 63 d0             	movslq %eax,%rdx
    1f74:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1f78:	48 01 d0             	add    %rdx,%rax
    1f7b:	0f b6 00             	movzbl (%rax),%eax
    1f7e:	84 c0                	test   %al,%al
    1f80:	75 e8                	jne    1f6a <print_reverse+0x9d>
    1f82:	83 6d e8 01          	subl   $0x1,-0x18(%rbp)
    1f86:	eb 31                	jmp    1fb9 <print_reverse+0xec>
    1f88:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1f8b:	48 63 d0             	movslq %eax,%rdx
    1f8e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1f92:	48 01 d0             	add    %rdx,%rax
    1f95:	0f b6 00             	movzbl (%rax),%eax
    1f98:	88 45 e7             	mov    %al,-0x19(%rbp)
    1f9b:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    1f9f:	ba 01 00 00 00       	mov    $0x1,%edx
    1fa4:	48 89 c6             	mov    %rax,%rsi
    1fa7:	bf 01 00 00 00       	mov    $0x1,%edi
    1fac:	e8 bf f0 ff ff       	callq  1070 <write@plt>
    1fb1:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    1fb5:	83 6d e8 01          	subl   $0x1,-0x18(%rbp)
    1fb9:	83 7d e8 00          	cmpl   $0x0,-0x18(%rbp)
    1fbd:	79 c9                	jns    1f88 <print_reverse+0xbb>
    1fbf:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1fc2:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    1fc6:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    1fcd:	00 00 
    1fcf:	74 05                	je     1fd6 <print_reverse+0x109>
    1fd1:	e8 aa f0 ff ff       	callq  1080 <__stack_chk_fail@plt>
    1fd6:	c9                   	leaveq 
    1fd7:	c3                   	retq   

0000000000001fd8 <print_rot13string>:
    1fd8:	f3 0f 1e fa          	endbr64 
    1fdc:	55                   	push   %rbp
    1fdd:	48 89 e5             	mov    %rsp,%rbp
    1fe0:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
    1fe7:	48 89 bd 58 ff ff ff 	mov    %rdi,-0xa8(%rbp)
    1fee:	48 89 b5 50 ff ff ff 	mov    %rsi,-0xb0(%rbp)
    1ff5:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%rbp)
    1ffb:	89 8d 48 ff ff ff    	mov    %ecx,-0xb8(%rbp)
    2001:	44 89 85 44 ff ff ff 	mov    %r8d,-0xbc(%rbp)
    2008:	44 89 8d 40 ff ff ff 	mov    %r9d,-0xc0(%rbp)
    200f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2016:	00 00 
    2018:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    201c:	31 c0                	xor    %eax,%eax
    201e:	c7 85 74 ff ff ff 00 	movl   $0x0,-0x8c(%rbp)
    2025:	00 00 00 
    2028:	48 b8 41 42 43 44 45 	movabs $0x4847464544434241,%rax
    202f:	46 47 48 
    2032:	48 ba 49 4a 4b 4c 4d 	movabs $0x504f4e4d4c4b4a49,%rdx
    2039:	4e 4f 50 
    203c:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    2040:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
    2044:	48 b8 51 52 53 54 55 	movabs $0x5857565554535251,%rax
    204b:	56 57 58 
    204e:	48 ba 59 5a 61 62 63 	movabs $0x6665646362615a59,%rdx
    2055:	64 65 66 
    2058:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    205c:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
    2060:	48 b8 67 68 69 6a 6b 	movabs $0x6e6d6c6b6a696867,%rax
    2067:	6c 6d 6e 
    206a:	48 ba 6f 70 71 72 73 	movabs $0x767574737271706f,%rdx
    2071:	74 75 76 
    2074:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    2078:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
    207c:	c7 45 b0 77 78 79 7a 	movl   $0x7a797877,-0x50(%rbp)
    2083:	c6 45 b4 00          	movb   $0x0,-0x4c(%rbp)
    2087:	48 b8 4e 4f 50 51 52 	movabs $0x5554535251504f4e,%rax
    208e:	53 54 55 
    2091:	48 ba 56 57 58 59 5a 	movabs $0x4342415a59585756,%rdx
    2098:	41 42 43 
    209b:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    209f:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    20a3:	48 b8 44 45 46 47 48 	movabs $0x4b4a494847464544,%rax
    20aa:	49 4a 4b 
    20ad:	48 ba 4c 4d 6e 6f 70 	movabs $0x737271706f6e4d4c,%rdx
    20b4:	71 72 73 
    20b7:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    20bb:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    20bf:	48 b8 74 75 76 77 78 	movabs $0x617a797877767574,%rax
    20c6:	79 7a 61 
    20c9:	48 ba 62 63 64 65 66 	movabs $0x6968676665646362,%rdx
    20d0:	67 68 69 
    20d3:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    20d7:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    20db:	c7 45 f0 6a 6b 6c 6d 	movl   $0x6d6c6b6a,-0x10(%rbp)
    20e2:	c6 45 f4 00          	movb   $0x0,-0xc(%rbp)
    20e6:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    20ed:	8b 00                	mov    (%rax),%eax
    20ef:	83 f8 2f             	cmp    $0x2f,%eax
    20f2:	77 30                	ja     2124 <print_rot13string+0x14c>
    20f4:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    20fb:	48 8b 50 10          	mov    0x10(%rax),%rdx
    20ff:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    2106:	8b 00                	mov    (%rax),%eax
    2108:	89 c0                	mov    %eax,%eax
    210a:	48 01 d0             	add    %rdx,%rax
    210d:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
    2114:	8b 12                	mov    (%rdx),%edx
    2116:	8d 4a 08             	lea    0x8(%rdx),%ecx
    2119:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
    2120:	89 0a                	mov    %ecx,(%rdx)
    2122:	eb 1a                	jmp    213e <print_rot13string+0x166>
    2124:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    212b:	48 8b 40 08          	mov    0x8(%rax),%rax
    212f:	48 8d 48 08          	lea    0x8(%rax),%rcx
    2133:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
    213a:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    213e:	48 8b 00             	mov    (%rax),%rax
    2141:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    2148:	48 83 bd 78 ff ff ff 	cmpq   $0x0,-0x88(%rbp)
    214f:	00 
    2150:	75 0e                	jne    2160 <print_rot13string+0x188>
    2152:	48 8d 05 f4 1e 00 00 	lea    0x1ef4(%rip),%rax        # 404d <_IO_stdin_used+0x4d>
    2159:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    2160:	c7 85 6c ff ff ff 00 	movl   $0x0,-0x94(%rbp)
    2167:	00 00 00 
    216a:	e9 c6 00 00 00       	jmpq   2235 <print_rot13string+0x25d>
    216f:	c7 85 70 ff ff ff 00 	movl   $0x0,-0x90(%rbp)
    2176:	00 00 00 
    2179:	eb 5c                	jmp    21d7 <print_rot13string+0x1ff>
    217b:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
    2181:	0f b6 54 05 80       	movzbl -0x80(%rbp,%rax,1),%edx
    2186:	8b 8d 6c ff ff ff    	mov    -0x94(%rbp),%ecx
    218c:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    2193:	48 01 c8             	add    %rcx,%rax
    2196:	0f b6 00             	movzbl (%rax),%eax
    2199:	38 c2                	cmp    %al,%dl
    219b:	75 33                	jne    21d0 <print_rot13string+0x1f8>
    219d:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
    21a3:	0f b6 44 05 c0       	movzbl -0x40(%rbp,%rax,1),%eax
    21a8:	88 85 6b ff ff ff    	mov    %al,-0x95(%rbp)
    21ae:	48 8d 85 6b ff ff ff 	lea    -0x95(%rbp),%rax
    21b5:	ba 01 00 00 00       	mov    $0x1,%edx
    21ba:	48 89 c6             	mov    %rax,%rsi
    21bd:	bf 01 00 00 00       	mov    $0x1,%edi
    21c2:	e8 a9 ee ff ff       	callq  1070 <write@plt>
    21c7:	83 85 74 ff ff ff 01 	addl   $0x1,-0x8c(%rbp)
    21ce:	eb 16                	jmp    21e6 <print_rot13string+0x20e>
    21d0:	83 85 70 ff ff ff 01 	addl   $0x1,-0x90(%rbp)
    21d7:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
    21dd:	0f b6 44 05 80       	movzbl -0x80(%rbp,%rax,1),%eax
    21e2:	84 c0                	test   %al,%al
    21e4:	75 95                	jne    217b <print_rot13string+0x1a3>
    21e6:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
    21ec:	0f b6 44 05 80       	movzbl -0x80(%rbp,%rax,1),%eax
    21f1:	84 c0                	test   %al,%al
    21f3:	75 39                	jne    222e <print_rot13string+0x256>
    21f5:	8b 95 6c ff ff ff    	mov    -0x94(%rbp),%edx
    21fb:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    2202:	48 01 d0             	add    %rdx,%rax
    2205:	0f b6 00             	movzbl (%rax),%eax
    2208:	88 85 6b ff ff ff    	mov    %al,-0x95(%rbp)
    220e:	48 8d 85 6b ff ff ff 	lea    -0x95(%rbp),%rax
    2215:	ba 01 00 00 00       	mov    $0x1,%edx
    221a:	48 89 c6             	mov    %rax,%rsi
    221d:	bf 01 00 00 00       	mov    $0x1,%edi
    2222:	e8 49 ee ff ff       	callq  1070 <write@plt>
    2227:	83 85 74 ff ff ff 01 	addl   $0x1,-0x8c(%rbp)
    222e:	83 85 6c ff ff ff 01 	addl   $0x1,-0x94(%rbp)
    2235:	8b 95 6c ff ff ff    	mov    -0x94(%rbp),%edx
    223b:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    2242:	48 01 d0             	add    %rdx,%rax
    2245:	0f b6 00             	movzbl (%rax),%eax
    2248:	84 c0                	test   %al,%al
    224a:	0f 85 1f ff ff ff    	jne    216f <print_rot13string+0x197>
    2250:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
    2256:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    225a:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    2261:	00 00 
    2263:	74 05                	je     226a <print_rot13string+0x292>
    2265:	e8 16 ee ff ff       	callq  1080 <__stack_chk_fail@plt>
    226a:	c9                   	leaveq 
    226b:	c3                   	retq   

000000000000226c <get_flags>:
    226c:	f3 0f 1e fa          	endbr64 
    2270:	55                   	push   %rbp
    2271:	48 89 e5             	mov    %rsp,%rbp
    2274:	48 83 ec 50          	sub    $0x50,%rsp
    2278:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    227c:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    2280:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2287:	00 00 
    2289:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    228d:	31 c0                	xor    %eax,%eax
    228f:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
    2296:	c7 45 f2 2d 2b 30 23 	movl   $0x23302b2d,-0xe(%rbp)
    229d:	66 c7 45 f6 20 00    	movw   $0x20,-0xa(%rbp)
    22a3:	c7 45 d0 01 00 00 00 	movl   $0x1,-0x30(%rbp)
    22aa:	c7 45 d4 02 00 00 00 	movl   $0x2,-0x2c(%rbp)
    22b1:	c7 45 d8 04 00 00 00 	movl   $0x4,-0x28(%rbp)
    22b8:	c7 45 dc 08 00 00 00 	movl   $0x8,-0x24(%rbp)
    22bf:	c7 45 e0 10 00 00 00 	movl   $0x10,-0x20(%rbp)
    22c6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    22cd:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    22d1:	8b 00                	mov    (%rax),%eax
    22d3:	83 c0 01             	add    $0x1,%eax
    22d6:	89 45 c8             	mov    %eax,-0x38(%rbp)
    22d9:	eb 59                	jmp    2334 <get_flags+0xc8>
    22db:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%rbp)
    22e2:	eb 30                	jmp    2314 <get_flags+0xa8>
    22e4:	8b 45 c8             	mov    -0x38(%rbp),%eax
    22e7:	48 63 d0             	movslq %eax,%rdx
    22ea:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    22ee:	48 01 d0             	add    %rdx,%rax
    22f1:	0f b6 10             	movzbl (%rax),%edx
    22f4:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    22f7:	48 98                	cltq   
    22f9:	0f b6 44 05 f2       	movzbl -0xe(%rbp,%rax,1),%eax
    22fe:	38 c2                	cmp    %al,%dl
    2300:	75 0e                	jne    2310 <get_flags+0xa4>
    2302:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    2305:	48 98                	cltq   
    2307:	8b 44 85 d0          	mov    -0x30(%rbp,%rax,4),%eax
    230b:	09 45 cc             	or     %eax,-0x34(%rbp)
    230e:	eb 12                	jmp    2322 <get_flags+0xb6>
    2310:	83 45 c4 01          	addl   $0x1,-0x3c(%rbp)
    2314:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    2317:	48 98                	cltq   
    2319:	0f b6 44 05 f2       	movzbl -0xe(%rbp,%rax,1),%eax
    231e:	84 c0                	test   %al,%al
    2320:	75 c2                	jne    22e4 <get_flags+0x78>
    2322:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    2325:	48 98                	cltq   
    2327:	0f b6 44 05 f2       	movzbl -0xe(%rbp,%rax,1),%eax
    232c:	84 c0                	test   %al,%al
    232e:	74 1a                	je     234a <get_flags+0xde>
    2330:	83 45 c8 01          	addl   $0x1,-0x38(%rbp)
    2334:	8b 45 c8             	mov    -0x38(%rbp),%eax
    2337:	48 63 d0             	movslq %eax,%rdx
    233a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    233e:	48 01 d0             	add    %rdx,%rax
    2341:	0f b6 00             	movzbl (%rax),%eax
    2344:	84 c0                	test   %al,%al
    2346:	75 93                	jne    22db <get_flags+0x6f>
    2348:	eb 01                	jmp    234b <get_flags+0xdf>
    234a:	90                   	nop
    234b:	8b 45 c8             	mov    -0x38(%rbp),%eax
    234e:	8d 50 ff             	lea    -0x1(%rax),%edx
    2351:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    2355:	89 10                	mov    %edx,(%rax)
    2357:	8b 45 cc             	mov    -0x34(%rbp),%eax
    235a:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    235e:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2365:	00 00 
    2367:	74 05                	je     236e <get_flags+0x102>
    2369:	e8 12 ed ff ff       	callq  1080 <__stack_chk_fail@plt>
    236e:	c9                   	leaveq 
    236f:	c3                   	retq   

0000000000002370 <get_precision>:
    2370:	f3 0f 1e fa          	endbr64 
    2374:	55                   	push   %rbp
    2375:	48 89 e5             	mov    %rsp,%rbp
    2378:	48 83 ec 30          	sub    $0x30,%rsp
    237c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2380:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    2384:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    2388:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    238c:	8b 00                	mov    (%rax),%eax
    238e:	83 c0 01             	add    $0x1,%eax
    2391:	89 45 f8             	mov    %eax,-0x8(%rbp)
    2394:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
    239b:	8b 45 f8             	mov    -0x8(%rbp),%eax
    239e:	48 63 d0             	movslq %eax,%rdx
    23a1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    23a5:	48 01 d0             	add    %rdx,%rax
    23a8:	0f b6 00             	movzbl (%rax),%eax
    23ab:	3c 2e                	cmp    $0x2e,%al
    23ad:	74 08                	je     23b7 <get_precision+0x47>
    23af:	8b 45 fc             	mov    -0x4(%rbp),%eax
    23b2:	e9 e8 00 00 00       	jmpq   249f <get_precision+0x12f>
    23b7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    23be:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    23c2:	e9 ae 00 00 00       	jmpq   2475 <get_precision+0x105>
    23c7:	8b 45 f8             	mov    -0x8(%rbp),%eax
    23ca:	48 63 d0             	movslq %eax,%rdx
    23cd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    23d1:	48 01 d0             	add    %rdx,%rax
    23d4:	0f b6 00             	movzbl (%rax),%eax
    23d7:	0f be c0             	movsbl %al,%eax
    23da:	89 c7                	mov    %eax,%edi
    23dc:	e8 7e 0c 00 00       	callq  305f <is_digit>
    23e1:	85 c0                	test   %eax,%eax
    23e3:	74 2a                	je     240f <get_precision+0x9f>
    23e5:	8b 55 fc             	mov    -0x4(%rbp),%edx
    23e8:	89 d0                	mov    %edx,%eax
    23ea:	c1 e0 02             	shl    $0x2,%eax
    23ed:	01 d0                	add    %edx,%eax
    23ef:	01 c0                	add    %eax,%eax
    23f1:	89 45 fc             	mov    %eax,-0x4(%rbp)
    23f4:	8b 45 f8             	mov    -0x8(%rbp),%eax
    23f7:	48 63 d0             	movslq %eax,%rdx
    23fa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    23fe:	48 01 d0             	add    %rdx,%rax
    2401:	0f b6 00             	movzbl (%rax),%eax
    2404:	0f be c0             	movsbl %al,%eax
    2407:	83 e8 30             	sub    $0x30,%eax
    240a:	01 45 fc             	add    %eax,-0x4(%rbp)
    240d:	eb 62                	jmp    2471 <get_precision+0x101>
    240f:	8b 45 f8             	mov    -0x8(%rbp),%eax
    2412:	48 63 d0             	movslq %eax,%rdx
    2415:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2419:	48 01 d0             	add    %rdx,%rax
    241c:	0f b6 00             	movzbl (%rax),%eax
    241f:	3c 2a                	cmp    $0x2a,%al
    2421:	75 6c                	jne    248f <get_precision+0x11f>
    2423:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    2427:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    242b:	8b 00                	mov    (%rax),%eax
    242d:	83 f8 2f             	cmp    $0x2f,%eax
    2430:	77 24                	ja     2456 <get_precision+0xe6>
    2432:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2436:	48 8b 50 10          	mov    0x10(%rax),%rdx
    243a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    243e:	8b 00                	mov    (%rax),%eax
    2440:	89 c0                	mov    %eax,%eax
    2442:	48 01 d0             	add    %rdx,%rax
    2445:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    2449:	8b 12                	mov    (%rdx),%edx
    244b:	8d 4a 08             	lea    0x8(%rdx),%ecx
    244e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    2452:	89 0a                	mov    %ecx,(%rdx)
    2454:	eb 14                	jmp    246a <get_precision+0xfa>
    2456:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    245a:	48 8b 40 08          	mov    0x8(%rax),%rax
    245e:	48 8d 48 08          	lea    0x8(%rax),%rcx
    2462:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    2466:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    246a:	8b 00                	mov    (%rax),%eax
    246c:	89 45 fc             	mov    %eax,-0x4(%rbp)
    246f:	eb 1f                	jmp    2490 <get_precision+0x120>
    2471:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    2475:	8b 45 f8             	mov    -0x8(%rbp),%eax
    2478:	48 63 d0             	movslq %eax,%rdx
    247b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    247f:	48 01 d0             	add    %rdx,%rax
    2482:	0f b6 00             	movzbl (%rax),%eax
    2485:	84 c0                	test   %al,%al
    2487:	0f 85 3a ff ff ff    	jne    23c7 <get_precision+0x57>
    248d:	eb 01                	jmp    2490 <get_precision+0x120>
    248f:	90                   	nop
    2490:	8b 45 f8             	mov    -0x8(%rbp),%eax
    2493:	8d 50 ff             	lea    -0x1(%rax),%edx
    2496:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    249a:	89 10                	mov    %edx,(%rax)
    249c:	8b 45 fc             	mov    -0x4(%rbp),%eax
    249f:	c9                   	leaveq 
    24a0:	c3                   	retq   

00000000000024a1 <get_size>:
    24a1:	f3 0f 1e fa          	endbr64 
    24a5:	55                   	push   %rbp
    24a6:	48 89 e5             	mov    %rsp,%rbp
    24a9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    24ad:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    24b1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    24b5:	8b 00                	mov    (%rax),%eax
    24b7:	83 c0 01             	add    $0x1,%eax
    24ba:	89 45 fc             	mov    %eax,-0x4(%rbp)
    24bd:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    24c4:	8b 45 fc             	mov    -0x4(%rbp),%eax
    24c7:	48 63 d0             	movslq %eax,%rdx
    24ca:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    24ce:	48 01 d0             	add    %rdx,%rax
    24d1:	0f b6 00             	movzbl (%rax),%eax
    24d4:	3c 6c                	cmp    $0x6c,%al
    24d6:	75 09                	jne    24e1 <get_size+0x40>
    24d8:	c7 45 f8 02 00 00 00 	movl   $0x2,-0x8(%rbp)
    24df:	eb 1b                	jmp    24fc <get_size+0x5b>
    24e1:	8b 45 fc             	mov    -0x4(%rbp),%eax
    24e4:	48 63 d0             	movslq %eax,%rdx
    24e7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    24eb:	48 01 d0             	add    %rdx,%rax
    24ee:	0f b6 00             	movzbl (%rax),%eax
    24f1:	3c 68                	cmp    $0x68,%al
    24f3:	75 07                	jne    24fc <get_size+0x5b>
    24f5:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
    24fc:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
    2500:	75 0e                	jne    2510 <get_size+0x6f>
    2502:	8b 45 fc             	mov    -0x4(%rbp),%eax
    2505:	8d 50 ff             	lea    -0x1(%rax),%edx
    2508:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    250c:	89 10                	mov    %edx,(%rax)
    250e:	eb 09                	jmp    2519 <get_size+0x78>
    2510:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2514:	8b 55 fc             	mov    -0x4(%rbp),%edx
    2517:	89 10                	mov    %edx,(%rax)
    2519:	8b 45 f8             	mov    -0x8(%rbp),%eax
    251c:	5d                   	pop    %rbp
    251d:	c3                   	retq   

000000000000251e <get_width>:
    251e:	f3 0f 1e fa          	endbr64 
    2522:	55                   	push   %rbp
    2523:	48 89 e5             	mov    %rsp,%rbp
    2526:	48 83 ec 30          	sub    $0x30,%rsp
    252a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    252e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    2532:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    2536:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    253d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2541:	8b 00                	mov    (%rax),%eax
    2543:	83 c0 01             	add    $0x1,%eax
    2546:	89 45 f8             	mov    %eax,-0x8(%rbp)
    2549:	e9 ae 00 00 00       	jmpq   25fc <get_width+0xde>
    254e:	8b 45 f8             	mov    -0x8(%rbp),%eax
    2551:	48 63 d0             	movslq %eax,%rdx
    2554:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2558:	48 01 d0             	add    %rdx,%rax
    255b:	0f b6 00             	movzbl (%rax),%eax
    255e:	0f be c0             	movsbl %al,%eax
    2561:	89 c7                	mov    %eax,%edi
    2563:	e8 f7 0a 00 00       	callq  305f <is_digit>
    2568:	85 c0                	test   %eax,%eax
    256a:	74 2a                	je     2596 <get_width+0x78>
    256c:	8b 55 fc             	mov    -0x4(%rbp),%edx
    256f:	89 d0                	mov    %edx,%eax
    2571:	c1 e0 02             	shl    $0x2,%eax
    2574:	01 d0                	add    %edx,%eax
    2576:	01 c0                	add    %eax,%eax
    2578:	89 45 fc             	mov    %eax,-0x4(%rbp)
    257b:	8b 45 f8             	mov    -0x8(%rbp),%eax
    257e:	48 63 d0             	movslq %eax,%rdx
    2581:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2585:	48 01 d0             	add    %rdx,%rax
    2588:	0f b6 00             	movzbl (%rax),%eax
    258b:	0f be c0             	movsbl %al,%eax
    258e:	83 e8 30             	sub    $0x30,%eax
    2591:	01 45 fc             	add    %eax,-0x4(%rbp)
    2594:	eb 62                	jmp    25f8 <get_width+0xda>
    2596:	8b 45 f8             	mov    -0x8(%rbp),%eax
    2599:	48 63 d0             	movslq %eax,%rdx
    259c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    25a0:	48 01 d0             	add    %rdx,%rax
    25a3:	0f b6 00             	movzbl (%rax),%eax
    25a6:	3c 2a                	cmp    $0x2a,%al
    25a8:	75 6c                	jne    2616 <get_width+0xf8>
    25aa:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    25ae:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    25b2:	8b 00                	mov    (%rax),%eax
    25b4:	83 f8 2f             	cmp    $0x2f,%eax
    25b7:	77 24                	ja     25dd <get_width+0xbf>
    25b9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    25bd:	48 8b 50 10          	mov    0x10(%rax),%rdx
    25c1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    25c5:	8b 00                	mov    (%rax),%eax
    25c7:	89 c0                	mov    %eax,%eax
    25c9:	48 01 d0             	add    %rdx,%rax
    25cc:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    25d0:	8b 12                	mov    (%rdx),%edx
    25d2:	8d 4a 08             	lea    0x8(%rdx),%ecx
    25d5:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    25d9:	89 0a                	mov    %ecx,(%rdx)
    25db:	eb 14                	jmp    25f1 <get_width+0xd3>
    25dd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    25e1:	48 8b 40 08          	mov    0x8(%rax),%rax
    25e5:	48 8d 48 08          	lea    0x8(%rax),%rcx
    25e9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    25ed:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    25f1:	8b 00                	mov    (%rax),%eax
    25f3:	89 45 fc             	mov    %eax,-0x4(%rbp)
    25f6:	eb 1f                	jmp    2617 <get_width+0xf9>
    25f8:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    25fc:	8b 45 f8             	mov    -0x8(%rbp),%eax
    25ff:	48 63 d0             	movslq %eax,%rdx
    2602:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2606:	48 01 d0             	add    %rdx,%rax
    2609:	0f b6 00             	movzbl (%rax),%eax
    260c:	84 c0                	test   %al,%al
    260e:	0f 85 3a ff ff ff    	jne    254e <get_width+0x30>
    2614:	eb 01                	jmp    2617 <get_width+0xf9>
    2616:	90                   	nop
    2617:	8b 45 f8             	mov    -0x8(%rbp),%eax
    261a:	8d 50 ff             	lea    -0x1(%rax),%edx
    261d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2621:	89 10                	mov    %edx,(%rax)
    2623:	8b 45 fc             	mov    -0x4(%rbp),%eax
    2626:	c9                   	leaveq 
    2627:	c3                   	retq   

0000000000002628 <handle_print>:
    2628:	f3 0f 1e fa          	endbr64 
    262c:	55                   	push   %rbp
    262d:	48 89 e5             	mov    %rsp,%rbp
    2630:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
    2637:	48 89 bd e8 fe ff ff 	mov    %rdi,-0x118(%rbp)
    263e:	48 89 b5 e0 fe ff ff 	mov    %rsi,-0x120(%rbp)
    2645:	48 89 95 d8 fe ff ff 	mov    %rdx,-0x128(%rbp)
    264c:	48 89 8d d0 fe ff ff 	mov    %rcx,-0x130(%rbp)
    2653:	44 89 85 cc fe ff ff 	mov    %r8d,-0x134(%rbp)
    265a:	44 89 8d c8 fe ff ff 	mov    %r9d,-0x138(%rbp)
    2661:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2668:	00 00 
    266a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    266e:	31 c0                	xor    %eax,%eax
    2670:	c7 85 f8 fe ff ff 00 	movl   $0x0,-0x108(%rbp)
    2677:	00 00 00 
    267a:	c7 85 fc fe ff ff ff 	movl   $0xffffffff,-0x104(%rbp)
    2681:	ff ff ff 
    2684:	c6 85 00 ff ff ff 63 	movb   $0x63,-0x100(%rbp)
    268b:	48 8d 05 f7 ea ff ff 	lea    -0x1509(%rip),%rax        # 1189 <print_c>
    2692:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
    2699:	c6 85 10 ff ff ff 73 	movb   $0x73,-0xf0(%rbp)
    26a0:	48 8d 05 70 eb ff ff 	lea    -0x1490(%rip),%rax        # 1217 <print_s>
    26a7:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
    26ae:	c6 85 20 ff ff ff 25 	movb   $0x25,-0xe0(%rbp)
    26b5:	48 8d 05 dc ec ff ff 	lea    -0x1324(%rip),%rax        # 1398 <print_percentage>
    26bc:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
    26c3:	c6 85 30 ff ff ff 69 	movb   $0x69,-0xd0(%rbp)
    26ca:	48 8d 05 01 ed ff ff 	lea    -0x12ff(%rip),%rax        # 13d2 <print_int>
    26d1:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
    26d8:	c6 85 40 ff ff ff 64 	movb   $0x64,-0xc0(%rbp)
    26df:	48 8d 05 ec ec ff ff 	lea    -0x1314(%rip),%rax        # 13d2 <print_int>
    26e6:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
    26ed:	c6 85 50 ff ff ff 62 	movb   $0x62,-0xb0(%rbp)
    26f4:	48 8d 05 4b ee ff ff 	lea    -0x11b5(%rip),%rax        # 1546 <print_binary>
    26fb:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
    2702:	c6 85 60 ff ff ff 75 	movb   $0x75,-0xa0(%rbp)
    2709:	48 8d 05 f1 ef ff ff 	lea    -0x100f(%rip),%rax        # 1701 <print_unsigned>
    2710:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    2717:	c6 85 70 ff ff ff 6f 	movb   $0x6f,-0x90(%rbp)
    271e:	48 8d 05 2f f1 ff ff 	lea    -0xed1(%rip),%rax        # 1854 <print_octal>
    2725:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    272c:	c6 45 80 78          	movb   $0x78,-0x80(%rbp)
    2730:	48 8d 05 69 f2 ff ff 	lea    -0xd97(%rip),%rax        # 19a0 <print_hexadecimal>
    2737:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    273b:	c6 45 90 58          	movb   $0x58,-0x70(%rbp)
    273f:	48 8d 05 b0 f2 ff ff 	lea    -0xd50(%rip),%rax        # 19f6 <print_hexa_upper>
    2746:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    274a:	c6 45 a0 70          	movb   $0x70,-0x60(%rbp)
    274e:	48 8d 05 65 f4 ff ff 	lea    -0xb9b(%rip),%rax        # 1bba <print_pointer>
    2755:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    2759:	c6 45 b0 53          	movb   $0x53,-0x50(%rbp)
    275d:	48 8d 05 0a f6 ff ff 	lea    -0x9f6(%rip),%rax        # 1d6e <print_non_printable>
    2764:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    2768:	c6 45 c0 72          	movb   $0x72,-0x40(%rbp)
    276c:	48 8d 05 5a f7 ff ff 	lea    -0x8a6(%rip),%rax        # 1ecd <print_reverse>
    2773:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    2777:	c6 45 d0 52          	movb   $0x52,-0x30(%rbp)
    277b:	48 8d 05 56 f8 ff ff 	lea    -0x7aa(%rip),%rax        # 1fd8 <print_rot13string>
    2782:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    2786:	c6 45 e0 00          	movb   $0x0,-0x20(%rbp)
    278a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    2791:	00 
    2792:	c7 85 f4 fe ff ff 00 	movl   $0x0,-0x10c(%rbp)
    2799:	00 00 00 
    279c:	e9 83 00 00 00       	jmpq   2824 <handle_print+0x1fc>
    27a1:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    27a8:	8b 00                	mov    (%rax),%eax
    27aa:	48 63 d0             	movslq %eax,%rdx
    27ad:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    27b4:	48 01 d0             	add    %rdx,%rax
    27b7:	0f b6 10             	movzbl (%rax),%edx
    27ba:	8b 85 f4 fe ff ff    	mov    -0x10c(%rbp),%eax
    27c0:	48 98                	cltq   
    27c2:	48 c1 e0 04          	shl    $0x4,%rax
    27c6:	48 01 e8             	add    %rbp,%rax
    27c9:	48 2d 00 01 00 00    	sub    $0x100,%rax
    27cf:	0f b6 00             	movzbl (%rax),%eax
    27d2:	38 c2                	cmp    %al,%dl
    27d4:	75 47                	jne    281d <handle_print+0x1f5>
    27d6:	8b 85 f4 fe ff ff    	mov    -0x10c(%rbp),%eax
    27dc:	48 98                	cltq   
    27de:	48 c1 e0 04          	shl    $0x4,%rax
    27e2:	48 01 e8             	add    %rbp,%rax
    27e5:	48 2d f8 00 00 00    	sub    $0xf8,%rax
    27eb:	4c 8b 10             	mov    (%rax),%r10
    27ee:	8b 7d 18             	mov    0x18(%rbp),%edi
    27f1:	8b 8d c8 fe ff ff    	mov    -0x138(%rbp),%ecx
    27f7:	8b 95 cc fe ff ff    	mov    -0x134(%rbp),%edx
    27fd:	48 8b b5 d0 fe ff ff 	mov    -0x130(%rbp),%rsi
    2804:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    280b:	41 89 f9             	mov    %edi,%r9d
    280e:	44 8b 45 10          	mov    0x10(%rbp),%r8d
    2812:	48 89 c7             	mov    %rax,%rdi
    2815:	41 ff d2             	callq  *%r10
    2818:	e9 d1 01 00 00       	jmpq   29ee <handle_print+0x3c6>
    281d:	83 85 f4 fe ff ff 01 	addl   $0x1,-0x10c(%rbp)
    2824:	8b 85 f4 fe ff ff    	mov    -0x10c(%rbp),%eax
    282a:	48 98                	cltq   
    282c:	48 c1 e0 04          	shl    $0x4,%rax
    2830:	48 01 e8             	add    %rbp,%rax
    2833:	48 2d 00 01 00 00    	sub    $0x100,%rax
    2839:	0f b6 00             	movzbl (%rax),%eax
    283c:	84 c0                	test   %al,%al
    283e:	0f 85 5d ff ff ff    	jne    27a1 <handle_print+0x179>
    2844:	8b 85 f4 fe ff ff    	mov    -0x10c(%rbp),%eax
    284a:	48 98                	cltq   
    284c:	48 c1 e0 04          	shl    $0x4,%rax
    2850:	48 01 e8             	add    %rbp,%rax
    2853:	48 2d 00 01 00 00    	sub    $0x100,%rax
    2859:	0f b6 00             	movzbl (%rax),%eax
    285c:	84 c0                	test   %al,%al
    285e:	0f 85 84 01 00 00    	jne    29e8 <handle_print+0x3c0>
    2864:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    286b:	8b 00                	mov    (%rax),%eax
    286d:	48 63 d0             	movslq %eax,%rdx
    2870:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    2877:	48 01 d0             	add    %rdx,%rax
    287a:	0f b6 00             	movzbl (%rax),%eax
    287d:	84 c0                	test   %al,%al
    287f:	75 0a                	jne    288b <handle_print+0x263>
    2881:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2886:	e9 63 01 00 00       	jmpq   29ee <handle_print+0x3c6>
    288b:	ba 01 00 00 00       	mov    $0x1,%edx
    2890:	48 8d 35 bd 17 00 00 	lea    0x17bd(%rip),%rsi        # 4054 <_IO_stdin_used+0x54>
    2897:	bf 01 00 00 00       	mov    $0x1,%edi
    289c:	e8 cf e7 ff ff       	callq  1070 <write@plt>
    28a1:	89 c2                	mov    %eax,%edx
    28a3:	8b 85 f8 fe ff ff    	mov    -0x108(%rbp),%eax
    28a9:	01 d0                	add    %edx,%eax
    28ab:	89 85 f8 fe ff ff    	mov    %eax,-0x108(%rbp)
    28b1:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    28b8:	8b 00                	mov    (%rax),%eax
    28ba:	48 98                	cltq   
    28bc:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    28c0:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    28c7:	48 01 d0             	add    %rdx,%rax
    28ca:	0f b6 00             	movzbl (%rax),%eax
    28cd:	3c 20                	cmp    $0x20,%al
    28cf:	75 2b                	jne    28fc <handle_print+0x2d4>
    28d1:	ba 01 00 00 00       	mov    $0x1,%edx
    28d6:	48 8d 35 7a 17 00 00 	lea    0x177a(%rip),%rsi        # 4057 <_IO_stdin_used+0x57>
    28dd:	bf 01 00 00 00       	mov    $0x1,%edi
    28e2:	e8 89 e7 ff ff       	callq  1070 <write@plt>
    28e7:	89 c2                	mov    %eax,%edx
    28e9:	8b 85 f8 fe ff ff    	mov    -0x108(%rbp),%eax
    28ef:	01 d0                	add    %edx,%eax
    28f1:	89 85 f8 fe ff ff    	mov    %eax,-0x108(%rbp)
    28f7:	e9 ac 00 00 00       	jmpq   29a8 <handle_print+0x380>
    28fc:	83 bd c8 fe ff ff 00 	cmpl   $0x0,-0x138(%rbp)
    2903:	0f 84 9f 00 00 00    	je     29a8 <handle_print+0x380>
    2909:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    2910:	8b 00                	mov    (%rax),%eax
    2912:	8d 50 ff             	lea    -0x1(%rax),%edx
    2915:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    291c:	89 10                	mov    %edx,(%rax)
    291e:	eb 15                	jmp    2935 <handle_print+0x30d>
    2920:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    2927:	8b 00                	mov    (%rax),%eax
    2929:	8d 50 ff             	lea    -0x1(%rax),%edx
    292c:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    2933:	89 10                	mov    %edx,(%rax)
    2935:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    293c:	8b 00                	mov    (%rax),%eax
    293e:	48 63 d0             	movslq %eax,%rdx
    2941:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    2948:	48 01 d0             	add    %rdx,%rax
    294b:	0f b6 00             	movzbl (%rax),%eax
    294e:	3c 20                	cmp    $0x20,%al
    2950:	74 1d                	je     296f <handle_print+0x347>
    2952:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    2959:	8b 00                	mov    (%rax),%eax
    295b:	48 63 d0             	movslq %eax,%rdx
    295e:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    2965:	48 01 d0             	add    %rdx,%rax
    2968:	0f b6 00             	movzbl (%rax),%eax
    296b:	3c 25                	cmp    $0x25,%al
    296d:	75 b1                	jne    2920 <handle_print+0x2f8>
    296f:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    2976:	8b 00                	mov    (%rax),%eax
    2978:	48 63 d0             	movslq %eax,%rdx
    297b:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    2982:	48 01 d0             	add    %rdx,%rax
    2985:	0f b6 00             	movzbl (%rax),%eax
    2988:	3c 20                	cmp    $0x20,%al
    298a:	75 15                	jne    29a1 <handle_print+0x379>
    298c:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    2993:	8b 00                	mov    (%rax),%eax
    2995:	8d 50 ff             	lea    -0x1(%rax),%edx
    2998:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    299f:	89 10                	mov    %edx,(%rax)
    29a1:	b8 01 00 00 00       	mov    $0x1,%eax
    29a6:	eb 46                	jmp    29ee <handle_print+0x3c6>
    29a8:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    29af:	8b 00                	mov    (%rax),%eax
    29b1:	48 63 d0             	movslq %eax,%rdx
    29b4:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    29bb:	48 01 d0             	add    %rdx,%rax
    29be:	ba 01 00 00 00       	mov    $0x1,%edx
    29c3:	48 89 c6             	mov    %rax,%rsi
    29c6:	bf 01 00 00 00       	mov    $0x1,%edi
    29cb:	e8 a0 e6 ff ff       	callq  1070 <write@plt>
    29d0:	89 c2                	mov    %eax,%edx
    29d2:	8b 85 f8 fe ff ff    	mov    -0x108(%rbp),%eax
    29d8:	01 d0                	add    %edx,%eax
    29da:	89 85 f8 fe ff ff    	mov    %eax,-0x108(%rbp)
    29e0:	8b 85 f8 fe ff ff    	mov    -0x108(%rbp),%eax
    29e6:	eb 06                	jmp    29ee <handle_print+0x3c6>
    29e8:	8b 85 fc fe ff ff    	mov    -0x104(%rbp),%eax
    29ee:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    29f2:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    29f9:	00 00 
    29fb:	74 05                	je     2a02 <handle_print+0x3da>
    29fd:	e8 7e e6 ff ff       	callq  1080 <__stack_chk_fail@plt>
    2a02:	c9                   	leaveq 
    2a03:	c3                   	retq   

0000000000002a04 <main>:
    2a04:	f3 0f 1e fa          	endbr64 
    2a08:	55                   	push   %rbp
    2a09:	48 89 e5             	mov    %rsp,%rbp
    2a0c:	48 83 ec 20          	sub    $0x20,%rsp
    2a10:	48 8d 3d 49 16 00 00 	lea    0x1649(%rip),%rdi        # 4060 <_IO_stdin_used+0x60>
    2a17:	b8 00 00 00 00       	mov    $0x0,%eax
    2a1c:	e8 fb 01 00 00       	callq  2c1c <_printf>
    2a21:	89 45 ec             	mov    %eax,-0x14(%rbp)
    2a24:	48 8d 3d 35 16 00 00 	lea    0x1635(%rip),%rdi        # 4060 <_IO_stdin_used+0x60>
    2a2b:	b8 00 00 00 00       	mov    $0x0,%eax
    2a30:	e8 5b e6 ff ff       	callq  1090 <printf@plt>
    2a35:	89 45 f0             	mov    %eax,-0x10(%rbp)
    2a38:	c7 45 f4 ff 03 00 80 	movl   $0x800003ff,-0xc(%rbp)
    2a3f:	48 b8 f0 41 75 63 fe 	movabs $0x7ffe637541f0,%rax
    2a46:	7f 00 00 
    2a49:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2a4d:	8b 55 ec             	mov    -0x14(%rbp),%edx
    2a50:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2a53:	89 c6                	mov    %eax,%esi
    2a55:	48 8d 3d 2c 16 00 00 	lea    0x162c(%rip),%rdi        # 4088 <_IO_stdin_used+0x88>
    2a5c:	b8 00 00 00 00       	mov    $0x0,%eax
    2a61:	e8 b6 01 00 00       	callq  2c1c <_printf>
    2a66:	8b 55 f0             	mov    -0x10(%rbp),%edx
    2a69:	8b 45 f0             	mov    -0x10(%rbp),%eax
    2a6c:	89 c6                	mov    %eax,%esi
    2a6e:	48 8d 3d 13 16 00 00 	lea    0x1613(%rip),%rdi        # 4088 <_IO_stdin_used+0x88>
    2a75:	b8 00 00 00 00       	mov    $0x0,%eax
    2a7a:	e8 11 e6 ff ff       	callq  1090 <printf@plt>
    2a7f:	be 5a 5d f4 ff       	mov    $0xfff45d5a,%esi
    2a84:	48 8d 3d 0e 16 00 00 	lea    0x160e(%rip),%rdi        # 4099 <_IO_stdin_used+0x99>
    2a8b:	b8 00 00 00 00       	mov    $0x0,%eax
    2a90:	e8 87 01 00 00       	callq  2c1c <_printf>
    2a95:	be 5a 5d f4 ff       	mov    $0xfff45d5a,%esi
    2a9a:	48 8d 3d f8 15 00 00 	lea    0x15f8(%rip),%rdi        # 4099 <_IO_stdin_used+0x99>
    2aa1:	b8 00 00 00 00       	mov    $0x0,%eax
    2aa6:	e8 e5 e5 ff ff       	callq  1090 <printf@plt>
    2aab:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2aae:	89 c6                	mov    %eax,%esi
    2ab0:	48 8d 3d f1 15 00 00 	lea    0x15f1(%rip),%rdi        # 40a8 <_IO_stdin_used+0xa8>
    2ab7:	b8 00 00 00 00       	mov    $0x0,%eax
    2abc:	e8 5b 01 00 00       	callq  2c1c <_printf>
    2ac1:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2ac4:	89 c6                	mov    %eax,%esi
    2ac6:	48 8d 3d db 15 00 00 	lea    0x15db(%rip),%rdi        # 40a8 <_IO_stdin_used+0xa8>
    2acd:	b8 00 00 00 00       	mov    $0x0,%eax
    2ad2:	e8 b9 e5 ff ff       	callq  1090 <printf@plt>
    2ad7:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2ada:	89 c6                	mov    %eax,%esi
    2adc:	48 8d 3d d4 15 00 00 	lea    0x15d4(%rip),%rdi        # 40b7 <_IO_stdin_used+0xb7>
    2ae3:	b8 00 00 00 00       	mov    $0x0,%eax
    2ae8:	e8 2f 01 00 00       	callq  2c1c <_printf>
    2aed:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2af0:	89 c6                	mov    %eax,%esi
    2af2:	48 8d 3d be 15 00 00 	lea    0x15be(%rip),%rdi        # 40b7 <_IO_stdin_used+0xb7>
    2af9:	b8 00 00 00 00       	mov    $0x0,%eax
    2afe:	e8 8d e5 ff ff       	callq  1090 <printf@plt>
    2b03:	8b 55 f4             	mov    -0xc(%rbp),%edx
    2b06:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2b09:	89 c6                	mov    %eax,%esi
    2b0b:	48 8d 3d be 15 00 00 	lea    0x15be(%rip),%rdi        # 40d0 <_IO_stdin_used+0xd0>
    2b12:	b8 00 00 00 00       	mov    $0x0,%eax
    2b17:	e8 00 01 00 00       	callq  2c1c <_printf>
    2b1c:	8b 55 f4             	mov    -0xc(%rbp),%edx
    2b1f:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2b22:	89 c6                	mov    %eax,%esi
    2b24:	48 8d 3d a5 15 00 00 	lea    0x15a5(%rip),%rdi        # 40d0 <_IO_stdin_used+0xd0>
    2b2b:	b8 00 00 00 00       	mov    $0x0,%eax
    2b30:	e8 5b e5 ff ff       	callq  1090 <printf@plt>
    2b35:	be 48 00 00 00       	mov    $0x48,%esi
    2b3a:	48 8d 3d ae 15 00 00 	lea    0x15ae(%rip),%rdi        # 40ef <_IO_stdin_used+0xef>
    2b41:	b8 00 00 00 00       	mov    $0x0,%eax
    2b46:	e8 d1 00 00 00       	callq  2c1c <_printf>
    2b4b:	be 48 00 00 00       	mov    $0x48,%esi
    2b50:	48 8d 3d 98 15 00 00 	lea    0x1598(%rip),%rdi        # 40ef <_IO_stdin_used+0xef>
    2b57:	b8 00 00 00 00       	mov    $0x0,%eax
    2b5c:	e8 2f e5 ff ff       	callq  1090 <printf@plt>
    2b61:	48 8d 35 97 15 00 00 	lea    0x1597(%rip),%rsi        # 40ff <_IO_stdin_used+0xff>
    2b68:	48 8d 3d a0 15 00 00 	lea    0x15a0(%rip),%rdi        # 410f <_IO_stdin_used+0x10f>
    2b6f:	b8 00 00 00 00       	mov    $0x0,%eax
    2b74:	e8 a3 00 00 00       	callq  2c1c <_printf>
    2b79:	48 8d 35 7f 15 00 00 	lea    0x157f(%rip),%rsi        # 40ff <_IO_stdin_used+0xff>
    2b80:	48 8d 3d 88 15 00 00 	lea    0x1588(%rip),%rdi        # 410f <_IO_stdin_used+0x10f>
    2b87:	b8 00 00 00 00       	mov    $0x0,%eax
    2b8c:	e8 ff e4 ff ff       	callq  1090 <printf@plt>
    2b91:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2b95:	48 89 c6             	mov    %rax,%rsi
    2b98:	48 8d 3d 7d 15 00 00 	lea    0x157d(%rip),%rdi        # 411c <_IO_stdin_used+0x11c>
    2b9f:	b8 00 00 00 00       	mov    $0x0,%eax
    2ba4:	e8 73 00 00 00       	callq  2c1c <_printf>
    2ba9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2bad:	48 89 c6             	mov    %rax,%rsi
    2bb0:	48 8d 3d 65 15 00 00 	lea    0x1565(%rip),%rdi        # 411c <_IO_stdin_used+0x11c>
    2bb7:	b8 00 00 00 00       	mov    $0x0,%eax
    2bbc:	e8 cf e4 ff ff       	callq  1090 <printf@plt>
    2bc1:	48 8d 3d 62 15 00 00 	lea    0x1562(%rip),%rdi        # 412a <_IO_stdin_used+0x12a>
    2bc8:	b8 00 00 00 00       	mov    $0x0,%eax
    2bcd:	e8 4a 00 00 00       	callq  2c1c <_printf>
    2bd2:	89 45 ec             	mov    %eax,-0x14(%rbp)
    2bd5:	48 8d 3d 4e 15 00 00 	lea    0x154e(%rip),%rdi        # 412a <_IO_stdin_used+0x12a>
    2bdc:	b8 00 00 00 00       	mov    $0x0,%eax
    2be1:	e8 aa e4 ff ff       	callq  1090 <printf@plt>
    2be6:	89 45 f0             	mov    %eax,-0x10(%rbp)
    2be9:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2bec:	89 c6                	mov    %eax,%esi
    2bee:	48 8d 3d 43 15 00 00 	lea    0x1543(%rip),%rdi        # 4138 <_IO_stdin_used+0x138>
    2bf5:	b8 00 00 00 00       	mov    $0x0,%eax
    2bfa:	e8 1d 00 00 00       	callq  2c1c <_printf>
    2bff:	8b 45 f0             	mov    -0x10(%rbp),%eax
    2c02:	89 c6                	mov    %eax,%esi
    2c04:	48 8d 3d 2d 15 00 00 	lea    0x152d(%rip),%rdi        # 4138 <_IO_stdin_used+0x138>
    2c0b:	b8 00 00 00 00       	mov    $0x0,%eax
    2c10:	e8 7b e4 ff ff       	callq  1090 <printf@plt>
    2c15:	b8 00 00 00 00       	mov    $0x0,%eax
    2c1a:	c9                   	leaveq 
    2c1b:	c3                   	retq   

0000000000002c1c <_printf>:
    2c1c:	f3 0f 1e fa          	endbr64 
    2c20:	55                   	push   %rbp
    2c21:	48 89 e5             	mov    %rsp,%rbp
    2c24:	48 81 ec 10 05 00 00 	sub    $0x510,%rsp
    2c2b:	48 89 bd f8 fa ff ff 	mov    %rdi,-0x508(%rbp)
    2c32:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
    2c39:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
    2c40:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
    2c47:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
    2c4e:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
    2c55:	84 c0                	test   %al,%al
    2c57:	74 20                	je     2c79 <_printf+0x5d>
    2c59:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
    2c5d:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
    2c61:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
    2c65:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
    2c69:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
    2c6d:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
    2c71:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
    2c75:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
    2c79:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2c80:	00 00 
    2c82:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
    2c89:	31 c0                	xor    %eax,%eax
    2c8b:	c7 85 14 fb ff ff 00 	movl   $0x0,-0x4ec(%rbp)
    2c92:	00 00 00 
    2c95:	c7 85 10 fb ff ff 00 	movl   $0x0,-0x4f0(%rbp)
    2c9c:	00 00 00 
    2c9f:	c7 85 0c fb ff ff 00 	movl   $0x0,-0x4f4(%rbp)
    2ca6:	00 00 00 
    2ca9:	48 83 bd f8 fa ff ff 	cmpq   $0x0,-0x508(%rbp)
    2cb0:	00 
    2cb1:	75 0a                	jne    2cbd <_printf+0xa1>
    2cb3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2cb8:	e9 25 02 00 00       	jmpq   2ee2 <_printf+0x2c6>
    2cbd:	c7 85 28 fb ff ff 08 	movl   $0x8,-0x4d8(%rbp)
    2cc4:	00 00 00 
    2cc7:	c7 85 2c fb ff ff 30 	movl   $0x30,-0x4d4(%rbp)
    2cce:	00 00 00 
    2cd1:	48 8d 45 10          	lea    0x10(%rbp),%rax
    2cd5:	48 89 85 30 fb ff ff 	mov    %rax,-0x4d0(%rbp)
    2cdc:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
    2ce3:	48 89 85 38 fb ff ff 	mov    %rax,-0x4c8(%rbp)
    2cea:	c7 85 08 fb ff ff 00 	movl   $0x0,-0x4f8(%rbp)
    2cf1:	00 00 00 
    2cf4:	e9 a2 01 00 00       	jmpq   2e9b <_printf+0x27f>
    2cf9:	8b 85 08 fb ff ff    	mov    -0x4f8(%rbp),%eax
    2cff:	48 63 d0             	movslq %eax,%rdx
    2d02:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
    2d09:	48 01 d0             	add    %rdx,%rax
    2d0c:	0f b6 00             	movzbl (%rax),%eax
    2d0f:	3c 25                	cmp    $0x25,%al
    2d11:	74 61                	je     2d74 <_printf+0x158>
    2d13:	8b 85 08 fb ff ff    	mov    -0x4f8(%rbp),%eax
    2d19:	48 63 d0             	movslq %eax,%rdx
    2d1c:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
    2d23:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    2d27:	8b 85 0c fb ff ff    	mov    -0x4f4(%rbp),%eax
    2d2d:	8d 50 01             	lea    0x1(%rax),%edx
    2d30:	89 95 0c fb ff ff    	mov    %edx,-0x4f4(%rbp)
    2d36:	0f b6 11             	movzbl (%rcx),%edx
    2d39:	48 98                	cltq   
    2d3b:	88 94 05 40 fb ff ff 	mov    %dl,-0x4c0(%rbp,%rax,1)
    2d42:	8b 85 0c fb ff ff    	mov    -0x4f4(%rbp),%eax
    2d48:	3d 00 04 00 00       	cmp    $0x400,%eax
    2d4d:	75 19                	jne    2d68 <_printf+0x14c>
    2d4f:	48 8d 95 0c fb ff ff 	lea    -0x4f4(%rbp),%rdx
    2d56:	48 8d 85 40 fb ff ff 	lea    -0x4c0(%rbp),%rax
    2d5d:	48 89 d6             	mov    %rdx,%rsi
    2d60:	48 89 c7             	mov    %rax,%rdi
    2d63:	e8 93 01 00 00       	callq  2efb <print_buffer>
    2d68:	83 85 10 fb ff ff 01 	addl   $0x1,-0x4f0(%rbp)
    2d6f:	e9 18 01 00 00       	jmpq   2e8c <_printf+0x270>
    2d74:	48 8d 95 0c fb ff ff 	lea    -0x4f4(%rbp),%rdx
    2d7b:	48 8d 85 40 fb ff ff 	lea    -0x4c0(%rbp),%rax
    2d82:	48 89 d6             	mov    %rdx,%rsi
    2d85:	48 89 c7             	mov    %rax,%rdi
    2d88:	e8 6e 01 00 00       	callq  2efb <print_buffer>
    2d8d:	48 8d 95 08 fb ff ff 	lea    -0x4f8(%rbp),%rdx
    2d94:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
    2d9b:	48 89 d6             	mov    %rdx,%rsi
    2d9e:	48 89 c7             	mov    %rax,%rdi
    2da1:	e8 c6 f4 ff ff       	callq  226c <get_flags>
    2da6:	89 85 18 fb ff ff    	mov    %eax,-0x4e8(%rbp)
    2dac:	48 8d 95 28 fb ff ff 	lea    -0x4d8(%rbp),%rdx
    2db3:	48 8d 8d 08 fb ff ff 	lea    -0x4f8(%rbp),%rcx
    2dba:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
    2dc1:	48 89 ce             	mov    %rcx,%rsi
    2dc4:	48 89 c7             	mov    %rax,%rdi
    2dc7:	e8 52 f7 ff ff       	callq  251e <get_width>
    2dcc:	89 85 1c fb ff ff    	mov    %eax,-0x4e4(%rbp)
    2dd2:	48 8d 95 28 fb ff ff 	lea    -0x4d8(%rbp),%rdx
    2dd9:	48 8d 8d 08 fb ff ff 	lea    -0x4f8(%rbp),%rcx
    2de0:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
    2de7:	48 89 ce             	mov    %rcx,%rsi
    2dea:	48 89 c7             	mov    %rax,%rdi
    2ded:	e8 7e f5 ff ff       	callq  2370 <get_precision>
    2df2:	89 85 20 fb ff ff    	mov    %eax,-0x4e0(%rbp)
    2df8:	48 8d 95 08 fb ff ff 	lea    -0x4f8(%rbp),%rdx
    2dff:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
    2e06:	48 89 d6             	mov    %rdx,%rsi
    2e09:	48 89 c7             	mov    %rax,%rdi
    2e0c:	e8 90 f6 ff ff       	callq  24a1 <get_size>
    2e11:	89 85 24 fb ff ff    	mov    %eax,-0x4dc(%rbp)
    2e17:	8b 85 08 fb ff ff    	mov    -0x4f8(%rbp),%eax
    2e1d:	83 c0 01             	add    $0x1,%eax
    2e20:	89 85 08 fb ff ff    	mov    %eax,-0x4f8(%rbp)
    2e26:	44 8b 8d 1c fb ff ff 	mov    -0x4e4(%rbp),%r9d
    2e2d:	44 8b 85 18 fb ff ff 	mov    -0x4e8(%rbp),%r8d
    2e34:	48 8d 8d 40 fb ff ff 	lea    -0x4c0(%rbp),%rcx
    2e3b:	48 8d 95 28 fb ff ff 	lea    -0x4d8(%rbp),%rdx
    2e42:	48 8d b5 08 fb ff ff 	lea    -0x4f8(%rbp),%rsi
    2e49:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
    2e50:	8b bd 24 fb ff ff    	mov    -0x4dc(%rbp),%edi
    2e56:	57                   	push   %rdi
    2e57:	8b bd 20 fb ff ff    	mov    -0x4e0(%rbp),%edi
    2e5d:	57                   	push   %rdi
    2e5e:	48 89 c7             	mov    %rax,%rdi
    2e61:	e8 c2 f7 ff ff       	callq  2628 <handle_print>
    2e66:	48 83 c4 10          	add    $0x10,%rsp
    2e6a:	89 85 14 fb ff ff    	mov    %eax,-0x4ec(%rbp)
    2e70:	83 bd 14 fb ff ff ff 	cmpl   $0xffffffff,-0x4ec(%rbp)
    2e77:	75 07                	jne    2e80 <_printf+0x264>
    2e79:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2e7e:	eb 62                	jmp    2ee2 <_printf+0x2c6>
    2e80:	8b 85 14 fb ff ff    	mov    -0x4ec(%rbp),%eax
    2e86:	01 85 10 fb ff ff    	add    %eax,-0x4f0(%rbp)
    2e8c:	8b 85 08 fb ff ff    	mov    -0x4f8(%rbp),%eax
    2e92:	83 c0 01             	add    $0x1,%eax
    2e95:	89 85 08 fb ff ff    	mov    %eax,-0x4f8(%rbp)
    2e9b:	48 83 bd f8 fa ff ff 	cmpq   $0x0,-0x508(%rbp)
    2ea2:	00 
    2ea3:	74 1e                	je     2ec3 <_printf+0x2a7>
    2ea5:	8b 85 08 fb ff ff    	mov    -0x4f8(%rbp),%eax
    2eab:	48 63 d0             	movslq %eax,%rdx
    2eae:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
    2eb5:	48 01 d0             	add    %rdx,%rax
    2eb8:	0f b6 00             	movzbl (%rax),%eax
    2ebb:	84 c0                	test   %al,%al
    2ebd:	0f 85 36 fe ff ff    	jne    2cf9 <_printf+0xdd>
    2ec3:	48 8d 95 0c fb ff ff 	lea    -0x4f4(%rbp),%rdx
    2eca:	48 8d 85 40 fb ff ff 	lea    -0x4c0(%rbp),%rax
    2ed1:	48 89 d6             	mov    %rdx,%rsi
    2ed4:	48 89 c7             	mov    %rax,%rdi
    2ed7:	e8 1f 00 00 00       	callq  2efb <print_buffer>
    2edc:	8b 85 10 fb ff ff    	mov    -0x4f0(%rbp),%eax
    2ee2:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
    2ee9:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2ef0:	00 00 
    2ef2:	74 05                	je     2ef9 <_printf+0x2dd>
    2ef4:	e8 87 e1 ff ff       	callq  1080 <__stack_chk_fail@plt>
    2ef9:	c9                   	leaveq 
    2efa:	c3                   	retq   

0000000000002efb <print_buffer>:
    2efb:	f3 0f 1e fa          	endbr64 
    2eff:	55                   	push   %rbp
    2f00:	48 89 e5             	mov    %rsp,%rbp
    2f03:	48 83 ec 10          	sub    $0x10,%rsp
    2f07:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    2f0b:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    2f0f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2f13:	8b 00                	mov    (%rax),%eax
    2f15:	85 c0                	test   %eax,%eax
    2f17:	7e 1a                	jle    2f33 <print_buffer+0x38>
    2f19:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2f1d:	8b 00                	mov    (%rax),%eax
    2f1f:	48 63 d0             	movslq %eax,%rdx
    2f22:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f26:	48 89 c6             	mov    %rax,%rsi
    2f29:	bf 01 00 00 00       	mov    $0x1,%edi
    2f2e:	e8 3d e1 ff ff       	callq  1070 <write@plt>
    2f33:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2f37:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    2f3d:	90                   	nop
    2f3e:	c9                   	leaveq 
    2f3f:	c3                   	retq   

0000000000002f40 <is_printable>:
    2f40:	f3 0f 1e fa          	endbr64 
    2f44:	55                   	push   %rbp
    2f45:	48 89 e5             	mov    %rsp,%rbp
    2f48:	89 f8                	mov    %edi,%eax
    2f4a:	88 45 fc             	mov    %al,-0x4(%rbp)
    2f4d:	80 7d fc 1f          	cmpb   $0x1f,-0x4(%rbp)
    2f51:	7e 0d                	jle    2f60 <is_printable+0x20>
    2f53:	80 7d fc 7f          	cmpb   $0x7f,-0x4(%rbp)
    2f57:	74 07                	je     2f60 <is_printable+0x20>
    2f59:	b8 01 00 00 00       	mov    $0x1,%eax
    2f5e:	eb 05                	jmp    2f65 <is_printable+0x25>
    2f60:	b8 00 00 00 00       	mov    $0x0,%eax
    2f65:	5d                   	pop    %rbp
    2f66:	c3                   	retq   

0000000000002f67 <append_hexa_code>:
    2f67:	f3 0f 1e fa          	endbr64 
    2f6b:	55                   	push   %rbp
    2f6c:	48 89 e5             	mov    %rsp,%rbp
    2f6f:	48 83 ec 30          	sub    $0x30,%rsp
    2f73:	89 f8                	mov    %edi,%eax
    2f75:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    2f79:	89 55 d8             	mov    %edx,-0x28(%rbp)
    2f7c:	88 45 dc             	mov    %al,-0x24(%rbp)
    2f7f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2f86:	00 00 
    2f88:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2f8c:	31 c0                	xor    %eax,%eax
    2f8e:	48 b8 30 31 32 33 34 	movabs $0x3736353433323130,%rax
    2f95:	35 36 37 
    2f98:	48 ba 38 39 41 42 43 	movabs $0x4645444342413938,%rdx
    2f9f:	44 45 46 
    2fa2:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2fa6:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    2faa:	c6 45 f0 00          	movb   $0x0,-0x10(%rbp)
    2fae:	80 7d dc 00          	cmpb   $0x0,-0x24(%rbp)
    2fb2:	79 09                	jns    2fbd <append_hexa_code+0x56>
    2fb4:	0f b6 45 dc          	movzbl -0x24(%rbp),%eax
    2fb8:	f7 d8                	neg    %eax
    2fba:	88 45 dc             	mov    %al,-0x24(%rbp)
    2fbd:	8b 45 d8             	mov    -0x28(%rbp),%eax
    2fc0:	8d 50 01             	lea    0x1(%rax),%edx
    2fc3:	89 55 d8             	mov    %edx,-0x28(%rbp)
    2fc6:	48 63 d0             	movslq %eax,%rdx
    2fc9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2fcd:	48 01 d0             	add    %rdx,%rax
    2fd0:	c6 00 5c             	movb   $0x5c,(%rax)
    2fd3:	8b 45 d8             	mov    -0x28(%rbp),%eax
    2fd6:	8d 50 01             	lea    0x1(%rax),%edx
    2fd9:	89 55 d8             	mov    %edx,-0x28(%rbp)
    2fdc:	48 63 d0             	movslq %eax,%rdx
    2fdf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2fe3:	48 01 d0             	add    %rdx,%rax
    2fe6:	c6 00 78             	movb   $0x78,(%rax)
    2fe9:	0f b6 45 dc          	movzbl -0x24(%rbp),%eax
    2fed:	8d 50 0f             	lea    0xf(%rax),%edx
    2ff0:	84 c0                	test   %al,%al
    2ff2:	0f 48 c2             	cmovs  %edx,%eax
    2ff5:	c0 f8 04             	sar    $0x4,%al
    2ff8:	0f be c8             	movsbl %al,%ecx
    2ffb:	8b 45 d8             	mov    -0x28(%rbp),%eax
    2ffe:	8d 50 01             	lea    0x1(%rax),%edx
    3001:	89 55 d8             	mov    %edx,-0x28(%rbp)
    3004:	48 63 d0             	movslq %eax,%rdx
    3007:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    300b:	48 01 c2             	add    %rax,%rdx
    300e:	48 63 c1             	movslq %ecx,%rax
    3011:	0f b6 44 05 e0       	movzbl -0x20(%rbp,%rax,1),%eax
    3016:	88 02                	mov    %al,(%rdx)
    3018:	0f b6 45 dc          	movzbl -0x24(%rbp),%eax
    301c:	89 c2                	mov    %eax,%edx
    301e:	c0 fa 07             	sar    $0x7,%dl
    3021:	c0 ea 04             	shr    $0x4,%dl
    3024:	01 d0                	add    %edx,%eax
    3026:	83 e0 0f             	and    $0xf,%eax
    3029:	29 d0                	sub    %edx,%eax
    302b:	0f be c0             	movsbl %al,%eax
    302e:	8b 55 d8             	mov    -0x28(%rbp),%edx
    3031:	48 63 ca             	movslq %edx,%rcx
    3034:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3038:	48 01 ca             	add    %rcx,%rdx
    303b:	48 98                	cltq   
    303d:	0f b6 44 05 e0       	movzbl -0x20(%rbp,%rax,1),%eax
    3042:	88 02                	mov    %al,(%rdx)
    3044:	b8 03 00 00 00       	mov    $0x3,%eax
    3049:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    304d:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    3054:	00 00 
    3056:	74 05                	je     305d <append_hexa_code+0xf6>
    3058:	e8 23 e0 ff ff       	callq  1080 <__stack_chk_fail@plt>
    305d:	c9                   	leaveq 
    305e:	c3                   	retq   

000000000000305f <is_digit>:
    305f:	f3 0f 1e fa          	endbr64 
    3063:	55                   	push   %rbp
    3064:	48 89 e5             	mov    %rsp,%rbp
    3067:	89 f8                	mov    %edi,%eax
    3069:	88 45 fc             	mov    %al,-0x4(%rbp)
    306c:	80 7d fc 2f          	cmpb   $0x2f,-0x4(%rbp)
    3070:	7e 0d                	jle    307f <is_digit+0x20>
    3072:	80 7d fc 39          	cmpb   $0x39,-0x4(%rbp)
    3076:	7f 07                	jg     307f <is_digit+0x20>
    3078:	b8 01 00 00 00       	mov    $0x1,%eax
    307d:	eb 05                	jmp    3084 <is_digit+0x25>
    307f:	b8 00 00 00 00       	mov    $0x0,%eax
    3084:	5d                   	pop    %rbp
    3085:	c3                   	retq   

0000000000003086 <convert_size_number>:
    3086:	f3 0f 1e fa          	endbr64 
    308a:	55                   	push   %rbp
    308b:	48 89 e5             	mov    %rsp,%rbp
    308e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3092:	89 75 f4             	mov    %esi,-0xc(%rbp)
    3095:	83 7d f4 02          	cmpl   $0x2,-0xc(%rbp)
    3099:	75 06                	jne    30a1 <convert_size_number+0x1b>
    309b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    309f:	eb 16                	jmp    30b7 <convert_size_number+0x31>
    30a1:	83 7d f4 01          	cmpl   $0x1,-0xc(%rbp)
    30a5:	75 0a                	jne    30b1 <convert_size_number+0x2b>
    30a7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    30ab:	48 0f bf c0          	movswq %ax,%rax
    30af:	eb 06                	jmp    30b7 <convert_size_number+0x31>
    30b1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    30b5:	48 98                	cltq   
    30b7:	5d                   	pop    %rbp
    30b8:	c3                   	retq   

00000000000030b9 <convert_size_unsgnd>:
    30b9:	f3 0f 1e fa          	endbr64 
    30bd:	55                   	push   %rbp
    30be:	48 89 e5             	mov    %rsp,%rbp
    30c1:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    30c5:	89 75 f4             	mov    %esi,-0xc(%rbp)
    30c8:	83 7d f4 02          	cmpl   $0x2,-0xc(%rbp)
    30cc:	75 06                	jne    30d4 <convert_size_unsgnd+0x1b>
    30ce:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    30d2:	eb 15                	jmp    30e9 <convert_size_unsgnd+0x30>
    30d4:	83 7d f4 01          	cmpl   $0x1,-0xc(%rbp)
    30d8:	75 09                	jne    30e3 <convert_size_unsgnd+0x2a>
    30da:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    30de:	0f b7 c0             	movzwl %ax,%eax
    30e1:	eb 06                	jmp    30e9 <convert_size_unsgnd+0x30>
    30e3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    30e7:	89 c0                	mov    %eax,%eax
    30e9:	5d                   	pop    %rbp
    30ea:	c3                   	retq   

00000000000030eb <print_char>:
    30eb:	f3 0f 1e fa          	endbr64 
    30ef:	55                   	push   %rbp
    30f0:	48 89 e5             	mov    %rsp,%rbp
    30f3:	53                   	push   %rbx
    30f4:	48 83 ec 38          	sub    $0x38,%rsp
    30f8:	89 f8                	mov    %edi,%eax
    30fa:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    30fe:	89 55 d8             	mov    %edx,-0x28(%rbp)
    3101:	89 4d cc             	mov    %ecx,-0x34(%rbp)
    3104:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
    3108:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
    310c:	88 45 dc             	mov    %al,-0x24(%rbp)
    310f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    3116:	c6 45 eb 20          	movb   $0x20,-0x15(%rbp)
    311a:	8b 45 d8             	mov    -0x28(%rbp),%eax
    311d:	83 e0 04             	and    $0x4,%eax
    3120:	85 c0                	test   %eax,%eax
    3122:	74 04                	je     3128 <print_char+0x3d>
    3124:	c6 45 eb 30          	movb   $0x30,-0x15(%rbp)
    3128:	8b 45 ec             	mov    -0x14(%rbp),%eax
    312b:	8d 50 01             	lea    0x1(%rax),%edx
    312e:	89 55 ec             	mov    %edx,-0x14(%rbp)
    3131:	48 63 d0             	movslq %eax,%rdx
    3134:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3138:	48 01 c2             	add    %rax,%rdx
    313b:	0f b6 45 dc          	movzbl -0x24(%rbp),%eax
    313f:	88 02                	mov    %al,(%rdx)
    3141:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3144:	48 63 d0             	movslq %eax,%rdx
    3147:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    314b:	48 01 d0             	add    %rdx,%rax
    314e:	c6 00 00             	movb   $0x0,(%rax)
    3151:	83 7d cc 01          	cmpl   $0x1,-0x34(%rbp)
    3155:	0f 8e de 00 00 00    	jle    3239 <print_char+0x14e>
    315b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    315f:	48 05 ff 03 00 00    	add    $0x3ff,%rax
    3165:	c6 00 00             	movb   $0x0,(%rax)
    3168:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    316f:	eb 1f                	jmp    3190 <print_char+0xa5>
    3171:	b8 00 04 00 00       	mov    $0x400,%eax
    3176:	2b 45 ec             	sub    -0x14(%rbp),%eax
    3179:	48 98                	cltq   
    317b:	48 8d 50 fe          	lea    -0x2(%rax),%rdx
    317f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3183:	48 01 c2             	add    %rax,%rdx
    3186:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    318a:	88 02                	mov    %al,(%rdx)
    318c:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    3190:	8b 45 cc             	mov    -0x34(%rbp),%eax
    3193:	83 e8 01             	sub    $0x1,%eax
    3196:	39 45 ec             	cmp    %eax,-0x14(%rbp)
    3199:	7c d6                	jl     3171 <print_char+0x86>
    319b:	8b 45 d8             	mov    -0x28(%rbp),%eax
    319e:	83 e0 01             	and    $0x1,%eax
    31a1:	85 c0                	test   %eax,%eax
    31a3:	74 4a                	je     31ef <print_char+0x104>
    31a5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    31a9:	ba 01 00 00 00       	mov    $0x1,%edx
    31ae:	48 89 c6             	mov    %rax,%rsi
    31b1:	bf 01 00 00 00       	mov    $0x1,%edi
    31b6:	e8 b5 de ff ff       	callq  1070 <write@plt>
    31bb:	89 c3                	mov    %eax,%ebx
    31bd:	8b 45 cc             	mov    -0x34(%rbp),%eax
    31c0:	83 e8 01             	sub    $0x1,%eax
    31c3:	48 98                	cltq   
    31c5:	ba 00 04 00 00       	mov    $0x400,%edx
    31ca:	2b 55 ec             	sub    -0x14(%rbp),%edx
    31cd:	48 63 d2             	movslq %edx,%rdx
    31d0:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
    31d4:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    31d8:	48 01 d1             	add    %rdx,%rcx
    31db:	48 89 c2             	mov    %rax,%rdx
    31de:	48 89 ce             	mov    %rcx,%rsi
    31e1:	bf 01 00 00 00       	mov    $0x1,%edi
    31e6:	e8 85 de ff ff       	callq  1070 <write@plt>
    31eb:	01 d8                	add    %ebx,%eax
    31ed:	eb 60                	jmp    324f <print_char+0x164>
    31ef:	8b 45 cc             	mov    -0x34(%rbp),%eax
    31f2:	83 e8 01             	sub    $0x1,%eax
    31f5:	48 98                	cltq   
    31f7:	ba 00 04 00 00       	mov    $0x400,%edx
    31fc:	2b 55 ec             	sub    -0x14(%rbp),%edx
    31ff:	48 63 d2             	movslq %edx,%rdx
    3202:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
    3206:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    320a:	48 01 d1             	add    %rdx,%rcx
    320d:	48 89 c2             	mov    %rax,%rdx
    3210:	48 89 ce             	mov    %rcx,%rsi
    3213:	bf 01 00 00 00       	mov    $0x1,%edi
    3218:	e8 53 de ff ff       	callq  1070 <write@plt>
    321d:	89 c3                	mov    %eax,%ebx
    321f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3223:	ba 01 00 00 00       	mov    $0x1,%edx
    3228:	48 89 c6             	mov    %rax,%rsi
    322b:	bf 01 00 00 00       	mov    $0x1,%edi
    3230:	e8 3b de ff ff       	callq  1070 <write@plt>
    3235:	01 d8                	add    %ebx,%eax
    3237:	eb 16                	jmp    324f <print_char+0x164>
    3239:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    323d:	ba 01 00 00 00       	mov    $0x1,%edx
    3242:	48 89 c6             	mov    %rax,%rsi
    3245:	bf 01 00 00 00       	mov    $0x1,%edi
    324a:	e8 21 de ff ff       	callq  1070 <write@plt>
    324f:	48 83 c4 38          	add    $0x38,%rsp
    3253:	5b                   	pop    %rbx
    3254:	5d                   	pop    %rbp
    3255:	c3                   	retq   

0000000000003256 <print_num>:
    3256:	f3 0f 1e fa          	endbr64 
    325a:	55                   	push   %rbp
    325b:	48 89 e5             	mov    %rsp,%rbp
    325e:	48 83 ec 30          	sub    $0x30,%rsp
    3262:	89 7d ec             	mov    %edi,-0x14(%rbp)
    3265:	89 75 e8             	mov    %esi,-0x18(%rbp)
    3268:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    326c:	89 4d dc             	mov    %ecx,-0x24(%rbp)
    326f:	44 89 45 d8          	mov    %r8d,-0x28(%rbp)
    3273:	44 89 4d d4          	mov    %r9d,-0x2c(%rbp)
    3277:	b8 ff 03 00 00       	mov    $0x3ff,%eax
    327c:	2b 45 e8             	sub    -0x18(%rbp),%eax
    327f:	89 45 fc             	mov    %eax,-0x4(%rbp)
    3282:	c6 45 fa 20          	movb   $0x20,-0x6(%rbp)
    3286:	c6 45 fb 00          	movb   $0x0,-0x5(%rbp)
    328a:	8b 45 dc             	mov    -0x24(%rbp),%eax
    328d:	83 e0 04             	and    $0x4,%eax
    3290:	85 c0                	test   %eax,%eax
    3292:	74 0e                	je     32a2 <print_num+0x4c>
    3294:	8b 45 dc             	mov    -0x24(%rbp),%eax
    3297:	83 e0 01             	and    $0x1,%eax
    329a:	85 c0                	test   %eax,%eax
    329c:	75 04                	jne    32a2 <print_num+0x4c>
    329e:	c6 45 fa 30          	movb   $0x30,-0x6(%rbp)
    32a2:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    32a6:	74 06                	je     32ae <print_num+0x58>
    32a8:	c6 45 fb 2d          	movb   $0x2d,-0x5(%rbp)
    32ac:	eb 1e                	jmp    32cc <print_num+0x76>
    32ae:	8b 45 dc             	mov    -0x24(%rbp),%eax
    32b1:	83 e0 02             	and    $0x2,%eax
    32b4:	85 c0                	test   %eax,%eax
    32b6:	74 06                	je     32be <print_num+0x68>
    32b8:	c6 45 fb 2b          	movb   $0x2b,-0x5(%rbp)
    32bc:	eb 0e                	jmp    32cc <print_num+0x76>
    32be:	8b 45 dc             	mov    -0x24(%rbp),%eax
    32c1:	83 e0 10             	and    $0x10,%eax
    32c4:	85 c0                	test   %eax,%eax
    32c6:	74 04                	je     32cc <print_num+0x76>
    32c8:	c6 45 fb 20          	movb   $0x20,-0x5(%rbp)
    32cc:	44 0f be 45 fb       	movsbl -0x5(%rbp),%r8d
    32d1:	0f be 7d fa          	movsbl -0x6(%rbp),%edi
    32d5:	44 8b 4d fc          	mov    -0x4(%rbp),%r9d
    32d9:	44 8b 55 d4          	mov    -0x2c(%rbp),%r10d
    32dd:	8b 4d d8             	mov    -0x28(%rbp),%ecx
    32e0:	8b 55 dc             	mov    -0x24(%rbp),%edx
    32e3:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    32e7:	8b 45 e8             	mov    -0x18(%rbp),%eax
    32ea:	41 50                	push   %r8
    32ec:	57                   	push   %rdi
    32ed:	45 89 d0             	mov    %r10d,%r8d
    32f0:	89 c7                	mov    %eax,%edi
    32f2:	e8 06 00 00 00       	callq  32fd <write_num>
    32f7:	48 83 c4 10          	add    $0x10,%rsp
    32fb:	c9                   	leaveq 
    32fc:	c3                   	retq   

00000000000032fd <write_num>:
    32fd:	f3 0f 1e fa          	endbr64 
    3301:	55                   	push   %rbp
    3302:	48 89 e5             	mov    %rsp,%rbp
    3305:	53                   	push   %rbx
    3306:	48 83 ec 48          	sub    $0x48,%rsp
    330a:	89 7d dc             	mov    %edi,-0x24(%rbp)
    330d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    3311:	89 55 d8             	mov    %edx,-0x28(%rbp)
    3314:	89 4d cc             	mov    %ecx,-0x34(%rbp)
    3317:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
    331b:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
    331f:	8b 55 10             	mov    0x10(%rbp),%edx
    3322:	8b 45 18             	mov    0x18(%rbp),%eax
    3325:	88 55 c0             	mov    %dl,-0x40(%rbp)
    3328:	88 45 bc             	mov    %al,-0x44(%rbp)
    332b:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
    3332:	83 7d c8 00          	cmpl   $0x0,-0x38(%rbp)
    3336:	75 2d                	jne    3365 <write_num+0x68>
    3338:	81 7d dc fe 03 00 00 	cmpl   $0x3fe,-0x24(%rbp)
    333f:	75 24                	jne    3365 <write_num+0x68>
    3341:	8b 45 dc             	mov    -0x24(%rbp),%eax
    3344:	48 63 d0             	movslq %eax,%rdx
    3347:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    334b:	48 01 d0             	add    %rdx,%rax
    334e:	0f b6 00             	movzbl (%rax),%eax
    3351:	3c 30                	cmp    $0x30,%al
    3353:	75 10                	jne    3365 <write_num+0x68>
    3355:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    3359:	75 0a                	jne    3365 <write_num+0x68>
    335b:	b8 00 00 00 00       	mov    $0x0,%eax
    3360:	e9 74 02 00 00       	jmpq   35d9 <write_num+0x2dc>
    3365:	83 7d c8 00          	cmpl   $0x0,-0x38(%rbp)
    3369:	75 34                	jne    339f <write_num+0xa2>
    336b:	81 7d dc fe 03 00 00 	cmpl   $0x3fe,-0x24(%rbp)
    3372:	75 2b                	jne    339f <write_num+0xa2>
    3374:	8b 45 dc             	mov    -0x24(%rbp),%eax
    3377:	48 63 d0             	movslq %eax,%rdx
    337a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    337e:	48 01 d0             	add    %rdx,%rax
    3381:	0f b6 00             	movzbl (%rax),%eax
    3384:	3c 30                	cmp    $0x30,%al
    3386:	75 17                	jne    339f <write_num+0xa2>
    3388:	c6 45 c0 20          	movb   $0x20,-0x40(%rbp)
    338c:	8b 45 dc             	mov    -0x24(%rbp),%eax
    338f:	48 63 d0             	movslq %eax,%rdx
    3392:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3396:	48 01 c2             	add    %rax,%rdx
    3399:	0f b6 45 c0          	movzbl -0x40(%rbp),%eax
    339d:	88 02                	mov    %al,(%rdx)
    339f:	83 7d c8 00          	cmpl   $0x0,-0x38(%rbp)
    33a3:	7e 26                	jle    33cb <write_num+0xce>
    33a5:	8b 45 c8             	mov    -0x38(%rbp),%eax
    33a8:	3b 45 c4             	cmp    -0x3c(%rbp),%eax
    33ab:	7d 1e                	jge    33cb <write_num+0xce>
    33ad:	c6 45 c0 20          	movb   $0x20,-0x40(%rbp)
    33b1:	eb 18                	jmp    33cb <write_num+0xce>
    33b3:	83 6d dc 01          	subl   $0x1,-0x24(%rbp)
    33b7:	8b 45 dc             	mov    -0x24(%rbp),%eax
    33ba:	48 63 d0             	movslq %eax,%rdx
    33bd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    33c1:	48 01 d0             	add    %rdx,%rax
    33c4:	c6 00 30             	movb   $0x30,(%rax)
    33c7:	83 45 c4 01          	addl   $0x1,-0x3c(%rbp)
    33cb:	8b 45 c8             	mov    -0x38(%rbp),%eax
    33ce:	3b 45 c4             	cmp    -0x3c(%rbp),%eax
    33d1:	7f e0                	jg     33b3 <write_num+0xb6>
    33d3:	80 7d bc 00          	cmpb   $0x0,-0x44(%rbp)
    33d7:	74 04                	je     33dd <write_num+0xe0>
    33d9:	83 45 c4 01          	addl   $0x1,-0x3c(%rbp)
    33dd:	8b 45 cc             	mov    -0x34(%rbp),%eax
    33e0:	3b 45 c4             	cmp    -0x3c(%rbp),%eax
    33e3:	0f 8e b1 01 00 00    	jle    359a <write_num+0x29d>
    33e9:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%rbp)
    33f0:	eb 17                	jmp    3409 <write_num+0x10c>
    33f2:	8b 45 e8             	mov    -0x18(%rbp),%eax
    33f5:	48 63 d0             	movslq %eax,%rdx
    33f8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    33fc:	48 01 c2             	add    %rax,%rdx
    33ff:	0f b6 45 c0          	movzbl -0x40(%rbp),%eax
    3403:	88 02                	mov    %al,(%rdx)
    3405:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    3409:	8b 45 cc             	mov    -0x34(%rbp),%eax
    340c:	2b 45 c4             	sub    -0x3c(%rbp),%eax
    340f:	39 45 e8             	cmp    %eax,-0x18(%rbp)
    3412:	7e de                	jle    33f2 <write_num+0xf5>
    3414:	8b 45 e8             	mov    -0x18(%rbp),%eax
    3417:	48 63 d0             	movslq %eax,%rdx
    341a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    341e:	48 01 d0             	add    %rdx,%rax
    3421:	c6 00 00             	movb   $0x0,(%rax)
    3424:	8b 45 d8             	mov    -0x28(%rbp),%eax
    3427:	83 e0 01             	and    $0x1,%eax
    342a:	85 c0                	test   %eax,%eax
    342c:	74 6e                	je     349c <write_num+0x19f>
    342e:	80 7d c0 20          	cmpb   $0x20,-0x40(%rbp)
    3432:	75 68                	jne    349c <write_num+0x19f>
    3434:	80 7d bc 00          	cmpb   $0x0,-0x44(%rbp)
    3438:	74 17                	je     3451 <write_num+0x154>
    343a:	83 6d dc 01          	subl   $0x1,-0x24(%rbp)
    343e:	8b 45 dc             	mov    -0x24(%rbp),%eax
    3441:	48 63 d0             	movslq %eax,%rdx
    3444:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3448:	48 01 c2             	add    %rax,%rdx
    344b:	0f b6 45 bc          	movzbl -0x44(%rbp),%eax
    344f:	88 02                	mov    %al,(%rdx)
    3451:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    3454:	48 98                	cltq   
    3456:	8b 55 dc             	mov    -0x24(%rbp),%edx
    3459:	48 63 ca             	movslq %edx,%rcx
    345c:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3460:	48 01 d1             	add    %rdx,%rcx
    3463:	48 89 c2             	mov    %rax,%rdx
    3466:	48 89 ce             	mov    %rcx,%rsi
    3469:	bf 01 00 00 00       	mov    $0x1,%edi
    346e:	e8 fd db ff ff       	callq  1070 <write@plt>
    3473:	89 c3                	mov    %eax,%ebx
    3475:	8b 45 e8             	mov    -0x18(%rbp),%eax
    3478:	83 e8 01             	sub    $0x1,%eax
    347b:	48 98                	cltq   
    347d:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3481:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    3485:	48 89 c2             	mov    %rax,%rdx
    3488:	48 89 ce             	mov    %rcx,%rsi
    348b:	bf 01 00 00 00       	mov    $0x1,%edi
    3490:	e8 db db ff ff       	callq  1070 <write@plt>
    3495:	01 d8                	add    %ebx,%eax
    3497:	e9 3d 01 00 00       	jmpq   35d9 <write_num+0x2dc>
    349c:	8b 45 d8             	mov    -0x28(%rbp),%eax
    349f:	83 e0 01             	and    $0x1,%eax
    34a2:	85 c0                	test   %eax,%eax
    34a4:	75 6e                	jne    3514 <write_num+0x217>
    34a6:	80 7d c0 20          	cmpb   $0x20,-0x40(%rbp)
    34aa:	75 68                	jne    3514 <write_num+0x217>
    34ac:	80 7d bc 00          	cmpb   $0x0,-0x44(%rbp)
    34b0:	74 17                	je     34c9 <write_num+0x1cc>
    34b2:	83 6d dc 01          	subl   $0x1,-0x24(%rbp)
    34b6:	8b 45 dc             	mov    -0x24(%rbp),%eax
    34b9:	48 63 d0             	movslq %eax,%rdx
    34bc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    34c0:	48 01 c2             	add    %rax,%rdx
    34c3:	0f b6 45 bc          	movzbl -0x44(%rbp),%eax
    34c7:	88 02                	mov    %al,(%rdx)
    34c9:	8b 45 e8             	mov    -0x18(%rbp),%eax
    34cc:	83 e8 01             	sub    $0x1,%eax
    34cf:	48 98                	cltq   
    34d1:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    34d5:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    34d9:	48 89 c2             	mov    %rax,%rdx
    34dc:	48 89 ce             	mov    %rcx,%rsi
    34df:	bf 01 00 00 00       	mov    $0x1,%edi
    34e4:	e8 87 db ff ff       	callq  1070 <write@plt>
    34e9:	89 c3                	mov    %eax,%ebx
    34eb:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    34ee:	48 98                	cltq   
    34f0:	8b 55 dc             	mov    -0x24(%rbp),%edx
    34f3:	48 63 ca             	movslq %edx,%rcx
    34f6:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    34fa:	48 01 d1             	add    %rdx,%rcx
    34fd:	48 89 c2             	mov    %rax,%rdx
    3500:	48 89 ce             	mov    %rcx,%rsi
    3503:	bf 01 00 00 00       	mov    $0x1,%edi
    3508:	e8 63 db ff ff       	callq  1070 <write@plt>
    350d:	01 d8                	add    %ebx,%eax
    350f:	e9 c5 00 00 00       	jmpq   35d9 <write_num+0x2dc>
    3514:	8b 45 d8             	mov    -0x28(%rbp),%eax
    3517:	83 e0 01             	and    $0x1,%eax
    351a:	85 c0                	test   %eax,%eax
    351c:	75 7c                	jne    359a <write_num+0x29d>
    351e:	80 7d c0 30          	cmpb   $0x30,-0x40(%rbp)
    3522:	75 76                	jne    359a <write_num+0x29d>
    3524:	80 7d bc 00          	cmpb   $0x0,-0x44(%rbp)
    3528:	74 17                	je     3541 <write_num+0x244>
    352a:	83 6d ec 01          	subl   $0x1,-0x14(%rbp)
    352e:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3531:	48 63 d0             	movslq %eax,%rdx
    3534:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3538:	48 01 c2             	add    %rax,%rdx
    353b:	0f b6 45 bc          	movzbl -0x44(%rbp),%eax
    353f:	88 02                	mov    %al,(%rdx)
    3541:	8b 45 e8             	mov    -0x18(%rbp),%eax
    3544:	2b 45 ec             	sub    -0x14(%rbp),%eax
    3547:	48 98                	cltq   
    3549:	8b 55 ec             	mov    -0x14(%rbp),%edx
    354c:	48 63 ca             	movslq %edx,%rcx
    354f:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3553:	48 01 d1             	add    %rdx,%rcx
    3556:	48 89 c2             	mov    %rax,%rdx
    3559:	48 89 ce             	mov    %rcx,%rsi
    355c:	bf 01 00 00 00       	mov    $0x1,%edi
    3561:	e8 0a db ff ff       	callq  1070 <write@plt>
    3566:	89 c3                	mov    %eax,%ebx
    3568:	b8 01 00 00 00       	mov    $0x1,%eax
    356d:	2b 45 ec             	sub    -0x14(%rbp),%eax
    3570:	8b 55 c4             	mov    -0x3c(%rbp),%edx
    3573:	29 c2                	sub    %eax,%edx
    3575:	89 d0                	mov    %edx,%eax
    3577:	48 98                	cltq   
    3579:	8b 55 dc             	mov    -0x24(%rbp),%edx
    357c:	48 63 ca             	movslq %edx,%rcx
    357f:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3583:	48 01 d1             	add    %rdx,%rcx
    3586:	48 89 c2             	mov    %rax,%rdx
    3589:	48 89 ce             	mov    %rcx,%rsi
    358c:	bf 01 00 00 00       	mov    $0x1,%edi
    3591:	e8 da da ff ff       	callq  1070 <write@plt>
    3596:	01 d8                	add    %ebx,%eax
    3598:	eb 3f                	jmp    35d9 <write_num+0x2dc>
    359a:	80 7d bc 00          	cmpb   $0x0,-0x44(%rbp)
    359e:	74 17                	je     35b7 <write_num+0x2ba>
    35a0:	83 6d dc 01          	subl   $0x1,-0x24(%rbp)
    35a4:	8b 45 dc             	mov    -0x24(%rbp),%eax
    35a7:	48 63 d0             	movslq %eax,%rdx
    35aa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    35ae:	48 01 c2             	add    %rax,%rdx
    35b1:	0f b6 45 bc          	movzbl -0x44(%rbp),%eax
    35b5:	88 02                	mov    %al,(%rdx)
    35b7:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    35ba:	48 98                	cltq   
    35bc:	8b 55 dc             	mov    -0x24(%rbp),%edx
    35bf:	48 63 ca             	movslq %edx,%rcx
    35c2:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    35c6:	48 01 d1             	add    %rdx,%rcx
    35c9:	48 89 c2             	mov    %rax,%rdx
    35cc:	48 89 ce             	mov    %rcx,%rsi
    35cf:	bf 01 00 00 00       	mov    $0x1,%edi
    35d4:	e8 97 da ff ff       	callq  1070 <write@plt>
    35d9:	48 83 c4 48          	add    $0x48,%rsp
    35dd:	5b                   	pop    %rbx
    35de:	5d                   	pop    %rbp
    35df:	c3                   	retq   

00000000000035e0 <write_uint>:
    35e0:	f3 0f 1e fa          	endbr64 
    35e4:	55                   	push   %rbp
    35e5:	48 89 e5             	mov    %rsp,%rbp
    35e8:	53                   	push   %rbx
    35e9:	48 83 ec 38          	sub    $0x38,%rsp
    35ed:	89 7d dc             	mov    %edi,-0x24(%rbp)
    35f0:	89 75 d8             	mov    %esi,-0x28(%rbp)
    35f3:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
    35f7:	89 4d cc             	mov    %ecx,-0x34(%rbp)
    35fa:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
    35fe:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
    3602:	b8 ff 03 00 00       	mov    $0x3ff,%eax
    3607:	2b 45 d8             	sub    -0x28(%rbp),%eax
    360a:	89 45 e8             	mov    %eax,-0x18(%rbp)
    360d:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    3614:	c6 45 e7 20          	movb   $0x20,-0x19(%rbp)
    3618:	83 7d c4 00          	cmpl   $0x0,-0x3c(%rbp)
    361c:	75 27                	jne    3645 <write_uint+0x65>
    361e:	81 7d d8 fe 03 00 00 	cmpl   $0x3fe,-0x28(%rbp)
    3625:	75 1e                	jne    3645 <write_uint+0x65>
    3627:	8b 45 d8             	mov    -0x28(%rbp),%eax
    362a:	48 63 d0             	movslq %eax,%rdx
    362d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3631:	48 01 d0             	add    %rdx,%rax
    3634:	0f b6 00             	movzbl (%rax),%eax
    3637:	3c 30                	cmp    $0x30,%al
    3639:	75 0a                	jne    3645 <write_uint+0x65>
    363b:	b8 00 00 00 00       	mov    $0x0,%eax
    3640:	e9 3d 01 00 00       	jmpq   3782 <write_uint+0x1a2>
    3645:	83 7d c4 00          	cmpl   $0x0,-0x3c(%rbp)
    3649:	7e 26                	jle    3671 <write_uint+0x91>
    364b:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    364e:	3b 45 e8             	cmp    -0x18(%rbp),%eax
    3651:	7d 1e                	jge    3671 <write_uint+0x91>
    3653:	c6 45 e7 20          	movb   $0x20,-0x19(%rbp)
    3657:	eb 18                	jmp    3671 <write_uint+0x91>
    3659:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
    365d:	8b 45 d8             	mov    -0x28(%rbp),%eax
    3660:	48 63 d0             	movslq %eax,%rdx
    3663:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3667:	48 01 d0             	add    %rdx,%rax
    366a:	c6 00 30             	movb   $0x30,(%rax)
    366d:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    3671:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    3674:	3b 45 e8             	cmp    -0x18(%rbp),%eax
    3677:	7f e0                	jg     3659 <write_uint+0x79>
    3679:	8b 45 cc             	mov    -0x34(%rbp),%eax
    367c:	83 e0 04             	and    $0x4,%eax
    367f:	85 c0                	test   %eax,%eax
    3681:	74 0e                	je     3691 <write_uint+0xb1>
    3683:	8b 45 cc             	mov    -0x34(%rbp),%eax
    3686:	83 e0 01             	and    $0x1,%eax
    3689:	85 c0                	test   %eax,%eax
    368b:	75 04                	jne    3691 <write_uint+0xb1>
    368d:	c6 45 e7 30          	movb   $0x30,-0x19(%rbp)
    3691:	8b 45 c8             	mov    -0x38(%rbp),%eax
    3694:	3b 45 e8             	cmp    -0x18(%rbp),%eax
    3697:	0f 8e c3 00 00 00    	jle    3760 <write_uint+0x180>
    369d:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    36a4:	eb 17                	jmp    36bd <write_uint+0xdd>
    36a6:	8b 45 ec             	mov    -0x14(%rbp),%eax
    36a9:	48 63 d0             	movslq %eax,%rdx
    36ac:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    36b0:	48 01 c2             	add    %rax,%rdx
    36b3:	0f b6 45 e7          	movzbl -0x19(%rbp),%eax
    36b7:	88 02                	mov    %al,(%rdx)
    36b9:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    36bd:	8b 45 c8             	mov    -0x38(%rbp),%eax
    36c0:	2b 45 e8             	sub    -0x18(%rbp),%eax
    36c3:	39 45 ec             	cmp    %eax,-0x14(%rbp)
    36c6:	7c de                	jl     36a6 <write_uint+0xc6>
    36c8:	8b 45 ec             	mov    -0x14(%rbp),%eax
    36cb:	48 63 d0             	movslq %eax,%rdx
    36ce:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    36d2:	48 01 d0             	add    %rdx,%rax
    36d5:	c6 00 00             	movb   $0x0,(%rax)
    36d8:	8b 45 cc             	mov    -0x34(%rbp),%eax
    36db:	83 e0 01             	and    $0x1,%eax
    36de:	85 c0                	test   %eax,%eax
    36e0:	74 3f                	je     3721 <write_uint+0x141>
    36e2:	8b 45 e8             	mov    -0x18(%rbp),%eax
    36e5:	48 98                	cltq   
    36e7:	8b 55 d8             	mov    -0x28(%rbp),%edx
    36ea:	48 63 ca             	movslq %edx,%rcx
    36ed:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    36f1:	48 01 d1             	add    %rdx,%rcx
    36f4:	48 89 c2             	mov    %rax,%rdx
    36f7:	48 89 ce             	mov    %rcx,%rsi
    36fa:	bf 01 00 00 00       	mov    $0x1,%edi
    36ff:	e8 6c d9 ff ff       	callq  1070 <write@plt>
    3704:	89 c3                	mov    %eax,%ebx
    3706:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3709:	48 63 d0             	movslq %eax,%rdx
    370c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3710:	48 89 c6             	mov    %rax,%rsi
    3713:	bf 01 00 00 00       	mov    $0x1,%edi
    3718:	e8 53 d9 ff ff       	callq  1070 <write@plt>
    371d:	01 d8                	add    %ebx,%eax
    371f:	eb 61                	jmp    3782 <write_uint+0x1a2>
    3721:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3724:	48 63 d0             	movslq %eax,%rdx
    3727:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    372b:	48 89 c6             	mov    %rax,%rsi
    372e:	bf 01 00 00 00       	mov    $0x1,%edi
    3733:	e8 38 d9 ff ff       	callq  1070 <write@plt>
    3738:	89 c3                	mov    %eax,%ebx
    373a:	8b 45 e8             	mov    -0x18(%rbp),%eax
    373d:	48 98                	cltq   
    373f:	8b 55 d8             	mov    -0x28(%rbp),%edx
    3742:	48 63 ca             	movslq %edx,%rcx
    3745:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3749:	48 01 d1             	add    %rdx,%rcx
    374c:	48 89 c2             	mov    %rax,%rdx
    374f:	48 89 ce             	mov    %rcx,%rsi
    3752:	bf 01 00 00 00       	mov    $0x1,%edi
    3757:	e8 14 d9 ff ff       	callq  1070 <write@plt>
    375c:	01 d8                	add    %ebx,%eax
    375e:	eb 22                	jmp    3782 <write_uint+0x1a2>
    3760:	8b 45 e8             	mov    -0x18(%rbp),%eax
    3763:	48 98                	cltq   
    3765:	8b 55 d8             	mov    -0x28(%rbp),%edx
    3768:	48 63 ca             	movslq %edx,%rcx
    376b:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    376f:	48 01 d1             	add    %rdx,%rcx
    3772:	48 89 c2             	mov    %rax,%rdx
    3775:	48 89 ce             	mov    %rcx,%rsi
    3778:	bf 01 00 00 00       	mov    $0x1,%edi
    377d:	e8 ee d8 ff ff       	callq  1070 <write@plt>
    3782:	48 83 c4 38          	add    $0x38,%rsp
    3786:	5b                   	pop    %rbx
    3787:	5d                   	pop    %rbp
    3788:	c3                   	retq   

0000000000003789 <write_pointer>:
    3789:	f3 0f 1e fa          	endbr64 
    378d:	55                   	push   %rbp
    378e:	48 89 e5             	mov    %rsp,%rbp
    3791:	53                   	push   %rbx
    3792:	48 83 ec 38          	sub    $0x38,%rsp
    3796:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    379a:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    379d:	89 55 d0             	mov    %edx,-0x30(%rbp)
    37a0:	89 4d cc             	mov    %ecx,-0x34(%rbp)
    37a3:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
    37a7:	44 89 ca             	mov    %r9d,%edx
    37aa:	8b 45 10             	mov    0x10(%rbp),%eax
    37ad:	88 55 c4             	mov    %dl,-0x3c(%rbp)
    37b0:	88 45 c0             	mov    %al,-0x40(%rbp)
    37b3:	8b 45 cc             	mov    -0x34(%rbp),%eax
    37b6:	3b 45 d0             	cmp    -0x30(%rbp),%eax
    37b9:	0f 8e 35 02 00 00    	jle    39f4 <write_pointer+0x26b>
    37bf:	c7 45 ec 03 00 00 00 	movl   $0x3,-0x14(%rbp)
    37c6:	eb 17                	jmp    37df <write_pointer+0x56>
    37c8:	8b 45 ec             	mov    -0x14(%rbp),%eax
    37cb:	48 63 d0             	movslq %eax,%rdx
    37ce:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    37d2:	48 01 c2             	add    %rax,%rdx
    37d5:	0f b6 45 c4          	movzbl -0x3c(%rbp),%eax
    37d9:	88 02                	mov    %al,(%rdx)
    37db:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    37df:	8b 45 cc             	mov    -0x34(%rbp),%eax
    37e2:	2b 45 d0             	sub    -0x30(%rbp),%eax
    37e5:	83 c0 02             	add    $0x2,%eax
    37e8:	39 45 ec             	cmp    %eax,-0x14(%rbp)
    37eb:	7e db                	jle    37c8 <write_pointer+0x3f>
    37ed:	8b 45 ec             	mov    -0x14(%rbp),%eax
    37f0:	48 63 d0             	movslq %eax,%rdx
    37f3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    37f7:	48 01 d0             	add    %rdx,%rax
    37fa:	c6 00 00             	movb   $0x0,(%rax)
    37fd:	8b 45 c8             	mov    -0x38(%rbp),%eax
    3800:	83 e0 01             	and    $0x1,%eax
    3803:	85 c0                	test   %eax,%eax
    3805:	0f 84 9a 00 00 00    	je     38a5 <write_pointer+0x11c>
    380b:	80 7d c4 20          	cmpb   $0x20,-0x3c(%rbp)
    380f:	0f 85 90 00 00 00    	jne    38a5 <write_pointer+0x11c>
    3815:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    3819:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    381c:	48 63 d0             	movslq %eax,%rdx
    381f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3823:	48 01 d0             	add    %rdx,%rax
    3826:	c6 00 78             	movb   $0x78,(%rax)
    3829:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    382d:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    3830:	48 63 d0             	movslq %eax,%rdx
    3833:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3837:	48 01 d0             	add    %rdx,%rax
    383a:	c6 00 30             	movb   $0x30,(%rax)
    383d:	80 7d c0 00          	cmpb   $0x0,-0x40(%rbp)
    3841:	74 17                	je     385a <write_pointer+0xd1>
    3843:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    3847:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    384a:	48 63 d0             	movslq %eax,%rdx
    384d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3851:	48 01 c2             	add    %rax,%rdx
    3854:	0f b6 45 c0          	movzbl -0x40(%rbp),%eax
    3858:	88 02                	mov    %al,(%rdx)
    385a:	8b 45 d0             	mov    -0x30(%rbp),%eax
    385d:	48 98                	cltq   
    385f:	8b 55 d4             	mov    -0x2c(%rbp),%edx
    3862:	48 63 ca             	movslq %edx,%rcx
    3865:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    3869:	48 01 d1             	add    %rdx,%rcx
    386c:	48 89 c2             	mov    %rax,%rdx
    386f:	48 89 ce             	mov    %rcx,%rsi
    3872:	bf 01 00 00 00       	mov    $0x1,%edi
    3877:	e8 f4 d7 ff ff       	callq  1070 <write@plt>
    387c:	89 c3                	mov    %eax,%ebx
    387e:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3881:	83 e8 03             	sub    $0x3,%eax
    3884:	48 98                	cltq   
    3886:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    388a:	48 8d 4a 03          	lea    0x3(%rdx),%rcx
    388e:	48 89 c2             	mov    %rax,%rdx
    3891:	48 89 ce             	mov    %rcx,%rsi
    3894:	bf 01 00 00 00       	mov    $0x1,%edi
    3899:	e8 d2 d7 ff ff       	callq  1070 <write@plt>
    389e:	01 d8                	add    %ebx,%eax
    38a0:	e9 bb 01 00 00       	jmpq   3a60 <write_pointer+0x2d7>
    38a5:	8b 45 c8             	mov    -0x38(%rbp),%eax
    38a8:	83 e0 01             	and    $0x1,%eax
    38ab:	85 c0                	test   %eax,%eax
    38ad:	0f 85 9a 00 00 00    	jne    394d <write_pointer+0x1c4>
    38b3:	80 7d c4 20          	cmpb   $0x20,-0x3c(%rbp)
    38b7:	0f 85 90 00 00 00    	jne    394d <write_pointer+0x1c4>
    38bd:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    38c1:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    38c4:	48 63 d0             	movslq %eax,%rdx
    38c7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    38cb:	48 01 d0             	add    %rdx,%rax
    38ce:	c6 00 78             	movb   $0x78,(%rax)
    38d1:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    38d5:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    38d8:	48 63 d0             	movslq %eax,%rdx
    38db:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    38df:	48 01 d0             	add    %rdx,%rax
    38e2:	c6 00 30             	movb   $0x30,(%rax)
    38e5:	80 7d c0 00          	cmpb   $0x0,-0x40(%rbp)
    38e9:	74 17                	je     3902 <write_pointer+0x179>
    38eb:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    38ef:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    38f2:	48 63 d0             	movslq %eax,%rdx
    38f5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    38f9:	48 01 c2             	add    %rax,%rdx
    38fc:	0f b6 45 c0          	movzbl -0x40(%rbp),%eax
    3900:	88 02                	mov    %al,(%rdx)
    3902:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3905:	83 e8 03             	sub    $0x3,%eax
    3908:	48 98                	cltq   
    390a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    390e:	48 8d 4a 03          	lea    0x3(%rdx),%rcx
    3912:	48 89 c2             	mov    %rax,%rdx
    3915:	48 89 ce             	mov    %rcx,%rsi
    3918:	bf 01 00 00 00       	mov    $0x1,%edi
    391d:	e8 4e d7 ff ff       	callq  1070 <write@plt>
    3922:	89 c3                	mov    %eax,%ebx
    3924:	8b 45 d0             	mov    -0x30(%rbp),%eax
    3927:	48 98                	cltq   
    3929:	8b 55 d4             	mov    -0x2c(%rbp),%edx
    392c:	48 63 ca             	movslq %edx,%rcx
    392f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    3933:	48 01 d1             	add    %rdx,%rcx
    3936:	48 89 c2             	mov    %rax,%rdx
    3939:	48 89 ce             	mov    %rcx,%rsi
    393c:	bf 01 00 00 00       	mov    $0x1,%edi
    3941:	e8 2a d7 ff ff       	callq  1070 <write@plt>
    3946:	01 d8                	add    %ebx,%eax
    3948:	e9 13 01 00 00       	jmpq   3a60 <write_pointer+0x2d7>
    394d:	8b 45 c8             	mov    -0x38(%rbp),%eax
    3950:	83 e0 01             	and    $0x1,%eax
    3953:	85 c0                	test   %eax,%eax
    3955:	0f 85 99 00 00 00    	jne    39f4 <write_pointer+0x26b>
    395b:	80 7d c4 30          	cmpb   $0x30,-0x3c(%rbp)
    395f:	0f 85 8f 00 00 00    	jne    39f4 <write_pointer+0x26b>
    3965:	80 7d c0 00          	cmpb   $0x0,-0x40(%rbp)
    3969:	74 17                	je     3982 <write_pointer+0x1f9>
    396b:	83 6d 18 01          	subl   $0x1,0x18(%rbp)
    396f:	8b 45 18             	mov    0x18(%rbp),%eax
    3972:	48 63 d0             	movslq %eax,%rdx
    3975:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3979:	48 01 c2             	add    %rax,%rdx
    397c:	0f b6 45 c0          	movzbl -0x40(%rbp),%eax
    3980:	88 02                	mov    %al,(%rdx)
    3982:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3986:	48 83 c0 01          	add    $0x1,%rax
    398a:	c6 00 30             	movb   $0x30,(%rax)
    398d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3991:	48 83 c0 02          	add    $0x2,%rax
    3995:	c6 00 78             	movb   $0x78,(%rax)
    3998:	8b 45 ec             	mov    -0x14(%rbp),%eax
    399b:	2b 45 18             	sub    0x18(%rbp),%eax
    399e:	48 98                	cltq   
    39a0:	8b 55 18             	mov    0x18(%rbp),%edx
    39a3:	48 63 ca             	movslq %edx,%rcx
    39a6:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    39aa:	48 01 d1             	add    %rdx,%rcx
    39ad:	48 89 c2             	mov    %rax,%rdx
    39b0:	48 89 ce             	mov    %rcx,%rsi
    39b3:	bf 01 00 00 00       	mov    $0x1,%edi
    39b8:	e8 b3 d6 ff ff       	callq  1070 <write@plt>
    39bd:	89 c3                	mov    %eax,%ebx
    39bf:	b8 01 00 00 00       	mov    $0x1,%eax
    39c4:	2b 45 18             	sub    0x18(%rbp),%eax
    39c7:	8b 55 d0             	mov    -0x30(%rbp),%edx
    39ca:	29 c2                	sub    %eax,%edx
    39cc:	89 d0                	mov    %edx,%eax
    39ce:	83 e8 02             	sub    $0x2,%eax
    39d1:	48 98                	cltq   
    39d3:	8b 55 d4             	mov    -0x2c(%rbp),%edx
    39d6:	48 63 ca             	movslq %edx,%rcx
    39d9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    39dd:	48 01 d1             	add    %rdx,%rcx
    39e0:	48 89 c2             	mov    %rax,%rdx
    39e3:	48 89 ce             	mov    %rcx,%rsi
    39e6:	bf 01 00 00 00       	mov    $0x1,%edi
    39eb:	e8 80 d6 ff ff       	callq  1070 <write@plt>
    39f0:	01 d8                	add    %ebx,%eax
    39f2:	eb 6c                	jmp    3a60 <write_pointer+0x2d7>
    39f4:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    39f8:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    39fb:	48 63 d0             	movslq %eax,%rdx
    39fe:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3a02:	48 01 d0             	add    %rdx,%rax
    3a05:	c6 00 78             	movb   $0x78,(%rax)
    3a08:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    3a0c:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    3a0f:	48 63 d0             	movslq %eax,%rdx
    3a12:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3a16:	48 01 d0             	add    %rdx,%rax
    3a19:	c6 00 30             	movb   $0x30,(%rax)
    3a1c:	80 7d c0 00          	cmpb   $0x0,-0x40(%rbp)
    3a20:	74 17                	je     3a39 <write_pointer+0x2b0>
    3a22:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    3a26:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    3a29:	48 63 d0             	movslq %eax,%rdx
    3a2c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3a30:	48 01 c2             	add    %rax,%rdx
    3a33:	0f b6 45 c0          	movzbl -0x40(%rbp),%eax
    3a37:	88 02                	mov    %al,(%rdx)
    3a39:	b8 ff 03 00 00       	mov    $0x3ff,%eax
    3a3e:	2b 45 d4             	sub    -0x2c(%rbp),%eax
    3a41:	48 98                	cltq   
    3a43:	8b 55 d4             	mov    -0x2c(%rbp),%edx
    3a46:	48 63 ca             	movslq %edx,%rcx
    3a49:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    3a4d:	48 01 d1             	add    %rdx,%rcx
    3a50:	48 89 c2             	mov    %rax,%rdx
    3a53:	48 89 ce             	mov    %rcx,%rsi
    3a56:	bf 01 00 00 00       	mov    $0x1,%edi
    3a5b:	e8 10 d6 ff ff       	callq  1070 <write@plt>
    3a60:	48 83 c4 38          	add    $0x38,%rsp
    3a64:	5b                   	pop    %rbx
    3a65:	5d                   	pop    %rbp
    3a66:	c3                   	retq   
    3a67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    3a6e:	00 00 

0000000000003a70 <__libc_csu_init>:
    3a70:	f3 0f 1e fa          	endbr64 
    3a74:	41 57                	push   %r15
    3a76:	4c 8d 3d 2b 23 00 00 	lea    0x232b(%rip),%r15        # 5da8 <__frame_dummy_init_array_entry>
    3a7d:	41 56                	push   %r14
    3a7f:	49 89 d6             	mov    %rdx,%r14
    3a82:	41 55                	push   %r13
    3a84:	49 89 f5             	mov    %rsi,%r13
    3a87:	41 54                	push   %r12
    3a89:	41 89 fc             	mov    %edi,%r12d
    3a8c:	55                   	push   %rbp
    3a8d:	48 8d 2d 1c 23 00 00 	lea    0x231c(%rip),%rbp        # 5db0 <__do_global_dtors_aux_fini_array_entry>
    3a94:	53                   	push   %rbx
    3a95:	4c 29 fd             	sub    %r15,%rbp
    3a98:	48 83 ec 08          	sub    $0x8,%rsp
    3a9c:	e8 5f d5 ff ff       	callq  1000 <_init>
    3aa1:	48 c1 fd 03          	sar    $0x3,%rbp
    3aa5:	74 1f                	je     3ac6 <__libc_csu_init+0x56>
    3aa7:	31 db                	xor    %ebx,%ebx
    3aa9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3ab0:	4c 89 f2             	mov    %r14,%rdx
    3ab3:	4c 89 ee             	mov    %r13,%rsi
    3ab6:	44 89 e7             	mov    %r12d,%edi
    3ab9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    3abd:	48 83 c3 01          	add    $0x1,%rbx
    3ac1:	48 39 dd             	cmp    %rbx,%rbp
    3ac4:	75 ea                	jne    3ab0 <__libc_csu_init+0x40>
    3ac6:	48 83 c4 08          	add    $0x8,%rsp
    3aca:	5b                   	pop    %rbx
    3acb:	5d                   	pop    %rbp
    3acc:	41 5c                	pop    %r12
    3ace:	41 5d                	pop    %r13
    3ad0:	41 5e                	pop    %r14
    3ad2:	41 5f                	pop    %r15
    3ad4:	c3                   	retq   
    3ad5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    3adc:	00 00 00 00 

0000000000003ae0 <__libc_csu_fini>:
    3ae0:	f3 0f 1e fa          	endbr64 
    3ae4:	c3                   	retq   

Disassembly of section .fini:

0000000000003ae8 <_fini>:
    3ae8:	f3 0f 1e fa          	endbr64 
    3aec:	48 83 ec 08          	sub    $0x8,%rsp
    3af0:	48 83 c4 08          	add    $0x8,%rsp
    3af4:	c3                   	retq   
