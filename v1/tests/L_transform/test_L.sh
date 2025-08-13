#!/bin/bash

gcc test_L.c ../../linear.s ../../R.s ../../L.s -o main
echo "Testing L..."
./main
rm main