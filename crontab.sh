#!/bin/bash

CMD="@reboot /bin/bash $DOTFILES_PATH/nas.sh"

# Comprobar si ya existe una entrada en el crontab para esta tarea
crontab -l | grep -q "nas.sh"

if [ $? -ne 0 ]; then
    # Si no existe la tarea, la agregamos
    (crontab -l 2>/dev/null; echo "$CMD") | crontab -
    echo "Tarea programada correctamente en crontab."
else
    echo "La tarea ya existe en crontab. No se realiza ningún cambio."
fi

