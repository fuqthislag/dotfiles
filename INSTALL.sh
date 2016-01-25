#!/bin/bash
# Add multilib, yaourt repo
sudo echo '' >> /etc/pacman.conf
sudo echo '[multilib]' >> /etc/pacman.conf
sudo echo 'Include = /etc/pacman.d/mirrorlist' >> /etc/pacman.conf
sudo echo '' >> /etc/pacman.conf
sudo echo '[archlinuxfr]' >> /etc/pacman.conf
sudo echo 'SigLevel = Never' >> /etc/pacman.conf
sudo echo 'Server = http://repo.archlinux.fr/$arch' >> /etc/pacman.conf
sudo pacman -Syu package-query yaourt
# 2D/3D Accel, OpenGl, Video Accel
yaourt -S xf86-video-ati mesa-libgl lib32-mesa-libgl mesa-vdpau lib32-mesa-vdpau libva-vdpau-driver lib32-libva-vdpau-driver --noconfirm
# Touchpad
yaourt -S xf86-input-synaptics --noconfirm
# Sound
yaourt -S alsa-utils pulseaudio pulseaudio-alsa --noconfirm
# Installing Xorg
yaourt -S xorg-server xorg-xinit --noconfirm
ln -i ~/dotfiles/.xinitrc ~/
# Installing WM's
yaourt -S i3-gaps-git --noconfirm
mkdir -p ~/.i3/scripts
ln -i ~/dotfiles/.i3/* ~/.i3/
# WM's config's dependencies
yaourt -S compton i3blocks rofi --noconfirm
ln -i ~/dotfiles/.i3/scripts/* ~/.i3/scripts/
# Themes and fonts
sudo echo '' >> /etc/pacman.conf
sudo echo '[infinality-bundle]' >> /etc/pacman.conf
sudo echo 'Server = http://bohoomil.com/repo/$arch' >> /etc/pacman.conf
sudo echo '' >> /etc/pacman.conf
sudo echo '[infinality-bundle-multilib]' >> /etc/pacman.conf
sudo echo 'Server = http://bohoomil.com/repo/multilib/$arch' >> /etc/pacman.conf
sudo pacman-key -r 962DDE58
sudo pacman-key --lsign-key 962DDE58
yaourt -Syu infinality-bundle
yaourt -S feh lxappearance ttf-font-awesome gtk-theme-arc-git numix-circle-icon-theme-git --noconfirm
mkdir -p ~/.fonts ~/.config/gtk-3.0
ln -i ~/dotfiles/.fonts/* ~/.fonts/
sudo ln -i ~/dotfiles/.config/gtk-3.0/* ~/.config/gtk-3.0/
ln -i ~/dotfiles/.gtkrc-2.0 ~/
# Terminal
yaourt -Rns grml-zsh-config
yaourt -S gnome-terminal oh-my-zsh-git
ln -i ~/dotfiles/.zshrc ~/dotfiles/.zlogin ~/dotfiles/.vimrc ~/
sudo ln -si ~/dotfiles/.zshrc ~/dotfiles/.vimrc /root/
# File manager
yaourt -S xdg-user-dirs-gtk ranger atool p7zip tar unzip zip highlight poppler w3m --noconfirm
# Chromium
yaourt -S chromium chromium-pepper-flash --noconfirm
