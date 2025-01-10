#!/bin/bash

sudo apt install flatpak nemo cinnamon
flatpak install -y flathub org.wezfurlong.wezterm com.getpostman.Postman io.dbeaver.DBeaverCommunity nz.mega.MEGAsync com.vscodium.codium
sudo apt install -y htop nload unzip git-flow mysql-client redis-tools rofi

# Install Nerdfonts
if fc-list | grep -iq "JetBrainsMono"; then
	echo "La fuente JetBrainsMono está instalada."
else
	sudo mkdir /user/share/fonts/JetBrainsMono
	wget --no-clobber -O /tmp/JetBrainsMono/JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
	unzip /tmp/JetBrainsMono/JetBrainsMono.zip -d /tmp/JetBrainsMono
	sudo cp -r /tmp/JetBrainsMono /usr/share/fonts/JetBrainsMono
	fc-cache -fv
fi

# Install Docker
if command -v docker; then
	echo "Docker ya instalado"
else
	# Add Docker's official GPG key:
	sudo apt-get update
	sudo apt-get install ca-certificates curl
	sudo install -m 0755 -d /etc/apt/keyrings
	sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
	sudo chmod a+r /etc/apt/keyrings/docker.asc

	# Add the repository to Apt sources:
	echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$UBUNTU_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
	sudo apt-get update
	sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
	sudo groupadd docker
	sudo usermod -aG docker "$USER"
	newgrp docker
fi

# DNS
# Servidores DNS que queremos añadir
DNS_SERVERS=("192.168.1.70")

# Archivo de configuración de resolv.conf
RESOLV_CONF="/etc/resolv.conf"
BACKUP_CONF="${RESOLV_CONF}.bak"

# Función para comprobar si un servidor ya está en resolv.conf
function is_server_configured {
	local server="$1"
	grep -q "nameserver $server" "$RESOLV_CONF"
}

# Comprobar si se necesitan modificaciones
needs_modification=false

for server in "${DNS_SERVERS[@]}"; do
	if ! is_server_configured "$server"; then
		needs_modification=true
		break
	fi
done

# Hacer una copia de seguridad si se va a modificar el archivo
if [ "$needs_modification" = true ]; then
	sudo cp "$RESOLV_CONF" "$BACKUP_CONF"
	echo "Backup creado: $BACKUP_CONF"
	# Limpiar el archivo resolv.conf (opcional)
	echo "# Configuración de DNS" | sudo tee "$RESOLV_CONF" >/dev/null
fi

# Añadir servidores DNS si no están ya configurados
for server in "${DNS_SERVERS[@]}"; do
	if ! is_server_configured "$server"; then
		echo "Añadiendo el servidor DNS: $server"
		echo "nameserver $server" | sudo tee -a "$RESOLV_CONF" >/dev/null
	else
		echo "El servidor DNS: $server ya está configurado."
	fi
done

echo "Configuración de DNS completada."
