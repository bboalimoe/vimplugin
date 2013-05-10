#!/bin/bash

# update from github
git pull origin master
# .vimrc
cp -i vimrc ~/.vimrc

#if [ -a vimrc ]
#then
#    cp -i vimrc ~/.vimrc
#fi
