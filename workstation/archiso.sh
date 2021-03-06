#!/bin/bash

echo "*** Create & format partitions ***"
mkfs.fat -F32 /dev/sde1
mkfs.btrfs -f -L Arch /dev/sde2

echo "*** Create btrfs subvolumes ***"
read -n 1 -s
mount /dev/sde2 /mnt
btrfs subvol create /mnt/@
umount -R /mnt
mount -o compress=lzo,noatime,subvol=@ /dev/sde2 /mnt
btrfs subvol create /mnt/home

echo "*** Mount boot partition ***"
read -n 1 -s
mkdir -p /mnt/boot
mount /dev/sde1 /mnt/boot

echo "*** Configure Reflector ***"
read -n 1 -s
pacman -S --noconfirm reflector
reflector -c "United States" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist


echo "*** Install base system ***"
read -n 1 -s
pacstrap /mnt base base-devel btrfs-progs refind-efi efibootmgr git mercurial

echo "*** Generate fstab file ***"
read -n 1 -s
genfstab -U -p /mnt >> /mnt/etc/fstab

echo "*** Run base install script ***"
read -n 1 -s
cp base-install.sh /mnt/.
cp mkinitcpio.conf /mnt/etc/.
chmod +x /mnt/base-install.sh
arch-chroot /mnt ./base-install.sh
cp refind.conf /mnt/boot/EFI/refind/refind.conf
cp arch.refind.conf /mnt/boot/EFI/refind/arch.refind.conf
rm /mnt/base-install.sh


echo "*** Finish and unmount ***"
read -n 1 -s

umount -R /mnt
