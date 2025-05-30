#!/bin/bash

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

export PRE_COMMIT_ALLOW_NO_CONFIG=0
export SQL_NOTES=0
export LOG_WARNINGS=0

# Nix
export LC_ALL="C.UTF-8"

PS1_DEFAULT="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\W\[\033[00m\]"
export PS1="$PS1_DEFAULT \$(_m-git-branch-prompt)"
