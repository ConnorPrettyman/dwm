#!/bin/bash

datetime ()
{
	date +"%a, %b %d - %H:%M"
}

wlanssid ()
{
	nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d: -f2
}

debupdates ()
{
	echo $(($(apt list --upgradable | wc -l)-1))
}

while true; do
	xsetroot -name "Upd: $(debupdates) | WLAN: $(wlanssid) | $(datetime)"
	sleep 60
done
