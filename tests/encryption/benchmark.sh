#!/bin/bash

gcc encryption_benchmark.c ../../F.s ../../L.s ../../R.s ../../linear.s ../../X.s ../../S.s ../../keyschedule.s ../../encryption.s -o main
time ./main
rm main