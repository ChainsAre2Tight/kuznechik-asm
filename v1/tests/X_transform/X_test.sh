#!/bin/bash

gcc ../../X.s X_test.c -o main
echo "Testing XOR..."
./main
rm main