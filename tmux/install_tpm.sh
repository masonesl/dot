[ -d $TMUX_PLUGIN_MANAGER_PATH/tpm ] && exit 0

mkdir --parents $TMUX_PLUGIN_MANAGER_PATH/tpm
git clone https://github.com/tmux-plugins/tpm $TMUX_PLUGIN_MANAGER_PATH/tpm
