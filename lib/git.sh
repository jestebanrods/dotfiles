#!/bin/bash

function m-git-delete()
{
    branch=$(_m-git-branches)
    if [ ! $branch ]; then
        return 0
    fi

    read -e -p " Esta seguro de borrar la rama $branch Y/N?: " delete

    if [[ "$delete" = "Y" ]]; then
        git branch -D $branch
    fi
}

function m-git-user()
{
    commands=("personal" "mercadolibre" "cookpid")
    env=$(printf "%s\n" "${commands[@]}" | fzf)

    git config --global core.editor vim
    git config --global user.name "Jossie Esteban Rodriguez Salazar"

    if [[ "$env" = "personal" ]]; then
        git config user.email "jestebanrods@gmail.com"
    elif [[ "$env" = "cookpid" ]]; then
        git config user.email "jrodriguez@cookpid.com"
    else
        git config user.email "jossie.rodriguez@mercadolibre.com.co"
    fi
}

function m-git-clear()
{
    branches=$(git branch --all  \
        | grep -v "remotes/" \
        | grep -v "master" \
        | grep -v "develop" \
        | grep -v "main"
    )

    if [[ -z $branches ]]; then
		echo "No se encontraron ramas para eliminar."
		return
    fi

	echo "Se eliminarán las siguientes ramas:"
	echo "$branches"

	read -p "¿Estás seguro de que deseas eliminar estas ramas? (Y/n): " respuesta

	respuesta=${respuesta:-Y}

	if [[ ! "$respuesta" =~ ^[Yy]$ ]]; then
		echo "Cancelado. Las ramas no fueron eliminadas."
		return
	fi

	git switch develop
	git fetch --all --prune
	git pull --tags

	echo "Eliminando las ramas..."

	echo "$branches" | xargs git branch -D
	echo "Ramas eliminadas exitosamente."

}

function m-git-switch()
{
    branch=$(_m-git-branches)
    if [ $branch ]; then
        git switch $branch
    fi
}

function _m-git-branches()
{
    current_branch=$(git branch --show-current)

    branch=$(git branch --all  \
        | grep -v "remotes/" \
        | grep -v "$current_branch" \
        | fzf --header="Seleccione una rama: " \
        | awk '{ print $1 }'
    )

    echo $branch
}

function _m-git-branch-prompt() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/{ \1 } $ /'
}
