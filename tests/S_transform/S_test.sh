#!/bin/bash

gcc ../../S.s S_test.c -o main
echo "Testing Sbox..."
./main
rm main