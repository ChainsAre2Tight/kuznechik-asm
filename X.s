.globl transform_X
.type transform_X @function
transform_X:
    # rdi - pointer to block
    # rsi - pointer to key

    movapd (%rdi), %xmm8
    movapd (%rsi), %xmm9

    xorpd %xmm9, %xmm8

    movapd %xmm8, (%rdi)

    ret
