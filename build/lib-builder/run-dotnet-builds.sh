#!/bin/sh

set -eu

mkdir output -p
mkdir src -p
cp build-*.sh src
cd src

./build-steamworks.sh

cd ..
#rm -rf src
