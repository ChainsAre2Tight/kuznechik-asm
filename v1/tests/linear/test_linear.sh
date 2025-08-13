#!/bin/bash

gcc linear_test.c ../../linear.s -o main
echo "Testing linear..."
./main
rm main