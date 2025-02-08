#!/bin/bash

BASE_PATH=$HOME/Documents/code/jestebanrods/repos
DOTFILES_PATH=$BASE_PATH/dotfiles

mkdir -p "$BASE_PATH"

echo "Download repository dotfiles"

if [ -d "$DOTFILES_PATH" ]; then
    echo "Dotfiles ya existe."
else
    git clone https://github.com/jestebanrods/dotfiles "$DOTFILES_PATH"
fi

echo "Configurando dotfiles..."

make -C ansible run