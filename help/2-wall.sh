#!/bin/sh
# Wallpaper
yaourt -S feh imagemagick --noconfirm
convert -size 1366x768 xc:#2f343f ~/Pictures/2f343f.png
feh --bg-fill ~/Pictures/2f343f.png
