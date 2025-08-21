# (ls)d
alias l='lsd'
alias ll='lsd --long --human-readable'
alias la='lsd --all'
alias lt='lsd --tree'
alias lla='lsd --long --human-readable --all'
alias lta='lsd --tree --all'

# core utils
alias m='mkdir --parents --verbose'
alias cp='cp --interactive --verbose'
alias rm='rm --interactive=once --recursive --dir'
alias du='du --human-readable'
alias df='df --human-readable'
alias mv='mv --interactive --verbose'
alias ln='ln --interactive --verbose'

# init
alias sd='systemctl'
alias sdu='systemctl --user'

# pkgs
alias p='paru'
alias pp='pacman'

# editor
alias n='nvim'
alias sn='sudoedit'

# su
alias s='sudo '

# tops
alias bt='btop'
alias nt='nvtop'

# aliases to keep a clean ~
alias adb='HOME="$XDG_DATA_HOME"/android adb'
