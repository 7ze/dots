#!/bin/bash

# default programs
export VISUAL="nvim"
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="brave"

# clean up ~/
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export HISTFILE="$XDG_DATA_HOME"/bash/history
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export STARSHIP_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/starship/config.toml"

# load bashrc if existant
[[ -f ~/.bashrc ]] && . ~/.bashrc
