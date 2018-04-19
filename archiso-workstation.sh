#!/bin/bash
#echo "*** Resize ramdisk ***"
#mount -o remount,size=2G /run/archiso/cowspace

echo "*** Update Pacman database ***"
pacman -Syy
pacman -S git btrfs-progs

sleep 3

echo "*** Create & format partitions ***"
umount -R /mnt || /bin/true
parted -s -a optimal /dev/sda mklabel gpt
parted -s -a optimal /dev/sda mklabel gpt -- mkpart ESP fat32 1 1024 set 1 esp on set 1 boot on mkpart primary btrfs 1024 -0
mkfs.fat -f -F32 /dev/sda1
mkfs.btrfs -f -L Arch /dev/sda2

sleep 3

echo "*** Create btrfs subvolumes ***"
mount /dev/sda2 /mnt
btrfnanos subvol create /mnt/@OS
umount -R /mnt
mount -o compress=lzo,noatime,subvol=@OS /dev/sda2 /mnt
btrfs subvol create /mnt/home

sleep 3

echo "*** Mount boot partition ***"
mkdir -p /mnt/boot
mount /dev/sda1 /mnt/boot

sleep 3

echo "*** Configure Reflector ***"
pacman -S --noconfirm reflector
reflector -c "United States" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist

sleep 3

echo "*** Install base system ***"
pacstrap /mnt base base-devel btrfs-progs refind-efi efibootmgr git mercurial

sleep 3

echo "*** Generate fstab file ***"
genfstab -U -p /mnt >> /mnt/etc/fstab

sleep 3

echo "*** Run base install script ***"
cp base-install.sh /mnt/.
cp mkinitcpio.conf /mnt/etc/.
chmod +x /mnt/base-install.sh
arch-chroot /mnt ./base-install.sh
cp refind.conf /mnt/boot/EFI/refind/refind.conf
cp arch.refind.conf /mnt/boot/EFI/refind/arch.refind.conf
rm /mnt/base-install.sh

sleep 3

umount -R /mnt
