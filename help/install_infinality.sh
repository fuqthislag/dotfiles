#!/bin/sh
# Config pacman.conf
sudo echo "
[multilib]
Include = /etc/pacman.d/mirrorlist

[infinality-bundle]
Server = http://bohoomil.com/repo/\$arch

[infinality-bundle-multilib]
Server = http://bohoomil.com/repo/multilib/\$arch" >> /etc/pacman.conf
# Sign infinality
sudo pacman-key -r 962DDE58
sudo pacman-key --lsign-key 962DDE58
# Install infinality
sudo pacman -Syu infinality-bundle
