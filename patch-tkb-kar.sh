

service openhab2 stop 
#cp /usr/share/openhab2/addons/openhab-addons-2.4.0.kar zw-pach/openhab-addons-2.4.0.kar.orig


mkdir /tmp/kar-extracted
unzip /usr/share/openhab2/addons/openhab-addons-2.4.0.kar -d /tmp/kar-extracted/

patch-tkb-jar.sh /kar-extracted/repository/org/openhab/binding/org.openhab.binding.zwave/2.4.0/org.openhab.binding.zwave-2.4.0.jar

mv /usr/share/openhab2/addons/openhab-addons-2.4.0.kar /usr/share/openhab2/addons/openhab-addons-2.4.0.kar.back.`date +%Y%m%d.%H%M.%N`
cd /tmp/kar-extracted
yes "A" | zip --filesync -r "/usr/share/openhab2/addons/openhab-addons-2.4.0.kar" *
