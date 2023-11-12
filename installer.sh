#!/bin/bash

KERNEL_NAME=$(uname -s)
DOTFILES_PATH=$HOME/Documents/code/jestebanrods/repos/dotfiles
SCRATCH_PATH=$HOME/.scratch
IS_MAC=$(uname -s | grep -qi "Darwin" && echo true || echo false)
IS_LINUX=$(uname -s | grep -qi "Linux" && echo true || echo false)

mkdir -p $DOTFILES_PATH
mkdir -p $SCRATCH_PATH

echo "Download repository dotfiles"

if [ -d "$DOTFILES_PATH" ]; then
    echo "Dotfiles ya existe."
else
    git clone https://github.com/jestebanrods/dotfiles ~/$DOTFILES_PATH
fi

echo "Configurando dotfiles..."

## Agregando los libs

libs_script="lib.sh"

if $IS_MAC; then
    echo "Estás en un sistema macOS. Configurando..."
    config_file="$HOME/.bash_profile"  # Cambia a ".bash_profile" si es tu archivo de configuración
else
    echo "Estás en un sistema Linux. Configurando..."
    config_file="$HOME/.bashrc"  # Cambia a ".bash_profile" si es tu archivo de configuración
fi

# Verificar si el archivo ya está agregado al archivo de configuración
if ! grep -qF "$libs_script" "$config_file"; then
    # Agregar la línea para cargar el script al archivo de configuración
    echo "source \"$DOTFILES_PATH/$libs_script\"" >> "$config_file"
    echo "Archivo '$libs_script' agregado al archivo de configuración: $config_file"
else
    echo "El archivo '$libs_script' ya está agregado al archivo de configuración: $config_file"
fi

# TODO: Lanzar algo que me instale todas las dependencias mínimas
# Que pueda diferenciar entre mac y linux

# NVIM
mkdir -p $HOME/.config
ln -sf $DOTFILES_PATH/editors/nvim $HOME/.config

# Se necesita tener instalado node,npm,php,composer para que todos los
# slp de nvim se puedan descargar con mason

# VSCODE
if $IS_MAC; then
    echo "Estás en un sistema macOS. Configurando..."
    ln -sf $DOTFILES_PATH/editors/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
    ln -sf $DOTFILES_PATH/editors/vscode/tasks.json $HOME/Library/Application\ Support/Code/User/tasks.json
    ln -sf $DOTFILES_PATH/editors/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
    ln -sf $DOTFILES_PATH/editors/vscode/snippets $HOME/Library/Application\ Support/Code/User/snippets
else
    echo "Estás en un sistema Linux. Configurando..."

    ln -sf $DOTFILES_PATH/editors/vscode/settings.json $HOME/.config/Code/User/settings.json
    ln -sf $DOTFILES_PATH/editors/vscode/tasks.json $HOME/.config/Code/User/tasks.json
    ln -sf $DOTFILES_PATH/editors/vscode/keybindings.json $HOME/.config/Code/User/keybindings.json
    ln -sf $DOTFILES_PATH/editors/vscode/snippets $HOME/.config/Code/User/snippets
fi

# Exportar todas las extensiones
# code --list-extensions > $DOTFILES_PATH/editors/vscode/extensions.txt
# Instalar todas las extensiones
# cat $DOTFILES_PATH/editors/vscode/extensions.txt | xargs -L 1 code --install-extension

# HIDDEN
ln -sf $DOTFILES_PATH/configs/linux/.hidden $HOME/.hidden

# WEZTERM
ln -sf $DOTFILES_PATH/shell/wezterm/.wezterm.lua $HOME/.wezterm.lua

# TMUX
TMUX_FOLDER="$HOME/.tmux/plugins/tpm"

if [ -d "$TMUX_FOLDER" ]; then
    echo "Tmux plugins manager ya instalado."
else
    echo "Instalando tmux plugins manager"
    git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
    echo "Press prefix + I para instalar"
fi

ln -sf $DOTFILES_PATH/shell/tmux/.tmux.conf $HOME/.tmux.conf

# Awesome Windows Manager
if $IS_LINUX; then
	AWESOME_PATH=$HOME/.config/awesome
	mkdir -p $AWESOME_PATH

	ln -sf $DOTFILES_PATH/configs/awesome/rc.lua $HOME/.config/awesome/rc.lua
	ln -sf $DOTFILES_PATH/configs/awesome/theme.lua $HOME/.config/awesome/theme.lua

	git clone git@github.com:streetturtle/awesome-wm-widgets.git $AWESOME_PATH/awesome-wm-widgets
fi

# GIT
git config --global core.excludesfile $DOTFILES_PATH/configs/git/.gitignore

# Reload
if $IS_MAC; then
    echo "Estás en un sistema macOS. Configurando..."
    source $HOME/.bash_profile
else
    echo "Estás en un sistema Linux. Configurando..."
    source $HOME/.bashrc
fi

# Minimum Dependencies
DEPS="fzf vim make awesome"
if $IS_MAC; then
    brew install $DEPS
else
    sudo apt install $DEPS
fi
