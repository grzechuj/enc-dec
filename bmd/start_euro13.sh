#!/bin/bash

/./bmd/ffmpeg -f flv -i rtmp://10.10.70.121:5119/live/euro13 -vcodec copy -acodec aac -ab 32k -strict experimental -f flv -metadata streamName="euro13" tcp://188.227.181.60:6666

exec $0


