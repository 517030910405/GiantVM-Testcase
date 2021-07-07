#!/bin/sh

qemu-system-x86_64 -m 2048 \
--nographic \
-enable-kvm \
../ubuntu-server-s.img \
-kernel ../bzImage \
-append "root=/dev/sda1 console=ttyS0 maxcpus=4" \
-cpu host -smp 4 
stty echo
# -serial mon:stdio 
# -cpu host -machine kernel-irqchip=off -smp 2 \
#-hda ubuntu-server.img \
