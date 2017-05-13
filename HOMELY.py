# ~/dotfiles/HOMELY.py
# NOTE that we use homely's mkdir() not os.mkdir()
import os.path
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
gfile = Path('~/.gitconfig')
if gfile.isfile():
	os.remove(gfile)
symlink('Git/gitconfig', '~/.gitconfig')
symlink('Git/global_gitignore', '~/.global_gitignore')

# Sublime Text
symlink('/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl',
	'/usr/local/bin/subl')
sdir = Path('~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User')
if sdir.is_dir():
	os.rmdir(sdir)
symlink('Sublime/Packages/User',
	'~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User')