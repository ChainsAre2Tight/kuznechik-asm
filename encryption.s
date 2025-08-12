.globl encrypt
.type encrypt @function
encrypt:
    # rdi - pointer to src block, 16 bytes
    # rsi - pointer to dst block, 16 bytes
    # rdx - pointer to round keys, 10x16 bytes

    pushq %r12 # used as counter
    pushq %rdi
    pushq %rsi

    # TODO: add copy skip if src = dst
    test %rsi, %rdi
    jz copy_skip

    movapd (%rdi), %xmm8
    movapd %xmm8, (%rsi)
    movq %rsi, %rdi

copy_skip:
    movq %rdx, %rsi

    movq $9, %r12
encrypt_loop:
    call transform_X
    call transform_S
    call transform_L
    addq $16, %rsi
    subq $1, %r12
    jnz encrypt_loop

    call transform_X
    popq %rsi
    popq %rdi
    popq %r12
    ret
