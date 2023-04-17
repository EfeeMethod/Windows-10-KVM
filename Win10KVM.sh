echo Installing qemu
sudo apt update && sudo apt install qemu-system-x86-64 neofetch -y
clear
echo Getting ISO File
wget https://ss2.softlay.com/files/en_windows_10_22h2_x64_dvd.iso
clear
Creating Win10KVM img..
qemu-img create -f qcow2 Win10KVM.img 90G
echo Done! Booting Right now.
sudo qemu-system-x86_64 -m 5G -cpu host --enable-kvm -vnc :0 -cdrom en_windows_10_22h2_x64_dvd.iso -boot d -hda Win10KVM.img
