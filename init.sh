#!/bin/sh
sudo apt-get install git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -sf `pwd`/default.vimrc ~/.vimrc
sudo apt-get install libclang-dev libboost-regex-dev
vim +PluginInstall +qa
cd ~/.vim/bundle/youcompleteme
./install.py --system-libclang --system-boost --clang-completer
