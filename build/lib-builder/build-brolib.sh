git clone https://github.com/google/brotli.git
cd brotli
git checkout v1.0.9
./bootstrap
mkdir build-linux
cd build-linux
../configure \
        CFLAGS="-O2" \
        CXXFLAGS="-O2" \
        --enable-static \
        --disable-shared \
        --with-pic
make -j
gcc -shared -o brolib_x64.so -Wl,--whole-archive ./.libs/libbrotlicommon.a ./.libs/libbrotlidec.a ./.libs/libbrotlienc.a -Wl,--no-whole-archive

cp *.so /build/output
