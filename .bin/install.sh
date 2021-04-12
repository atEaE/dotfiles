#!/bin/bash

# nvim config
VIMCONF_DIR="${HOME}/.config/nvim"
VIMCONF_FILE="${VIMCONF_DIR}/init.vim"
if [ -e $VIMCONF_DIR ]; then
    if [ -e $VIMCONF_FILE ]; then
        unlink $VIMCONF_DIR/init.vim
    else
        ln -fns 
    fi
fi

