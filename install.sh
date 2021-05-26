#!/bin/sh

# author: The_philosopher
# description: Installs dot files to their respective folders
# work in progress

install() {
   echo "installing $1..." 
   doas pacman -S "$1"
}

cleanup() {
	stow -vD stow
}

echo "INSTALLING DOTFILES..."

# check if stow is installed
([ -x "$(command -v stow)" ] && echo "Stow is installed. Moving forward...") || install stow

# settnig up .stow-global-ignore and .stowrc
stow -vSt ~ stow
# choice
echo "Install all the dotfiles (Y/n)?"
read -r ans

case "$ans" in
	"y"|"Y")
		echo "Installing all the dots to their appropriate locations..."
		stow -nv .
		echo "Confirm (Y/n)?"
		read -r ans
		([ "$ans" != "${ans#[yY]}" ] && stow -v . && cleanup) || exit 1
		;;
	
	"n"|"N")
		echo "Work in progress. Install manually for now..."
		cleanup
		# echo "Select dots to install..."
		;;
	*)
		printf "Invalid reply\nExiting..."
		cleanup && exit 1
		;;
esac
