#!/bin/bash
nohup /./bmd/ffmpeg -f flv -i rtmp://10.10.70.121:5119/live/euro3 -vcodec copy -acodec aac -ab 32k -strict experimental  -f flv -metadata streamName="euro3" tcp://188.227.181.60:6666 &
nohup /./bmd/ffmpeg -f flv -i rtmp://10.10.70.121:5119/live/euro4 -vcodec copy -acodec aac -ab 32k -strict experimental  -f flv -metadata streamName="euro4" tcp://188.227.181.60:6666 &
nohup /./bmd/ffmpeg -f flv -i rtmp://10.10.70.121:5119/live/euro5 -vcodec copy -acodec aac -ab 32k -strict experimental  -f flv -metadata streamName="euro5" tcp://188.227.181.60:6666 &
nohup /./bmd/ffmpeg -f flv -i rtmp://10.10.70.121:5119/live/euro6 -vcodec copy -acodec aac -ab 32k -strict experimental  -f flv -metadata streamName="euro6" tcp://188.227.181.60:6666 &
nohup /./bmd/ffmpeg -f flv -i rtmp://10.10.70.121:5119/live/euro7 -vcodec copy -acodec aac -ab 32k -strict experimental  -f flv -metadata streamName="euro7" tcp://188.227.181.60:6666 &
nohup /./bmd/ffmpeg -f flv -i rtmp://10.10.70.121:5119/live/euro8 -vcodec copy -acodec aac -ab 32k -strict experimental  -f flv -metadata streamName="euro8" tcp://188.227.181.60:6666 &
nohup /./bmd/ffmpeg -f flv -i rtmp://10.10.70.121:5119/live/euro9 -vcodec copy -acodec aac -ab 32k -strict experimental  -f flv -metadata streamName="euro9" tcp://188.227.181.60:6666 &
nohup /./bmd/ffmpeg -f flv -i rtmp://10.10.70.121:5119/live/euro10 -vcodec copy -acodec aac -ab 32k -strict experimental  -f flv -metadata streamName="euro10" tcp://188.227.181.60:6666 &

