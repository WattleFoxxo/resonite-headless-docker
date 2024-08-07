#!/bin/sh

git clone https://github.com/Yellow-Dog-Man/FreeImage freeimage

cd freeimage

sed '/^CFLAGS ?=/ s/$/ -DPNG_ARM_NEON_OPT=0/' Makefile.gnu -i

make -j4

cd freeimage/Dist
ls

cp ./libFreeImage.so /build/output -r

