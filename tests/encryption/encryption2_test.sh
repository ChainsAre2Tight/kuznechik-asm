#!/bin/bash

gcc encryption_test.c ../../kuznechik.s -o main
echo "Testing encryption..."
./main
rm main