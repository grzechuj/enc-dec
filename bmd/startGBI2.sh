#!/bin/bash

/./bmd/ffmpeg -i udp://@225.0.1.10:5004 -vcodec copy -acodec aac -ab 192k -ac 2 -ar 48000 -strict experimental -f flv rtmp://188.227.181.60:1935/live/GBI

exec $0


