#!/bin/sh
# 2D/3D Accel, OpenGl, Video Accel
yaourt -S xf86-video-ati mesa-libgl lib32-mesa-libgl mesa-vdpau lib32-mesa-vdpau libva-vdpau-driver lib32-libva-vdpau-driver --noconfirm
# Touchpad
yaourt -S xf86-input-synaptics --noconfirm
# Sound
yaourt -S alsa-utils pulseaudio pulseaudio-alsa --noconfirm
# Installing Xorg
yaourt -S xorg-server xorg-xinit xautolock numlockx --noconfirm
ln -f ~/dotfiles/.xinitrc ~/
# Installing WM's
yaourt -S i3-gaps-git --noconfirm
mkdir -p ~/.i3/scripts
ln -f ~/dotfiles/.i3/* ~/.i3/
# WM's config's dependencies
yaourt -S compton i3blocks acpi bc lm_sensors playerctl sysstat rofi --noconfirm
ln -f ~/dotfiles/.i3/scripts/* ~/.i3/scripts/
# Themes and fonts
yaourt -S lxappearance ttf-font-awesome gtk-theme-arc-git numix-circle-icon-theme-git --noconfirm
mkdir -p ~/.fonts ~/.config/gtk-3.0
ln -f ~/dotfiles/.fonts/* ~/.fonts/
ln -f ~/dotfiles/.config/gtk-3.0/* ~/.config/gtk-3.0/
ln -f ~/dotfiles/.gtkrc-2.0 ~/
# Terminal
yaourt -Rns grml-zsh-config
yaourt -S gnome-terminal oh-my-zsh-git zsh-completions-git --noconfirm
ln -f ~/dotfiles/.zshrc ~/dotfiles/.zlogin ~/dotfiles/.vimrc ~/
# File manager
yaourt -S xdg-user-dirs-gtk ranger atool p7zip tar unzip zip highlight poppler w3m --noconfirm
# Chromium
yaourt -S chromium chromium-pepper-flash --noconfirm
