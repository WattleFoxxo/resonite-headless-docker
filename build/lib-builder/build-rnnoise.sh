#!/bin/bash

git clone https://github.com/Yellow-Dog-Man/rnnoise rnnoise
cd rnnoise

cmake -B build
cd build
make -j4

ls

cp ./* /build/output
