#!/bin/bash

git clone https://github.com/Yellow-Dog-Man/msdfgen msdfgen
cd msdfgen

cmake -B build -DMSDFGEN_BUILD_STANDALONE=off -DMSDFGEN_BUILD_SHARED_LIBRARY=on
cd build
make -j4

cd out
ls

cp ./libmsdfgen.so /build/output -r
