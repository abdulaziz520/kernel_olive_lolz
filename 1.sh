cd /home/runner/work/666/666

sudo apt update && sudo apt -y dist-upgrade
apt-get install -y bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev unzip openjdk-8-jdk language-pack-zh-hans python

git clone --depth=1 https://github.com/yi985432/kernel_olive_lolz -b V11
git clone --depth=1 https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9 -b android-10.0.0_r32 
git clone --depth=1 https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 -b ndk-release-r21




cd kernel_olive_lolz
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=/home/runner/work/666/666/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export CROSS_COMPILE_ARM32=/home/runner/work/666/666/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
make O=out lolz_olive_defconfig
make -j8              