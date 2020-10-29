export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=aarch64-linux-android-
export PATH=../Toolchain/bin
make O=out ARCH=arm64 lolz_olive_defconfig
make -j8 O=out 
                      ARCH=arm64 
                      CROSS_COMPILE=../Toolchain/bin/aarch64-linux-android- 
                      