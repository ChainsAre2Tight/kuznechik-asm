#include <stdio.h>
#include "../utils/blocks.h"

extern void encrypt(unsigned char src[16], unsigned char dst[16], unsigned char roundKeys[10][16]);

int main() {
    unsigned char block[16] = {
        1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
    };
    unsigned char roundkeys[10][16];
    for (int i = 0; i < 1000000; i++) {
        encrypt(block, block, roundkeys);
    }
    print_block(block);
}