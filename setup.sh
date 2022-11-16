#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp mike-theme.zsh-theme ~/.oh-my-zsh/themes/
cp .vimrc ~/.vimrc
mkdir -p ~/.vim/colors
cp monokai.vim ~/.vim/colors/

