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
    elif [[ "$ENV" = "cookpid" ]]; then
        git config user.email "jrodriguez@cookpid.com"
    else
        git config user.email "jossie.rodriguez@mercadolibre.com.co"
    fi
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
