#include <stdio.h>
#include "../utils/blocks.h"

extern void keyschedule(unsigned char key[32], unsigned char target[10][16]);

struct KeyscheduleTestData {
    unsigned char key[32];
    unsigned char expected[10][16];
};

int main() {
    struct KeyscheduleTestData test_0 = {
        {
            0x88, 0x99, 0xaa, 0xbb,
            0xcc, 0xdd, 0xee, 0xff,
            0x00, 0x11, 0x22, 0x33,
            0x44, 0x55, 0x66, 0x77,
            0xfe, 0xdc, 0xba, 0x98,
            0x76, 0x54, 0x32, 0x10,
            0x01, 0x23, 0x45, 0x67,
            0x89, 0xab, 0xcd, 0xef,
        }, // master key
        {
            {
                0x88, 0x99, 0xaa, 0xbb,
                0xcc, 0xdd, 0xee, 0xff,
                0x00, 0x11, 0x22, 0x33,
                0x44, 0x55, 0x66, 0x77,
            }, // round key #1
            {
                0xfe, 0xdc, 0xba, 0x98,
                0x76, 0x54, 0x32, 0x10,
                0x01, 0x23, 0x45, 0x67,
                0x89, 0xab, 0xcd, 0xef,
            }, // round key #2
             {
                0xdb, 0x31, 0x48, 0x53,
                0x15, 0x69, 0x43, 0x43,
                0x22, 0x8d, 0x6a, 0xef,
                0x8c, 0xc7, 0x8c, 0x44,
            }, // round key #3
            {
                0x3d, 0x45, 0x53, 0xd8,
                0xe9, 0xcf, 0xec, 0x68,
                0x15, 0xeb, 0xad, 0xc4,
                0x0a, 0x9f, 0xfd, 0x04,
            }, // round key #4
            {
                0x57, 0x64, 0x64, 0x68,
                0xc4, 0x4a, 0x5e, 0x28,
                0xd3, 0xe5, 0x92, 0x46,
                0xf4, 0x29, 0xf1, 0xac,
            }, // round key #5
            {
                0xbd, 0x07, 0x94, 0x35,
                0x16, 0x5c, 0x64, 0x32,
                0xb5, 0x32, 0xe8, 0x28,
                0x34, 0xda, 0x58, 0x1b,
            }, // round key #6
            {
                0x51, 0xe6, 0x40, 0x75,
                0x7e, 0x87, 0x45, 0xde,
                0x70, 0x57, 0x27, 0x26,
                0x5a, 0x00, 0x98, 0xb1,
            }, // round key #7
            {
                0x5a, 0x79, 0x25, 0x01,
                0x7b, 0x9f, 0xdd, 0x3e,
                0xd7, 0x2a, 0x91, 0xa2,
                0x22, 0x86, 0xf9, 0x84,
            }, // round key #8
            {
                0xbb, 0x44, 0xe2, 0x53,
                0x78, 0xc7, 0x31, 0x23,
                0xa5, 0xf3, 0x2f, 0x73,
                0xcd, 0xb6, 0xe5, 0x17,
            }, // round key #9
            {
                0x72, 0xe9, 0xdd, 0x74,
                0x16, 0xbc, 0xf4, 0x5b,
                0x75, 0x5d, 0xba, 0xa8,
                0x8e, 0x4a, 0x40, 0x43,
            }, // round key #10
            
        }
    };

    const int num_tests = 1;
    struct KeyscheduleTestData* tt[] = {
        &test_0,
    };


    for (int test_id = 0; test_id < num_tests; test_id++) {
        struct KeyscheduleTestData* td = tt[test_id];
        unsigned char target[10][16] = {
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
        };
        keyschedule(td->key, target);

        int pass_flag = 1;

        for (int block_num = 0; block_num < 10; block_num++) {
            if (compare_blocks(target[block_num], td->expected[block_num]) == 0) {
                pass_flag = 0;
                printf("test #%d fail round key #%d, \nExpected:\n", test_id, block_num+1);
                print_block(td->expected[block_num]);
                printf("Got:\n");
                print_block(target[block_num]);
            }
        }

        if (pass_flag == 1) {
            printf("test #%d pass\n", test_id);
        }
    }
}

