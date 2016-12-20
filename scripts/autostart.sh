#!/bin/sh

guy=$(cd /home/* && pwd)
# Custom GPU Fan Control
$guy/dotfiles/scripts/autogpufan.sh &
# Mouse Acceleration Off
xset m 0 0
# Touchpad
# synclient VertTwoFingerScroll=0 VertEdgeScroll=1 TapButton1=1 TapButton2=3 TapButton3=2
# Screen Blanking Off
xset s off
# Suspend Screen after 900 seconds (15 minutes)
sleep 10
xset dpms 0 0 900
