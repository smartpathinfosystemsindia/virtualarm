#!/bin/sh


export PATH=$PATH:/home/gudigarg/work/tools/gcc-linaro/bin


make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- sun4i_defconfig

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- menuconfig

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- uImage

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- modules

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- modules_install INSTALL_MOD_PATH=/media/rootfs/

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- install INSTALL_PATH=/media/rootfs/boot/






