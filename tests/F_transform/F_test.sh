#!/bin/bash

gcc F_test.c ../../F.s ../../L.s ../../R.s ../../linear.s ../../X.s ../../S.s -o main
echo "Testing F..."
./main
rm main