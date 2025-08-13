#ifndef _BLOCK_UTILS_
#define _BLOCK_UTILS_

void print_block(unsigned char block[16]) {
    for (int i = 0; i < 16; i++) {
        if (i % 4 == 0) {
            printf("    ");
        }
        printf("%.2x ", block[i]);
        if (i % 4 == 3) {
            printf("\n");
        }
    }
}

int compare_blocks(unsigned char A[16], unsigned char B[16]) {
    for (int i = 0; i < 16; i++) {
        if (A[i] != B[i]) {
            return 0;
        }
    }

    return 1;
}

#endif