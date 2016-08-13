#!/bin/sh
# Get username to variable
_user=$(ls /home)
# Autologin to vconsole
echo "[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin $_user --noclear %I \$TERM" > /etc/systemd/system/getty@tty1.service.d/override.conf
