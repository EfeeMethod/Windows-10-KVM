sudo qemu-system-x86_64 -m 6G -cpu host --enable-kvm -vnc :0 -cdrom en_windows_10_22h2_x64_dvd.iso -boot d -hda Win10KVM.img -smp cores=3,sockets=1
sleep 43200
