#!/bin/sh
#
# R Setup
#
# This is an R setup and installation script for dylanjm/dotfiles.
# This downloads and sets up R, Rstudio, and all the compiliers not default on macOS

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
    homebrew/science
)

FORMULAS=(
    r --with-x11
)

CASKS=(
    java
    xquartz
    rstudio
)

for tap in ${TAPS[@]}
do
    brew tap $tap
done

brew cask install ${CASKS[@]}

brew install ${FORMULAS[@]}

R CMD javareconf JAVA_CPPFLAGS=-I/System/Library/Frameworks/JavaVM.framework/Headers

brew cleanup

brew cask cleanup

exit
