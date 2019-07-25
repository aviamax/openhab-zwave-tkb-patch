#!/bin/bash

service openhab2 stop 


mkdir /tmp/zw-pach
unzip $1 -d /tmp/zw-pach
sed -i 's/>0004:0003</>0004:0003,0808:0808</' /tmp/zw-pach/ESH-INF/thing/tkb/tz65d_0_0.xml
rm /tmp/zw-pach/ESH-INF/thing/tkb/tz35s_0_0.xml
cd /tmp/zw-pach/
rm $1
yes "A" | zip --filesync -r "$1" *
rm -r /tmp/zw-pach

