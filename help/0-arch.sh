# Connect to the Internet
wifi-menu
# Update system clock
timedatectl set-ntp 1
# Partitioning
lsblk
cfdisk
# Format
mkfs.ext4 /dev/sdxY 
mount /dev/sdaxY /mnt
# 
# mkfs.fat -F32 /dev/sdxY #UEFI
# 
# mkswap /dev/sdxY
# swapon /dev/sdxY
#
# mkdir -p /mnt/boot
# mount /dev/sdxZ /mnt/boot
#
# Install the base system
pacstrap /mnt base base-devel zsh grml-zsh-config gvim git
# Generate fstab 
genfstab -p /mnt >> /mnt/etc/fstab
# System config
arch-chroot /mnt /bin/zsh
chsh -s /bin/zsh
echo localhost > /etc/hostname
ln -s /usr/share/zoneinfo/Europe/Athens /etc/localtime
vim /etc/locale.gen #uncomment el_GR, en_US (copy en)
echo LANG=en_US.UTF-8 > /etc/locale.conf
pacman -S networkmanager
systemctl enable NetworkManager
# Install bootloader
pacman -S grub os-prober intel-ucode
grub-install /dev/sdx
grub-mkconfig -o /boot/grub/grub.cfg
# For UEFI 
# pacman -S refind-efi
# refind-install
passwd
# Umount and reboot 
umount -R /mnt
reboot
# 1st boot (root login)
useradd -m -G wheel -s /bin/zsh user
passwd user
vim /etc/sudoers #uncomment wheel permissions
passwd -l root
exit
# User login
nmtui #Wifi
git clone https://github.com/fuqthislag/dotfiles
# Run the scripts inside the dir
#
# For automatic login to virtual console
sudo systemctl edit getty@tty1
# and paste this 
[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin username --noclear %I $TERM
