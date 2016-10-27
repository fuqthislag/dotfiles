export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(git sudo)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

#alias i3c="vim ~/.i3/config"
#alias gupd="sudo grub-mkconfig -o /boot/grub/grub.cfg"
#alias gedt="sudo vim /etc/default/grub"
alias bios="sudo systemctl reboot --firmware-setup"
alias upd="pacaur -Syu --noconfirm"
alias ins="pacaur -S"
alias uni="pacaur -Rnsc"
alias dep="pacaur -Rnsc $(pacaur -Qqdt | tr '\n' ' ')"
alias dat="expac --timefmt='%Y-%m-%d %T' '%l\t%w\t%n' | sort"
alias mir="sudo reflector --threads 4 -p https -a 8 -f 128 -l 64 -n 32 --sort rate --save /etc/pacman.d/mirrorlist"
alias loc="sudo updatedb && locate -i"
alias temps="watch -n 3 'sensors | grep °C'"
alias tv="sudo systemctl start teamviewerd.service && teamviewer && sudo systemctl stop teamviewerd.service"
#alias irc="sudo -u qbtuser tmux attach -t irc"

autoload -U zmv
alias mmv='noglob zmv -W'
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
