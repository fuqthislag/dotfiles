#!/bin/sh
sudo mkdir -p /etc/systemd/system/getty@tty1.service.d/
sudo touch /etc/systemd/system/getty@tty1.service.d/override.conf
# Get username to variable
_user=$(ls /home)
# Autologin to vconsole
sudo echo "[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin $_user --noclear %I \$TERM" > /etc/systemd/system/getty@tty1.service.d/override.conf
