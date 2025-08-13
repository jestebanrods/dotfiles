#!/bin/bash

BASE_PATH=$HOME/Documents/code/jestebanrods/repos
DOTFILES_PATH=$BASE_PATH/dotfiles

mkdir -p "$BASE_PATH"



echo "Download repository dotfiles"

if [ -d "$DOTFILES_PATH" ]; then
    echo "Dotfiles ya existe."
else
	sudo apt update -y
	sudo apt install git curl flatpak -y
	sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	git clone https://github.com/jestebanrods/dotfiles "$DOTFILES_PATH"
	git -C "$DOTFILES_PATH" remote set-url origin git@github.com:jestebanrods/dotfiles.git
fi

echo "Configurando dotfiles..."

sudo apt-add-repository ppa:ansible/ansible -y
sudo apt update
sudo apt install ansible make -y

cd "$DOTFILES_PATH/ansible"
make setup
