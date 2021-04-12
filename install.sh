#!/bin/bash

# dotfiles current
DOTFILES_CURRENT_DIR=`pwd`

# nvim config
VIMCONF_DIR="${HOME}/.config/nvim"
VIMCONF_FILE="${VIMCONF_DIR}/init.vim"
if [ -e $VIMCONF_DIR ]; then
    if [ -e $VIMCONF_FILE ]; then
        unlink $VIMCONF_DIR/init.vim
    else
        ln -fns $DOTFILES_CURRENT_DIR/nvim/init.vim $VIMCONF_FILE
    fi
fi

# .gitignore_global
GITIGNORE_GLOBAL="${HOME}/.gitignore_global"
if [ -e $GITIGNORE_GLOBAL ]; then
    unlink $GITIGNORE_GLOBAL
else
    ln -fns $DOTFILES_CURRENT_DIR/git/.gitignore_global $GITIGNORE_GLOBAL
fi
# set global config
git config --global core.excludesfile ~/.gitignore_global