#!/bin/bash
apt-get install libxss-dev gcc
gcc -I /root/RasPi-ThinClient/ -o getIdle getIdle.c -lXss -lX11
