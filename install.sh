#!/bin/bash

if [ -a vimrc ]
then
    cp -i vimrc ~/.vimrc
fi

rm -rf ~/.vim
mkdir -p ~/.vim
cp -R . ~/.vim

if `"which ctags"`
then
    echo installed
    # sudo apt-get install -y zathura
fi
# exuberant-ctags 
