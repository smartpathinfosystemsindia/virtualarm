:

sudo qemu -hda virt.img -kernel /boot/vmlinuz-3.2.0-4-amd64 -initrd /boot/initrd.img-3.2.0-4-amd64  -append "root=/dev/hda"
