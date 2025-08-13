#include <stdio.h>
#include <string.h>
#include "../utils/blocks.h"

extern void transform_X(unsigned char block[16], unsigned char key[16]);

struct XTestData {
    unsigned char block[16];
    unsigned char key[16];
    unsigned char expected[16];
};

int main() {
    struct XTestData test_0 = {
        {
            0b101, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0b1101,
        }, {
            0b110, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 
            0x00, 0x00, 0x00, 0x00, 
            0x00, 0x00, 0x00, 0b1011, 
        }, {
            0b011, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 
            0x00, 0x00, 0x00, 0x00, 
            0x00, 0x00, 0x00, 0b0110, 
        }, 
    };

    const int num_tests = 1;
    struct XTestData* tt[] = {
        &test_0,
    };


    for (int test_id = 0; test_id < num_tests; test_id++) {
        unsigned char result[16];
        memcpy(result, tt[test_id]->block, 16);

        transform_X(result, tt[test_id]->key);
        if (compare_blocks(tt[test_id]->expected, result) == 0) {
            printf("test #%d fail, \nExpected:\n", test_id);
            print_block(tt[test_id]->expected);
            printf("Got:\n");
            print_block(result);
        } else {
            printf("test #%d pass\n", test_id);
        }
    }
}

