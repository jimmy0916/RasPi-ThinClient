#!/bin/bash
apt-get install libxss-dev gcc
gcc -I /root/getidle/ -o getIdle getIdle.c -lXss -lX11
