#!/bin/bash

# install required dependencies
apt-get install libxss-dev gcc

# compile the getIdle C script and install it in /usr/bin
gcc -I /root/RasPi-ThinClient/ -o getIdle getIdle.c -lXss -lX11
mv /root/RasPi-ThinClient/getIdle /usr/bin/getIdle

# move the rdp shell script to /usr/bin
mv /root/RasPi-ThinClient/rdesktop.sh /usr/bin/rdp

# add the rdp startup script to /etc/init.d/ and run it on boot
mv /root/RasPi-ThinClient/rdp /etc/init.d/rdp
chmod 755 /etc/init.d/rdp
update-rc.d rdp defaults
