#!/bin/bash

BASE_PATH=$HOME/Documents/code/jestebanrods/repos
DOTFILES_PATH=$BASE_PATH/dotfiles
MDOT_PATH=$DOTFILES_PATH/mdot
SCRATCH_PATH=$HOME/.scratch
IS_MAC=$(uname -s | grep -qi "Darwin" && echo true || echo false)
IS_LINUX=$(uname -s | grep -qi "Linux" && echo true || echo false)

export MDOT_PATH

libs_folder="$MDOT_PATH/lib"

# Comprobamos si la carpeta "libs" existe
if [ -d "$libs_folder" ]; then
	# Recorremos todos los archivos dentro de la carpeta "libs"
	for file in "$libs_folder"/*; do
		# Comprobamos si el archivo es un archivo regular y tiene extensión .sh
		if [ -f "$file" ] && [[ "$file" == *.sh ]]; then
			# Cargamos el archivo para exponer sus funciones
			source "$file"
		fi
	done
	# echo "¡Archivos de la carpeta 'libs' cargados exitosamente!"
else
	echo "La carpeta 'libs' no existe."
fi
