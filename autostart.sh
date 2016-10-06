#!/usr/bin/env bash

# Custom GPU Fan Control
/home/aggour/dotfiles/autogpufan.sh &
#Mouse Acceleration Off
xset m 0 0
#Screen Blanking Off
xset s off
#Suspend Screen after 600 seconds (10 minutes)
sleep 10
xset dpms 0 0 900
