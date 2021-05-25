#!/bin/sh

# author: The_philosopher
# description: Installs dot files to their respective folders
# work in progress

install() {
   echo "installing $1..." 
   doas pacman -S "$1"
}

echo "INSTALLING DOTFILES..."

# check if stow is installed
[ -x $(command -v stow) ] && echo "Stow is installed. Moving forward..." || install stow

# choice
echo "Install all the dotfiles (Y/n)?"
read ans

case "$ans" in
	"y"|"Y")
		echo "Installing all the dots to their appropriate locations..."
		stow -nvSt ~ .
		echo "Confirm (Y/n)?"
		read ans
		[ "$ans" != "${ans#[yY]}" ] && stow -vSt ~ . || exit 1
		;;
	
	"n"|"N")
		echo "Work in progress. Install manually for now..."
		# echo "Select dots to install..."
		;;
	*)
		echo "Invalid reply\nExiting..."
		exit 1
		;;
esac
