#!/bin/bash

# $PWD=$(pwd)

# Git
alias gits='git status'
alias gitss='git status -sb'
alias gitb='git branch'
alias gitl='git log --oneline -n 20'
alias gitco='git switch'
alias gitcom='git switch master'
alias gitcod='git switch develop'
alias gitfap='git fetch --all --prune'
alias gitfp='git fetch origin --prune'

# Utils
alias k='kill -9'
# alias i.="(idea $PWD &>/dev/null &)"
# alias c.="(code $PWD &>/dev/null &)"
alias o.='open .'
alias up='dot package update_all'

# Dirs
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -l'
alias lll='ls -1'
alias la='ls -la'
alias lss='ls -1X'
alias lsa='ls -1SXa'
alias lh='ls -lhX'

# OS
alias dud='du -d 1 -h'
alias duf='du -sh'
alias cdc="cd $HOME/Documents/code"
alias meli="cd $HOME/Documents/code/mercadolibre"
alias jestebanrods="cd $HOME/Documents/code/jestebanrods"
alias dotfiles="cd $DOTFILES_PATH"

# PHP
alias phptest='vendor/bin/phpunit'
alias phptestcover='XDEBUG_MODE=coverage phptest --coverage-html coverage'
alias phpformat='vendor/bin/php-cs-fixer fix -v'
alias phplinter='vendor/bin/phpstan analyse --memory-limit=10G'
