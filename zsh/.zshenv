# NOTE: put `export ZDOTDIR="$HOME/.config/zsh"` in /etc/zsh/zshenv or zsh won't use this directory for its config

# XDG base directory variables
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"

# paths
export PATH="$PATH:$HOME/.local/bin"
export FPATH="$FPATH:$ZDOTDIR/fn"

# variables to keep a clean ~
export GOPATH="$XDG_DATA_HOME/go"
export KDEHOME="$XDG_CONFIG_HOME/kde"
export TEXMFVAR="$XDG_CACHE_HOME/texlive/texmf-var"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export ANDROID_HOME="$XDG_DATA_HOME/android"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc"
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# programs
export EDITOR='nvim'
export MANPAGER='nvim +Man!'
export DIFFPROG='nvim -d'

# command history
export HISTFILE="$XDG_CACHE_HOME/zsh/hist"
export HISTSIZE=100000
export SAVEHIST=100000

# plugin directory
export ZSH_PLUGIN_HOME="$XDG_DATA_HOME/zsh/plugins"

# fzf config
export FZF_DEFAULT_OPTS="
    --highlight-line
    --info=inline-right
    --ansi
    --border=rounded
    --layout=reverse"

[ -e $XDG_CONFIG_HOME/zsh/.env ] && source $XDG_CONFIG_HOME/zsh/.env
