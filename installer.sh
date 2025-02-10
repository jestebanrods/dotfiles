#!/bin/bash

BASE_PATH=$HOME/Documents/code/jestebanrods/repos
DOTFILES_PATH=$BASE_PATH/dotfiles

mkdir -p "$BASE_PATH"

echo "Download repository dotfiles"

if [ -d "$DOTFILES_PATH" ]; then
    echo "Dotfiles ya existe."
else
	sudo apt update -y
	sudo apt install git curl -y
	flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	git clone https://github.com/jestebanrods/dotfiles "$DOTFILES_PATH"
fi

echo "Configurando dotfiles..."

bash "$DOTFILES_PATH/ansible/installer.sh"
make -C "$DOTFILES_PATH/ansible" run
