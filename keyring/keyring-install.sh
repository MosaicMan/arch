#!/bin/bash

pacman -S gnome-keyring libsecret seahorse

echo "eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)" >> /home/juancq/.xinitrc

secret-tool store --label="KeePass" keepass passdb.kdbx

