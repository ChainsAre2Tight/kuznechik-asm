#!/bin/bash

gcc ../v1/tests/encryption/encryption_benchmark.c kuznechik.s -o main
time ./main
rm main