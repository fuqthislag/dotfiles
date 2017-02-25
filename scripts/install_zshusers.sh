#!/bin/sh

git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

echo "plugins=(git sudo zsh-completions zsh-syntax-highlighting zsh-autosuggestions)
autoload -U compinit && compinit" >> ~/.zshrc
