#!/bin/bash

KERNEL_NAME=$(uname -s)
DOTFILES_PATH=$HOME/Documents/code/jestebanrods/repos/dotfiles
IS_MAC=$(uname -s | grep -qi "Darwin" && echo true || echo false)

export DOTFILES_PATH

libs_folder="$DOTFILES_PATH/lib"

# Comprobamos si la carpeta "libs" existe
if [ -d "$libs_folder" ]; then
    # Recorremos todos los archivos dentro de la carpeta "libs"
    for archivo in "$libs_folder"/*; do
        # Comprobamos si el archivo es un archivo regular y tiene extensión .sh
        if [ -f "$archivo" ] && [[ "$archivo" == *.sh ]]; then
            # Cargamos el archivo para exponer sus funciones
            source "$archivo"
        fi
    done

    # echo "¡Archivos de la carpeta 'libs' cargados exitosamente!"
else
    echo "La carpeta 'libs' no existe."
fi