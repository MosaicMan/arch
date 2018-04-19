#!/bin/bash
#echo "*** Resize ramdisk ***"
#mount -o remount,size=2G /run/archiso/cowspace

echo "*** Update Pacman database ***"
pacman -Syy

read -n 1 -s

echo "*** Create & format partitions ***"
parted -s -a optimal /dev/sda mklabel gpt
parted -s -a optimal /dev/sda mklabel gpt -- mkpart ESP fat32 1 1024 set 1 esp on set 1 boot on mkpart primary btrfs 1024 -0
mkfs.fat -F32 /dev/sda1
mkfs.btrfs -f -L Arch /dev/sda2

read -n 1 -s

echo "*** Create btrfs subvolumes ***"
mount /dev/sda2 /mnt
btrfnanos subvol create /mnt/@OS
umount -R /mnt
mount -o compress=lzo,noatime,subvol=@OS /dev/sda2 /mnt
btrfs subvol create /mnt/home

read -n 1 -s

echo "*** Mount boot partition ***"
mkdir -p /mnt/boot
mount /dev/sda1 /mnt/boot

read -n 1 -s

echo "*** Configure Reflector ***"
pacman -S --noconfirm reflector
reflector -c "United States" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist

read -n 1 -s

echo "*** Install base system ***"
pacstrap /mnt base base-devel btrfs-progs refind-efi efibootmgr git mercurial

read -n 1 -s

echo "*** Generate fstab file ***"
genfstab -U -p /mnt >> /mnt/etc/fstab

read -n 1 -s

echo "*** Run base install script ***"
cp base-install.sh /mnt/.
cp mkinitcpio.conf /mnt/etc/.
chmod +x /mnt/base-install.sh
arch-chroot /mnt ./base-install.sh
cp refind.conf /mnt/boot/EFI/refind/refind.conf
cp arch.refind.conf /mnt/boot/EFI/refind/arch.refind.conf
rm /mnt/base-install.sh

read -n 1 -s

umount -R /mnt
