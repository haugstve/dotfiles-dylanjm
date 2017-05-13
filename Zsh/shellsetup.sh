#!/bin/bash

set -e
cd "$(dirname "$0")"

if [ ! -d "$HOME/.oh-my-zsh" ]; then
echo "   Installing Oh My ZShell!"
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

echo "   Adding /usr/local/bin/zsh to /etc/shells file"
echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells

echo "   Changing Default Shell to ZSH"
chsh -s /usr/local/bin/zsh