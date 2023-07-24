
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
    10b3:	4c 8d 05 76 2d 00 00 	lea    0x2d76(%rip),%r8        # 3e30 <__libc_csu_fini>
    10ba:	48 8d 0d ff 2c 00 00 	lea    0x2cff(%rip),%rcx        # 3dc0 <__libc_csu_init>
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
    1210:	e8 23 22 00 00       	callq  3438 <print_char>
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

00000000000013d2 <print_i>:
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
    140b:	77 24                	ja     1431 <print_i+0x5f>
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
    142f:	eb 14                	jmp    1445 <print_i+0x73>
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
    1458:	e8 76 1f 00 00       	callq  33d3 <convert_size_number>
    145d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1461:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1466:	75 16                	jne    147e <print_i+0xac>
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
    1498:	79 77                	jns    1511 <print_i+0x13f>
    149a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    149e:	48 f7 d8             	neg    %rax
    14a1:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    14a5:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
    14ac:	eb 63                	jmp    1511 <print_i+0x13f>
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
    1516:	75 96                	jne    14ae <print_i+0xdc>
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
    153b:	e8 63 20 00 00       	callq  35a3 <print_num>
    1540:	48 83 c4 10          	add    $0x10,%rsp
    1544:	c9                   	leaveq 
    1545:	c3                   	retq   

0000000000001546 <print_b>:
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
    1598:	77 30                	ja     15ca <print_b+0x84>
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
    15c8:	eb 1a                	jmp    15e4 <print_b+0x9e>
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
    1617:	eb 38                	jmp    1651 <print_b+0x10b>
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
    1658:	76 bf                	jbe    1619 <print_b+0xd3>
    165a:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%rbp)
    1661:	00 00 00 
    1664:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%rbp)
    166b:	00 00 00 
    166e:	c7 85 68 ff ff ff 00 	movl   $0x0,-0x98(%rbp)
    1675:	00 00 00 
    1678:	eb 62                	jmp    16dc <print_b+0x196>
    167a:	8b 85 60 ff ff ff    	mov    -0xa0(%rbp),%eax
    1680:	8b 84 85 70 ff ff ff 	mov    -0x90(%rbp,%rax,4),%eax
    1687:	01 85 64 ff ff ff    	add    %eax,-0x9c(%rbp)
    168d:	83 bd 64 ff ff ff 00 	cmpl   $0x0,-0x9c(%rbp)
    1694:	75 09                	jne    169f <print_b+0x159>
    1696:	83 bd 60 ff ff ff 1f 	cmpl   $0x1f,-0xa0(%rbp)
    169d:	75 36                	jne    16d5 <print_b+0x18f>
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
    16e3:	76 95                	jbe    167a <print_b+0x134>
    16e5:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
    16eb:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    16ef:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    16f6:	00 00 
    16f8:	74 05                	je     16ff <print_b+0x1b9>
    16fa:	e8 81 f9 ff ff       	callq  1080 <__stack_chk_fail@plt>
    16ff:	c9                   	leaveq 
    1700:	c3                   	retq   

0000000000001701 <print_ui>:
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
    1733:	77 24                	ja     1759 <print_ui+0x58>
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
    1757:	eb 14                	jmp    176d <print_ui+0x6c>
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
    1780:	e8 81 1c 00 00       	callq  3406 <convert_size_unsgnd>
    1785:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1789:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    178e:	75 16                	jne    17a6 <print_ui+0xa5>
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
    17b3:	eb 63                	jmp    1818 <print_ui+0x117>
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
    181d:	75 96                	jne    17b5 <print_ui+0xb4>
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
    1849:	e8 df 20 00 00       	callq  392d <write_uint>
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
    18db:	e8 26 1b 00 00       	callq  3406 <convert_size_unsgnd>
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
    1995:	e8 93 1f 00 00       	callq  392d <write_uint>
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
    1ad6:	e8 2b 19 00 00       	callq  3406 <convert_size_unsgnd>
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
    1baf:	e8 79 1d 00 00       	callq  392d <write_uint>
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
    1d4f:	e8 82 1d 00 00       	callq  3ad6 <write_pointer>
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
    1e23:	e8 65 14 00 00       	callq  328d <is_printable>
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
    1e76:	e8 39 14 00 00       	callq  32b4 <append_hexa_code>
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
    23dc:	e8 cb 0f 00 00       	callq  33ac <is_digit>
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
    2563:	e8 44 0e 00 00       	callq  33ac <is_digit>
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
    26ca:	48 8d 05 01 ed ff ff 	lea    -0x12ff(%rip),%rax        # 13d2 <print_i>
    26d1:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
    26d8:	c6 85 40 ff ff ff 64 	movb   $0x64,-0xc0(%rbp)
    26df:	48 8d 05 ec ec ff ff 	lea    -0x1314(%rip),%rax        # 13d2 <print_i>
    26e6:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
    26ed:	c6 85 50 ff ff ff 62 	movb   $0x62,-0xb0(%rbp)
    26f4:	48 8d 05 4b ee ff ff 	lea    -0x11b5(%rip),%rax        # 1546 <print_b>
    26fb:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
    2702:	c6 85 60 ff ff ff 75 	movb   $0x75,-0xa0(%rbp)
    2709:	48 8d 05 c2 ec ff ff 	lea    -0x133e(%rip),%rax        # 13d2 <print_i>
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
    2a0c:	48 83 ec 30          	sub    $0x30,%rsp
    2a10:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2a17:	00 00 
    2a19:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2a1d:	31 c0                	xor    %eax,%eax
    2a1f:	48 b8 48 65 6c 6c 6f 	movabs $0x57202c6f6c6c6548,%rax
    2a26:	2c 20 57 
    2a29:	48 89 45 ea          	mov    %rax,-0x16(%rbp)
    2a2d:	c7 45 f2 6f 72 6c 64 	movl   $0x646c726f,-0xe(%rbp)
    2a34:	66 c7 45 f6 21 00    	movw   $0x21,-0xa(%rbp)
    2a3a:	48 8d 3d 1f 16 00 00 	lea    0x161f(%rip),%rdi        # 4060 <_IO_stdin_used+0x60>
    2a41:	b8 00 00 00 00       	mov    $0x0,%eax
    2a46:	e8 1e 05 00 00       	callq  2f69 <_printf>
    2a4b:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    2a4e:	48 8d 3d 0b 16 00 00 	lea    0x160b(%rip),%rdi        # 4060 <_IO_stdin_used+0x60>
    2a55:	b8 00 00 00 00       	mov    $0x0,%eax
    2a5a:	e8 31 e6 ff ff       	callq  1090 <printf@plt>
    2a5f:	89 45 d8             	mov    %eax,-0x28(%rbp)
    2a62:	c7 45 dc ff 03 00 80 	movl   $0x800003ff,-0x24(%rbp)
    2a69:	48 b8 f0 41 75 63 fe 	movabs $0x7ffe637541f0,%rax
    2a70:	7f 00 00 
    2a73:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2a77:	8b 55 d4             	mov    -0x2c(%rbp),%edx
    2a7a:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    2a7d:	89 c6                	mov    %eax,%esi
    2a7f:	48 8d 3d 02 16 00 00 	lea    0x1602(%rip),%rdi        # 4088 <_IO_stdin_used+0x88>
    2a86:	b8 00 00 00 00       	mov    $0x0,%eax
    2a8b:	e8 d9 04 00 00       	callq  2f69 <_printf>
    2a90:	8b 55 d8             	mov    -0x28(%rbp),%edx
    2a93:	8b 45 d8             	mov    -0x28(%rbp),%eax
    2a96:	89 c6                	mov    %eax,%esi
    2a98:	48 8d 3d e9 15 00 00 	lea    0x15e9(%rip),%rdi        # 4088 <_IO_stdin_used+0x88>
    2a9f:	b8 00 00 00 00       	mov    $0x0,%eax
    2aa4:	e8 e7 e5 ff ff       	callq  1090 <printf@plt>
    2aa9:	be 5a 5d f4 ff       	mov    $0xfff45d5a,%esi
    2aae:	48 8d 3d e4 15 00 00 	lea    0x15e4(%rip),%rdi        # 4099 <_IO_stdin_used+0x99>
    2ab5:	b8 00 00 00 00       	mov    $0x0,%eax
    2aba:	e8 aa 04 00 00       	callq  2f69 <_printf>
    2abf:	be 5a 5d f4 ff       	mov    $0xfff45d5a,%esi
    2ac4:	48 8d 3d ce 15 00 00 	lea    0x15ce(%rip),%rdi        # 4099 <_IO_stdin_used+0x99>
    2acb:	b8 00 00 00 00       	mov    $0x0,%eax
    2ad0:	e8 bb e5 ff ff       	callq  1090 <printf@plt>
    2ad5:	8b 45 dc             	mov    -0x24(%rbp),%eax
    2ad8:	89 c6                	mov    %eax,%esi
    2ada:	48 8d 3d c7 15 00 00 	lea    0x15c7(%rip),%rdi        # 40a8 <_IO_stdin_used+0xa8>
    2ae1:	b8 00 00 00 00       	mov    $0x0,%eax
    2ae6:	e8 7e 04 00 00       	callq  2f69 <_printf>
    2aeb:	8b 45 dc             	mov    -0x24(%rbp),%eax
    2aee:	89 c6                	mov    %eax,%esi
    2af0:	48 8d 3d b1 15 00 00 	lea    0x15b1(%rip),%rdi        # 40a8 <_IO_stdin_used+0xa8>
    2af7:	b8 00 00 00 00       	mov    $0x0,%eax
    2afc:	e8 8f e5 ff ff       	callq  1090 <printf@plt>
    2b01:	8b 45 dc             	mov    -0x24(%rbp),%eax
    2b04:	89 c6                	mov    %eax,%esi
    2b06:	48 8d 3d aa 15 00 00 	lea    0x15aa(%rip),%rdi        # 40b7 <_IO_stdin_used+0xb7>
    2b0d:	b8 00 00 00 00       	mov    $0x0,%eax
    2b12:	e8 52 04 00 00       	callq  2f69 <_printf>
    2b17:	8b 45 dc             	mov    -0x24(%rbp),%eax
    2b1a:	89 c6                	mov    %eax,%esi
    2b1c:	48 8d 3d 94 15 00 00 	lea    0x1594(%rip),%rdi        # 40b7 <_IO_stdin_used+0xb7>
    2b23:	b8 00 00 00 00       	mov    $0x0,%eax
    2b28:	e8 63 e5 ff ff       	callq  1090 <printf@plt>
    2b2d:	8b 55 dc             	mov    -0x24(%rbp),%edx
    2b30:	8b 45 dc             	mov    -0x24(%rbp),%eax
    2b33:	89 c6                	mov    %eax,%esi
    2b35:	48 8d 3d 94 15 00 00 	lea    0x1594(%rip),%rdi        # 40d0 <_IO_stdin_used+0xd0>
    2b3c:	b8 00 00 00 00       	mov    $0x0,%eax
    2b41:	e8 23 04 00 00       	callq  2f69 <_printf>
    2b46:	8b 55 dc             	mov    -0x24(%rbp),%edx
    2b49:	8b 45 dc             	mov    -0x24(%rbp),%eax
    2b4c:	89 c6                	mov    %eax,%esi
    2b4e:	48 8d 3d 7b 15 00 00 	lea    0x157b(%rip),%rdi        # 40d0 <_IO_stdin_used+0xd0>
    2b55:	b8 00 00 00 00       	mov    $0x0,%eax
    2b5a:	e8 31 e5 ff ff       	callq  1090 <printf@plt>
    2b5f:	be 48 00 00 00       	mov    $0x48,%esi
    2b64:	48 8d 3d 84 15 00 00 	lea    0x1584(%rip),%rdi        # 40ef <_IO_stdin_used+0xef>
    2b6b:	b8 00 00 00 00       	mov    $0x0,%eax
    2b70:	e8 f4 03 00 00       	callq  2f69 <_printf>
    2b75:	be 48 00 00 00       	mov    $0x48,%esi
    2b7a:	48 8d 3d 6e 15 00 00 	lea    0x156e(%rip),%rdi        # 40ef <_IO_stdin_used+0xef>
    2b81:	b8 00 00 00 00       	mov    $0x0,%eax
    2b86:	e8 05 e5 ff ff       	callq  1090 <printf@plt>
    2b8b:	48 8d 35 6d 15 00 00 	lea    0x156d(%rip),%rsi        # 40ff <_IO_stdin_used+0xff>
    2b92:	48 8d 3d 76 15 00 00 	lea    0x1576(%rip),%rdi        # 410f <_IO_stdin_used+0x10f>
    2b99:	b8 00 00 00 00       	mov    $0x0,%eax
    2b9e:	e8 c6 03 00 00       	callq  2f69 <_printf>
    2ba3:	48 8d 35 55 15 00 00 	lea    0x1555(%rip),%rsi        # 40ff <_IO_stdin_used+0xff>
    2baa:	48 8d 3d 5e 15 00 00 	lea    0x155e(%rip),%rdi        # 410f <_IO_stdin_used+0x10f>
    2bb1:	b8 00 00 00 00       	mov    $0x0,%eax
    2bb6:	e8 d5 e4 ff ff       	callq  1090 <printf@plt>
    2bbb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2bbf:	48 89 c6             	mov    %rax,%rsi
    2bc2:	48 8d 3d 53 15 00 00 	lea    0x1553(%rip),%rdi        # 411c <_IO_stdin_used+0x11c>
    2bc9:	b8 00 00 00 00       	mov    $0x0,%eax
    2bce:	e8 96 03 00 00       	callq  2f69 <_printf>
    2bd3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2bd7:	48 89 c6             	mov    %rax,%rsi
    2bda:	48 8d 3d 3b 15 00 00 	lea    0x153b(%rip),%rdi        # 411c <_IO_stdin_used+0x11c>
    2be1:	b8 00 00 00 00       	mov    $0x0,%eax
    2be6:	e8 a5 e4 ff ff       	callq  1090 <printf@plt>
    2beb:	48 8d 3d 38 15 00 00 	lea    0x1538(%rip),%rdi        # 412a <_IO_stdin_used+0x12a>
    2bf2:	b8 00 00 00 00       	mov    $0x0,%eax
    2bf7:	e8 6d 03 00 00       	callq  2f69 <_printf>
    2bfc:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    2bff:	48 8d 3d 24 15 00 00 	lea    0x1524(%rip),%rdi        # 412a <_IO_stdin_used+0x12a>
    2c06:	b8 00 00 00 00       	mov    $0x0,%eax
    2c0b:	e8 80 e4 ff ff       	callq  1090 <printf@plt>
    2c10:	89 45 d8             	mov    %eax,-0x28(%rbp)
    2c13:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    2c16:	89 c6                	mov    %eax,%esi
    2c18:	48 8d 3d 19 15 00 00 	lea    0x1519(%rip),%rdi        # 4138 <_IO_stdin_used+0x138>
    2c1f:	b8 00 00 00 00       	mov    $0x0,%eax
    2c24:	e8 40 03 00 00       	callq  2f69 <_printf>
    2c29:	8b 45 d8             	mov    -0x28(%rbp),%eax
    2c2c:	89 c6                	mov    %eax,%esi
    2c2e:	48 8d 3d 03 15 00 00 	lea    0x1503(%rip),%rdi        # 4138 <_IO_stdin_used+0x138>
    2c35:	b8 00 00 00 00       	mov    $0x0,%eax
    2c3a:	e8 51 e4 ff ff       	callq  1090 <printf@plt>
    2c3f:	48 8d 3d fc 14 00 00 	lea    0x14fc(%rip),%rdi        # 4142 <_IO_stdin_used+0x142>
    2c46:	b8 00 00 00 00       	mov    $0x0,%eax
    2c4b:	e8 19 03 00 00       	callq  2f69 <_printf>
    2c50:	ba d2 04 00 00       	mov    $0x4d2,%edx
    2c55:	be 03 00 00 00       	mov    $0x3,%esi
    2c5a:	48 8d 3d ef 14 00 00 	lea    0x14ef(%rip),%rdi        # 4150 <_IO_stdin_used+0x150>
    2c61:	b8 00 00 00 00       	mov    $0x0,%eax
    2c66:	e8 fe 02 00 00       	callq  2f69 <_printf>
    2c6b:	ba d2 04 00 00       	mov    $0x4d2,%edx
    2c70:	be 03 00 00 00       	mov    $0x3,%esi
    2c75:	48 8d 3d d4 14 00 00 	lea    0x14d4(%rip),%rdi        # 4150 <_IO_stdin_used+0x150>
    2c7c:	b8 00 00 00 00       	mov    $0x0,%eax
    2c81:	e8 0a e4 ff ff       	callq  1090 <printf@plt>
    2c86:	ba 39 30 00 00       	mov    $0x3039,%edx
    2c8b:	be 05 00 00 00       	mov    $0x5,%esi
    2c90:	48 8d 3d d9 14 00 00 	lea    0x14d9(%rip),%rdi        # 4170 <_IO_stdin_used+0x170>
    2c97:	b8 00 00 00 00       	mov    $0x0,%eax
    2c9c:	e8 c8 02 00 00       	callq  2f69 <_printf>
    2ca1:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    2ca4:	ba 39 30 00 00       	mov    $0x3039,%edx
    2ca9:	be 05 00 00 00       	mov    $0x5,%esi
    2cae:	48 8d 3d bb 14 00 00 	lea    0x14bb(%rip),%rdi        # 4170 <_IO_stdin_used+0x170>
    2cb5:	b8 00 00 00 00       	mov    $0x0,%eax
    2cba:	e8 d1 e3 ff ff       	callq  1090 <printf@plt>
    2cbf:	89 45 d8             	mov    %eax,-0x28(%rbp)
    2cc2:	8b 55 d8             	mov    -0x28(%rbp),%edx
    2cc5:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    2cc8:	89 c6                	mov    %eax,%esi
    2cca:	48 8d 3d be 14 00 00 	lea    0x14be(%rip),%rdi        # 418f <_IO_stdin_used+0x18f>
    2cd1:	b8 00 00 00 00       	mov    $0x0,%eax
    2cd6:	e8 b5 e3 ff ff       	callq  1090 <printf@plt>
    2cdb:	ba 6c d9 ff ff       	mov    $0xffffd96c,%edx
    2ce0:	be 03 00 00 00       	mov    $0x3,%esi
    2ce5:	48 8d 3d b4 14 00 00 	lea    0x14b4(%rip),%rdi        # 41a0 <_IO_stdin_used+0x1a0>
    2cec:	b8 00 00 00 00       	mov    $0x0,%eax
    2cf1:	e8 73 02 00 00       	callq  2f69 <_printf>
    2cf6:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    2cf9:	ba 6c d9 ff ff       	mov    $0xffffd96c,%edx
    2cfe:	be 03 00 00 00       	mov    $0x3,%esi
    2d03:	48 8d 3d 96 14 00 00 	lea    0x1496(%rip),%rdi        # 41a0 <_IO_stdin_used+0x1a0>
    2d0a:	b8 00 00 00 00       	mov    $0x0,%eax
    2d0f:	e8 7c e3 ff ff       	callq  1090 <printf@plt>
    2d14:	89 45 d8             	mov    %eax,-0x28(%rbp)
    2d17:	8b 55 d8             	mov    -0x28(%rbp),%edx
    2d1a:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    2d1d:	89 c6                	mov    %eax,%esi
    2d1f:	48 8d 3d 69 14 00 00 	lea    0x1469(%rip),%rdi        # 418f <_IO_stdin_used+0x18f>
    2d26:	b8 00 00 00 00       	mov    $0x0,%eax
    2d2b:	e8 60 e3 ff ff       	callq  1090 <printf@plt>
    2d30:	48 8b 05 69 15 00 00 	mov    0x1569(%rip),%rax        # 42a0 <_IO_stdin_used+0x2a0>
    2d37:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2d3c:	be 02 00 00 00       	mov    $0x2,%esi
    2d41:	48 8d 3d 80 14 00 00 	lea    0x1480(%rip),%rdi        # 41c8 <_IO_stdin_used+0x1c8>
    2d48:	b8 01 00 00 00       	mov    $0x1,%eax
    2d4d:	e8 17 02 00 00       	callq  2f69 <_printf>
    2d52:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    2d55:	48 8b 05 44 15 00 00 	mov    0x1544(%rip),%rax        # 42a0 <_IO_stdin_used+0x2a0>
    2d5c:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2d61:	be 02 00 00 00       	mov    $0x2,%esi
    2d66:	48 8d 3d 5b 14 00 00 	lea    0x145b(%rip),%rdi        # 41c8 <_IO_stdin_used+0x1c8>
    2d6d:	b8 01 00 00 00       	mov    $0x1,%eax
    2d72:	e8 19 e3 ff ff       	callq  1090 <printf@plt>
    2d77:	89 45 d8             	mov    %eax,-0x28(%rbp)
    2d7a:	8b 55 d8             	mov    -0x28(%rbp),%edx
    2d7d:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    2d80:	89 c6                	mov    %eax,%esi
    2d82:	48 8d 3d 06 14 00 00 	lea    0x1406(%rip),%rdi        # 418f <_IO_stdin_used+0x18f>
    2d89:	b8 00 00 00 00       	mov    $0x0,%eax
    2d8e:	e8 fd e2 ff ff       	callq  1090 <printf@plt>
    2d93:	48 8d 45 ea          	lea    -0x16(%rbp),%rax
    2d97:	48 89 c2             	mov    %rax,%rdx
    2d9a:	be 05 00 00 00       	mov    $0x5,%esi
    2d9f:	48 8d 3d 3f 14 00 00 	lea    0x143f(%rip),%rdi        # 41e5 <_IO_stdin_used+0x1e5>
    2da6:	b8 00 00 00 00       	mov    $0x0,%eax
    2dab:	e8 b9 01 00 00       	callq  2f69 <_printf>
    2db0:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    2db3:	48 8d 45 ea          	lea    -0x16(%rbp),%rax
    2db7:	48 89 c2             	mov    %rax,%rdx
    2dba:	be 05 00 00 00       	mov    $0x5,%esi
    2dbf:	48 8d 3d 1f 14 00 00 	lea    0x141f(%rip),%rdi        # 41e5 <_IO_stdin_used+0x1e5>
    2dc6:	b8 00 00 00 00       	mov    $0x0,%eax
    2dcb:	e8 c0 e2 ff ff       	callq  1090 <printf@plt>
    2dd0:	89 45 d8             	mov    %eax,-0x28(%rbp)
    2dd3:	8b 55 d8             	mov    -0x28(%rbp),%edx
    2dd6:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    2dd9:	89 c6                	mov    %eax,%esi
    2ddb:	48 8d 3d ad 13 00 00 	lea    0x13ad(%rip),%rdi        # 418f <_IO_stdin_used+0x18f>
    2de2:	b8 00 00 00 00       	mov    $0x0,%eax
    2de7:	e8 a4 e2 ff ff       	callq  1090 <printf@plt>
    2dec:	c7 45 dc ff ff ff ff 	movl   $0xffffffff,-0x24(%rbp)
    2df3:	8b 45 dc             	mov    -0x24(%rbp),%eax
    2df6:	89 c2                	mov    %eax,%edx
    2df8:	be 07 00 00 00       	mov    $0x7,%esi
    2dfd:	48 8d 3d 04 14 00 00 	lea    0x1404(%rip),%rdi        # 4208 <_IO_stdin_used+0x208>
    2e04:	b8 00 00 00 00       	mov    $0x0,%eax
    2e09:	e8 5b 01 00 00       	callq  2f69 <_printf>
    2e0e:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    2e11:	8b 45 dc             	mov    -0x24(%rbp),%eax
    2e14:	89 c2                	mov    %eax,%edx
    2e16:	be 07 00 00 00       	mov    $0x7,%esi
    2e1b:	48 8d 3d e6 13 00 00 	lea    0x13e6(%rip),%rdi        # 4208 <_IO_stdin_used+0x208>
    2e22:	b8 00 00 00 00       	mov    $0x0,%eax
    2e27:	e8 64 e2 ff ff       	callq  1090 <printf@plt>
    2e2c:	89 45 d8             	mov    %eax,-0x28(%rbp)
    2e2f:	8b 55 d8             	mov    -0x28(%rbp),%edx
    2e32:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    2e35:	89 c6                	mov    %eax,%esi
    2e37:	48 8d 3d 51 13 00 00 	lea    0x1351(%rip),%rdi        # 418f <_IO_stdin_used+0x18f>
    2e3e:	b8 00 00 00 00       	mov    $0x0,%eax
    2e43:	e8 48 e2 ff ff       	callq  1090 <printf@plt>
    2e48:	c7 45 dc ff ff ff ff 	movl   $0xffffffff,-0x24(%rbp)
    2e4f:	8b 45 dc             	mov    -0x24(%rbp),%eax
    2e52:	89 c2                	mov    %eax,%edx
    2e54:	be 07 00 00 00       	mov    $0x7,%esi
    2e59:	48 8d 3d d0 13 00 00 	lea    0x13d0(%rip),%rdi        # 4230 <_IO_stdin_used+0x230>
    2e60:	b8 00 00 00 00       	mov    $0x0,%eax
    2e65:	e8 ff 00 00 00       	callq  2f69 <_printf>
    2e6a:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    2e6d:	8b 45 dc             	mov    -0x24(%rbp),%eax
    2e70:	89 c2                	mov    %eax,%edx
    2e72:	be 07 00 00 00       	mov    $0x7,%esi
    2e77:	48 8d 3d b2 13 00 00 	lea    0x13b2(%rip),%rdi        # 4230 <_IO_stdin_used+0x230>
    2e7e:	b8 00 00 00 00       	mov    $0x0,%eax
    2e83:	e8 08 e2 ff ff       	callq  1090 <printf@plt>
    2e88:	89 45 d8             	mov    %eax,-0x28(%rbp)
    2e8b:	8b 55 d8             	mov    -0x28(%rbp),%edx
    2e8e:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    2e91:	89 c6                	mov    %eax,%esi
    2e93:	48 8d 3d f5 12 00 00 	lea    0x12f5(%rip),%rdi        # 418f <_IO_stdin_used+0x18f>
    2e9a:	b8 00 00 00 00       	mov    $0x0,%eax
    2e9f:	e8 ec e1 ff ff       	callq  1090 <printf@plt>
    2ea4:	8b 45 dc             	mov    -0x24(%rbp),%eax
    2ea7:	89 c2                	mov    %eax,%edx
    2ea9:	be 06 00 00 00       	mov    $0x6,%esi
    2eae:	48 8d 3d a3 13 00 00 	lea    0x13a3(%rip),%rdi        # 4258 <_IO_stdin_used+0x258>
    2eb5:	b8 00 00 00 00       	mov    $0x0,%eax
    2eba:	e8 aa 00 00 00       	callq  2f69 <_printf>
    2ebf:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    2ec2:	8b 45 dc             	mov    -0x24(%rbp),%eax
    2ec5:	89 c2                	mov    %eax,%edx
    2ec7:	be 06 00 00 00       	mov    $0x6,%esi
    2ecc:	48 8d 3d 85 13 00 00 	lea    0x1385(%rip),%rdi        # 4258 <_IO_stdin_used+0x258>
    2ed3:	b8 00 00 00 00       	mov    $0x0,%eax
    2ed8:	e8 b3 e1 ff ff       	callq  1090 <printf@plt>
    2edd:	89 45 d8             	mov    %eax,-0x28(%rbp)
    2ee0:	8b 55 d8             	mov    -0x28(%rbp),%edx
    2ee3:	8b 45 d8             	mov    -0x28(%rbp),%eax
    2ee6:	89 c6                	mov    %eax,%esi
    2ee8:	48 8d 3d a0 12 00 00 	lea    0x12a0(%rip),%rdi        # 418f <_IO_stdin_used+0x18f>
    2eef:	b8 00 00 00 00       	mov    $0x0,%eax
    2ef4:	e8 97 e1 ff ff       	callq  1090 <printf@plt>
    2ef9:	ba 41 00 00 00       	mov    $0x41,%edx
    2efe:	be 05 00 00 00       	mov    $0x5,%esi
    2f03:	48 8d 3d 76 13 00 00 	lea    0x1376(%rip),%rdi        # 4280 <_IO_stdin_used+0x280>
    2f0a:	b8 00 00 00 00       	mov    $0x0,%eax
    2f0f:	e8 55 00 00 00       	callq  2f69 <_printf>
    2f14:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    2f17:	ba 41 00 00 00       	mov    $0x41,%edx
    2f1c:	be 05 00 00 00       	mov    $0x5,%esi
    2f21:	48 8d 3d 58 13 00 00 	lea    0x1358(%rip),%rdi        # 4280 <_IO_stdin_used+0x280>
    2f28:	b8 00 00 00 00       	mov    $0x0,%eax
    2f2d:	e8 5e e1 ff ff       	callq  1090 <printf@plt>
    2f32:	89 45 d8             	mov    %eax,-0x28(%rbp)
    2f35:	8b 55 d8             	mov    -0x28(%rbp),%edx
    2f38:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    2f3b:	89 c6                	mov    %eax,%esi
    2f3d:	48 8d 3d 4b 12 00 00 	lea    0x124b(%rip),%rdi        # 418f <_IO_stdin_used+0x18f>
    2f44:	b8 00 00 00 00       	mov    $0x0,%eax
    2f49:	e8 42 e1 ff ff       	callq  1090 <printf@plt>
    2f4e:	b8 00 00 00 00       	mov    $0x0,%eax
    2f53:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    2f57:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2f5e:	00 00 
    2f60:	74 05                	je     2f67 <main+0x563>
    2f62:	e8 19 e1 ff ff       	callq  1080 <__stack_chk_fail@plt>
    2f67:	c9                   	leaveq 
    2f68:	c3                   	retq   

0000000000002f69 <_printf>:
    2f69:	f3 0f 1e fa          	endbr64 
    2f6d:	55                   	push   %rbp
    2f6e:	48 89 e5             	mov    %rsp,%rbp
    2f71:	48 81 ec 10 05 00 00 	sub    $0x510,%rsp
    2f78:	48 89 bd f8 fa ff ff 	mov    %rdi,-0x508(%rbp)
    2f7f:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
    2f86:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
    2f8d:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
    2f94:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
    2f9b:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
    2fa2:	84 c0                	test   %al,%al
    2fa4:	74 20                	je     2fc6 <_printf+0x5d>
    2fa6:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
    2faa:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
    2fae:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
    2fb2:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
    2fb6:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
    2fba:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
    2fbe:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
    2fc2:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
    2fc6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2fcd:	00 00 
    2fcf:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
    2fd6:	31 c0                	xor    %eax,%eax
    2fd8:	c7 85 14 fb ff ff 00 	movl   $0x0,-0x4ec(%rbp)
    2fdf:	00 00 00 
    2fe2:	c7 85 10 fb ff ff 00 	movl   $0x0,-0x4f0(%rbp)
    2fe9:	00 00 00 
    2fec:	c7 85 0c fb ff ff 00 	movl   $0x0,-0x4f4(%rbp)
    2ff3:	00 00 00 
    2ff6:	48 83 bd f8 fa ff ff 	cmpq   $0x0,-0x508(%rbp)
    2ffd:	00 
    2ffe:	75 0a                	jne    300a <_printf+0xa1>
    3000:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3005:	e9 25 02 00 00       	jmpq   322f <_printf+0x2c6>
    300a:	c7 85 28 fb ff ff 08 	movl   $0x8,-0x4d8(%rbp)
    3011:	00 00 00 
    3014:	c7 85 2c fb ff ff 30 	movl   $0x30,-0x4d4(%rbp)
    301b:	00 00 00 
    301e:	48 8d 45 10          	lea    0x10(%rbp),%rax
    3022:	48 89 85 30 fb ff ff 	mov    %rax,-0x4d0(%rbp)
    3029:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
    3030:	48 89 85 38 fb ff ff 	mov    %rax,-0x4c8(%rbp)
    3037:	c7 85 08 fb ff ff 00 	movl   $0x0,-0x4f8(%rbp)
    303e:	00 00 00 
    3041:	e9 a2 01 00 00       	jmpq   31e8 <_printf+0x27f>
    3046:	8b 85 08 fb ff ff    	mov    -0x4f8(%rbp),%eax
    304c:	48 63 d0             	movslq %eax,%rdx
    304f:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
    3056:	48 01 d0             	add    %rdx,%rax
    3059:	0f b6 00             	movzbl (%rax),%eax
    305c:	3c 25                	cmp    $0x25,%al
    305e:	74 61                	je     30c1 <_printf+0x158>
    3060:	8b 85 08 fb ff ff    	mov    -0x4f8(%rbp),%eax
    3066:	48 63 d0             	movslq %eax,%rdx
    3069:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
    3070:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    3074:	8b 85 0c fb ff ff    	mov    -0x4f4(%rbp),%eax
    307a:	8d 50 01             	lea    0x1(%rax),%edx
    307d:	89 95 0c fb ff ff    	mov    %edx,-0x4f4(%rbp)
    3083:	0f b6 11             	movzbl (%rcx),%edx
    3086:	48 98                	cltq   
    3088:	88 94 05 40 fb ff ff 	mov    %dl,-0x4c0(%rbp,%rax,1)
    308f:	8b 85 0c fb ff ff    	mov    -0x4f4(%rbp),%eax
    3095:	3d 00 04 00 00       	cmp    $0x400,%eax
    309a:	75 19                	jne    30b5 <_printf+0x14c>
    309c:	48 8d 95 0c fb ff ff 	lea    -0x4f4(%rbp),%rdx
    30a3:	48 8d 85 40 fb ff ff 	lea    -0x4c0(%rbp),%rax
    30aa:	48 89 d6             	mov    %rdx,%rsi
    30ad:	48 89 c7             	mov    %rax,%rdi
    30b0:	e8 93 01 00 00       	callq  3248 <print_buffer>
    30b5:	83 85 10 fb ff ff 01 	addl   $0x1,-0x4f0(%rbp)
    30bc:	e9 18 01 00 00       	jmpq   31d9 <_printf+0x270>
    30c1:	48 8d 95 0c fb ff ff 	lea    -0x4f4(%rbp),%rdx
    30c8:	48 8d 85 40 fb ff ff 	lea    -0x4c0(%rbp),%rax
    30cf:	48 89 d6             	mov    %rdx,%rsi
    30d2:	48 89 c7             	mov    %rax,%rdi
    30d5:	e8 6e 01 00 00       	callq  3248 <print_buffer>
    30da:	48 8d 95 08 fb ff ff 	lea    -0x4f8(%rbp),%rdx
    30e1:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
    30e8:	48 89 d6             	mov    %rdx,%rsi
    30eb:	48 89 c7             	mov    %rax,%rdi
    30ee:	e8 79 f1 ff ff       	callq  226c <get_flags>
    30f3:	89 85 18 fb ff ff    	mov    %eax,-0x4e8(%rbp)
    30f9:	48 8d 95 28 fb ff ff 	lea    -0x4d8(%rbp),%rdx
    3100:	48 8d 8d 08 fb ff ff 	lea    -0x4f8(%rbp),%rcx
    3107:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
    310e:	48 89 ce             	mov    %rcx,%rsi
    3111:	48 89 c7             	mov    %rax,%rdi
    3114:	e8 05 f4 ff ff       	callq  251e <get_width>
    3119:	89 85 1c fb ff ff    	mov    %eax,-0x4e4(%rbp)
    311f:	48 8d 95 28 fb ff ff 	lea    -0x4d8(%rbp),%rdx
    3126:	48 8d 8d 08 fb ff ff 	lea    -0x4f8(%rbp),%rcx
    312d:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
    3134:	48 89 ce             	mov    %rcx,%rsi
    3137:	48 89 c7             	mov    %rax,%rdi
    313a:	e8 31 f2 ff ff       	callq  2370 <get_precision>
    313f:	89 85 20 fb ff ff    	mov    %eax,-0x4e0(%rbp)
    3145:	48 8d 95 08 fb ff ff 	lea    -0x4f8(%rbp),%rdx
    314c:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
    3153:	48 89 d6             	mov    %rdx,%rsi
    3156:	48 89 c7             	mov    %rax,%rdi
    3159:	e8 43 f3 ff ff       	callq  24a1 <get_size>
    315e:	89 85 24 fb ff ff    	mov    %eax,-0x4dc(%rbp)
    3164:	8b 85 08 fb ff ff    	mov    -0x4f8(%rbp),%eax
    316a:	83 c0 01             	add    $0x1,%eax
    316d:	89 85 08 fb ff ff    	mov    %eax,-0x4f8(%rbp)
    3173:	44 8b 8d 1c fb ff ff 	mov    -0x4e4(%rbp),%r9d
    317a:	44 8b 85 18 fb ff ff 	mov    -0x4e8(%rbp),%r8d
    3181:	48 8d 8d 40 fb ff ff 	lea    -0x4c0(%rbp),%rcx
    3188:	48 8d 95 28 fb ff ff 	lea    -0x4d8(%rbp),%rdx
    318f:	48 8d b5 08 fb ff ff 	lea    -0x4f8(%rbp),%rsi
    3196:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
    319d:	8b bd 24 fb ff ff    	mov    -0x4dc(%rbp),%edi
    31a3:	57                   	push   %rdi
    31a4:	8b bd 20 fb ff ff    	mov    -0x4e0(%rbp),%edi
    31aa:	57                   	push   %rdi
    31ab:	48 89 c7             	mov    %rax,%rdi
    31ae:	e8 75 f4 ff ff       	callq  2628 <handle_print>
    31b3:	48 83 c4 10          	add    $0x10,%rsp
    31b7:	89 85 14 fb ff ff    	mov    %eax,-0x4ec(%rbp)
    31bd:	83 bd 14 fb ff ff ff 	cmpl   $0xffffffff,-0x4ec(%rbp)
    31c4:	75 07                	jne    31cd <_printf+0x264>
    31c6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    31cb:	eb 62                	jmp    322f <_printf+0x2c6>
    31cd:	8b 85 14 fb ff ff    	mov    -0x4ec(%rbp),%eax
    31d3:	01 85 10 fb ff ff    	add    %eax,-0x4f0(%rbp)
    31d9:	8b 85 08 fb ff ff    	mov    -0x4f8(%rbp),%eax
    31df:	83 c0 01             	add    $0x1,%eax
    31e2:	89 85 08 fb ff ff    	mov    %eax,-0x4f8(%rbp)
    31e8:	48 83 bd f8 fa ff ff 	cmpq   $0x0,-0x508(%rbp)
    31ef:	00 
    31f0:	74 1e                	je     3210 <_printf+0x2a7>
    31f2:	8b 85 08 fb ff ff    	mov    -0x4f8(%rbp),%eax
    31f8:	48 63 d0             	movslq %eax,%rdx
    31fb:	48 8b 85 f8 fa ff ff 	mov    -0x508(%rbp),%rax
    3202:	48 01 d0             	add    %rdx,%rax
    3205:	0f b6 00             	movzbl (%rax),%eax
    3208:	84 c0                	test   %al,%al
    320a:	0f 85 36 fe ff ff    	jne    3046 <_printf+0xdd>
    3210:	48 8d 95 0c fb ff ff 	lea    -0x4f4(%rbp),%rdx
    3217:	48 8d 85 40 fb ff ff 	lea    -0x4c0(%rbp),%rax
    321e:	48 89 d6             	mov    %rdx,%rsi
    3221:	48 89 c7             	mov    %rax,%rdi
    3224:	e8 1f 00 00 00       	callq  3248 <print_buffer>
    3229:	8b 85 10 fb ff ff    	mov    -0x4f0(%rbp),%eax
    322f:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
    3236:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    323d:	00 00 
    323f:	74 05                	je     3246 <_printf+0x2dd>
    3241:	e8 3a de ff ff       	callq  1080 <__stack_chk_fail@plt>
    3246:	c9                   	leaveq 
    3247:	c3                   	retq   

0000000000003248 <print_buffer>:
    3248:	f3 0f 1e fa          	endbr64 
    324c:	55                   	push   %rbp
    324d:	48 89 e5             	mov    %rsp,%rbp
    3250:	48 83 ec 10          	sub    $0x10,%rsp
    3254:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3258:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    325c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3260:	8b 00                	mov    (%rax),%eax
    3262:	85 c0                	test   %eax,%eax
    3264:	7e 1a                	jle    3280 <print_buffer+0x38>
    3266:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    326a:	8b 00                	mov    (%rax),%eax
    326c:	48 63 d0             	movslq %eax,%rdx
    326f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3273:	48 89 c6             	mov    %rax,%rsi
    3276:	bf 01 00 00 00       	mov    $0x1,%edi
    327b:	e8 f0 dd ff ff       	callq  1070 <write@plt>
    3280:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3284:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    328a:	90                   	nop
    328b:	c9                   	leaveq 
    328c:	c3                   	retq   

000000000000328d <is_printable>:
    328d:	f3 0f 1e fa          	endbr64 
    3291:	55                   	push   %rbp
    3292:	48 89 e5             	mov    %rsp,%rbp
    3295:	89 f8                	mov    %edi,%eax
    3297:	88 45 fc             	mov    %al,-0x4(%rbp)
    329a:	80 7d fc 1f          	cmpb   $0x1f,-0x4(%rbp)
    329e:	7e 0d                	jle    32ad <is_printable+0x20>
    32a0:	80 7d fc 7f          	cmpb   $0x7f,-0x4(%rbp)
    32a4:	74 07                	je     32ad <is_printable+0x20>
    32a6:	b8 01 00 00 00       	mov    $0x1,%eax
    32ab:	eb 05                	jmp    32b2 <is_printable+0x25>
    32ad:	b8 00 00 00 00       	mov    $0x0,%eax
    32b2:	5d                   	pop    %rbp
    32b3:	c3                   	retq   

00000000000032b4 <append_hexa_code>:
    32b4:	f3 0f 1e fa          	endbr64 
    32b8:	55                   	push   %rbp
    32b9:	48 89 e5             	mov    %rsp,%rbp
    32bc:	48 83 ec 30          	sub    $0x30,%rsp
    32c0:	89 f8                	mov    %edi,%eax
    32c2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    32c6:	89 55 d8             	mov    %edx,-0x28(%rbp)
    32c9:	88 45 dc             	mov    %al,-0x24(%rbp)
    32cc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    32d3:	00 00 
    32d5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    32d9:	31 c0                	xor    %eax,%eax
    32db:	48 b8 30 31 32 33 34 	movabs $0x3736353433323130,%rax
    32e2:	35 36 37 
    32e5:	48 ba 38 39 41 42 43 	movabs $0x4645444342413938,%rdx
    32ec:	44 45 46 
    32ef:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    32f3:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    32f7:	c6 45 f0 00          	movb   $0x0,-0x10(%rbp)
    32fb:	80 7d dc 00          	cmpb   $0x0,-0x24(%rbp)
    32ff:	79 09                	jns    330a <append_hexa_code+0x56>
    3301:	0f b6 45 dc          	movzbl -0x24(%rbp),%eax
    3305:	f7 d8                	neg    %eax
    3307:	88 45 dc             	mov    %al,-0x24(%rbp)
    330a:	8b 45 d8             	mov    -0x28(%rbp),%eax
    330d:	8d 50 01             	lea    0x1(%rax),%edx
    3310:	89 55 d8             	mov    %edx,-0x28(%rbp)
    3313:	48 63 d0             	movslq %eax,%rdx
    3316:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    331a:	48 01 d0             	add    %rdx,%rax
    331d:	c6 00 5c             	movb   $0x5c,(%rax)
    3320:	8b 45 d8             	mov    -0x28(%rbp),%eax
    3323:	8d 50 01             	lea    0x1(%rax),%edx
    3326:	89 55 d8             	mov    %edx,-0x28(%rbp)
    3329:	48 63 d0             	movslq %eax,%rdx
    332c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3330:	48 01 d0             	add    %rdx,%rax
    3333:	c6 00 78             	movb   $0x78,(%rax)
    3336:	0f b6 45 dc          	movzbl -0x24(%rbp),%eax
    333a:	8d 50 0f             	lea    0xf(%rax),%edx
    333d:	84 c0                	test   %al,%al
    333f:	0f 48 c2             	cmovs  %edx,%eax
    3342:	c0 f8 04             	sar    $0x4,%al
    3345:	0f be c8             	movsbl %al,%ecx
    3348:	8b 45 d8             	mov    -0x28(%rbp),%eax
    334b:	8d 50 01             	lea    0x1(%rax),%edx
    334e:	89 55 d8             	mov    %edx,-0x28(%rbp)
    3351:	48 63 d0             	movslq %eax,%rdx
    3354:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3358:	48 01 c2             	add    %rax,%rdx
    335b:	48 63 c1             	movslq %ecx,%rax
    335e:	0f b6 44 05 e0       	movzbl -0x20(%rbp,%rax,1),%eax
    3363:	88 02                	mov    %al,(%rdx)
    3365:	0f b6 45 dc          	movzbl -0x24(%rbp),%eax
    3369:	89 c2                	mov    %eax,%edx
    336b:	c0 fa 07             	sar    $0x7,%dl
    336e:	c0 ea 04             	shr    $0x4,%dl
    3371:	01 d0                	add    %edx,%eax
    3373:	83 e0 0f             	and    $0xf,%eax
    3376:	29 d0                	sub    %edx,%eax
    3378:	0f be c0             	movsbl %al,%eax
    337b:	8b 55 d8             	mov    -0x28(%rbp),%edx
    337e:	48 63 ca             	movslq %edx,%rcx
    3381:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3385:	48 01 ca             	add    %rcx,%rdx
    3388:	48 98                	cltq   
    338a:	0f b6 44 05 e0       	movzbl -0x20(%rbp,%rax,1),%eax
    338f:	88 02                	mov    %al,(%rdx)
    3391:	b8 03 00 00 00       	mov    $0x3,%eax
    3396:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    339a:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    33a1:	00 00 
    33a3:	74 05                	je     33aa <append_hexa_code+0xf6>
    33a5:	e8 d6 dc ff ff       	callq  1080 <__stack_chk_fail@plt>
    33aa:	c9                   	leaveq 
    33ab:	c3                   	retq   

00000000000033ac <is_digit>:
    33ac:	f3 0f 1e fa          	endbr64 
    33b0:	55                   	push   %rbp
    33b1:	48 89 e5             	mov    %rsp,%rbp
    33b4:	89 f8                	mov    %edi,%eax
    33b6:	88 45 fc             	mov    %al,-0x4(%rbp)
    33b9:	80 7d fc 2f          	cmpb   $0x2f,-0x4(%rbp)
    33bd:	7e 0d                	jle    33cc <is_digit+0x20>
    33bf:	80 7d fc 39          	cmpb   $0x39,-0x4(%rbp)
    33c3:	7f 07                	jg     33cc <is_digit+0x20>
    33c5:	b8 01 00 00 00       	mov    $0x1,%eax
    33ca:	eb 05                	jmp    33d1 <is_digit+0x25>
    33cc:	b8 00 00 00 00       	mov    $0x0,%eax
    33d1:	5d                   	pop    %rbp
    33d2:	c3                   	retq   

00000000000033d3 <convert_size_number>:
    33d3:	f3 0f 1e fa          	endbr64 
    33d7:	55                   	push   %rbp
    33d8:	48 89 e5             	mov    %rsp,%rbp
    33db:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    33df:	89 75 f4             	mov    %esi,-0xc(%rbp)
    33e2:	83 7d f4 02          	cmpl   $0x2,-0xc(%rbp)
    33e6:	75 06                	jne    33ee <convert_size_number+0x1b>
    33e8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    33ec:	eb 16                	jmp    3404 <convert_size_number+0x31>
    33ee:	83 7d f4 01          	cmpl   $0x1,-0xc(%rbp)
    33f2:	75 0a                	jne    33fe <convert_size_number+0x2b>
    33f4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    33f8:	48 0f bf c0          	movswq %ax,%rax
    33fc:	eb 06                	jmp    3404 <convert_size_number+0x31>
    33fe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3402:	48 98                	cltq   
    3404:	5d                   	pop    %rbp
    3405:	c3                   	retq   

0000000000003406 <convert_size_unsgnd>:
    3406:	f3 0f 1e fa          	endbr64 
    340a:	55                   	push   %rbp
    340b:	48 89 e5             	mov    %rsp,%rbp
    340e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3412:	89 75 f4             	mov    %esi,-0xc(%rbp)
    3415:	83 7d f4 02          	cmpl   $0x2,-0xc(%rbp)
    3419:	75 06                	jne    3421 <convert_size_unsgnd+0x1b>
    341b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    341f:	eb 15                	jmp    3436 <convert_size_unsgnd+0x30>
    3421:	83 7d f4 01          	cmpl   $0x1,-0xc(%rbp)
    3425:	75 09                	jne    3430 <convert_size_unsgnd+0x2a>
    3427:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    342b:	0f b7 c0             	movzwl %ax,%eax
    342e:	eb 06                	jmp    3436 <convert_size_unsgnd+0x30>
    3430:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3434:	89 c0                	mov    %eax,%eax
    3436:	5d                   	pop    %rbp
    3437:	c3                   	retq   

0000000000003438 <print_char>:
    3438:	f3 0f 1e fa          	endbr64 
    343c:	55                   	push   %rbp
    343d:	48 89 e5             	mov    %rsp,%rbp
    3440:	53                   	push   %rbx
    3441:	48 83 ec 38          	sub    $0x38,%rsp
    3445:	89 f8                	mov    %edi,%eax
    3447:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    344b:	89 55 d8             	mov    %edx,-0x28(%rbp)
    344e:	89 4d cc             	mov    %ecx,-0x34(%rbp)
    3451:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
    3455:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
    3459:	88 45 dc             	mov    %al,-0x24(%rbp)
    345c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    3463:	c6 45 eb 20          	movb   $0x20,-0x15(%rbp)
    3467:	8b 45 d8             	mov    -0x28(%rbp),%eax
    346a:	83 e0 04             	and    $0x4,%eax
    346d:	85 c0                	test   %eax,%eax
    346f:	74 04                	je     3475 <print_char+0x3d>
    3471:	c6 45 eb 30          	movb   $0x30,-0x15(%rbp)
    3475:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3478:	8d 50 01             	lea    0x1(%rax),%edx
    347b:	89 55 ec             	mov    %edx,-0x14(%rbp)
    347e:	48 63 d0             	movslq %eax,%rdx
    3481:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3485:	48 01 c2             	add    %rax,%rdx
    3488:	0f b6 45 dc          	movzbl -0x24(%rbp),%eax
    348c:	88 02                	mov    %al,(%rdx)
    348e:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3491:	48 63 d0             	movslq %eax,%rdx
    3494:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3498:	48 01 d0             	add    %rdx,%rax
    349b:	c6 00 00             	movb   $0x0,(%rax)
    349e:	83 7d cc 01          	cmpl   $0x1,-0x34(%rbp)
    34a2:	0f 8e de 00 00 00    	jle    3586 <print_char+0x14e>
    34a8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    34ac:	48 05 ff 03 00 00    	add    $0x3ff,%rax
    34b2:	c6 00 00             	movb   $0x0,(%rax)
    34b5:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    34bc:	eb 1f                	jmp    34dd <print_char+0xa5>
    34be:	b8 00 04 00 00       	mov    $0x400,%eax
    34c3:	2b 45 ec             	sub    -0x14(%rbp),%eax
    34c6:	48 98                	cltq   
    34c8:	48 8d 50 fe          	lea    -0x2(%rax),%rdx
    34cc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    34d0:	48 01 c2             	add    %rax,%rdx
    34d3:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    34d7:	88 02                	mov    %al,(%rdx)
    34d9:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    34dd:	8b 45 cc             	mov    -0x34(%rbp),%eax
    34e0:	83 e8 01             	sub    $0x1,%eax
    34e3:	39 45 ec             	cmp    %eax,-0x14(%rbp)
    34e6:	7c d6                	jl     34be <print_char+0x86>
    34e8:	8b 45 d8             	mov    -0x28(%rbp),%eax
    34eb:	83 e0 01             	and    $0x1,%eax
    34ee:	85 c0                	test   %eax,%eax
    34f0:	74 4a                	je     353c <print_char+0x104>
    34f2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    34f6:	ba 01 00 00 00       	mov    $0x1,%edx
    34fb:	48 89 c6             	mov    %rax,%rsi
    34fe:	bf 01 00 00 00       	mov    $0x1,%edi
    3503:	e8 68 db ff ff       	callq  1070 <write@plt>
    3508:	89 c3                	mov    %eax,%ebx
    350a:	8b 45 cc             	mov    -0x34(%rbp),%eax
    350d:	83 e8 01             	sub    $0x1,%eax
    3510:	48 98                	cltq   
    3512:	ba 00 04 00 00       	mov    $0x400,%edx
    3517:	2b 55 ec             	sub    -0x14(%rbp),%edx
    351a:	48 63 d2             	movslq %edx,%rdx
    351d:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
    3521:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3525:	48 01 d1             	add    %rdx,%rcx
    3528:	48 89 c2             	mov    %rax,%rdx
    352b:	48 89 ce             	mov    %rcx,%rsi
    352e:	bf 01 00 00 00       	mov    $0x1,%edi
    3533:	e8 38 db ff ff       	callq  1070 <write@plt>
    3538:	01 d8                	add    %ebx,%eax
    353a:	eb 60                	jmp    359c <print_char+0x164>
    353c:	8b 45 cc             	mov    -0x34(%rbp),%eax
    353f:	83 e8 01             	sub    $0x1,%eax
    3542:	48 98                	cltq   
    3544:	ba 00 04 00 00       	mov    $0x400,%edx
    3549:	2b 55 ec             	sub    -0x14(%rbp),%edx
    354c:	48 63 d2             	movslq %edx,%rdx
    354f:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
    3553:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3557:	48 01 d1             	add    %rdx,%rcx
    355a:	48 89 c2             	mov    %rax,%rdx
    355d:	48 89 ce             	mov    %rcx,%rsi
    3560:	bf 01 00 00 00       	mov    $0x1,%edi
    3565:	e8 06 db ff ff       	callq  1070 <write@plt>
    356a:	89 c3                	mov    %eax,%ebx
    356c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3570:	ba 01 00 00 00       	mov    $0x1,%edx
    3575:	48 89 c6             	mov    %rax,%rsi
    3578:	bf 01 00 00 00       	mov    $0x1,%edi
    357d:	e8 ee da ff ff       	callq  1070 <write@plt>
    3582:	01 d8                	add    %ebx,%eax
    3584:	eb 16                	jmp    359c <print_char+0x164>
    3586:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    358a:	ba 01 00 00 00       	mov    $0x1,%edx
    358f:	48 89 c6             	mov    %rax,%rsi
    3592:	bf 01 00 00 00       	mov    $0x1,%edi
    3597:	e8 d4 da ff ff       	callq  1070 <write@plt>
    359c:	48 83 c4 38          	add    $0x38,%rsp
    35a0:	5b                   	pop    %rbx
    35a1:	5d                   	pop    %rbp
    35a2:	c3                   	retq   

00000000000035a3 <print_num>:
    35a3:	f3 0f 1e fa          	endbr64 
    35a7:	55                   	push   %rbp
    35a8:	48 89 e5             	mov    %rsp,%rbp
    35ab:	48 83 ec 30          	sub    $0x30,%rsp
    35af:	89 7d ec             	mov    %edi,-0x14(%rbp)
    35b2:	89 75 e8             	mov    %esi,-0x18(%rbp)
    35b5:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    35b9:	89 4d dc             	mov    %ecx,-0x24(%rbp)
    35bc:	44 89 45 d8          	mov    %r8d,-0x28(%rbp)
    35c0:	44 89 4d d4          	mov    %r9d,-0x2c(%rbp)
    35c4:	b8 ff 03 00 00       	mov    $0x3ff,%eax
    35c9:	2b 45 e8             	sub    -0x18(%rbp),%eax
    35cc:	89 45 fc             	mov    %eax,-0x4(%rbp)
    35cf:	c6 45 fa 20          	movb   $0x20,-0x6(%rbp)
    35d3:	c6 45 fb 00          	movb   $0x0,-0x5(%rbp)
    35d7:	8b 45 dc             	mov    -0x24(%rbp),%eax
    35da:	83 e0 04             	and    $0x4,%eax
    35dd:	85 c0                	test   %eax,%eax
    35df:	74 0e                	je     35ef <print_num+0x4c>
    35e1:	8b 45 dc             	mov    -0x24(%rbp),%eax
    35e4:	83 e0 01             	and    $0x1,%eax
    35e7:	85 c0                	test   %eax,%eax
    35e9:	75 04                	jne    35ef <print_num+0x4c>
    35eb:	c6 45 fa 30          	movb   $0x30,-0x6(%rbp)
    35ef:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    35f3:	74 06                	je     35fb <print_num+0x58>
    35f5:	c6 45 fb 2d          	movb   $0x2d,-0x5(%rbp)
    35f9:	eb 1e                	jmp    3619 <print_num+0x76>
    35fb:	8b 45 dc             	mov    -0x24(%rbp),%eax
    35fe:	83 e0 02             	and    $0x2,%eax
    3601:	85 c0                	test   %eax,%eax
    3603:	74 06                	je     360b <print_num+0x68>
    3605:	c6 45 fb 2b          	movb   $0x2b,-0x5(%rbp)
    3609:	eb 0e                	jmp    3619 <print_num+0x76>
    360b:	8b 45 dc             	mov    -0x24(%rbp),%eax
    360e:	83 e0 10             	and    $0x10,%eax
    3611:	85 c0                	test   %eax,%eax
    3613:	74 04                	je     3619 <print_num+0x76>
    3615:	c6 45 fb 20          	movb   $0x20,-0x5(%rbp)
    3619:	44 0f be 45 fb       	movsbl -0x5(%rbp),%r8d
    361e:	0f be 7d fa          	movsbl -0x6(%rbp),%edi
    3622:	44 8b 4d fc          	mov    -0x4(%rbp),%r9d
    3626:	44 8b 55 d4          	mov    -0x2c(%rbp),%r10d
    362a:	8b 4d d8             	mov    -0x28(%rbp),%ecx
    362d:	8b 55 dc             	mov    -0x24(%rbp),%edx
    3630:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    3634:	8b 45 e8             	mov    -0x18(%rbp),%eax
    3637:	41 50                	push   %r8
    3639:	57                   	push   %rdi
    363a:	45 89 d0             	mov    %r10d,%r8d
    363d:	89 c7                	mov    %eax,%edi
    363f:	e8 06 00 00 00       	callq  364a <write_num>
    3644:	48 83 c4 10          	add    $0x10,%rsp
    3648:	c9                   	leaveq 
    3649:	c3                   	retq   

000000000000364a <write_num>:
    364a:	f3 0f 1e fa          	endbr64 
    364e:	55                   	push   %rbp
    364f:	48 89 e5             	mov    %rsp,%rbp
    3652:	53                   	push   %rbx
    3653:	48 83 ec 48          	sub    $0x48,%rsp
    3657:	89 7d dc             	mov    %edi,-0x24(%rbp)
    365a:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    365e:	89 55 d8             	mov    %edx,-0x28(%rbp)
    3661:	89 4d cc             	mov    %ecx,-0x34(%rbp)
    3664:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
    3668:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
    366c:	8b 55 10             	mov    0x10(%rbp),%edx
    366f:	8b 45 18             	mov    0x18(%rbp),%eax
    3672:	88 55 c0             	mov    %dl,-0x40(%rbp)
    3675:	88 45 bc             	mov    %al,-0x44(%rbp)
    3678:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
    367f:	83 7d c8 00          	cmpl   $0x0,-0x38(%rbp)
    3683:	75 2d                	jne    36b2 <write_num+0x68>
    3685:	81 7d dc fe 03 00 00 	cmpl   $0x3fe,-0x24(%rbp)
    368c:	75 24                	jne    36b2 <write_num+0x68>
    368e:	8b 45 dc             	mov    -0x24(%rbp),%eax
    3691:	48 63 d0             	movslq %eax,%rdx
    3694:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3698:	48 01 d0             	add    %rdx,%rax
    369b:	0f b6 00             	movzbl (%rax),%eax
    369e:	3c 30                	cmp    $0x30,%al
    36a0:	75 10                	jne    36b2 <write_num+0x68>
    36a2:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    36a6:	75 0a                	jne    36b2 <write_num+0x68>
    36a8:	b8 00 00 00 00       	mov    $0x0,%eax
    36ad:	e9 74 02 00 00       	jmpq   3926 <write_num+0x2dc>
    36b2:	83 7d c8 00          	cmpl   $0x0,-0x38(%rbp)
    36b6:	75 34                	jne    36ec <write_num+0xa2>
    36b8:	81 7d dc fe 03 00 00 	cmpl   $0x3fe,-0x24(%rbp)
    36bf:	75 2b                	jne    36ec <write_num+0xa2>
    36c1:	8b 45 dc             	mov    -0x24(%rbp),%eax
    36c4:	48 63 d0             	movslq %eax,%rdx
    36c7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    36cb:	48 01 d0             	add    %rdx,%rax
    36ce:	0f b6 00             	movzbl (%rax),%eax
    36d1:	3c 30                	cmp    $0x30,%al
    36d3:	75 17                	jne    36ec <write_num+0xa2>
    36d5:	c6 45 c0 20          	movb   $0x20,-0x40(%rbp)
    36d9:	8b 45 dc             	mov    -0x24(%rbp),%eax
    36dc:	48 63 d0             	movslq %eax,%rdx
    36df:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    36e3:	48 01 c2             	add    %rax,%rdx
    36e6:	0f b6 45 c0          	movzbl -0x40(%rbp),%eax
    36ea:	88 02                	mov    %al,(%rdx)
    36ec:	83 7d c8 00          	cmpl   $0x0,-0x38(%rbp)
    36f0:	7e 26                	jle    3718 <write_num+0xce>
    36f2:	8b 45 c8             	mov    -0x38(%rbp),%eax
    36f5:	3b 45 c4             	cmp    -0x3c(%rbp),%eax
    36f8:	7d 1e                	jge    3718 <write_num+0xce>
    36fa:	c6 45 c0 20          	movb   $0x20,-0x40(%rbp)
    36fe:	eb 18                	jmp    3718 <write_num+0xce>
    3700:	83 6d dc 01          	subl   $0x1,-0x24(%rbp)
    3704:	8b 45 dc             	mov    -0x24(%rbp),%eax
    3707:	48 63 d0             	movslq %eax,%rdx
    370a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    370e:	48 01 d0             	add    %rdx,%rax
    3711:	c6 00 30             	movb   $0x30,(%rax)
    3714:	83 45 c4 01          	addl   $0x1,-0x3c(%rbp)
    3718:	8b 45 c8             	mov    -0x38(%rbp),%eax
    371b:	3b 45 c4             	cmp    -0x3c(%rbp),%eax
    371e:	7f e0                	jg     3700 <write_num+0xb6>
    3720:	80 7d bc 00          	cmpb   $0x0,-0x44(%rbp)
    3724:	74 04                	je     372a <write_num+0xe0>
    3726:	83 45 c4 01          	addl   $0x1,-0x3c(%rbp)
    372a:	8b 45 cc             	mov    -0x34(%rbp),%eax
    372d:	3b 45 c4             	cmp    -0x3c(%rbp),%eax
    3730:	0f 8e b1 01 00 00    	jle    38e7 <write_num+0x29d>
    3736:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%rbp)
    373d:	eb 17                	jmp    3756 <write_num+0x10c>
    373f:	8b 45 e8             	mov    -0x18(%rbp),%eax
    3742:	48 63 d0             	movslq %eax,%rdx
    3745:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3749:	48 01 c2             	add    %rax,%rdx
    374c:	0f b6 45 c0          	movzbl -0x40(%rbp),%eax
    3750:	88 02                	mov    %al,(%rdx)
    3752:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    3756:	8b 45 cc             	mov    -0x34(%rbp),%eax
    3759:	2b 45 c4             	sub    -0x3c(%rbp),%eax
    375c:	39 45 e8             	cmp    %eax,-0x18(%rbp)
    375f:	7e de                	jle    373f <write_num+0xf5>
    3761:	8b 45 e8             	mov    -0x18(%rbp),%eax
    3764:	48 63 d0             	movslq %eax,%rdx
    3767:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    376b:	48 01 d0             	add    %rdx,%rax
    376e:	c6 00 00             	movb   $0x0,(%rax)
    3771:	8b 45 d8             	mov    -0x28(%rbp),%eax
    3774:	83 e0 01             	and    $0x1,%eax
    3777:	85 c0                	test   %eax,%eax
    3779:	74 6e                	je     37e9 <write_num+0x19f>
    377b:	80 7d c0 20          	cmpb   $0x20,-0x40(%rbp)
    377f:	75 68                	jne    37e9 <write_num+0x19f>
    3781:	80 7d bc 00          	cmpb   $0x0,-0x44(%rbp)
    3785:	74 17                	je     379e <write_num+0x154>
    3787:	83 6d dc 01          	subl   $0x1,-0x24(%rbp)
    378b:	8b 45 dc             	mov    -0x24(%rbp),%eax
    378e:	48 63 d0             	movslq %eax,%rdx
    3791:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3795:	48 01 c2             	add    %rax,%rdx
    3798:	0f b6 45 bc          	movzbl -0x44(%rbp),%eax
    379c:	88 02                	mov    %al,(%rdx)
    379e:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    37a1:	48 98                	cltq   
    37a3:	8b 55 dc             	mov    -0x24(%rbp),%edx
    37a6:	48 63 ca             	movslq %edx,%rcx
    37a9:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    37ad:	48 01 d1             	add    %rdx,%rcx
    37b0:	48 89 c2             	mov    %rax,%rdx
    37b3:	48 89 ce             	mov    %rcx,%rsi
    37b6:	bf 01 00 00 00       	mov    $0x1,%edi
    37bb:	e8 b0 d8 ff ff       	callq  1070 <write@plt>
    37c0:	89 c3                	mov    %eax,%ebx
    37c2:	8b 45 e8             	mov    -0x18(%rbp),%eax
    37c5:	83 e8 01             	sub    $0x1,%eax
    37c8:	48 98                	cltq   
    37ca:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    37ce:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    37d2:	48 89 c2             	mov    %rax,%rdx
    37d5:	48 89 ce             	mov    %rcx,%rsi
    37d8:	bf 01 00 00 00       	mov    $0x1,%edi
    37dd:	e8 8e d8 ff ff       	callq  1070 <write@plt>
    37e2:	01 d8                	add    %ebx,%eax
    37e4:	e9 3d 01 00 00       	jmpq   3926 <write_num+0x2dc>
    37e9:	8b 45 d8             	mov    -0x28(%rbp),%eax
    37ec:	83 e0 01             	and    $0x1,%eax
    37ef:	85 c0                	test   %eax,%eax
    37f1:	75 6e                	jne    3861 <write_num+0x217>
    37f3:	80 7d c0 20          	cmpb   $0x20,-0x40(%rbp)
    37f7:	75 68                	jne    3861 <write_num+0x217>
    37f9:	80 7d bc 00          	cmpb   $0x0,-0x44(%rbp)
    37fd:	74 17                	je     3816 <write_num+0x1cc>
    37ff:	83 6d dc 01          	subl   $0x1,-0x24(%rbp)
    3803:	8b 45 dc             	mov    -0x24(%rbp),%eax
    3806:	48 63 d0             	movslq %eax,%rdx
    3809:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    380d:	48 01 c2             	add    %rax,%rdx
    3810:	0f b6 45 bc          	movzbl -0x44(%rbp),%eax
    3814:	88 02                	mov    %al,(%rdx)
    3816:	8b 45 e8             	mov    -0x18(%rbp),%eax
    3819:	83 e8 01             	sub    $0x1,%eax
    381c:	48 98                	cltq   
    381e:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3822:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    3826:	48 89 c2             	mov    %rax,%rdx
    3829:	48 89 ce             	mov    %rcx,%rsi
    382c:	bf 01 00 00 00       	mov    $0x1,%edi
    3831:	e8 3a d8 ff ff       	callq  1070 <write@plt>
    3836:	89 c3                	mov    %eax,%ebx
    3838:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    383b:	48 98                	cltq   
    383d:	8b 55 dc             	mov    -0x24(%rbp),%edx
    3840:	48 63 ca             	movslq %edx,%rcx
    3843:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3847:	48 01 d1             	add    %rdx,%rcx
    384a:	48 89 c2             	mov    %rax,%rdx
    384d:	48 89 ce             	mov    %rcx,%rsi
    3850:	bf 01 00 00 00       	mov    $0x1,%edi
    3855:	e8 16 d8 ff ff       	callq  1070 <write@plt>
    385a:	01 d8                	add    %ebx,%eax
    385c:	e9 c5 00 00 00       	jmpq   3926 <write_num+0x2dc>
    3861:	8b 45 d8             	mov    -0x28(%rbp),%eax
    3864:	83 e0 01             	and    $0x1,%eax
    3867:	85 c0                	test   %eax,%eax
    3869:	75 7c                	jne    38e7 <write_num+0x29d>
    386b:	80 7d c0 30          	cmpb   $0x30,-0x40(%rbp)
    386f:	75 76                	jne    38e7 <write_num+0x29d>
    3871:	80 7d bc 00          	cmpb   $0x0,-0x44(%rbp)
    3875:	74 17                	je     388e <write_num+0x244>
    3877:	83 6d ec 01          	subl   $0x1,-0x14(%rbp)
    387b:	8b 45 ec             	mov    -0x14(%rbp),%eax
    387e:	48 63 d0             	movslq %eax,%rdx
    3881:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3885:	48 01 c2             	add    %rax,%rdx
    3888:	0f b6 45 bc          	movzbl -0x44(%rbp),%eax
    388c:	88 02                	mov    %al,(%rdx)
    388e:	8b 45 e8             	mov    -0x18(%rbp),%eax
    3891:	2b 45 ec             	sub    -0x14(%rbp),%eax
    3894:	48 98                	cltq   
    3896:	8b 55 ec             	mov    -0x14(%rbp),%edx
    3899:	48 63 ca             	movslq %edx,%rcx
    389c:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    38a0:	48 01 d1             	add    %rdx,%rcx
    38a3:	48 89 c2             	mov    %rax,%rdx
    38a6:	48 89 ce             	mov    %rcx,%rsi
    38a9:	bf 01 00 00 00       	mov    $0x1,%edi
    38ae:	e8 bd d7 ff ff       	callq  1070 <write@plt>
    38b3:	89 c3                	mov    %eax,%ebx
    38b5:	b8 01 00 00 00       	mov    $0x1,%eax
    38ba:	2b 45 ec             	sub    -0x14(%rbp),%eax
    38bd:	8b 55 c4             	mov    -0x3c(%rbp),%edx
    38c0:	29 c2                	sub    %eax,%edx
    38c2:	89 d0                	mov    %edx,%eax
    38c4:	48 98                	cltq   
    38c6:	8b 55 dc             	mov    -0x24(%rbp),%edx
    38c9:	48 63 ca             	movslq %edx,%rcx
    38cc:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    38d0:	48 01 d1             	add    %rdx,%rcx
    38d3:	48 89 c2             	mov    %rax,%rdx
    38d6:	48 89 ce             	mov    %rcx,%rsi
    38d9:	bf 01 00 00 00       	mov    $0x1,%edi
    38de:	e8 8d d7 ff ff       	callq  1070 <write@plt>
    38e3:	01 d8                	add    %ebx,%eax
    38e5:	eb 3f                	jmp    3926 <write_num+0x2dc>
    38e7:	80 7d bc 00          	cmpb   $0x0,-0x44(%rbp)
    38eb:	74 17                	je     3904 <write_num+0x2ba>
    38ed:	83 6d dc 01          	subl   $0x1,-0x24(%rbp)
    38f1:	8b 45 dc             	mov    -0x24(%rbp),%eax
    38f4:	48 63 d0             	movslq %eax,%rdx
    38f7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    38fb:	48 01 c2             	add    %rax,%rdx
    38fe:	0f b6 45 bc          	movzbl -0x44(%rbp),%eax
    3902:	88 02                	mov    %al,(%rdx)
    3904:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    3907:	48 98                	cltq   
    3909:	8b 55 dc             	mov    -0x24(%rbp),%edx
    390c:	48 63 ca             	movslq %edx,%rcx
    390f:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3913:	48 01 d1             	add    %rdx,%rcx
    3916:	48 89 c2             	mov    %rax,%rdx
    3919:	48 89 ce             	mov    %rcx,%rsi
    391c:	bf 01 00 00 00       	mov    $0x1,%edi
    3921:	e8 4a d7 ff ff       	callq  1070 <write@plt>
    3926:	48 83 c4 48          	add    $0x48,%rsp
    392a:	5b                   	pop    %rbx
    392b:	5d                   	pop    %rbp
    392c:	c3                   	retq   

000000000000392d <write_uint>:
    392d:	f3 0f 1e fa          	endbr64 
    3931:	55                   	push   %rbp
    3932:	48 89 e5             	mov    %rsp,%rbp
    3935:	53                   	push   %rbx
    3936:	48 83 ec 38          	sub    $0x38,%rsp
    393a:	89 7d dc             	mov    %edi,-0x24(%rbp)
    393d:	89 75 d8             	mov    %esi,-0x28(%rbp)
    3940:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
    3944:	89 4d cc             	mov    %ecx,-0x34(%rbp)
    3947:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
    394b:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
    394f:	b8 ff 03 00 00       	mov    $0x3ff,%eax
    3954:	2b 45 d8             	sub    -0x28(%rbp),%eax
    3957:	89 45 e8             	mov    %eax,-0x18(%rbp)
    395a:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    3961:	c6 45 e7 20          	movb   $0x20,-0x19(%rbp)
    3965:	83 7d c4 00          	cmpl   $0x0,-0x3c(%rbp)
    3969:	75 27                	jne    3992 <write_uint+0x65>
    396b:	81 7d d8 fe 03 00 00 	cmpl   $0x3fe,-0x28(%rbp)
    3972:	75 1e                	jne    3992 <write_uint+0x65>
    3974:	8b 45 d8             	mov    -0x28(%rbp),%eax
    3977:	48 63 d0             	movslq %eax,%rdx
    397a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    397e:	48 01 d0             	add    %rdx,%rax
    3981:	0f b6 00             	movzbl (%rax),%eax
    3984:	3c 30                	cmp    $0x30,%al
    3986:	75 0a                	jne    3992 <write_uint+0x65>
    3988:	b8 00 00 00 00       	mov    $0x0,%eax
    398d:	e9 3d 01 00 00       	jmpq   3acf <write_uint+0x1a2>
    3992:	83 7d c4 00          	cmpl   $0x0,-0x3c(%rbp)
    3996:	7e 26                	jle    39be <write_uint+0x91>
    3998:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    399b:	3b 45 e8             	cmp    -0x18(%rbp),%eax
    399e:	7d 1e                	jge    39be <write_uint+0x91>
    39a0:	c6 45 e7 20          	movb   $0x20,-0x19(%rbp)
    39a4:	eb 18                	jmp    39be <write_uint+0x91>
    39a6:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
    39aa:	8b 45 d8             	mov    -0x28(%rbp),%eax
    39ad:	48 63 d0             	movslq %eax,%rdx
    39b0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    39b4:	48 01 d0             	add    %rdx,%rax
    39b7:	c6 00 30             	movb   $0x30,(%rax)
    39ba:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    39be:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    39c1:	3b 45 e8             	cmp    -0x18(%rbp),%eax
    39c4:	7f e0                	jg     39a6 <write_uint+0x79>
    39c6:	8b 45 cc             	mov    -0x34(%rbp),%eax
    39c9:	83 e0 04             	and    $0x4,%eax
    39cc:	85 c0                	test   %eax,%eax
    39ce:	74 0e                	je     39de <write_uint+0xb1>
    39d0:	8b 45 cc             	mov    -0x34(%rbp),%eax
    39d3:	83 e0 01             	and    $0x1,%eax
    39d6:	85 c0                	test   %eax,%eax
    39d8:	75 04                	jne    39de <write_uint+0xb1>
    39da:	c6 45 e7 30          	movb   $0x30,-0x19(%rbp)
    39de:	8b 45 c8             	mov    -0x38(%rbp),%eax
    39e1:	3b 45 e8             	cmp    -0x18(%rbp),%eax
    39e4:	0f 8e c3 00 00 00    	jle    3aad <write_uint+0x180>
    39ea:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    39f1:	eb 17                	jmp    3a0a <write_uint+0xdd>
    39f3:	8b 45 ec             	mov    -0x14(%rbp),%eax
    39f6:	48 63 d0             	movslq %eax,%rdx
    39f9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    39fd:	48 01 c2             	add    %rax,%rdx
    3a00:	0f b6 45 e7          	movzbl -0x19(%rbp),%eax
    3a04:	88 02                	mov    %al,(%rdx)
    3a06:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    3a0a:	8b 45 c8             	mov    -0x38(%rbp),%eax
    3a0d:	2b 45 e8             	sub    -0x18(%rbp),%eax
    3a10:	39 45 ec             	cmp    %eax,-0x14(%rbp)
    3a13:	7c de                	jl     39f3 <write_uint+0xc6>
    3a15:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3a18:	48 63 d0             	movslq %eax,%rdx
    3a1b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3a1f:	48 01 d0             	add    %rdx,%rax
    3a22:	c6 00 00             	movb   $0x0,(%rax)
    3a25:	8b 45 cc             	mov    -0x34(%rbp),%eax
    3a28:	83 e0 01             	and    $0x1,%eax
    3a2b:	85 c0                	test   %eax,%eax
    3a2d:	74 3f                	je     3a6e <write_uint+0x141>
    3a2f:	8b 45 e8             	mov    -0x18(%rbp),%eax
    3a32:	48 98                	cltq   
    3a34:	8b 55 d8             	mov    -0x28(%rbp),%edx
    3a37:	48 63 ca             	movslq %edx,%rcx
    3a3a:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3a3e:	48 01 d1             	add    %rdx,%rcx
    3a41:	48 89 c2             	mov    %rax,%rdx
    3a44:	48 89 ce             	mov    %rcx,%rsi
    3a47:	bf 01 00 00 00       	mov    $0x1,%edi
    3a4c:	e8 1f d6 ff ff       	callq  1070 <write@plt>
    3a51:	89 c3                	mov    %eax,%ebx
    3a53:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3a56:	48 63 d0             	movslq %eax,%rdx
    3a59:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3a5d:	48 89 c6             	mov    %rax,%rsi
    3a60:	bf 01 00 00 00       	mov    $0x1,%edi
    3a65:	e8 06 d6 ff ff       	callq  1070 <write@plt>
    3a6a:	01 d8                	add    %ebx,%eax
    3a6c:	eb 61                	jmp    3acf <write_uint+0x1a2>
    3a6e:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3a71:	48 63 d0             	movslq %eax,%rdx
    3a74:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3a78:	48 89 c6             	mov    %rax,%rsi
    3a7b:	bf 01 00 00 00       	mov    $0x1,%edi
    3a80:	e8 eb d5 ff ff       	callq  1070 <write@plt>
    3a85:	89 c3                	mov    %eax,%ebx
    3a87:	8b 45 e8             	mov    -0x18(%rbp),%eax
    3a8a:	48 98                	cltq   
    3a8c:	8b 55 d8             	mov    -0x28(%rbp),%edx
    3a8f:	48 63 ca             	movslq %edx,%rcx
    3a92:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3a96:	48 01 d1             	add    %rdx,%rcx
    3a99:	48 89 c2             	mov    %rax,%rdx
    3a9c:	48 89 ce             	mov    %rcx,%rsi
    3a9f:	bf 01 00 00 00       	mov    $0x1,%edi
    3aa4:	e8 c7 d5 ff ff       	callq  1070 <write@plt>
    3aa9:	01 d8                	add    %ebx,%eax
    3aab:	eb 22                	jmp    3acf <write_uint+0x1a2>
    3aad:	8b 45 e8             	mov    -0x18(%rbp),%eax
    3ab0:	48 98                	cltq   
    3ab2:	8b 55 d8             	mov    -0x28(%rbp),%edx
    3ab5:	48 63 ca             	movslq %edx,%rcx
    3ab8:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    3abc:	48 01 d1             	add    %rdx,%rcx
    3abf:	48 89 c2             	mov    %rax,%rdx
    3ac2:	48 89 ce             	mov    %rcx,%rsi
    3ac5:	bf 01 00 00 00       	mov    $0x1,%edi
    3aca:	e8 a1 d5 ff ff       	callq  1070 <write@plt>
    3acf:	48 83 c4 38          	add    $0x38,%rsp
    3ad3:	5b                   	pop    %rbx
    3ad4:	5d                   	pop    %rbp
    3ad5:	c3                   	retq   

0000000000003ad6 <write_pointer>:
    3ad6:	f3 0f 1e fa          	endbr64 
    3ada:	55                   	push   %rbp
    3adb:	48 89 e5             	mov    %rsp,%rbp
    3ade:	53                   	push   %rbx
    3adf:	48 83 ec 38          	sub    $0x38,%rsp
    3ae3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    3ae7:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    3aea:	89 55 d0             	mov    %edx,-0x30(%rbp)
    3aed:	89 4d cc             	mov    %ecx,-0x34(%rbp)
    3af0:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
    3af4:	44 89 ca             	mov    %r9d,%edx
    3af7:	8b 45 10             	mov    0x10(%rbp),%eax
    3afa:	88 55 c4             	mov    %dl,-0x3c(%rbp)
    3afd:	88 45 c0             	mov    %al,-0x40(%rbp)
    3b00:	8b 45 cc             	mov    -0x34(%rbp),%eax
    3b03:	3b 45 d0             	cmp    -0x30(%rbp),%eax
    3b06:	0f 8e 35 02 00 00    	jle    3d41 <write_pointer+0x26b>
    3b0c:	c7 45 ec 03 00 00 00 	movl   $0x3,-0x14(%rbp)
    3b13:	eb 17                	jmp    3b2c <write_pointer+0x56>
    3b15:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3b18:	48 63 d0             	movslq %eax,%rdx
    3b1b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3b1f:	48 01 c2             	add    %rax,%rdx
    3b22:	0f b6 45 c4          	movzbl -0x3c(%rbp),%eax
    3b26:	88 02                	mov    %al,(%rdx)
    3b28:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    3b2c:	8b 45 cc             	mov    -0x34(%rbp),%eax
    3b2f:	2b 45 d0             	sub    -0x30(%rbp),%eax
    3b32:	83 c0 02             	add    $0x2,%eax
    3b35:	39 45 ec             	cmp    %eax,-0x14(%rbp)
    3b38:	7e db                	jle    3b15 <write_pointer+0x3f>
    3b3a:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3b3d:	48 63 d0             	movslq %eax,%rdx
    3b40:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3b44:	48 01 d0             	add    %rdx,%rax
    3b47:	c6 00 00             	movb   $0x0,(%rax)
    3b4a:	8b 45 c8             	mov    -0x38(%rbp),%eax
    3b4d:	83 e0 01             	and    $0x1,%eax
    3b50:	85 c0                	test   %eax,%eax
    3b52:	0f 84 9a 00 00 00    	je     3bf2 <write_pointer+0x11c>
    3b58:	80 7d c4 20          	cmpb   $0x20,-0x3c(%rbp)
    3b5c:	0f 85 90 00 00 00    	jne    3bf2 <write_pointer+0x11c>
    3b62:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    3b66:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    3b69:	48 63 d0             	movslq %eax,%rdx
    3b6c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3b70:	48 01 d0             	add    %rdx,%rax
    3b73:	c6 00 78             	movb   $0x78,(%rax)
    3b76:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    3b7a:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    3b7d:	48 63 d0             	movslq %eax,%rdx
    3b80:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3b84:	48 01 d0             	add    %rdx,%rax
    3b87:	c6 00 30             	movb   $0x30,(%rax)
    3b8a:	80 7d c0 00          	cmpb   $0x0,-0x40(%rbp)
    3b8e:	74 17                	je     3ba7 <write_pointer+0xd1>
    3b90:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    3b94:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    3b97:	48 63 d0             	movslq %eax,%rdx
    3b9a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3b9e:	48 01 c2             	add    %rax,%rdx
    3ba1:	0f b6 45 c0          	movzbl -0x40(%rbp),%eax
    3ba5:	88 02                	mov    %al,(%rdx)
    3ba7:	8b 45 d0             	mov    -0x30(%rbp),%eax
    3baa:	48 98                	cltq   
    3bac:	8b 55 d4             	mov    -0x2c(%rbp),%edx
    3baf:	48 63 ca             	movslq %edx,%rcx
    3bb2:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    3bb6:	48 01 d1             	add    %rdx,%rcx
    3bb9:	48 89 c2             	mov    %rax,%rdx
    3bbc:	48 89 ce             	mov    %rcx,%rsi
    3bbf:	bf 01 00 00 00       	mov    $0x1,%edi
    3bc4:	e8 a7 d4 ff ff       	callq  1070 <write@plt>
    3bc9:	89 c3                	mov    %eax,%ebx
    3bcb:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3bce:	83 e8 03             	sub    $0x3,%eax
    3bd1:	48 98                	cltq   
    3bd3:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    3bd7:	48 8d 4a 03          	lea    0x3(%rdx),%rcx
    3bdb:	48 89 c2             	mov    %rax,%rdx
    3bde:	48 89 ce             	mov    %rcx,%rsi
    3be1:	bf 01 00 00 00       	mov    $0x1,%edi
    3be6:	e8 85 d4 ff ff       	callq  1070 <write@plt>
    3beb:	01 d8                	add    %ebx,%eax
    3bed:	e9 bb 01 00 00       	jmpq   3dad <write_pointer+0x2d7>
    3bf2:	8b 45 c8             	mov    -0x38(%rbp),%eax
    3bf5:	83 e0 01             	and    $0x1,%eax
    3bf8:	85 c0                	test   %eax,%eax
    3bfa:	0f 85 9a 00 00 00    	jne    3c9a <write_pointer+0x1c4>
    3c00:	80 7d c4 20          	cmpb   $0x20,-0x3c(%rbp)
    3c04:	0f 85 90 00 00 00    	jne    3c9a <write_pointer+0x1c4>
    3c0a:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    3c0e:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    3c11:	48 63 d0             	movslq %eax,%rdx
    3c14:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3c18:	48 01 d0             	add    %rdx,%rax
    3c1b:	c6 00 78             	movb   $0x78,(%rax)
    3c1e:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    3c22:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    3c25:	48 63 d0             	movslq %eax,%rdx
    3c28:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3c2c:	48 01 d0             	add    %rdx,%rax
    3c2f:	c6 00 30             	movb   $0x30,(%rax)
    3c32:	80 7d c0 00          	cmpb   $0x0,-0x40(%rbp)
    3c36:	74 17                	je     3c4f <write_pointer+0x179>
    3c38:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    3c3c:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    3c3f:	48 63 d0             	movslq %eax,%rdx
    3c42:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3c46:	48 01 c2             	add    %rax,%rdx
    3c49:	0f b6 45 c0          	movzbl -0x40(%rbp),%eax
    3c4d:	88 02                	mov    %al,(%rdx)
    3c4f:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3c52:	83 e8 03             	sub    $0x3,%eax
    3c55:	48 98                	cltq   
    3c57:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    3c5b:	48 8d 4a 03          	lea    0x3(%rdx),%rcx
    3c5f:	48 89 c2             	mov    %rax,%rdx
    3c62:	48 89 ce             	mov    %rcx,%rsi
    3c65:	bf 01 00 00 00       	mov    $0x1,%edi
    3c6a:	e8 01 d4 ff ff       	callq  1070 <write@plt>
    3c6f:	89 c3                	mov    %eax,%ebx
    3c71:	8b 45 d0             	mov    -0x30(%rbp),%eax
    3c74:	48 98                	cltq   
    3c76:	8b 55 d4             	mov    -0x2c(%rbp),%edx
    3c79:	48 63 ca             	movslq %edx,%rcx
    3c7c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    3c80:	48 01 d1             	add    %rdx,%rcx
    3c83:	48 89 c2             	mov    %rax,%rdx
    3c86:	48 89 ce             	mov    %rcx,%rsi
    3c89:	bf 01 00 00 00       	mov    $0x1,%edi
    3c8e:	e8 dd d3 ff ff       	callq  1070 <write@plt>
    3c93:	01 d8                	add    %ebx,%eax
    3c95:	e9 13 01 00 00       	jmpq   3dad <write_pointer+0x2d7>
    3c9a:	8b 45 c8             	mov    -0x38(%rbp),%eax
    3c9d:	83 e0 01             	and    $0x1,%eax
    3ca0:	85 c0                	test   %eax,%eax
    3ca2:	0f 85 99 00 00 00    	jne    3d41 <write_pointer+0x26b>
    3ca8:	80 7d c4 30          	cmpb   $0x30,-0x3c(%rbp)
    3cac:	0f 85 8f 00 00 00    	jne    3d41 <write_pointer+0x26b>
    3cb2:	80 7d c0 00          	cmpb   $0x0,-0x40(%rbp)
    3cb6:	74 17                	je     3ccf <write_pointer+0x1f9>
    3cb8:	83 6d 18 01          	subl   $0x1,0x18(%rbp)
    3cbc:	8b 45 18             	mov    0x18(%rbp),%eax
    3cbf:	48 63 d0             	movslq %eax,%rdx
    3cc2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3cc6:	48 01 c2             	add    %rax,%rdx
    3cc9:	0f b6 45 c0          	movzbl -0x40(%rbp),%eax
    3ccd:	88 02                	mov    %al,(%rdx)
    3ccf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3cd3:	48 83 c0 01          	add    $0x1,%rax
    3cd7:	c6 00 30             	movb   $0x30,(%rax)
    3cda:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3cde:	48 83 c0 02          	add    $0x2,%rax
    3ce2:	c6 00 78             	movb   $0x78,(%rax)
    3ce5:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3ce8:	2b 45 18             	sub    0x18(%rbp),%eax
    3ceb:	48 98                	cltq   
    3ced:	8b 55 18             	mov    0x18(%rbp),%edx
    3cf0:	48 63 ca             	movslq %edx,%rcx
    3cf3:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    3cf7:	48 01 d1             	add    %rdx,%rcx
    3cfa:	48 89 c2             	mov    %rax,%rdx
    3cfd:	48 89 ce             	mov    %rcx,%rsi
    3d00:	bf 01 00 00 00       	mov    $0x1,%edi
    3d05:	e8 66 d3 ff ff       	callq  1070 <write@plt>
    3d0a:	89 c3                	mov    %eax,%ebx
    3d0c:	b8 01 00 00 00       	mov    $0x1,%eax
    3d11:	2b 45 18             	sub    0x18(%rbp),%eax
    3d14:	8b 55 d0             	mov    -0x30(%rbp),%edx
    3d17:	29 c2                	sub    %eax,%edx
    3d19:	89 d0                	mov    %edx,%eax
    3d1b:	83 e8 02             	sub    $0x2,%eax
    3d1e:	48 98                	cltq   
    3d20:	8b 55 d4             	mov    -0x2c(%rbp),%edx
    3d23:	48 63 ca             	movslq %edx,%rcx
    3d26:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    3d2a:	48 01 d1             	add    %rdx,%rcx
    3d2d:	48 89 c2             	mov    %rax,%rdx
    3d30:	48 89 ce             	mov    %rcx,%rsi
    3d33:	bf 01 00 00 00       	mov    $0x1,%edi
    3d38:	e8 33 d3 ff ff       	callq  1070 <write@plt>
    3d3d:	01 d8                	add    %ebx,%eax
    3d3f:	eb 6c                	jmp    3dad <write_pointer+0x2d7>
    3d41:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    3d45:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    3d48:	48 63 d0             	movslq %eax,%rdx
    3d4b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3d4f:	48 01 d0             	add    %rdx,%rax
    3d52:	c6 00 78             	movb   $0x78,(%rax)
    3d55:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    3d59:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    3d5c:	48 63 d0             	movslq %eax,%rdx
    3d5f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3d63:	48 01 d0             	add    %rdx,%rax
    3d66:	c6 00 30             	movb   $0x30,(%rax)
    3d69:	80 7d c0 00          	cmpb   $0x0,-0x40(%rbp)
    3d6d:	74 17                	je     3d86 <write_pointer+0x2b0>
    3d6f:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
    3d73:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    3d76:	48 63 d0             	movslq %eax,%rdx
    3d79:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3d7d:	48 01 c2             	add    %rax,%rdx
    3d80:	0f b6 45 c0          	movzbl -0x40(%rbp),%eax
    3d84:	88 02                	mov    %al,(%rdx)
    3d86:	b8 ff 03 00 00       	mov    $0x3ff,%eax
    3d8b:	2b 45 d4             	sub    -0x2c(%rbp),%eax
    3d8e:	48 98                	cltq   
    3d90:	8b 55 d4             	mov    -0x2c(%rbp),%edx
    3d93:	48 63 ca             	movslq %edx,%rcx
    3d96:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    3d9a:	48 01 d1             	add    %rdx,%rcx
    3d9d:	48 89 c2             	mov    %rax,%rdx
    3da0:	48 89 ce             	mov    %rcx,%rsi
    3da3:	bf 01 00 00 00       	mov    $0x1,%edi
    3da8:	e8 c3 d2 ff ff       	callq  1070 <write@plt>
    3dad:	48 83 c4 38          	add    $0x38,%rsp
    3db1:	5b                   	pop    %rbx
    3db2:	5d                   	pop    %rbp
    3db3:	c3                   	retq   
    3db4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    3dbb:	00 00 00 
    3dbe:	66 90                	xchg   %ax,%ax

0000000000003dc0 <__libc_csu_init>:
    3dc0:	f3 0f 1e fa          	endbr64 
    3dc4:	41 57                	push   %r15
    3dc6:	4c 8d 3d db 1f 00 00 	lea    0x1fdb(%rip),%r15        # 5da8 <__frame_dummy_init_array_entry>
    3dcd:	41 56                	push   %r14
    3dcf:	49 89 d6             	mov    %rdx,%r14
    3dd2:	41 55                	push   %r13
    3dd4:	49 89 f5             	mov    %rsi,%r13
    3dd7:	41 54                	push   %r12
    3dd9:	41 89 fc             	mov    %edi,%r12d
    3ddc:	55                   	push   %rbp
    3ddd:	48 8d 2d cc 1f 00 00 	lea    0x1fcc(%rip),%rbp        # 5db0 <__do_global_dtors_aux_fini_array_entry>
    3de4:	53                   	push   %rbx
    3de5:	4c 29 fd             	sub    %r15,%rbp
    3de8:	48 83 ec 08          	sub    $0x8,%rsp
    3dec:	e8 0f d2 ff ff       	callq  1000 <_init>
    3df1:	48 c1 fd 03          	sar    $0x3,%rbp
    3df5:	74 1f                	je     3e16 <__libc_csu_init+0x56>
    3df7:	31 db                	xor    %ebx,%ebx
    3df9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3e00:	4c 89 f2             	mov    %r14,%rdx
    3e03:	4c 89 ee             	mov    %r13,%rsi
    3e06:	44 89 e7             	mov    %r12d,%edi
    3e09:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    3e0d:	48 83 c3 01          	add    $0x1,%rbx
    3e11:	48 39 dd             	cmp    %rbx,%rbp
    3e14:	75 ea                	jne    3e00 <__libc_csu_init+0x40>
    3e16:	48 83 c4 08          	add    $0x8,%rsp
    3e1a:	5b                   	pop    %rbx
    3e1b:	5d                   	pop    %rbp
    3e1c:	41 5c                	pop    %r12
    3e1e:	41 5d                	pop    %r13
    3e20:	41 5e                	pop    %r14
    3e22:	41 5f                	pop    %r15
    3e24:	c3                   	retq   
    3e25:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    3e2c:	00 00 00 00 

0000000000003e30 <__libc_csu_fini>:
    3e30:	f3 0f 1e fa          	endbr64 
    3e34:	c3                   	retq   

Disassembly of section .fini:

0000000000003e38 <_fini>:
    3e38:	f3 0f 1e fa          	endbr64 
    3e3c:	48 83 ec 08          	sub    $0x8,%rsp
    3e40:	48 83 c4 08          	add    $0x8,%rsp
    3e44:	c3                   	retq   
