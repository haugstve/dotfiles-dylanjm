# --- ALIASES --------------------------
alias refresh='source ~/.zshrc; echo "Reloaded .zshrc."'
alias kwmon='brew services start kwm'
alias kwmoff='brew services stop kwm'
alias hist='history | grep'
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"
alias record="asciinema rec"

alias python="python3"

# Ring the terminal bell, and put a badge on Terminal.app’s Dock icon
# (useful when executing time-consuming commands)
alias badge="tput bel"

brewPkg() {
  pkg=$1
  shift
  (
    brew install ${pkg} $*  2>&1 |
        tee $HOME/Library/Logs/Homebrew/$USER/${pkg}-$(date +"%F_%H%M").txt
  )
}