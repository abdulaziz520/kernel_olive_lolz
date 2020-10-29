
sudo apt update && sudo apt -y dist-upgrade
sudo apt install -y gcc g++ python make texinfo texlive bc bison build-essential ccache curl flex g++-multilib gcc-multilib \
    git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev \
    libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev \
    unzip language-pack-zh-hans

export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=aarch64-linux-android-
export PATH=../Toolchain/bin
make O=out ARCH=arm64 lolz_olive_defconfig
make -j8 O=out 
                      ARCH=arm64 
                      CROSS_COMPILE=../Toolchain/bin/aarch64-linux-android- 
                      
