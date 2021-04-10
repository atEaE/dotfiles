#!/bin/bash

# initialize
BASE_FILE=./init-base.vim
VIM_FILE=./init.vim
rm $VIM_FILE && touch $VIM_FILE

# check args
M_MIN=false
if [ $# == 1 ]; then
    if [ $1 == '-m' ]; then
        M_MIN=true
        echo "minimalize mode."
    fi
fi

# build init.vim
if "${M_MIN}"; then
    while read LINE
    do
        if echo $LINE | grep '\"!!' > /dev/null; then
            :
        else
            echo $LINE >> $VIM_FILE
        fi
    done < $BASE_FILE
else
    while read LINE
    do
        echo $LINE >> $VIM_FILE
    done < $BASE_FILE
fi
