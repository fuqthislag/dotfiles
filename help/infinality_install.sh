#!/bin/sh
# Config pacman.conf
echo "
[multilib]
Include = /etc/pacman.d/mirrorlist

[infinality-bundle]
Server = http://bohoomil.com/repo/\$arch

[infinality-bundle-multilib]
Server = http://bohoomil.com/repo/multilib/\$arch" >> /etc/pacman.conf
# Sign infinality
pacman-key -r 962DDE58
pacman-key --lsign-key 962DDE58
# Install infinality
pacman -Syu infinality-bundle
