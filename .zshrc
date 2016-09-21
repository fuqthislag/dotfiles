export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(git sudo)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

alias i3c="vim ~/.i3/config"
alias gupd="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias gedt="sudo vim /etc/default/grub"
alias upd="pacaur -Syu --noconfirm"
alias ins="pacaur -S"
alias uni="pacaur -Rnsc"
alias dep="pacaur -Rnsc $(pacaur -Qqdt | tr '\n' ' ')"
alias dat="expac --timefmt='%Y-%m-%d %T' '%l\t%w\t%n' | sort"
alias loc="sudo updatedb && locate -i"
alias bios="sudo systemctl reboot --firmware-setup"
alias tv="teamviewer --daemon start && teamviewer && teamviewer --daemon stop"
alias temps="watch -n 3 'sensors | grep °C'"
autoload -U zmv
alias mmv='noglob zmv -W'
alias mir="sudo reflector --threads 4 -p https -a 8 -f 128 -l 64 -n 32 --sort rate --save /etc/pacman.d/mirrorlist && cat /etc/pacman.d/mirrorlist && pacaur -Syyu"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
