# ~/dotfiles/HOMELY.py
# NOTE that we use homely's mkdir() not os.mkdir()
from homely.files import mkdir
from homely.files import symlink

mkdir('~/.kwm')

symlink('Kwm/kwmrc', '~/.kwm/kwmrc')
symlink('Khd/khdrc', '~/.khdrc')
symlink('Zsh/zshrc', '~/.zshrc')
symlink('Git/gitconfig', '~/.gitconfig')
symlink('Git/global_gitignore', '~/.global_gitignore')
symlink('/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl',
	'/usr/local/bin/subl')