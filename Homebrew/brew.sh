#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

set -e

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

cd "$(dirname "$0")"

# homebrew packages

TAPS=(
    homebrew/science
    caskroom/fonts
    staticfloat/julia
)

FORMULAS=(
    coreutils
    moreutils
    findutils
    wget
    the_silver_searcher
    git
    zsh
    zsh-completions
    r --with-x11
    python3
    koekeishiya/formulae/kwm
    koekeishiya/formulae/kwm
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

    colorpicker-hex
    cyberduck
    iterm2
    slack
    spotify
    virtualbox
    xquartz
    sublime-text
    emacs
    rstudio
    java
    weka
    mactex
)

for tap in ${TAPS[@]}
do
    brew tap $tap
done

brew install ${FORMULAS[@]}

brew cask install ${CASKS[@]}

brew cask install ${FONTS[@]}

#R CMD javareconf JAVA_CPPFLAGS=-I/System/Library/Frameworks/JavaVM.framework/Headers

brew cleanup

brew cask cleanup

exit
