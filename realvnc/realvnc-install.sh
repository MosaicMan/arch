yaourt -S realvnc-vnc-server
yaourt -S realvnc-vnc-viewer

sudo systemctl enable vncserver-x11-serviced.service
sudo systemctl start vncserver-x11-serviced.service
sudo sed -i 's/DisableTrayIcon=0/DisableTrayIcon=1/g' /root/.vnc/config.d/vncserver-x11
