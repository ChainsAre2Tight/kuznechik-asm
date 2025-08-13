#include <stdio.h>
#include "../utils/blocks.h"

extern void transform_F(unsigned char A[16], unsigned char B[16], unsigned char key[16]);

struct FTestData {
    unsigned char A[16];
    unsigned char B[16];
    unsigned char key[16];
    unsigned char expected_A[16];
    unsigned char expected_B[16];
};

int main() {
    struct FTestData test_0 = {
        {
            0x88, 0x99, 0xaa, 0xbb,
            0xcc, 0xdd, 0xee, 0xff,
            0x00, 0x11, 0x22, 0x33,
            0x44, 0x55, 0x66, 0x77,
        }, {
            0xfe, 0xdc, 0xba, 0x98,
            0x76, 0x54, 0x32, 0x10,
            0x01, 0x23, 0x45, 0x67,
            0x89, 0xab, 0xcd, 0xef, 
        }, {
            0x6e, 0xa2, 0x76, 0x72,
            0x6c, 0x48, 0x7a, 0xb8,
            0x5d, 0x27, 0xbd, 0x10,
            0xdd, 0x84, 0x94, 0x01, 
        }, {
            0xc3, 0xd5, 0xfa, 0x01,
            0xeb, 0xe3, 0x6f, 0x7a,
            0x93, 0x74, 0x42, 0x7a,
            0xd7, 0xca, 0x89, 0x49, 
        }, {
            0x88, 0x99, 0xaa, 0xbb,
            0xcc, 0xdd, 0xee, 0xff,
            0x00, 0x11, 0x22, 0x33,
            0x44, 0x55, 0x66, 0x77,
        },
    };

    const int num_tests = 1;
    struct FTestData* tt[] = {
        &test_0,
    };


    for (int test_id = 0; test_id < num_tests; test_id++) {
        struct FTestData* td = tt[test_id];
        transform_F(td->A, td->B, td->key);
        int flag_A = compare_blocks(td->expected_A, td->A);
        int flag_B = compare_blocks(td->expected_B, td->B);
        if (flag_A == 1 && flag_B == 1) {
            printf("test #%d pass\n", test_id);
            continue;
        }
        if (flag_A == 0) {
            printf("test #%d fail block A, \nExpected:\n", test_id);
            print_block(td->expected_A);
            printf("Got:\n");
            print_block(td->A);
        } 
        if (flag_B == 0) {
            printf("test #%d fail block B, \nExpected:\n", test_id);
            print_block(td->expected_B);
            printf("Got:\n");
            print_block(td->B);
        }
    }
}

