# ~/dotfiles/HOMELY.py
# NOTE that we use homely's mkdir() not os.mkdir()
import os
from homely.files import mkdir
from homely.files import symlink
from os.path import expanduser

# KWM Windows Manager
mkdir('~/.kwm')
symlink('Kwm/kwmrc', '~/.kwm/kwmrc')

# KHD Global Hotkey Config w/ KWM
symlink('Khd/khdrc', '~/.khdrc')

# ZSH
symlink('Zsh/zshrc', '~/.zshrc')

home = expanduser("~")

# Git
if os.path.exists(home+'/.gitconfig'):
    os.remove(home+'/.gitconfig')
symlink('Git/gitconfig', '~/.gitconfig')
symlink('Git/global_gitignore', '~/.global_gitignore')

# Sublime Text
mkdir('~/Library/Application Support/Sublime Text 3/Packages')
mkdir('~/Library/Application Support/Sublime Text 3/Packages/User')

# subl CLI link
symlink('/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl',
        '/usr/local/bin/subl')
# Sublime Preferences link
symlink('~/dotfiles/Sublime/Packages/User/Preferences.sublime-settings',
        '~/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings')
# Spacegrey Theme link
symlink('~/dotfiles/Sublime/Packages/Theme - Spacegray',
		'~/Library/Application Support/Sublime Text 3/Packages/Theme - Spacegray')
# Package Control link
symlink('~/dotfiles/Sublime/Packages/User/Package Control.sublime-settings',
		'~/Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings')
# Python Specific link
symlink('~/dotfiles/Sublime/Packages/User/Python.sublime-settings',
        '~/Library/Application Support/Sublime Text 3/Packages/User/Python.sublime-settings')
# R-Box link
symlink('~/dotfiles/Sublime/Packages/User/R-Box.sublime-settings',
		'~/Library/Application Support/Sublime Text 3/Packages/User/R-Box.sublime-settings')
# Send Code link
symlink('~/dotfiles/Sublime/Packages/User/SendCode.sublime-settings',
		'~/Library/Application Support/Sublime Text 3/Packages/User/SendCode.sublime-settings')
# LaTeXTools link
symlink('~/dotfiles/Sublime/Packages/User/LaTeXTools.sublime-settings',
		'~/Library/Application Support/Sublime Text 3/Packages/User/LaTeXTools.sublime-settings')

# iTerm2 Symlink
if os.path.exists(home+'/Library/Preferences/com.googlecode.iterm2.plist'):
    os.remove(home+'/Library/Preferences/com.googlecode.iterm2.plist')
symlink('iTerm2/com.googlecode.iterm2.plist',
    '~/Library/Preferences/com.googlecode.iterm2.plist')

