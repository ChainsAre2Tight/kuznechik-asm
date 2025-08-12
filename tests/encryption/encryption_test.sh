#!/bin/bash

gcc encryption_test.c ../../F.s ../../L.s ../../R.s ../../linear.s ../../X.s ../../S.s ../../keyschedule.s ../../encryption.s -O4 -o main
echo "Testing encryption..."
./main
rm main