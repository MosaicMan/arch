#!/bin/bash
echo "*** Resize archiso ***"
mount -o remount,size=2G /run/archiso/cowspace

echo "*** Update Pacman database ***"
pacman -Syy

echo "*** Configure Reflector ***"
pacman -S reflector
reflector -c "United States" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist

echo "*** Install base system ***"
pacstrap -i /mnt base base-devel btrfs-progs
