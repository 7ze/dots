#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# vi keybindings
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# enabling autocd like in zsh
shopt -s autocd

# load aliases if existent
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
# load custom functions if existent
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/functions" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/functions"

# asdf
source $HOME/.config/asdf/asdf.sh
source $HOME/.config/asdf/completions/asdf.bash

# starship prompt
eval "$(starship init bash)"
