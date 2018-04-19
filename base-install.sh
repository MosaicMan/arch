#!/bin/bash

echo "*** Generating locale ***"
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime
hwclock --systohc --utc

echo "*** Configuring hosts ***"
echo "127.0.0.1    localhost.localdomain    localhost" >> /etc/hosts
echo "127.0.1.1    development.localdomain    development" >> /etc/hosts
systemctl enable dhcpcd

echo "*** Setup users ***"
passwd
useradd -m -g users -G wheel -s /bin/bash juancq
passwd juancq
echo "%wheel ALL=(ALL) ALL" > /etc/sudoers.d/wheel

echo "*** Install bootloader ***"
refind-install
mkdir -p /boot/EFI/refind/themes
git clone https://github.com/LightAir/darkmini /boot/EFI/refind/themes/darkmini
mkinitcpio -p linux
