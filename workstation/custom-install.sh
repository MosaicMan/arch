#!/bin/bash

yaourt -S cryptomator
yaourt -S duplicati2-beta
yaourt -S google-chrome
yaourt -S realvnc-vnc-server
yaourt -S yad
yaourt -S rxvt-unicode-pixbuf
yaourt -S urxvt-resize-font-git


sudo systemctl enable vncserver-x11-serviced.service
pacman -S nodejs go xbuild rust npm clang python python2 python-pip python3-pip python2-virtualenv python-virtualenvwrapper urxvt-perls
pacman -S ffmpegthumbnailer 


