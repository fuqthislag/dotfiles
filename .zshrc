guy=$(cd /home/* && pwd)
export ZSH=$guy/.oh-my-zsh
ZSH_THEME="fishy"

plugins=(git sudo)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

# alias i3c="vim ~/.i3/config"
# alias gupd="sudo grub-mkconfig -o /boot/grub/grub.cfg"
# alias gedt="sudo vim /etc/default/grub"
alias bios="sudo systemctl reboot --firmware-setup"
alias upd="pacaur -Syu --noconfirm"
alias ins="pacaur -S"
alias uni="pacaur -Rnsc"
alias dep="pacaur -Rnsc $(pacaur -Qqdt | tr '\n' ' ')"
alias dat="expac --timefmt='%y/%m/%d %R' '%l %w Package:%n\tDepends:%N\tGroup:%G' | sort"
alias mir="sudo reflector -f 64 -l 32 -n 16 -a 8 -p https --sort rate --save /etc/pacman.d/mirrorlist --verbose"
alias loc="sudo updatedb && locate -i"
alias temps="watch -n 3 'sensors | grep °C'"
alias tv="sudo systemctl start teamviewerd.service && teamviewer && sudo systemctl stop teamviewerd.service"
# alias irc="tmux attach -t irc"
# alias ircn="tmux -2 new-session -d -s irc /usr/bin/irssi"
# alias logc="cat /var/log/cron-pacman.log | uniq && cat $guy/.irssi/log/*/* | grep -vi h3r4ut"
# alias logd="sudo sh -c \"echo ' ' > /var/log/cron-pacman.log\" && echo ' ' > $guy/.irssi/log/*/*"
# alias sship="journalctl -r -u sshd | grep -viE '192\.168\.[0-9]+\.[0-9]+|0.0.0.0' | grep -ioE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' | sort | uniq"

autoload -U zmv
alias mmv='noglob zmv -W'
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
# pip zsh completion end

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/PyProjects
export VIRTUALENVWRAPPER_SCRIPT=/usr/bin/virtualenvwrapper.sh
source /usr/bin/virtualenvwrapper_lazy.sh
