#!/bin/sh


apt-get source linux-image-`uname -r` 
#apt-get source linux-source-`uname -r`

cd linux-xxxxx
make ARCH=x86 i386_defconfig
cp /boot/config-`uname -r` .config
make oldconfig
#heere edit your kernel config by using make menuconfig
#and support the different drivers and devices, filesystem,
#acpi etc
#make sure edit your Makefile inside kernel folder to change the version
make
make modules
make modules_install
make install
update-initramfs -u -k <urversion>
/sbin/depmod


