#
# ~/ .zshenv
#

# xdg directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Fixing paths
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
