#!/bin/bash

# This script automatically launches Steam in Big Picture mode when connecting
# a specific device via Bluetooth (e.g. a controller). Simply specify your
# devices MAC address and optionally set this script up with a systemd
# service for the best experience.

MAC="<Insert device MAC address here>"

while true; do
	if bluetoothctl info "$MAC" 2>/dev/null | grep -q "Connected: yes"; then
		if ! pgrep -x steam > /dev/null; then
			steam -bigpicture &
		fi
	fi
	sleep 5
done
