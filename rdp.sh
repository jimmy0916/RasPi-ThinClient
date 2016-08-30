#!/bin/bash
domain=''
server='192.168.20.106'
idleTime=$(getIdle)

while [ $idleTime -lt 300000 ]; do
	xinit /usr/bin/rdesktop -f -d "$domain" -u "" "$server" -- :1
done
