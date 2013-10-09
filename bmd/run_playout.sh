#!/bin/bash
killall -9 ffmpeg
killall -9 bmdplay
killall -9 avconv
rm -rf  vid

mknod  vid p
mknod buf p
echo -n "Staring decoder....   "
data=`date +%G-%m-%d_%H:%M`
avconv -y -re  -threads 8 -vsync 1 -f mpegts -i udp://225.0.1.10:5004 -map 0:0 -c:v rawvideo -pix_fmt yuv420p -r 25  -s 720x576  -map 0:1  -c:a  pcm_s16le -ar 48000 -ac 2  -f nut pipe:1 |bmdplay -C0 -m2 -O 3 -f pipe:0 -F nut -b 400

exit 0

nohup ./ffmpeg -y  -threads 8 -vsync 1 -f mpegts -i udp://239.255.1.21:1234 -map 0:0 -c:v rawvideo -pix_fmt yuv420p -r 25  -s 720x576  -map 0:1  -c:a  pcm_s16le -ar 48000 -ac 2  -f nut vid  &> ./logs/decode.log 2>&1&
P1=$!
echo "DONE (pid $P1)"
echo ""
echo -n "Staring playout....   "
avprobe vid
exit 0

nohup ./bmdplay -C0 -m2 -O 3 -f vid -F nut &> ./logs/playout.log 2>&1&
P2=$!
echo "DONE (pid $P2)"
echo "$P1 $P2" > pids

echo ""
