#!/bin/bash

pacman -S samba kdenetwork-filesharing
cp .dotfiles/samba/smb.conf.default /etc/samba/smb.conf
