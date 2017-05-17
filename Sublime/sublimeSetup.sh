#!/bin/sh
#
# Sublime
#
# This installs a new icon for Sublime Text and installs Package Manager for
# Sublime Text
set -e

echo "    Installing Package Control"
wget https://packagecontrol.io/Package%20Control.sublime-package -P $HOME/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/

echo "    Changing Sublime Text Icons"
cp $HOME/dotfiles/Sublime/sublimetxt.icns /Applications/Sublime\ Text.app/Contents/Resources/Sublime\ Text.icns
touch /Applications/Sublime\ Text.app
sudo killall Dock & sudo killall Finder