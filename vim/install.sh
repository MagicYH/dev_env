#!/bin/bash

# backup original vim config if exist
if [ -f "~/.vimrc" ]
then
    mv ~/.vimrc ~/.vimrc.bak
fi

if [ -d "~/.vim" ]
then
    mv ~/.vim ~/.vim.bak
fi

# copy vim config
cp vimrc ~/.vimrc
cp -r vim ~/.vim

# install plugin

if [ ! -f "~/.vim/autoload/plug.vim" ]
then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

vim -s ~/.vim/install_plugin.sh