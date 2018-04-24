#!/bin/bash

yaourt -S cryptomator
yaourt -S duplicati2-beta
yaourt -S google-chrome
yaourt -S realvnc-vnc-server

sudo systemctl enable vncserver-x11-serviced.service
pacman -S nodejs go xbuild rust npm
