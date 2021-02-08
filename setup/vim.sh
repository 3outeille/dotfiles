#!/bin/sh

if [ ! -d "$HOME/.vim/bundle" ]
then
    # Install Vundle package manager for vim
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Link vimrc
cp ~/dotfiles/vim/vimrc ~/.vimrc

# Load custome color scheme.
mkdir -p ~/.vim/colors
cp ~/dotfiles/vim/custom-scheme.vim ~/.vim/colors/custom-scheme.vim

# Install all plugins
vim +PluginInstall +qall

# Modify move.vim
sed -i "226,236s/'j'/'down'/g" ~/.vim/bundle/vim-move/plugin/move.vim
sed -i "226,236s/'k'/'up'/g" ~/.vim/bundle/vim-move/plugin/move.vim
sed -i "226,236s/'h'/'left'/g" ~/.vim/bundle/vim-move/plugin/move.vim
sed -i "226,236s/'l'/'right'/g" ~/.vim/bundle/vim-move/plugin/move.vim

# Install gadget for vimspector
if [ ! -d "$HOME/.config/vimspector/configurations/linux/_all" ]
then
    mkdir -p "$HOME/.config/vimspector/configurations/linux/_all" 
fi

cp ~/dotfiles/config/vimspector/configurations/linux/_all/vimspector.json ~/.config/vimspector/configurations/linux/_all/vimspector.json 

cd ~/.vim/bundle/vimspector/
./install_gadget.py --enable-ptyhon
cd ~
