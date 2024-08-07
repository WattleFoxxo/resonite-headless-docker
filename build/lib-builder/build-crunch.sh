#!/bin/sh

git clone https://github.com/Yellow-Dog-Man/crunch crunch
cd crunch

cmake -B build
cd build
make -j4

ls

cp libcrnlib.so /build/output
