#!/bin/sh

mkdir -p /etc/systemd/system/getty@tty1.service.d/
touch /etc/systemd/system/getty@tty1.service.d/override.conf
# Get username to variable
user=$(ls /home)
# Autologin to vconsole
echo "[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin $user --noclear %I \$TERM" > /etc/systemd/system/getty@tty1.service.d/override.conf
