#!/usr/bin/env bash

selected=$(cat $XDG_DATA_HOME/misc/cheat-languages $XDG_DATA_HOME/misc/cheat-commands | fzf)

if [[ -z $selected ]]; then
    exit 0
fi

read -p "Enter Query: " query

if grep -qsw "$selected" $XDG_DATA_HOME/misc/cheat-languages; then
    query=$(echo $query | tr ' '  '+')
    curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done
else
    curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done
fi
