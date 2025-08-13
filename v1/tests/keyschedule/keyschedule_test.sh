#!/bin/bash

gcc keyschedule_test.c ../../F.s ../../L.s ../../R.s ../../linear.s ../../X.s ../../S.s ../../keyschedule.s -o main
echo "Testing keyschedule..."
./main
rm main