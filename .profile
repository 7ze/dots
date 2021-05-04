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

export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/bash/history"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export LESSHISTFILE="-"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export STARSHIP_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/starship/config.toml"
export ASDF_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/asdf"
export ASDF_DATA_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/asdf"
export NODE_REPL_HISTORY=""
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export RUSTUP_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/rustup"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export PYTHONSTARTUP="${XDG_CONFIG_HOME:-$HOME/.config}/python/pythonstartup.py" 
export VSCODE_PORTABLE="${XDG_DATA_HOME:-$HOME/.local/share}/vscode"

# other cool stuff
# using bat to colorize man pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# setting up rust
. "$HOME/.local/share/cargo/env"

# load bashrc if existant
[[ -f ~/.bashrc ]] && . ~/.bashrc
