#!/bin/bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

sudo apt install -y zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"