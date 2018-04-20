#!/bin/bash

sudo pacman -S gnome-keyring libsecret seahorse

# Add and uncomment these lines to .bashrc and/or .zshrc
# if [ -n "$DESKTOP_SESSION" ];then
#     eval $(gnome-keyring-daemon --start)
#     export SSH_AUTH_SOCK
# fi

# Logout and login to let the diplay manager create the default keyring

# Creat a unique key-value keyring entry labeled "KeePass"
# secret-tool store --label="KeePass" keepass passdb.kdbx

