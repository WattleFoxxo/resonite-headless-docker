#!/bin/sh

set -eu

mkdir output -p
mkdir src -p
cp build-*.sh src
cd src

./build-brolib.sh
./build-crunch.sh
./build-freeimage.sh
./build-freetype.sh
./build-msdfgen.sh
./build-opus.sh
#./build-rnnoise.sh

cd ..
#rm -rf src
