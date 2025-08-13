#!/bin/bash

gcc test_R.c ../../linear.s ../../R.s -o main
echo "Testing R..."
./main
rm main