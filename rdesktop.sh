#!/bin/bash
domain='WORKGROUP'
server='10.10.0.171'
#idleTime=$(getIdle)
idleTime=3

while [ $idleTime -lt 300000 ]; do
	xinit /usr/bin/rdesktop -fPb -u scada -p scada -a 16 -r sound:local -x lan -d "$domain" "$server" -- :1
done
