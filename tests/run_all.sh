#!/bin/bash

cd linear
./test_linear.sh
cd ..

cd R_transform
./test_R.sh
cd ..

cd L_transform
./test_L.sh
cd ..

cd S_transform
./S_test.sh
cd ..

cd X_transform
./X_test.sh
cd ..

cd F_transform
./F_test.sh
cd ..

cd keyschedule
./keyschedule_test.sh
cd ..

cd encryption
./encryption_test.sh
cd ..