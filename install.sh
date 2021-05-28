#!/bin/sh

# author: The_philosopher
# description: Installs dot files to their respective folders
# work in progress

# install packages from official repositories
install() {
   echo "installing $1..." 
   doas pacman -S "$1"
}

# sets up .stowrc and .stow-global-ignore at $HOME
setupstow() {
	echo "Setting up stow..."
	stow -vSt ~ stow
}

# clean up stow and exit
cleanup() {
	echo "Cleaning up some files..."
	stow -vD stow
	exit "$1"
}

echo "INSTALLING DOTFILES..."

# check if stow is installed
([ -x "$(command -v stow)" ] && echo "Stow is installed. Moving forward...") || install stow

setupstow

# list of programs you want to install modify it as necessary, and test it out
# and remove the n flag when you are ready to install the dot files 
stow -nv bash fonts misc scripts shell wm x11 zsh

cleanup 0