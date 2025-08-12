.globl transform_R
.type transform_R @function
transform_R:
    # rdi - pointer to block, 16 bytes
    call linear
    # l(block) in al

    shlq $56, %rax

    # store fist 8 bytes of block in %rcx
    movq (%rdi), %rcx
    # store last 8 bytes of block in %rdx
    movq 8(%rdi), %rdx

    shldq $8, %rcx, %rdx
    shldq $8, %rax, %rcx

    movq %rcx, (%rdi)
    movq %rdx, 8(%rdi)

    ret
