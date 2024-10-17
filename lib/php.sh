#!/bin/bash

function m-php()
{
	if $IS_MAC; then
		echo "command not available to MAC"
		exit
	fi

	if [[ $1 ]]; then
		version="php$1"
	else
		version=`ls -1 /usr/bin | grep -E '^php[0-9]' \
		| fzf --layout=reverse-list --header="Seleccione la versión a usar" \
		| awk '{ print $1 }' | head -1`;
	fi

	if [[ $version ]]; then
		sudo update-alternatives --set php "/usr/bin/$version"
	fi
}
