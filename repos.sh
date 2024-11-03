#!/bin/bash

# Definir los repositorios
REPOS=(
  "dotfiles"
  "nixvim"
  "deployer-tools"
  "bitcoin-manager-api"
  "bitcoin-manager-dashboard-v2"
  "bitcoin-manager-dashboard"
  "skeleton-nuxt-dashboard"
  "edu-web"
  "bitcoin-manager-app"
  "edu-flutter"
  "edu-docker"
  "skeleton-laravel-ddd-cqrs"
  "edu-golang"
  "skeleton-laravel-inertia"
  "invvitae-infrastructure"
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
