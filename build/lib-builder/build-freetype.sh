#!/bin/sh

#git clone https://gitlab.freedesktop.org/freetype/freetype freetype
#cd freetype

#cmake -B build -D BUILD_SHARED_LIBS=true -D CMAKE_BUILD_TYPE=Release
#cd build
#make -j4

apt-get update -y
apt-get install -y libfreetype6

ls
cp /usr/lib/aarch64-linux-gnu/libfreetype.so.6 /build/output/libfreetype6.so
