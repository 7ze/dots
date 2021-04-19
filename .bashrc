#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# enabling autocd like in zsh
shopt -s autocd

# starship prompt
export STARSHIP_CONFIG=~/.config/starship/config.toml
eval "$(starship init bash)"
