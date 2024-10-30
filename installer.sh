#!/bin/bash

BASE_PATH=$HOME/Documents/code/jestebanrods/repos
DOTFILES_PATH=$BASE_PATH/dotfiles
SCRATCH_PATH=$HOME/.scratch
IS_MAC=$(uname -s | grep -qi "Darwin" && echo true || echo false)
IS_LINUX=$(uname -s | grep -qi "Linux" && echo true || echo false)

# Minimum Dependencies
DEPS="curl git xclip make fzf tmux flatpak"
if $IS_MAC; then
	brew install $DEPS
else
	# Updates
	sudo apt update -y
	sudo apt upgrade -y
	sudo apt autoremove -y
	sudo apt autoclean -y
	sudo apt autopurge -y
	sudo apt dist-upgrade -y
	flatpak update -y

	# Minimal Dependencies
	sudo apt install $DEPS -y

	# Browser
	flatpak install flathub com.brave.Browser -y

	# Open Media Vault Connection
	sudo apt install nfs-common -y
	mkdir -p "$HOME/NFS-Share"
	sudo mount 192.168.1.66:/export/NFS-Share "$HOME/NFS-Share"
fi

# SSH Github Generate
filename="$HOME/.ssh/id_ed25519"

if [ -f "$filename" ]; then
	echo "Ya existe key ssh"
else
	ssh-keygen -t ed25519 -C "jestebanrods@gmail.com"
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/id_ed25519
	cat ~/.ssh/id_ed25519.pub | xclip -sel clip
	echo "Clave ssh copiada al portapapeles. Agregar al github"
	exit
fi

read -rp "Ya copio la clave ssh en github? <y/N> " prompt

if [[ $prompt =~ [yY](es)* ]]; then
	echo "Continue"
else
	exit
fi

# Create Base Folder
mkdir -p "$BASE_PATH"
mkdir -p "$SCRATCH_PATH"

# Clone Repos
repos=(nixvim deployer-tools dotfiles developer-tools)

for i in "${repos[@]}"; do
	dir="$BASE_PATH/$i"
	if [ -d "$dir" ]; then
		echo "Ya existe $i"
	else
		git clone "git@github.com:jestebanrods/$i.git" "$dir"
	fi
done

echo "Download repository dotfiles"

if [ -d "$DOTFILES_PATH" ]; then
	echo "Dotfiles ya existe."
else
	git clone https://github.com/jestebanrods/dotfiles "$DOTFILES_PATH"
fi

echo "Configurando dotfiles..."

## Agregando los libs

libs_script="lib.sh"

if $IS_MAC; then
	echo "Estás en un sistema macOS. Configurando..."
	config_file="$HOME/.bash_profile" # Cambia a ".bash_profile" si es tu archivo de configuración
else
	echo "Estás en un sistema Linux. Configurando..."
	config_file="$HOME/.bashrc" # Cambia a ".bash_profile" si es tu archivo de configuración
fi

# Verificar si el archivo ya está agregado al archivo de configuración
if ! grep -qF "$libs_script" "$config_file"; then
	# Agregar la línea para cargar el script al archivo de configuración
	echo "source \"$DOTFILES_PATH/$libs_script\"" >>"$config_file"
	echo "Archivo '$libs_script' agregado al archivo de configuración: $config_file"
else
	echo "El archivo '$libs_script' ya está agregado al archivo de configuración: $config_file"
fi

# NVIM
# mkdir -p $HOME/.config
# ln -sf $DOTFILES_PATH/editors/nvim $HOME/.config

# HIDDEN
if $IS_LINUX; then
	ln -sf "$DOTFILES_PATH/configs/linux/.hidden" "$HOME/.hidden"
fi

# WEZTERM
ln -sf "$DOTFILES_PATH/shell/wezterm/.wezterm.lua" "$HOME/.wezterm.lua"

# TMUX
TMUX_FOLDER="$HOME/.tmux/plugins/tpm"

if [ -d "$TMUX_FOLDER" ]; then
	echo "Tmux plugins manager ya instalado."
else
	echo "Instalando tmux plugins manager"
	git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
	echo "Press prefix + I para instalar"
fi

ln -sf "$DOTFILES_PATH/shell/tmux/.tmux.conf" "$HOME/.tmux.conf"

# GIT
git config --global core.excludesfile "$DOTFILES_PATH/configs/git/.gitignore"

# Reload
if $IS_MAC; then
	echo "Estás en un sistema macOS. Configurando..."
	source "$HOME/.bash_profile"
else
	echo "Estás en un sistema Linux. Configurando..."
	source "$HOME/.bashrc"
fi

# Nix
if command -v nix &>/dev/null; then
	echo "Nix ya esta instalado"
else
	sh <(curl -L https://nixos.org/nix/install) --daemon
fi

# Install NVIM
if command -v nvim &>/dev/null; then
	echo "Nvim ya esta instalado"
	nix profile remove --extra-experimental-features 'nix-command flakes' "$HOME/Documents/code/jestebanrods/repos/nixvim" nixvim
fi

nix profile install --extra-experimental-features 'nix-command flakes' "$HOME/Documents/code/jestebanrods/repos/nixvim"
