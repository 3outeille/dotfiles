#!/bin/sh

# Install Vundle package manager for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Link vimrc
ln -s ~/dotfiles/vimrc ~/.vimrc

# Install all plugins
vim +PluginInstall +qall

# Modify move.vim
sed -i "226,236s/'j'/'down'/g" ~/.vim/bundle/vim-move/plugin/move.vim
sed -i "226,236s/'k'/'up'/g" ~/.vim/bundle/vim-move/plugin/move.vim
sed -i "226,236s/'h'/'left'/g" ~/.vim/bundle/vim-move/plugin/move.vim
sed -i "226,236s/'l'/'right'/g" ~/.vim/bundle/vim-move/plugin/move.vim
