#!/bin/bash

# Open Media Vault Connection
sudo apt install nfs-common -y
mkdir -p "$HOME/NFS-Share"
sudo mount 192.168.1.66:/export/NFS-Share "$HOME/NFS-Share"

# SMB Server
sudo apt install cifs-utils samba-client
mkdir -p "$HOME/Storage"
# FSTAB="/etc/fstab"
# ENTRY="//192.168.1.52/Storage $HOME/Storage cifs username=admin,password=superadminpass,uid=$USER"
# grep -qF "$ENTRY" "$FSTAB"
#
# if [ $? -ne 0 ]; then
#     # Si no se encuentra, agregamos la entrada al final del archivo
#     echo "#smb storage" | sudo tee -a "FSTAB" > /dev/null
#     echo "$ENTRY" | sudo tee -a "$FSTAB" >/dev/null
#     echo "Entrada agregada a $FSTAB."
#     sudo systemctl daemon-reload
# else
#     echo "La entrada ya existe en $FSTAB."
# fi

sudo mount -t cifs -o username=admin,password=superadminpass,uid=$USER //192.168.1.52/Storage $HOME/Storage
