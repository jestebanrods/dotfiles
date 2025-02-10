#!/bin/bash

# Git
alias gits='git status'
alias gitb='git branch'
alias gitl='git log --oneline -n 20'
alias gitcom='git switch master'
alias gitcod='git switch develop'
alias gitfap='git fetch --all --prune'

# Dirs
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -l'
alias lll='ls -1'
alias la='ls -la'
alias lla='ls -1a'
alias lh='ls -lh'

# OS
alias dud='du -d 1 -h'
alias duf='du -sh'
alias cdc="cd $HOME/Documents/code"
alias meli="cd $HOME/Documents/code/mercadolibre"
alias jestebanrods="cd $HOME/Documents/code/jestebanrods"
alias dotfiles="cd $DOTFILES_PATH"
alias homelab="cd $BASE_PATH/homelab"
alias nixvim="cd $BASE_PATH/nixvim"

# PHP
alias phptest='vendor/bin/phpunit'
alias phptestcover='XDEBUG_MODE=coverage phptest --coverage-html coverage'
alias phpformat='vendor/bin/php-cs-fixer fix -v'
alias phplinter='vendor/bin/phpstan analyse --memory-limit=10G'
