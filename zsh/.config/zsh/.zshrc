#!/bin/env zsh

fpath=($XDG_DATA_HOME/zsh/plugins $fpath)
plugins="$XDG_DATA_HOME/zsh/plugins"

# options
setopt AUTO_CD					# change directories without cd 
setopt HIST_SAVE_NO_DUPS			# do not write a duplicate event to history
setopt EXTENDED_GLOB				# use extended globbing syntax
setopt INTERACTIVE_COMMENTS			# allow comments in interactive shell

# aliases
source "$XDG_CONFIG_HOME/shell/aliasrc"
 
# custom functions
source "$XDG_CONFIG_HOME/shell/functions"

# history
HISTSIZE=10000
SAVEHIST=10000

# basic auto completion
autoload -U compinit
zmodload zsh/complist
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION 
zstyle ':completion:*' menu select
zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/zcompcache
_comp_options+=(globdots) 			# With hidden files

# vi mode
bindkey -v
export KEYTIMEOUT=1
autoload -Uz cursor_mode; cursor_mode		# change cursor

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Edit line in vim with ctrl-e:
autoload edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line

# using lf to change directories
bindkey -s '^o' 'lfcd\n'

# fzf
fzf_key_bindings="/usr/share/fzf/key-bindings.zsh"
fzf_completion="/usr/share/fzf/completion.zsh"

[[ -f "$fzf_key_bindings" ]] && source "$fzf_key_bindings"
[[ -f "$fzf_completion" ]] && source "$fzf_completion"

bindkey -s '^f' 'tmux-sessionizer\n'

# starship prompt
eval "$(starship init zsh)"

# auto suggestions (make sure you have zsh-autosuggestions installed)
bindkey '^k' autosuggest-accept			# to autocomplete suggestion
source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

# syntax highlighting (make sure you have zsh-syntax-highlighting installed)
source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# ocaml
[[ ! -r /home/zeus/.local/share/opam/opam-init/init.zsh ]] || source /home/zeus/.local/share/opam/opam-init/init.zsh  > /dev/null 2> /dev/null
