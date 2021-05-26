#!/bin/env bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

stty -ixon # disable ctrl-s and ctrl-q

# load aliases if existent
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# load custom functions if existent
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/functions" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/functions"

# prompt
# PS1='\[\e[0;1;38;5;111m\][\[\e[0;3;38;5;189m\]\u\[\e[0;1;38;5;111m\]@\[\e[0;38;5;230m\]\h \[\e[0;38;5;43m\]\W\[\e[0;1;38;5;111m\]]\[\e[0;38;5;156m\]$ \[\e[0m\]'

# starship prompt
eval "$(starship init bash)"

