# ~/dotfiles/HOMELY.py
# NOTE that we use homely's mkdir() not os.mkdir()
from homely.files import mkdir
from homely.files import symlink

# KWM Windows Manager
mkdir('~/.kwm')
symlink('Kwm/kwmrc', '~/.kwm/kwmrc')

# KHD Global Hotkey Config w/ KWM
symlink('Khd/khdrc', '~/.khdrc')

# ZSH
symlink('Zsh/zshrc', '~/.zshrc')

# Git
symlink('Git/gitconfig', '~/.gitconfig')
symlink('Git/global_gitignore', '~/.global_gitignore')

# Sublime Text
symlink('/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl',
	'/usr/local/bin/subl')
symlink('Sublime/Packages/User/Preferences.sublime-settings',
	'~/Library/Application Support/Sublime Text 3/Packages/User/')