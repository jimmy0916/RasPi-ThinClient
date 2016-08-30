#!/bin/bash

# install required dependencies
apt-get install libxss-dev gcc

# compile the getIdle C script
gcc -I /root/RasPi-ThinClient/ -o getIdle getIdle.c -lXss -lX11

# add the rdp script to /etc/init.d/ and run it on boot
mv /root/RasPi-ThinClient/rdp /etc/init.d/rdp
chmod 755 /etc/init.d/rdp
update-rc.d rdp defaults
