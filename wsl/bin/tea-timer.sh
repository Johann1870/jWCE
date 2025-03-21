#!/usr/bin/env bash

DRIP="/usr/share/sounds/gnome/default/alerts/drip.ogg"

mpv --no-terminal $DRIP && notify-send -t 1 "TEA" "Started at: $(date +'%A, %d-%B-%y, %H:%M:%S')" --icon=dialog-information

declare -A ticks=( \
		[50]="50 sec" \
		[20]="1 min 10 sec" \
		[20]="1 min 30 sec" \
		[30]="2 min" \
		[180]="5 min" \
	)

for tick in "${!ticks[@]}"; do 
	echo "$tick - ${ticks[$tick]}";
	sleep $tick && mpv --no-terminal $DRIP && notify-send -t 1 'tea' "${ticks[$tick]}" --icon=dialog-information
done
