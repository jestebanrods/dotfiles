#!/bin/bash

KERNEL_NAME=$(uname -s)
DOTFILES_PATH=$HOME/Documents/code/jestebanrods/repos/dotfiles
IS_MAC=$(uname -s | grep -qi "Darwin" && echo true || echo false)

export DOTFILES_PATH