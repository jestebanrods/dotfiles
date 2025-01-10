#!/bin/bash

# Definir los repositorios
REPOS=(
  "bitcoin-manager-api"
  "bitcoin-manager-dashboard"
  "deployer-tools"
  "docker-tools"
  "dotfiles"
  "edu-flutter"
  "edu-golang"
  "edu-web"
  "invvitae-infrastructure"
  "nixvim"
  "skeleton-laravel-ddd-cqrs"
  "skeleton-laravel-inertia"
  "skeleton-nuxt-dashboard"
)

# Directorio base donde se clonarán los repositorios
BASE_DIR="$HOME/Documents/code/jestebanrods/repos"

# Iterar sobre cada repositorio
for repo in "${REPOS[@]}"; do
  repo_path="$BASE_DIR/$repo"

  # Comprobar si el directorio del repositorio ya existe
  if [ ! -d "$repo_path" ]; then
    echo "Clonando $repo..."
    git clone "git@github.com:jestebanrods/$repo.git" "$BASE_DIR/$repo"
  else
    echo "$repo ya existe, saltando..."
  fi
done
