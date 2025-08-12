.globl transform_F
.type transform_F @function
transform_F:
    # rdi - block 1
    # rsi - block 2
    # rdx - key
    pushq %r12

    movq %rsi, %r12         # remember pointer to block 2

    movapd (%rdi), %xmm15   # copy contents of block 1 to xmm15
    
    movq %rdx, %rsi         # move key to second param
    call transform_X        # perform XOR on block 1 and key

    call transform_S        # perform Sbox on block 1
    call transform_L        # perform L on block 1

    movq %r12, %rsi         # move stored pointer to block 2 to second param
    call transform_X        # perform XOR on blocks 1 and 2

    movapd %xmm15, (%r12)   # copy contents of block 1 to block 2

    popq %r12
    ret
