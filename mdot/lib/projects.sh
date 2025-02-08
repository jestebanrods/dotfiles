#!/bin/bash

function m-repos()
{
    project_dir=$HOME/Documents/code
    commands=$(ls -1 $project_dir)
    
    project=$(printf "%s\n" "${commands[@]}" | fzf)
    repos_dir=$project_dir/$project/repos

    repo_selected=$(ls -1 $repos_dir \
        | fzf --header="Seleccione el repositorio a abrir" \
        | awk '{ print $1 }'
    )

    if [ $repo_selected ]; then
        cd $repos_dir/$repo_selected
    fi
}
