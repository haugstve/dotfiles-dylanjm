#!/bin/sh
#
# Setup
#
# This is Stage 3 installation script for dylanjm/dotfiles.
# This downloads and sets up all of the daily apps

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

TAPS=(
    caskroom/fonts
)

FONTS=(
  font-source-code-pro-for-powerline
  font-source-code-pro
  font-fira-code
)

CASKS=(
    # Google Ecosystem
    google-chrome
    google-drive
    google-photos-backup

    # Work Apps
    cyberduck
    iterm2
    virtualbox
    
    # Development
    weka

    # Daily
    slack
    spotify
    itsycal
    #mactex
)

for tap in ${TAPS[@]}
do
    brew tap $tap
done

brew cask install ${CASKS[@]}

brew cask install ${FONTS[@]}

brew cleanup

brew cask cleanup

exit