#!/bin/sh
# Get username to variable
_user=$(ls /home)
# Autologin to vconsole
echo "[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin $_user --noclear %I \$TERM" > /etc/systemd/system/getty@tty1.service.d/override.conf
# Config pacman.conf
echo "
[multilib]
Include = /etc/pacman.d/mirrorlist

[archlinuxfr]
SigLevel = Optional
Server = http://repo.archlinux.fr/\$arch

[infinality-bundle]
Server = http://bohoomil.com/repo/\$arch

[infinality-bundle-multilib]
Server = http://bohoomil.com/repo/multilib/\$arch" >> /etc/pacman.conf
# Sign infinality
pacman-key -r 962DDE58
pacman-key --lsign-key 962DDE58
# Install infinality and yaourt
pacman -Syu infinality-bundle
pacman -S --noconfirm package-query yaourt
# Symlink config's to root
ln -sf /home/"$_user"/dotfiles/.zshrc /home/"$_user"/dotfiles/.vimrc /root/
#
#--SCRIPT MERGE----
#
# 2D/3D Accel, OpenGl, Video Accel
sudo -u "$_user" yaourt -S --noconfirm xf86-video-ati mesa-libgl lib32-mesa-libgl mesa-vdpau lib32-mesa-vdpau libva-vdpau-driver lib32-libva-vdpau-driver
# Touchpad
sudo -u "$_user" yaourt -S --noconfirm xf86-input-synaptics
# Sound
sudo -u "$_user" yaourt -S --noconfirm alsa-utils pulseaudio pulseaudio-alsa
# Installing Xorg
sudo -u "$_user" yaourt -S --noconfirm xorg-server xorg-xinit xautolock numlockx
ln -f /home/"$_user"/dotfiles/.xinitrc /home/"$_user"/
# Installing WM's
sudo -u "$_user" yaourt -S --noconfirm i3-gaps-git
sudo -u "$_user" mkdir -p /home/"$_user"/.i3/scripts
ln -f /home/"$_user"/dotfiles/.i3/* /home/"$_user"/.i3/
# WM's config's dependencies
sudo -u "$_user" yaourt -S --noconfirm compton i3blocks acpi bc lm_sensors playerctl sysstat rofi
ln -f /home/"$_user"/dotfiles/.i3/scripts/* /home/"$_user"/.i3/scripts/
# Themes and fonts
sudo -u "$_user" yaourt -S --noconfirm feh imagemagick lxappearance ttf-font-awesome gtk-theme-arc-git numix-circle-icon-theme-git
sudo -u "$_user" mkdir -p /home/"$_user"/.fonts /home/"$_user"/.config/gtk-3.0
ln -f /home/"$_user"/dotfiles/.fonts/* /home/"$_user"/.fonts/
ln -f /home/"$_user"/dotfiles/.config/gtk-3.0/* /home/"$_user"/.config/gtk-3.0/
ln -f /home/"$_user"/dotfiles/.gtkrc-2.0 /home/"$_user"/
# Terminal
sudo -u "$_user" yaourt -Rns --noconfirm grml-zsh-config
sudo -u "$_user" yaourt -S --noconfirm gnome-terminal oh-my-zsh-git zsh-completions
ln -f /home/"$_user"/dotfiles/.zshrc /home/"$_user"/dotfiles/.zlogin /home/"$_user"/dotfiles/.vimrc /home/"$_user"/
# File manager
sudo -u "$_user" yaourt -S --noconfirm xdg-user-dirs-gtk ranger atool p7zip tar unzip zip highlight poppler w3m
# Chromium
sudo -u "$_user" yaourt -S --noconfirm chromium chromium-pepper-flash
#
#--SCRIPT MERGE----
#
# Xinitrc edit to set Wallpaper on first start
head -n -1 /home/"$_user"/.xinitrc > /home/"$_user"/.xinitrc2
echo "exec i3 &
PID=\$!

sleep 5
if [ \$(pidof i3) ]; then
  gnome-terminal -x bash -c \"convert -size 1366x768 xc:#2f343f /home/$_user/Pictures/2f343f.png; feh --bg-fill /home/$_user/Pictures/2f343f.png; rm -rf /home/$_user/.xinitrc2; echo 'Noice!';read -n1\"
fi

wait \$PID" >> /home/"$_user"/.xinitrc2
# && rm -rf /home/$_user/.xinitrc2
# Starting X for the first time
sudo -u "$_user" startx /home/"$_user"/.xinitrc2
