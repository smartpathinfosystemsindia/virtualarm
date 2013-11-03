:

sudo -E qemu-system-arm \
  -M vexpress-a9 \
  -kernel vmlinuz-3.2.0-4-vexpress -initrd initrd.img-3.2.0-4-vexpress \
  -append root=/dev/mmcblk0p2 \
  -drive if=sd,cache=unsafe,file=/dev/mmcblk0 \
  -net nic -net tap

