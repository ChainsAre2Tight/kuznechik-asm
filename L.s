.globl transform_L
.type transform_L @function
transform_L:
    # rdi - pointer to block
    movq $16, %rbx
transform_L_loop:
    call transform_R
    subq $1, %rbx
    jnz transform_L_loop

    ret
