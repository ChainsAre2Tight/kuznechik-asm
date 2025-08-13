#!/bin/bash

gcc ../v1/tests/encryption/encryption_test.c kuznechik.s -o main
echo "Testing encryption..."
./main
rm main