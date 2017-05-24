#!/bin/sh
#
# Homebrew
#
# This is Stage 1 installation script for dylanjm/dotfiles.
# This downloads and sets up ZSH as the default shell. 

set -e
sudo -v

# Check for xcode-CLT
if test ! $(xcode-select -p)
then
  echo "  Installing Xcode Command Line Tools for you."
  xcode-select --install
fi

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

cd "$(dirname "$0")"

echo "Installing updated ZSH"
brew install zsh
brew install zsh-completions

if [ ! -d "$HOME/.oh-my-zsh" ]; then
echo "   Installing Oh My ZShell!"
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

if ! grep -Fxq "/usr/local/bin/zsh" /etc/shells
then
    echo "Adding /usr/local/bin/zsh to /etc/shells file"
    echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells

    chsh -s /usr/local/bin/zsh
fi

echo "ZSH is now your default shell. Please restart terminal."
