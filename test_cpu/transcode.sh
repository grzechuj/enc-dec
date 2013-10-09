#!/bin/bash

SERVICES="ts1 ts2 ts3 ts4 "
evo_aws="54.229.139.162"
port=5000

for service in $SERVICES
do
    echo "seting up $service"
    port=$[$port+1]
    ln -f -s `which ffmpeg` ffmpeg_$service
    nohup ./ffmpeg_$service -i /mnt/media/BISS.ts -map 0:2 -vcodec libx264 -s 1920x1080 -vb 5000k -r 25 -g 25  -vprofile high -preset fast -tune film -level 31 -map 0:1 -acodec libfdk_aac -ab 128k -ac 2 -ar 48000 -async 1 -threads 4 -f mpegts udp://$evo_aws:$port &> ./logs/log_$service.log 2>&1&
        
    done


