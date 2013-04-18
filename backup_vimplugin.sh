#!/bin/bash

# backup .vimrc if exists
if ls -a ~ |grep -E "^.vimrc$" > /dev/null
then
    cp ~/.vimrc ~/.vim/vimrc
else
    echo warning: .vimrc not exist 
fi

# backup ~/.vim
cd ~/.vim
git add .
git add -u .
git commit -m"vim plugin update"
git push origin master --force

