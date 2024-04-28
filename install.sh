#!/bin/bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

cp ${SCRIPT_DIR}/h1lary.zsh-theme ~/.oh-my-zsh/themes/

mv ~/.zshrc ~/.zshrc.backup

cp ${SCRIPT_DIR}/.zshrc ~/

source ~/.zshrc
