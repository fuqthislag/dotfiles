#!/bin/sh
# Add multilib, yaourt, infinality repo
echo '' >> /etc/pacman.conf
echo '[multilib]' >> /etc/pacman.conf
echo 'Include = /etc/pacman.d/mirrorlist' >> /etc/pacman.conf
echo '' >> /etc/pacman.conf
echo '[archlinuxfr]' >> /etc/pacman.conf
echo 'SigLevel = Never' >> /etc/pacman.conf
echo 'Server = http://repo.archlinux.fr/$arch' >> /etc/pacman.conf
echo '' >> /etc/pacman.conf
echo '[infinality-bundle]' >> /etc/pacman.conf
echo 'Server = http://bohoomil.com/repo/$arch' >> /etc/pacman.conf
echo '' >> /etc/pacman.conf
echo '[infinality-bundle-multilib]' >> /etc/pacman.conf
echo 'Server = http://bohoomil.com/repo/multilib/$arch' >> /etc/pacman.conf
pacman-key -r 962DDE58
pacman-key --lsign-key 962DDE58
# Install yaourt
pacman -Syu package-query yaourt
ln -sf ~/dotfiles/.zshrc ~/dotfiles/.vimrc /root/
