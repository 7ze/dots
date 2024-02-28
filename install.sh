#!/bin/bash

# author: The_philosopher
# description: install script to stow dotfiles

declare -a stow_folders=("dev" "zsh" "shell" "fonts" "scripts" "misc")

for i in "${stow_folders[@]}"
do
    stow -nvSt ~ "$i" # remove -n to actually install
done
