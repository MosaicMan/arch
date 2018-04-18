#!/bin/bash
# Run curl -Ls https://git.io/vpTkb

echo "*** Resize archiso ***"
mount -o remount,size=2G /run/archiso/cowspace

echo "*** Create & format partitions ***"
umount -R /mnt || /bin/true
parted -s -a optimal /dev/sda mklabel gpt -- mkpart ESP fat32 1 1024 set 1 esp on set 1 boot on mkpart primary btrfs 1024 -0
mkfs.fat -F32 /dev/sda1
mkfs.btrfs -L Arch /dev/sda2

echo "*** Create btrfs subvolumes ***"
mount /dev/sda2 /mnt
cd /mnt
btfrs subvol create Root
cd
mount -o compress=zstd,noatime,subvolume=Root /dev/sda2 /mnt
cd /mnt
btfrs subvol create root
btfrs subvol create home
btfrs subvol create etc
btfrs subvol create opts

echo "*** Create btrfs root subvolume ***"
mkdir -p /mnt/boot
mount /dev/sda1 /mnt/boot


echo "*** Update Pacman database ***"
pacman -Syy

echo "*** Configure Reflector ***"
pacman -S --noconfirm reflector
reflector -c "United States" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist

echo "*** Install base system ***"
pacstrap /mnt base base-devel btrfs-progs

echo "*** Generate fstab file ***"
genfstab -U -p /mnt >> /mnt/etc/fstab

echo "*** Generate install script ***"
echo 'echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen' >> /mnt/setup.sh
echo "locale-gen" >> /mnt/setup.sh
chmod +x /mnt/setup.sh
arch-chroot /mnt ./setup.sh
umount -R /mnt
