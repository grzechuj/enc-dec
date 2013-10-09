#!/bin/bash

avconv -i rtsp://188.227.181.60:554/GBI -map 0:1 -c:v rawvideo -pix_fmt yuv420p -r  25 -map 0:0 -c:a pcm_s16le -ac 2 -ar 48000 -f nut pipe:1 | bmdplay -m2 -f pipe:0

exec $0

