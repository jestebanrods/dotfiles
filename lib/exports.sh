#!/bin/bash

# export NVM_DIR="/usr/local/nvm"
#    [ -s "/opt/nvm/nvm.sh" ] && \. "/opt/nvm/nvm.sh"
#    [ -s "/opt/nvm/bash_completion" ] && \. "/opt/nvm/bash_completion"

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# export PATH="$HOME/.local/bin:$PATH"

# export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse-git-branch)\[\e[00m\] $ "

# export PATH="$PATH:~/flutter/bin"
# export PATH="$PATH:~/.cargo/bin"

# PS1_DEFAULT="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]"
# export PS1="$PS1_DEFAULT \$(parse-git-branch) $ "

# export PS1=${PS1::-3}'${MERQUEO_ENV:+(\[\033[0;91m\]$MERQUEO_ENV\[\033[00m\])}$ '
# export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse-git-branch)\[\e[00m\] ${MERQUEO_ENV:+(\[\[0;91m\]$MERQUEO_ENV\[\033[00m\])} $ "