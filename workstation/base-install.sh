#!/bin/bash

echo "*** Generating locale ***"
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime
hwclock --systohc --utc
systemctl enable systemd-timesyncd.service
localectl set-locale LANG=en_US.UTF-8

echo "*** Configuring hosts ***"
echo "127.0.0.1    localhost.localdomain    localhost" >> /etc/hosts
echo "127.0.1.1    development.localdomain    development" >> /etc/hosts
systemctl enable dhcpcd

echo "*** Setup root user password ***"
passwd

echo "*** Setup normal users ***"
useradd -m -g users -G wheel -s /bin/bash juancq
passwd juancq
echo "%wheel ALL=(ALL) ALL" > /etc/sudoers.d/wheel

echo "*** Install bootloader ***"
refind-install
mkdir -p /boot/EFI/refind/themes
git clone https://github.com/LightAir/darkmini /boot/EFI/refind/themes/darkmini
mkinitcpio -p linux

echo "*** Install yaourt ***"
echo "" >> /etc/pacman.conf
echo "[archlinuxfr]" >> /etc/pacman.conf
echo "SigLevel = Never" >> /etc/pacman.conf
echo "Server = http://repo.archlinux.fr/\$arch" >> /etc/pacman.conf
pacman -Syy
pacman -S yaourt

echo "*** Set environment variables ***"
echo "DESKTOP_SESSION=kde" >> /etc/environment
echo "XDG_CURRENT_DESKTOP=kde" >> /etc/environment
echo "SSH_ASKPASS=ksshaskpass" >> /etc/environment
echo "EDITOR=vim" >> /etc/environment
echo "eval `ssh-agent -s`" >> /home/juancq/.xinitrc

echo "*** Install system ***"
pacman -S pulseaudio pulseaudio-alsa alsa-utils \
    xorg xorg-xinit \
    plasma-desktop i3 \
    konsole dolphin firefox kate kmix gtk3 gtk2 kde-gtk-config breeze-gtk pavucontrol user-manager\
    sddm sddm-kcm \
    virt-manager qemu libvirt ebtables dnsmasq bridge-utils \
    adobe-source-sans-pro-fonts \
    ark \
    libjpeg6-turbo \
    libpng12 \
    aspell-en \
    calligra \
    cmake \
    compton \
    cronie \
    darktable \
    davfs2 \
    feh \
    filelight \
    flashplugin \
    fontforge \
    gimp \
    gvim \
    htop \
    kcalc \
    kcharselect \
    keepass \
    krita \
    ktorrent \
    ntfs-3g \
    nvidia \
    obs-studio \
    openssh \
    otf-font-awesome \
    pepper-flash \
    ranger \
    rofi \
    rsibreak \
    scantailor \
    simple-scan \
    skanlite \
    snapper \
    spectacle \
    stow \
    tmux \
    ttf-anonymous-pro \
    ttf-bitstream-vera \
    ttf-dejavu \
    ttf-droid \
    ttf-font-awesome \
    ttf-freefont \
    ttf-gentium \
    ttf-liberation \
    ttf-roboto \
    ttf-ubuntu-font-family \
    virtualbox \
    w3m \
    xdotool \
    youtube-dl \
    zsh 
   
    
systemctl enable sddm.service
systemctl enable systemd-timesyncd.service
systemctl enable snapper-timeline.timer
systemctl enable snapper-cleanup.timer
systemctl enable org.cups.cupsd.service

systemctl enable libvirtd.service
systemctl enable dnsmasq.service
systemctl enable ebtables.service

snapper -c root create-config /
snapper -c home create-config /home

echo fs.inotify.max_user_watches=524288 | tee /etc/sysctl.d/40-max-user-watches.conf && sysctl --system
touch /var/lib/als/asound.state

usermod -a -G libvirt juancq
usermod -a -G network juancq
