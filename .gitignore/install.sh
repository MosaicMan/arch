#!/bin/bash
echo "*** Resize archiso ***"
mount -o remount,size=2G /run/archiso/cowspace

echo "*** Create partitions ***"
parted -s -a optimal /dev/sda mklabel gpt -- mkpart ESP fat32 1 1024 set 1 esp on set 1 boot on mkpart primary btrfs 1024 -0
mkfs.fat -F32 /dev/sda1
mkfs.btrfs /dev/sda2
mount /dev/sda2 /mnt
mkdir -p /mnt/boot
mount /dev/sda1 /mnt/boot

echo "*** Configure Reflector ***"
pacman -S --noconfirm reflector
reflector -c "United States" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist

echo "*** Update Pacman database ***"
pacman -Syy

echo "*** Install base system ***"
pacstrap /mnt base base-devel btrfs-progs

echo "*** Generate fstab file ***"
 **(genfstab -U -p /mnt >> /mnt/etc/fstab)**
