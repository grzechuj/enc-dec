
echo "Primary Publishing Point..."
echo -n "Starting @2.4Mbps... "
nohup /./bmd/ffmpeg -i udp://@225.0.1.10:5004 -vcodec copy -acodec aac -ab 128k -ar 48000 -strict experimental -metadata streamName="GBI" -f flv tcp://188.227.181.62:6666 &> /bmd/logs/GBI_1.log 2>&1&
echo "DONE"
echo -n "Starting @1.5Mbps... "
nohup /./bmd/ffmpeg -i udp://@225.0.1.10:5004 -vcodec libx264 -vb 1500k -acodec aac -ab 128k -ac 2 -ar 48000 -strict experimental -metadata streamName="GBI1500" -f flv tcp://188.227.181.62:6666 &> /bmd/logs/GBI_1500.log 2>&1&
echo "DONE"
echo -n "Starting @800Kbps... "
nohup /./bmd/ffmpeg -i udp://@225.0.1.10:5004 -vcodec libx264 -vb 800k -acodec aac -ab 128k -ac 2 -ar 48000 -strict experimental -metadata streamName="GBI800" -f flv tcp://188.227.181.62:6666 &> /bmd/logs/GBI_800.log 2>&1&
echo "DONE"
echo "Backup Publishing Point..."
echo -n "Starting @2.4Mbps... "
nohup /./bmd/ffmpeg -i udp://@225.0.1.10:5004 -vcodec copy -acodec aac -ab 128k -ac 2 -ar 48000 -strict experimental -metadata streamName="GBI" -f flv tcp://188.227.181.60:6666 &> /bmd/logs/priGBI_1.log 2>&1&
echo "DONE"
echo -n "Starting @1.5Mbps... "
nohup /./bmd/ffmpeg -i udp://@225.0.1.10:5004 -vcodec libx264 -vb 1500k -acodec aac -ab 128k -ac 2 -ar 48000 -strict experimental -metadata streamName="GBI1500" -f flv tcp://188.227.181.60:6666 &> /bmd/logs/priGBI_1500.log 2>&1&
echo "DONE"
echo -n "Starting @800Kbps... "
nohup /./bmd/ffmpeg -i udp://@225.0.1.10:5004 -vcodec libx264 -vb 800k -acodec aac -ab 128k -ac 2 -ar 48000 -strict experimental -metadata streamName="GBI800" -f flv tcp://188.227.181.60:6666 &> /bmd/logs/priGBI_800.log 2>&1&
echo "DONE"
echo "that's job done"
sleep 1
sh $0