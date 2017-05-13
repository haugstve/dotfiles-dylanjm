# ~/dotfiles/HOMELY.py
# NOTE that we use homely's mkdir() not os.mkdir()
from homely.files import mkdir
from homely.files import symlink

mkdir('~/.kwm')

symlink('~/dotfiles/Kwm/kwmrc', '~/.kwm/kwmrc')
symlink('~/dotfiles/Zsh/zshrc', '~/.zshrc')
