#!/bin/sh
#
# Sublime
#
# This installs a new icon for Sublime Text

cp $HOME/dotfiles/Sublime/Sublime\ Text.icns /Applications/Sublime\ Text.app/Contents/Resources/
touch /Applications/Sublime\ Text.app
sudo killall Dock & sudo killall Finder