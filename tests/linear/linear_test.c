#include <stdio.h>
// #include "linearlookup.h"

// extern unsigned char* LinearLookup;
// extern unsigned char linear(const unsigned char block[16], const unsigned char linear_lookup[8][256]);
extern unsigned char linear(const unsigned char block[16]);

// unsigned char linear(const unsigned char block[16], const unsigned char linear_lookup[8][256]) {
//     return (
//         linear_lookup[0][block[0]] ^
//         linear_lookup[1][block[1]] ^
//         linear_lookup[2][block[2]] ^
//         linear_lookup[3][block[3]] ^
//         linear_lookup[4][block[4]] ^
//         linear_lookup[5][block[5]] ^
//         linear_lookup[6][block[6]] ^ 
//         linear_lookup[7][block[7]] ^
//         linear_lookup[6][block[8]] ^
//         linear_lookup[5][block[9]] ^
//         linear_lookup[4][block[10]] ^
//         linear_lookup[3][block[11]] ^
//         linear_lookup[2][block[12]] ^
//         linear_lookup[1][block[13]] ^
//         linear_lookup[0][block[14]] ^
//         linear_lookup[6][block[15]]
//     );
// }

struct LinearTestData {
    unsigned char block[16];
    unsigned char expected;
};

int main() {
    struct LinearTestData test_0 = {
        {
            0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x01, 0x00
        },
        0x94
    };
    struct LinearTestData test_1 = {
        {
            0x94, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x01,
        },
        0xa5
    };
    struct LinearTestData test_2 = {
        {
            0xa5, 0x94, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00,
        },
        0x64
    };
    struct LinearTestData test_3 = {
        {
            0x64, 0xa5, 0x94, 0x00,
            0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00,
        },
        0x0d
    };

    const int num_tests = 4;
    const struct LinearTestData* tt[4] = {
        &test_0,
        &test_1,
        &test_2,
        &test_3,
    };


    for (int test_id = 0; test_id < num_tests; test_id++) {
        // unsigned char result = linear(tt[test_id]->block, LinearLookup);
        unsigned char result = linear(tt[test_id]->block);
        if (result != tt[test_id]->expected) {
            printf("test #%d fail, expected: %.2x, got: %.2x\n", test_id, tt[test_id]->expected, result);
        } else {
            printf("test #%d pass\n", test_id);
        }
    }
}