	.file	"test.c"
	.text
	.p2align 4
	.globl	linear
	.type	linear, @function
linear:
.LFB23:
	.cfi_startproc
	endbr64
	movq	%rsi, %rcx
	movzbl	(%rdi), %eax
	movzbl	1(%rdi), %esi
	movzbl	15(%rdi), %edx
	movzbl	(%rcx,%rax), %eax
	xorb	256(%rcx,%rsi), %al
	movzbl	2(%rdi), %esi
	xorb	512(%rcx,%rsi), %al
	movzbl	3(%rdi), %esi
	xorb	768(%rcx,%rsi), %al
	movzbl	4(%rdi), %esi
	xorb	1024(%rcx,%rsi), %al
	movzbl	5(%rdi), %esi
	xorb	1280(%rcx,%rsi), %al
	movzbl	6(%rdi), %esi
	xorb	1536(%rcx,%rsi), %al
	movzbl	7(%rdi), %esi
	xorb	1792(%rcx,%rsi), %al
	movzbl	8(%rdi), %esi
	xorb	1536(%rcx,%rsi), %al
	movzbl	9(%rdi), %esi
	xorb	1280(%rcx,%rsi), %al
	movzbl	10(%rdi), %esi
	xorb	1024(%rcx,%rsi), %al
	movzbl	11(%rdi), %esi
	xorb	768(%rcx,%rsi), %al
	movzbl	12(%rdi), %esi
	xorb	512(%rcx,%rsi), %al
	movzbl	13(%rdi), %esi
	xorb	256(%rcx,%rsi), %al
	movzbl	14(%rdi), %esi
	xorb	(%rcx,%rsi), %al
	xorb	1536(%rcx,%rdx), %al
	ret
	.cfi_endproc
.LFE23:
	.size	linear, .-linear
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"test #%d fail, expected: %.2x, got: %.2x\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"test #%d pass\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$-108, %r8d
	xorl	%r15d, %r15d
	xorl	%r11d, %r11d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	xorl	%r10d, %r10d
	xorl	%r14d, %r14d
	xorl	%r9d, %r9d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	xorl	%edi, %edi
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	xorl	%ecx, %ecx
	xorl	%r12d, %r12d
	movl	$-108, %edx
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	LinearLookup(%rip), %rbx
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	movdqa	.LC2(%rip), %xmm0
	movq	%fs:40, %rax
	movq	%rax, 152(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %rax
	movb	$-91, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	%rax, %xmm0
	leaq	48(%rsp), %rax
	movq	%rax, %xmm1
	movb	$100, 64(%rsp)
	leaq	80(%rsp), %rax
	movq	$38053, 48(%rsp)
	punpcklqdq	%xmm1, %xmm0
	movq	$0, 56(%rsp)
	movq	$9741668, 80(%rsp)
	movq	$0, 88(%rsp)
	movb	$13, 96(%rsp)
	movb	$0, 11(%rsp)
	movb	$0, 10(%rsp)
	movb	$0, 9(%rsp)
	movb	$0, 8(%rsp)
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	movups	%xmm0, 120(%rsp)
.L7:
	xorl	%ecx, %esi
	movzbl	8(%rsp), %ecx
	movl	%ebp, 12(%rsp)
	xorl	%edi, %esi
	xorl	%r9d, %esi
	xorl	%r10d, %esi
	xorl	%r14d, %esi
	xorl	%esi, %ecx
	xorb	9(%rsp), %cl
	xorb	10(%rsp), %cl
	xorb	11(%rsp), %cl
	xorl	%r11d, %ecx
	xorl	%r12d, %ecx
	xorl	%r13d, %ecx
	xorl	%r15d, %ecx
	xorl	%ecx, %r8d
	xorl	%eax, %r8d
	cmpb	%dl, %r8b
	je	.L4
	movzbl	%dl, %ecx
	movzbl	%r8b, %r8d
	movl	%ebp, %edx
	movl	$2, %edi
	leaq	.LC0(%rip), %rsi
	xorl	%eax, %eax
	addq	$1, %rbp
	call	__printf_chk@PLT
	cmpq	$4, %rbp
	je	.L6
.L10:
	movq	112(%rsp,%rbp,8), %rax
	movzbl	3(%rax), %r8d
	movzbl	(%rax), %ecx
	movzbl	1(%rax), %esi
	movzbl	2(%rax), %edi
	movzbl	768(%rbx,%r8), %r9d
	movzbl	4(%rax), %r8d
	movzbl	16(%rax), %edx
	movzbl	(%rbx,%rcx), %ecx
	movzbl	256(%rbx,%rsi), %esi
	movzbl	512(%rbx,%rdi), %edi
	movzbl	1024(%rbx,%r8), %r10d
	movzbl	5(%rax), %r8d
	movzbl	1280(%rbx,%r8), %r14d
	movzbl	6(%rax), %r8d
	movzbl	1536(%rbx,%r8), %r11d
	movzbl	7(%rax), %r8d
	movzbl	1792(%rbx,%r8), %r15d
	movzbl	8(%rax), %r8d
	movb	%r11b, 8(%rsp)
	movzbl	1536(%rbx,%r8), %r11d
	movzbl	9(%rax), %r8d
	movb	%r15b, 9(%rsp)
	movzbl	1280(%rbx,%r8), %r15d
	movzbl	10(%rax), %r8d
	movb	%r11b, 10(%rsp)
	movzbl	1024(%rbx,%r8), %r11d
	movzbl	11(%rax), %r8d
	movb	%r15b, 11(%rsp)
	movzbl	768(%rbx,%r8), %r12d
	movzbl	12(%rax), %r8d
	movzbl	512(%rbx,%r8), %r13d
	movzbl	13(%rax), %r8d
	movzbl	256(%rbx,%r8), %r15d
	movzbl	14(%rax), %r8d
	movzbl	15(%rax), %eax
	movzbl	(%rbx,%r8), %r8d
	movzbl	1536(%rbx,%rax), %eax
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L4:
	movl	%ebp, %edx
	leaq	.LC1(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	addq	$1, %rbp
	cmpq	$4, %rbp
	jne	.L10
.L6:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L11
	addq	$168, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L11:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.globl	LinearLookup
	.section	.rodata
	.align 32
	.type	LinearLookup, @object
	.size	LinearLookup, 2048
LinearLookup:
	.string	""
	.ascii	"\224\353\177\025\201\376j*\276\301U?\253\324@T\300\277+A\325"
	.ascii	"\252>~\352\225\001k\377\200\024\250<C\327\275)V\302\202\026i"
	.ascii	"\375\227\003|\350\374h\027\203\351}\002\226\326B=\251\303W(\274"
	.ascii	"\223\007x\354\206\022m\371\271-R\306\2548G\323\307S,\270\322"
	.ascii	"F9\255\355y\006\222\370l\023\207;\257\320D.\272\305Q\021\205"
	.ascii	"\372n\004\220\357{o\373\204\020z\356\221\005E\321\256:P\304\273"
	.ascii	"/\345q\016\232\360d\033\217\317[$\260\332N1\245\261%Z\316\244"
	.ascii	"0O\333\233\017p\344\216\032e\361M\331\2462X\314\263'g\363\214"
	.ascii	"\030r\346\231\r\031\215\362f\f\230\347s3\247\330L&\262\315Yv"
	.ascii	"\342\235\tc\367\210\034\\\310\267#I\335\2426\"\266\311]7\243"
	.ascii	"\334H\b\234\343w\035\211\366b\336J5\241\313_ \264\364`\037\213"
	.ascii	"\341u\n\236\212\036a\365\237\013t\340\2404K\337\265!^\312"
	.string	""
	.ascii	" @`\200\240\300\340\303\343\203\243Cc\003#Ee\005%\305\345\205"
	.ascii	"\245\206\246\306\346\006&Ff\212\252\312\352\n*JjIi\t)\311\351"
	.ascii	"\211\251\317\357\217\257Oo\017/\f,Ll\214\254\314\354\327\367"
	.ascii	"\227\267Ww\0277\0244Tt\224\264\324\364\222\262\322\362\0222R"
	.ascii	"rQq\0211\321\361\221\261]}\035=\335\375\235\275\236\276\336\376"
	.ascii	"\036>^~\0308Xx\230\270\330\370\333\373\233\273[{\033;mM-\r\355"
	.ascii	"\315\255\215\256\216\356\316.\016nN(\bhH\250\210\350\310\353"
	.ascii	"\313\253\213kK+\013\347\307\247\207gG'\007$\004dD\244\204\344"
	.ascii	"\304\242\202\342\302\"\002bBaA!\001\341\301\241\201\272\232\372"
	.ascii	"\332:\032zZyY9\031\371\331\271\231\377\337\277\237\177_?\037"
	.ascii	"<\034|\\\274\234\374\3340\020pP\260\220\360\320\363\323\263\223"
	.ascii	"sS3\023uU5\025\365\325\265\225\266\226\366\3266\026vV"
	.string	""
	.ascii	"\205\311LQ\324\230\035\242'k\356\363v:\277\207\002N\313\326S"
	.ascii	"\037\232%\240\354it\361\2758\315H\004\201\234\031U\320o\352\246"
	.ascii	"#>\273\367rJ\317\203\006\033\236\322W\350m!\244\271<p\365Y\334"
	.ascii	"\220\025\b\215\301D\373~2\267\252/c\346\336[\027\222\217\nF\303"
	.ascii	"|\371\2650-\250\344a\224\021]\330\305@\f\2116\263\377zg\342\256"
	.ascii	"+\023\226\332_B\307\213\016\2614x\375\340e)\254\2627{\376\343"
	.ascii	"f*\257\020\225\331\\A\304\210\r5\260\374yd\341\255(\227\022^"
	.ascii	"\333\306C\017\212\177\372\2663.\253\347b\335X\024\221\214\tE"
	.ascii	"\300\370}1\264\251,`\345Z\337\223\026\013\216\302G\353n\"\247"
	.ascii	"\272?s\366I\314\200\005\030\235\321Tl\351\245 =\270\364q\316"
	.ascii	"K\007\202\237\032V\323&\243\357jw\362\276;\204\001M\310\325P"
	.ascii	"\034\231\241$h\355\360u9\274\003\206\312OR\327\233\036"
	.string	""
	.ascii	"\020 0@P`p\200\220\240\260\300\320\340\360\303\323\343\363\203"
	.ascii	"\223\243\263CScs\003\023#3EUeu\005\025%5\305\325\345\365\205"
	.ascii	"\225\245\265\206\226\246\266\306\326\346\366\006\026&6FVfv\212"
	.ascii	"\232\252\272\312\332\352\372\n\032*:JZjzIYiy\t\031)9\311\331"
	.ascii	"\351\371\211\231\251\271\317\337\357\377\217\237\257\277O_o\177"
	.ascii	"\017\037/?\f\034,<L\\l|\214\234\254\274\314\334\354\374\327\307"
	.ascii	"\367\347\227\207\267\247WGwg\027\0077'\024\0044$TDtd\224\204"
	.ascii	"\264\244\324\304\364\344\222\202\262\242\322\302\362\342\022"
	.ascii	"\0022\"RBrbQAqa\021\0011!\321\301\361\341\221\201\261\241]M}"
	.ascii	"m\035\r=-\335\315\375\355\235\215\275\255\236\216\276\256\336"
	.ascii	"\316\376\356\036\016>.^N~n\030\b8(XHxh\230\210\270\250\330\310"
	.ascii	"\370\350\333\313\373\353\233\213\273\253[K{k\033\013;+"
	.string	""
	.ascii	"\302G\205\216L\311\013\337\035\230ZQ\223\026\324}\277:\370\363"
	.ascii	"1\264v\242`\345',\356k\251\3728\275\177t\2663\361%\347b\240\253"
	.ascii	"i\354.\207E\300\002\t\313N\214X\232\037\335\326\024\221S7\365"
	.ascii	"p\262\271{\376<\350*\257mf\244!\343J\210\r\317\304\006\203A\225"
	.ascii	"W\322\020\033\331\\\236\315\017\212HC\201\004\306\022\320U\227"
	.ascii	"\234^\333\031\260r\3675>\374y\273o\255(\352\341#\246dn\254)\353"
	.ascii	"\340\"\247e\261s\3664?\375x\272\023\321T\226\235_\332\030\314"
	.ascii	"\016\213IB\200\005\307\224V\323\021\032\330]\237K\211\f\316\305"
	.ascii	"\007\202@\351+\256lg\245 \3426\364q\263\270z\377=Y\233\036\334"
	.ascii	"\327\025\220R\206D\301\003\b\312O\215$\346c\241\252h\355/\373"
	.ascii	"9\274~u\2672\360\243a\344&-\357j\250|\276;\371\3620\265w\336"
	.ascii	"\034\231[P\222\027\325\001\303F\204\217M\310\n"
	.string	""
	.ascii	"\300C\203\206F\305\005\317\017\214LI\211\n\312]\235\036\336\333"
	.ascii	"\033\230X\222R\321\021\024\324W\227\272z\3719<\374\177\277u\265"
	.ascii	"6\366\3633\260p\347'\244da\241\"\342(\350k\253\256n\355-\267"
	.ascii	"w\36441\361r\262x\270;\373\376>\275}\352*\251il\254/\357%\345"
	.ascii	"f\246\243c\340 \r\315N\216\213K\310\b\302\002\201AD\204\007\307"
	.ascii	"P\220\023\323\326\026\225U\237_\334\034\031\331Z\232\255m\356"
	.ascii	".+\353h\250b\242!\341\344$\247g\3600\263sv\2665\365?\377|\274"
	.ascii	"\271y\372:\027\327T\224\221Q\322\022\330\030\233[^\236\035\335"
	.ascii	"J\212\t\311\314\f\217O\205E\306\006\003\303@\200\032\332Y\231"
	.ascii	"\234\\\337\037\325\025\226VS\223\020\320G\207\004\304\301\001"
	.ascii	"\202B\210H\313\013\016\316M\215\240`\343#&\346e\245o\257,\354"
	.ascii	"\351)\252j\375=\276~{\2738\3702\362q\261\264t\3677"
	.string	""
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022"
	.ascii	"\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&"
	.ascii	"'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`a"
	.ascii	"bcdefghijklmnopqrstuvwxyz{|}~\177\200\201\202\203\204\205\206"
	.ascii	"\207\210\211\212\213\214\215\216\217\220\221\222\223\224\225"
	.ascii	"\226\227\230\231\232\233\234\235\236\237\240\241\242\243\244"
	.ascii	"\245\246\247\250\251\252\253\254\255\256\257\260\261\262\263"
	.ascii	"\264\265\266\267\270\271\272\273\274\275\276\277\300\301\302"
	.ascii	"\303\304\305\306\307\310\311\312\313\314\315\316\317\320\321"
	.ascii	"\322\323\324\325\326\327\330\331\332\333\334\335\336\337\340"
	.ascii	"\341\342\343\344\345\346\347\350\351\352\353\354\355\356\357"
	.ascii	"\360\361\362\363\364\365\366\367\370\371\372\373\374\375\376"
	.ascii	"\377"
	.string	""
	.ascii	"\3735\316j\221_\244\324/\341\032\276E\213pk\220^\245\001\372"
	.ascii	"4\317\277D\212q\325.\340\033\326-\343\030\274G\211r\002\3717"
	.ascii	"\314h\223]\246\275F\210s\327,\342\031i\222\\\247\003\3706\315"
	.ascii	"o\224Z\241\005\3760\313\273@\216u\321*\344\037\004\3771\312n"
	.ascii	"\225[\240\320+\345\036\272A\217t\271B\214w\323(\346\035m\226"
	.ascii	"X\243\007\3742\311\322)\347\034\270C\215v\006\3753\310l\227Y"
	.ascii	"\242\336%\353\020\264O\201z\n\361?\304`\233U\256\265N\200{\337"
	.ascii	"$\352\021a\232T\257\013\360>\305\b\363=\306b\231W\254\334'\351"
	.ascii	"\022\266M\203xc\230V\255\t\362<\307\267L\202y\335&\350\023\261"
	.ascii	"J\204\177\333 \356\025e\236P\253\017\364:\301\332!\357\024\260"
	.ascii	"K\205~\016\365;\300d\237Q\252g\234R\251\r\3668\303\263H\206}"
	.ascii	"\331\"\354\027\f\3679\302f\235S\250\330#\355\026\262I\207|"
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.quad	148
	.quad	72057594037927936
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
