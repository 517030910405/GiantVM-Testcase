#!/bin/sh

qemu-system-x86_64 -m 2048 \
--nographic \
../ubuntu-server-s.img \
-enable-kvm \
-kernel ../bzImage \
-append "root=/dev/sda1 console=ttyS0 maxcpus=4" \
-cpu host -smp 2 \
-serial mon:stdio 
stty echo
# -cpu host -machine kernel-irqchip=off -smp 2 \
#-hda ubuntu-server.img \
