#!/bin/bash

pacman -S cups cups-pdf foomatic-db foomatic-db-engine system-config-printer print-manager avahi nss-mdns
sed -i 's/files mymachines myhostname resolve \[!UNAVAIL=return\] dns/files mymachines myhostname mdns_minimal \[NOTFOUND=return\] resolve \[!UNAVAIL=return\] dns/' /etc/nsswitch.conf
sed -i 's/SystemGroup sys root/SystemGroup sys root users/' /etc/cups/cups-files.conf
systemctl enable org.cups.cupsd.service
systemctl enable avahi-daemon.service
usermod -a -G cups juancq
