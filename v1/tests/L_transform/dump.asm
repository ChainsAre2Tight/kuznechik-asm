
main:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <putchar@plt-0x10>:
    1020:	ff 35 82 2f 00 00    	push   0x2f82(%rip)        # 3fa8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 84 2f 00 00    	jmp    *0x2f84(%rip)        # 3fb0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <putchar@plt>:
    1030:	ff 25 82 2f 00 00    	jmp    *0x2f82(%rip)        # 3fb8 <putchar@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <puts@plt>:
    1040:	ff 25 7a 2f 00 00    	jmp    *0x2f7a(%rip)        # 3fc0 <puts@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <__stack_chk_fail@plt>:
    1050:	ff 25 72 2f 00 00    	jmp    *0x2f72(%rip)        # 3fc8 <__stack_chk_fail@GLIBC_2.4>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <printf@plt>:
    1060:	ff 25 6a 2f 00 00    	jmp    *0x2f6a(%rip)        # 3fd0 <printf@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001070 <__cxa_finalize@plt>:
    1070:	ff 25 82 2f 00 00    	jmp    *0x2f82(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1076:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001080 <_start>:
    1080:	f3 0f 1e fa          	endbr64
    1084:	31 ed                	xor    %ebp,%ebp
    1086:	49 89 d1             	mov    %rdx,%r9
    1089:	5e                   	pop    %rsi
    108a:	48 89 e2             	mov    %rsp,%rdx
    108d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1091:	50                   	push   %rax
    1092:	54                   	push   %rsp
    1093:	45 31 c0             	xor    %r8d,%r8d
    1096:	31 c9                	xor    %ecx,%ecx
    1098:	48 8d 3d b0 01 00 00 	lea    0x1b0(%rip),%rdi        # 124f <main>
    109f:	ff 15 33 2f 00 00    	call   *0x2f33(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    10a5:	f4                   	hlt
    10a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10ad:	00 00 00 

00000000000010b0 <deregister_tm_clones>:
    10b0:	48 8d 3d 59 2f 00 00 	lea    0x2f59(%rip),%rdi        # 4010 <__TMC_END__>
    10b7:	48 8d 05 52 2f 00 00 	lea    0x2f52(%rip),%rax        # 4010 <__TMC_END__>
    10be:	48 39 f8             	cmp    %rdi,%rax
    10c1:	74 15                	je     10d8 <deregister_tm_clones+0x28>
    10c3:	48 8b 05 16 2f 00 00 	mov    0x2f16(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10ca:	48 85 c0             	test   %rax,%rax
    10cd:	74 09                	je     10d8 <deregister_tm_clones+0x28>
    10cf:	ff e0                	jmp    *%rax
    10d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10d8:	c3                   	ret
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010e0 <register_tm_clones>:
    10e0:	48 8d 3d 29 2f 00 00 	lea    0x2f29(%rip),%rdi        # 4010 <__TMC_END__>
    10e7:	48 8d 35 22 2f 00 00 	lea    0x2f22(%rip),%rsi        # 4010 <__TMC_END__>
    10ee:	48 29 fe             	sub    %rdi,%rsi
    10f1:	48 89 f0             	mov    %rsi,%rax
    10f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10f8:	48 c1 f8 03          	sar    $0x3,%rax
    10fc:	48 01 c6             	add    %rax,%rsi
    10ff:	48 d1 fe             	sar    $1,%rsi
    1102:	74 14                	je     1118 <register_tm_clones+0x38>
    1104:	48 8b 05 e5 2e 00 00 	mov    0x2ee5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    110b:	48 85 c0             	test   %rax,%rax
    110e:	74 08                	je     1118 <register_tm_clones+0x38>
    1110:	ff e0                	jmp    *%rax
    1112:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1118:	c3                   	ret
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <__do_global_dtors_aux>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	80 3d e5 2e 00 00 00 	cmpb   $0x0,0x2ee5(%rip)        # 4010 <__TMC_END__>
    112b:	75 2b                	jne    1158 <__do_global_dtors_aux+0x38>
    112d:	55                   	push   %rbp
    112e:	48 83 3d c2 2e 00 00 	cmpq   $0x0,0x2ec2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1135:	00 
    1136:	48 89 e5             	mov    %rsp,%rbp
    1139:	74 0c                	je     1147 <__do_global_dtors_aux+0x27>
    113b:	48 8b 3d c6 2e 00 00 	mov    0x2ec6(%rip),%rdi        # 4008 <__dso_handle>
    1142:	e8 29 ff ff ff       	call   1070 <__cxa_finalize@plt>
    1147:	e8 64 ff ff ff       	call   10b0 <deregister_tm_clones>
    114c:	c6 05 bd 2e 00 00 01 	movb   $0x1,0x2ebd(%rip)        # 4010 <__TMC_END__>
    1153:	5d                   	pop    %rbp
    1154:	c3                   	ret
    1155:	0f 1f 00             	nopl   (%rax)
    1158:	c3                   	ret
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <frame_dummy>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	e9 77 ff ff ff       	jmp    10e0 <register_tm_clones>

0000000000001169 <print_block>:
    1169:	f3 0f 1e fa          	endbr64
    116d:	55                   	push   %rbp
    116e:	48 89 e5             	mov    %rsp,%rbp
    1171:	48 83 ec 20          	sub    $0x20,%rsp
    1175:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1179:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1180:	eb 6e                	jmp    11f0 <print_block+0x87>
    1182:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1185:	83 e0 03             	and    $0x3,%eax
    1188:	85 c0                	test   %eax,%eax
    118a:	75 14                	jne    11a0 <print_block+0x37>
    118c:	48 8d 05 71 0e 00 00 	lea    0xe71(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    1193:	48 89 c7             	mov    %rax,%rdi
    1196:	b8 00 00 00 00       	mov    $0x0,%eax
    119b:	e8 c0 fe ff ff       	call   1060 <printf@plt>
    11a0:	8b 45 fc             	mov    -0x4(%rbp),%eax
    11a3:	48 63 d0             	movslq %eax,%rdx
    11a6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11aa:	48 01 d0             	add    %rdx,%rax
    11ad:	0f b6 00             	movzbl (%rax),%eax
    11b0:	0f b6 c0             	movzbl %al,%eax
    11b3:	89 c6                	mov    %eax,%esi
    11b5:	48 8d 05 4d 0e 00 00 	lea    0xe4d(%rip),%rax        # 2009 <_IO_stdin_used+0x9>
    11bc:	48 89 c7             	mov    %rax,%rdi
    11bf:	b8 00 00 00 00       	mov    $0x0,%eax
    11c4:	e8 97 fe ff ff       	call   1060 <printf@plt>
    11c9:	8b 55 fc             	mov    -0x4(%rbp),%edx
    11cc:	89 d0                	mov    %edx,%eax
    11ce:	c1 f8 1f             	sar    $0x1f,%eax
    11d1:	c1 e8 1e             	shr    $0x1e,%eax
    11d4:	01 c2                	add    %eax,%edx
    11d6:	83 e2 03             	and    $0x3,%edx
    11d9:	29 c2                	sub    %eax,%edx
    11db:	89 d0                	mov    %edx,%eax
    11dd:	83 f8 03             	cmp    $0x3,%eax
    11e0:	75 0a                	jne    11ec <print_block+0x83>
    11e2:	bf 0a 00 00 00       	mov    $0xa,%edi
    11e7:	e8 44 fe ff ff       	call   1030 <putchar@plt>
    11ec:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    11f0:	83 7d fc 0f          	cmpl   $0xf,-0x4(%rbp)
    11f4:	7e 8c                	jle    1182 <print_block+0x19>
    11f6:	90                   	nop
    11f7:	90                   	nop
    11f8:	c9                   	leave
    11f9:	c3                   	ret

00000000000011fa <compare_blocks>:
    11fa:	f3 0f 1e fa          	endbr64
    11fe:	55                   	push   %rbp
    11ff:	48 89 e5             	mov    %rsp,%rbp
    1202:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1206:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    120a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1211:	eb 2f                	jmp    1242 <compare_blocks+0x48>
    1213:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1216:	48 63 d0             	movslq %eax,%rdx
    1219:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    121d:	48 01 d0             	add    %rdx,%rax
    1220:	0f b6 10             	movzbl (%rax),%edx
    1223:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1226:	48 63 c8             	movslq %eax,%rcx
    1229:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    122d:	48 01 c8             	add    %rcx,%rax
    1230:	0f b6 00             	movzbl (%rax),%eax
    1233:	38 c2                	cmp    %al,%dl
    1235:	74 07                	je     123e <compare_blocks+0x44>
    1237:	b8 00 00 00 00       	mov    $0x0,%eax
    123c:	eb 0f                	jmp    124d <compare_blocks+0x53>
    123e:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1242:	83 7d fc 0f          	cmpl   $0xf,-0x4(%rbp)
    1246:	7e cb                	jle    1213 <compare_blocks+0x19>
    1248:	b8 01 00 00 00       	mov    $0x1,%eax
    124d:	5d                   	pop    %rbp
    124e:	c3                   	ret

000000000000124f <main>:
    124f:	f3 0f 1e fa          	endbr64
    1253:	55                   	push   %rbp
    1254:	48 89 e5             	mov    %rsp,%rbp
    1257:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
    125e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1265:	00 00 
    1267:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    126b:	31 c0                	xor    %eax,%eax
    126d:	48 c7 85 40 ff ff ff 	movq   $0x94a564,-0xc0(%rbp)
    1274:	64 a5 94 00 
    1278:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
    127f:	00 00 00 00 
    1283:	48 b8 d4 56 58 4d d0 	movabs $0x4ce8e3d04d5856d4,%rax
    128a:	e3 e8 4c 
    128d:	48 ba c3 16 6e 4b 7f 	movabs $0xd89a27f4b6e16c3,%rdx
    1294:	a2 89 0d 
    1297:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
    129e:	48 89 95 58 ff ff ff 	mov    %rdx,-0xa8(%rbp)
    12a5:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    12ac:	48 89 95 68 ff ff ff 	mov    %rdx,-0x98(%rbp)
    12b3:	48 b8 79 d2 62 21 b8 	movabs $0x4c587bb82162d279,%rax
    12ba:	7b 58 4c 
    12bd:	48 ba d4 2f bc 4f fe 	movabs $0x9adea5fe4fbc2fd4,%rdx
    12c4:	a5 de 9a 
    12c7:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
    12ce:	48 89 95 78 ff ff ff 	mov    %rdx,-0x88(%rbp)
    12d5:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    12d9:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
    12dd:	48 b8 0e 93 69 1a 0c 	movabs $0x4060fc0c1a69930e,%rax
    12e4:	fc 60 40 
    12e7:	48 ba 8b 7b 68 f6 6b 	movabs $0x133c516bf6687b8b,%rdx
    12ee:	51 3c 13 
    12f1:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    12f5:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
    12f9:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    12fd:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
    1301:	48 b8 e6 a8 09 4f ee 	movabs $0x4a20aee4f09a8e6,%rax
    1308:	0a a2 04 
    130b:	48 ba fd 97 bc b0 b4 	movabs $0x80854bb4b0bc97fd,%rdx
    1312:	4b 85 80 
    1315:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    1319:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    131d:	c7 85 3c ff ff ff 04 	movl   $0x4,-0xc4(%rbp)
    1324:	00 00 00 
    1327:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    132e:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    1332:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    1339:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    133d:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    1341:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1345:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    1349:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    134d:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%rbp)
    1354:	00 00 00 
    1357:	e9 c1 00 00 00       	jmp    141d <main+0x1ce>
    135c:	8b 85 38 ff ff ff    	mov    -0xc8(%rbp),%eax
    1362:	48 98                	cltq
    1364:	48 8b 44 c5 c0       	mov    -0x40(%rbp,%rax,8),%rax
    1369:	48 8b 50 08          	mov    0x8(%rax),%rdx
    136d:	48 8b 00             	mov    (%rax),%rax
    1370:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1374:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    1378:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    137c:	48 89 c7             	mov    %rax,%rdi
    137f:	e8 aa 01 00 00       	call   152e <transform_L>
    1384:	8b 85 38 ff ff ff    	mov    -0xc8(%rbp),%eax
    138a:	48 98                	cltq
    138c:	48 8b 44 c5 c0       	mov    -0x40(%rbp,%rax,8),%rax
    1391:	48 8d 50 10          	lea    0x10(%rax),%rdx
    1395:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    1399:	48 89 c6             	mov    %rax,%rsi
    139c:	48 89 d7             	mov    %rdx,%rdi
    139f:	e8 56 fe ff ff       	call   11fa <compare_blocks>
    13a4:	85 c0                	test   %eax,%eax
    13a6:	75 52                	jne    13fa <main+0x1ab>
    13a8:	8b 85 38 ff ff ff    	mov    -0xc8(%rbp),%eax
    13ae:	89 c6                	mov    %eax,%esi
    13b0:	48 8d 05 58 0c 00 00 	lea    0xc58(%rip),%rax        # 200f <_IO_stdin_used+0xf>
    13b7:	48 89 c7             	mov    %rax,%rdi
    13ba:	b8 00 00 00 00       	mov    $0x0,%eax
    13bf:	e8 9c fc ff ff       	call   1060 <printf@plt>
    13c4:	8b 85 38 ff ff ff    	mov    -0xc8(%rbp),%eax
    13ca:	48 98                	cltq
    13cc:	48 8b 44 c5 c0       	mov    -0x40(%rbp,%rax,8),%rax
    13d1:	48 83 c0 10          	add    $0x10,%rax
    13d5:	48 89 c7             	mov    %rax,%rdi
    13d8:	e8 8c fd ff ff       	call   1169 <print_block>
    13dd:	48 8d 05 46 0c 00 00 	lea    0xc46(%rip),%rax        # 202a <_IO_stdin_used+0x2a>
    13e4:	48 89 c7             	mov    %rax,%rdi
    13e7:	e8 54 fc ff ff       	call   1040 <puts@plt>
    13ec:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    13f0:	48 89 c7             	mov    %rax,%rdi
    13f3:	e8 71 fd ff ff       	call   1169 <print_block>
    13f8:	eb 1c                	jmp    1416 <main+0x1c7>
    13fa:	8b 85 38 ff ff ff    	mov    -0xc8(%rbp),%eax
    1400:	89 c6                	mov    %eax,%esi
    1402:	48 8d 05 26 0c 00 00 	lea    0xc26(%rip),%rax        # 202f <_IO_stdin_used+0x2f>
    1409:	48 89 c7             	mov    %rax,%rdi
    140c:	b8 00 00 00 00       	mov    $0x0,%eax
    1411:	e8 4a fc ff ff       	call   1060 <printf@plt>
    1416:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%rbp)
    141d:	8b 85 38 ff ff ff    	mov    -0xc8(%rbp),%eax
    1423:	3b 85 3c ff ff ff    	cmp    -0xc4(%rbp),%eax
    1429:	0f 8c 2d ff ff ff    	jl     135c <main+0x10d>
    142f:	b8 00 00 00 00       	mov    $0x0,%eax
    1434:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1438:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    143f:	00 00 
    1441:	74 05                	je     1448 <main+0x1f9>
    1443:	e8 08 fc ff ff       	call   1050 <__stack_chk_fail@plt>
    1448:	c9                   	leave
    1449:	c3                   	ret

000000000000144a <linear>:
    144a:	48 31 c0             	xor    %rax,%rax
    144d:	48 8d 35 ec 0b 00 00 	lea    0xbec(%rip),%rsi        # 2040 <LinearLookup>
    1454:	48 0f b6 17          	movzbq (%rdi),%rdx
    1458:	32 04 16             	xor    (%rsi,%rdx,1),%al
    145b:	48 0f b6 57 01       	movzbq 0x1(%rdi),%rdx
    1460:	32 84 16 00 01 00 00 	xor    0x100(%rsi,%rdx,1),%al
    1467:	48 0f b6 57 02       	movzbq 0x2(%rdi),%rdx
    146c:	32 84 16 00 02 00 00 	xor    0x200(%rsi,%rdx,1),%al
    1473:	48 0f b6 57 03       	movzbq 0x3(%rdi),%rdx
    1478:	32 84 16 00 03 00 00 	xor    0x300(%rsi,%rdx,1),%al
    147f:	48 0f b6 57 04       	movzbq 0x4(%rdi),%rdx
    1484:	32 84 16 00 04 00 00 	xor    0x400(%rsi,%rdx,1),%al
    148b:	48 0f b6 57 05       	movzbq 0x5(%rdi),%rdx
    1490:	32 84 16 00 05 00 00 	xor    0x500(%rsi,%rdx,1),%al
    1497:	48 0f b6 57 06       	movzbq 0x6(%rdi),%rdx
    149c:	32 84 16 00 06 00 00 	xor    0x600(%rsi,%rdx,1),%al
    14a3:	48 0f b6 57 07       	movzbq 0x7(%rdi),%rdx
    14a8:	32 84 16 00 07 00 00 	xor    0x700(%rsi,%rdx,1),%al
    14af:	48 0f b6 57 08       	movzbq 0x8(%rdi),%rdx
    14b4:	32 84 16 00 06 00 00 	xor    0x600(%rsi,%rdx,1),%al
    14bb:	48 0f b6 57 09       	movzbq 0x9(%rdi),%rdx
    14c0:	32 84 16 00 05 00 00 	xor    0x500(%rsi,%rdx,1),%al
    14c7:	48 0f b6 57 0a       	movzbq 0xa(%rdi),%rdx
    14cc:	32 84 16 00 04 00 00 	xor    0x400(%rsi,%rdx,1),%al
    14d3:	48 0f b6 57 0b       	movzbq 0xb(%rdi),%rdx
    14d8:	32 84 16 00 03 00 00 	xor    0x300(%rsi,%rdx,1),%al
    14df:	48 0f b6 57 0c       	movzbq 0xc(%rdi),%rdx
    14e4:	32 84 16 00 02 00 00 	xor    0x200(%rsi,%rdx,1),%al
    14eb:	48 0f b6 57 0d       	movzbq 0xd(%rdi),%rdx
    14f0:	32 84 16 00 01 00 00 	xor    0x100(%rsi,%rdx,1),%al
    14f7:	48 0f b6 57 0e       	movzbq 0xe(%rdi),%rdx
    14fc:	32 04 16             	xor    (%rsi,%rdx,1),%al
    14ff:	48 0f b6 57 0f       	movzbq 0xf(%rdi),%rdx
    1504:	32 84 16 00 06 00 00 	xor    0x600(%rsi,%rdx,1),%al
    150b:	c3                   	ret

000000000000150c <transform_R>:
    150c:	e8 39 ff ff ff       	call   144a <linear>
    1511:	48 c1 e0 38          	shl    $0x38,%rax
    1515:	48 8b 37             	mov    (%rdi),%rsi
    1518:	48 8b 57 08          	mov    0x8(%rdi),%rdx
    151c:	48 0f a4 f2 08       	shld   $0x8,%rsi,%rdx
    1521:	48 0f a4 c6 08       	shld   $0x8,%rax,%rsi
    1526:	48 89 37             	mov    %rsi,(%rdi)
    1529:	48 89 57 08          	mov    %rdx,0x8(%rdi)
    152d:	c3                   	ret

000000000000152e <transform_L>:
    152e:	48 c7 c1 10 00 00 00 	mov    $0x10,%rcx

0000000000001535 <transform_L_loop>:
    1535:	e8 d2 ff ff ff       	call   150c <transform_R>
    153a:	48 83 e9 01          	sub    $0x1,%rcx
    153e:	75 f5                	jne    1535 <transform_L_loop>
    1540:	c3                   	ret

Disassembly of section .fini:

0000000000001544 <_fini>:
    1544:	f3 0f 1e fa          	endbr64
    1548:	48 83 ec 08          	sub    $0x8,%rsp
    154c:	48 83 c4 08          	add    $0x8,%rsp
    1550:	c3                   	ret
