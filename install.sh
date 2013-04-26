#!/bin/bash

if [ -a vimrc ]
then
    cp -i vimrc ~/.vimrc
fi

echo 'input passwd to install dependent packages'
sudo apt-get install -y -qq exuberant-ctags zathura
