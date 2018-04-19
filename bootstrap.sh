#!/bin/bash

echo "*** Resize ramdisk ***"
mount -o remount,size=2G /run/archiso/cowspace

echo "*** Update pacman database ***"
pacman -Syy
pacman -S git btrfs-progs


echo "*** Clone installation repo ***"
git clone https://github.com/MosaicMan/arch
cd arch
./archiso-workstation.sh
