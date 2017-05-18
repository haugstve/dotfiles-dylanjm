#!/bin/sh
# Setup
#
# This is Stage 2 installation script for dylanjm/dotfiles.
# This downloads most of the command line formulas and sets up the text editors

set -e

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

FORMULAS=(
    coreutils
    moreutils
    findutils
    gnu-sed
    wget
    curl
    the_silver_searcher
    git
    koekeishiya/formulae/kwm
    koekeishiya/formulae/khd
    tree
    neovim/neovim/neovim
)
    
CASKS=(
    sublime-text
    emacs
)

brew install ${FORMULAS[@]}

brew cask install ${CASKS[@]}

brew cleanup

brew cask cleanup

echo "Installing Sublime-Text Package Control"
wget https://packagecontrol.io/Package%20Control.sublime-package -P $HOME/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/

echo "Changing Sublime-Text Default Icons"
cp $HOME/dotfiles/Sublime/sublimetxt.icns /Applications/Sublime\ Text.app/Contents/Resources/Sublime\ Text.icns
touch /Applications/Sublime\ Text.app
sudo killall Dock & sudo killall Finder
