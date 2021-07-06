qemu-img create -f qcow2 ../ubuntu-server-s.img 100G
qemu-system-x86_64 -m 1024 ../ubuntu-server-s.img  \
-cdrom ../ubuntu-16.04.7-server-amd64.iso -enable-kvm
# qemu-system-x86_64 -m 1024 ../ubuntu-server-s.img  \
# -enable-kvm
