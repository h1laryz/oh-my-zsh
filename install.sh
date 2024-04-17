#!/bin/bash

sudo apt install -y zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp h1lary.zsh-theme ~/.oh_my_zsh/themes/

echo 'ZSH_THEME="h1lary"' >> ~/.zshrc

echo 'plugins=(git sudo history encode64 copypath zsh-autosuggestions zsh-syntax-highlighting)' >> ~/.zshrc

echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> ~/.zshrc
echo 'export PATH="$PATH:/snap/bin"' >> ~/.zshrc
echo 'export PATH="$PATH:~/.local/lib/python3.10/site-packages"' >> ~/.zshrc
echo 'export PATH="$PATH:/home/$USER/.local/bin/"' >> ~/.zshrc
echo 'export PATH="$PATH:/home/$USER/.local/share/nvim/mason/bin/"' >> ~/.zshrc

source ~/.zshrc