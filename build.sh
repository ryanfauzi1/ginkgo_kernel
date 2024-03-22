#!/bin/bash

#set -e

## Copy this script inside the kernel directory
KERNEL_DEFCONFIG=fury-perf_defconfig ## Ini defconfignya setiap type hape beda2 (redmi note 10 pro menggunakan sweet_defconfig)
ANYKERNEL3_DIR=$PWD/AnyKernel3/ ## ini anykernel nya gunanya untuk membukus hasil compile untuk siap flash
ZIPNAME=fury-pinjamvps-ksu-$(date '+%Y%m%d').zip ## INI NAMA KERNEL zip NYA

if ! [ -d "$HOME/proton" ]; then
echo "proton clang not found! Cloning..."
if ! git clone -q https://github.com/kdrag0n/proton-clang.git --depth=1 -b master ~/proton; then ## ini Clang nya tools untuk membangun/compile kernel nya (tidak semua kernel mendukung clang)
echo "Cloning failed! Aborting..."
exit 1
fi
fi
chmod +x /root/proton-clang/bin/clang
export PATH="/root/proton-clang/bin:$PATH"
export ARCH=arm64
export SUBARCH=arm64
export KBUILD_COMPILER_STRING="$(/root/proton-clang/bin/clang --version | head -n 1 | perl -pe 's/\(http.*?\)//gs' | sed -e 's/  */ /g' -e 's/[[:space:]]*$//')"

# Speed up build process
MAKE="./makeparallel"

BUILD_START=$(date +"%s")
blue='\033[0;34m'
cyan='\033[0;36m'
yellow='\033[0;33m'
red='\033[0;31m'
nocol='\033[0m'

# Kernel build config
KERNEL_NAME="fury"
DEFCONFIG="fury-perf_defconfig"
AnyKernel="https://github.com/RooGhz720/Anykernel3"
AnyKernelbranch="master"
HOSST="MyLabs"
USEER="RooGhz720"
ID="25"
MESIN="Git Workflows"

# Clean build always lol
#echo "**** Cleaning ****"
#mkdir -p out
#make O=out clean

echo "**** Kernel defconfig is set to $KERNEL_DEFCONFIG ****"
echo -e "$blue***********************************************"
echo "          BUILDING KERNEL          "
echo -e "***********************************************$nocol"
make $KERNEL_DEFCONFIG O=out
make -j$(nproc --all) O=out \
                              ARCH=arm64 \
                              LLVM=1 \
                              LLVM_IAS=1 \
                              AR=llvm-ar \
                              NM=llvm-nm \
                              OBJCOPY=llvm-objcopy \
                              OBJDUMP=llvm-objdump \
                              STRIP=llvm-strip \
                              CC=clang \
                              CROSS_COMPILE=aarch64-linux-gnu- \
                              CROSS_COMPILE_ARM32=arm-linux-gnueabi Image.gz-dtb dtbo.img

exit
if [ -f "out/arch/arm64/boot/Image.gz-dtb" ] && [ -f "out/arch/arm64/boot/dtbo.img" ]; then
echo -e "\nKernel compiled succesfully! Zipping up...\n"
fi
cp out/arch/arm64/boot/Image.gz-dtb AnyKernel3
cp out/arch/arm64/boot/dtbo.img AnyKernel3
rm -f *zip
cd AnyKernel3
zip -r9 "../$ZIPNAME" * -x README $ZIPNAME
cd ..
rm -rf $ANYKERNEL3_DIR/Image.gz-dtb
rm -rf $ANYKERNEL3_DIR/dtbo.img
rm -rf out/

echo -e "\nCompleted in $((SECONDS / 60)) minute(s) and $((SECONDS % 60)) second(s) !"
