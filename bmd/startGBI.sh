#!/bin/bash

/./bmd/ffmpeg -i udp://@225.0.1.10:5004 -vcodec copy -acodec aac -ab 192k -ac 2 -ar 48000 -strict experimental -f flv -metadata streamName="GBI" tcp://188.227.181.60:6666

exec $0


