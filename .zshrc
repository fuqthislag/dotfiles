source ~/.antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle sudo

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme fishy

# Tell antigen that you're done.
antigen apply

# alias i3c="vim ~/.i3/config"
# alias gupd="sudo grub-mkconfig -o /boot/grub/grub.cfg"
# alias gedt="sudo vim /etc/default/grub"
alias upd="pacaur -Syu --noconfirm"
alias ins="pacaur -S"
alias uni="pacaur -Rnsc"
alias dep="pacaur -Rnsc $(pacaur -Qqdt | tr '\n' ' ')"
alias dat="expac --timefmt='%Y-%m-%d %T' '%l\t%w\t%n' | sort"
alias loc="sudo updatedb && locate -i"
alias bios="sudo systemctl reboot --firmware-setup"
alias tv="sudo systemctl start teamviewerd.service && teamviewer && sudo systemctl stop teamviewerd.service"
alias temps="watch -n 3 'sensors | grep °C'"
alias mir="sudo reflector --threads 4 -p https -a 8 -f 128 -l 64 -n 32 --sort rate --save /etc/pacman.d/mirrorlist && cat /etc/pacman.d/mirrorlist && pacaur -Syyu"

autoload -U zmv
alias mmv='noglob zmv -W'
