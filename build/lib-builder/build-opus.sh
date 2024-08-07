#!/bin/sh

git clone https://github.com/xiph/opus opus
cd opus

mkdir build
cd build

cmake .. -DOPUS_BUILD_SHARED_LIBRARY=on -DOPUS_BUILD_TESTING=off -DOPUS_BUILD_PROGRAMS=off
cmake --build .

ls
cp ./libopus.so /build/output -rL
