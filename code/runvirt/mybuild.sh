#!/bin/sh
export PATH=/opt/ti-sdk-am335x-evm/linux-devkit/bin:$PATH


rm -f /tmp/eval /tmp/eval.c
echo $PATH
echo "main() { printf(\"eval\"); }" >/tmp/eval.c
cross=arm-arago-linux-gnueabi-
${cross}gcc -o /tmp/eval /tmp/eval.c
if [ $? -ne 0 ]; then
echo "compiler not in path"
exit 1
fi

case $1 in
config)
	make ARCH=arm CROSS_COMPILE=${cross} sun4i_defconfig
	;;
build)
	make ARCH=arm CROSS_COMPILE=${cross} uImage
	;;
modules)
	make ARCH=arm CROSS_COMPILE=${cross} modules
	;;
clean)
	make ARCH=arm CROSS_COMPILE=${cross} clean
	;;
distclean)
	make ARCH=arm CROSS_COMPILE=${cross} distclean
	;;
*)
	echo "Plese fallow the bellow supporting commands"
	echo "make ARCH=arm CROSS_COMPILE=${cross} sun4i_defconfig"
	echo "make ARCH=arm CROSS_COMPILE=${cross} uImage"
	echo "ake ARCH=arm CROSS_COMPILE=${cross} modules"
	echo "make ARCH=arm CROSS_COMPILE=${cross} clean"
	echo "make ARCH=arm CROSS_COMPILE=${cross} distclean"
	;;
esac
