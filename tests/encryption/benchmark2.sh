#!/bin/bash

gcc encryption_benchmark.c ../../kuznechik.s -o main
time ./main
rm main