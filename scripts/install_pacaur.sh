#!/bin/sh

sudo pacman -Syu --noconfirm
sudo pacman -S binutils make gcc fakeroot --noconfirm
sudo pacman -S expac yajl git --noconfirm

mkdir -p /tmp/pacaur_install
cd /tmp/pacaur_install

curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=cower
makepkg PKGBUILD --skippgpcheck
sudo pacman -U cower*.tar.xz --noconfirm

curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur
makepkg PKGBUILD
sudo pacman -U pacaur*.tar.xz --noconfirm

cd ~
rm -r /tmp/pacaur_install
