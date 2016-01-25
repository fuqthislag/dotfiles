#!/bin/sh
# Copy pacman.conf
ln -sf ~/dotfiles/pacman.conf /etc/
pacman-key -r 962DDE58
pacman-key --lsign-key 962DDE58
# Install yaourt
pacman -Syu package-query yaourt
# Font Rendering
yaourt -S infinality-bundle --noconfirm
# Symlink config's to root
ln -sf ~/dotfiles/.zshrc ~/dotfiles/.vimrc /root/
