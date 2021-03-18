# Install vim.
sudo apt install vim

if [ ! -d "$HOME/.vim/bundle" ]
then
    # Install Vundle package manager for vim
    git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi

# Link vimrc
rm $HOME/vimrc
ln -s $HOME/dotfiles/vim/vimrc $HOME/.vimrc

# Load custome color scheme.
mkdir -p $HOME/.vim/colors
cp $HOME/dotfiles/vim/custom-scheme.vim $HOME/.vim/colors/custom-scheme.vim

# Install all plugins
vim +PluginInstall +qall

# Modify move.vim
sed -i "226,236s/'j'/'down'/g" $HOME/.vim/bundle/vim-move/plugin/move.vim
sed -i "226,236s/'k'/'up'/g" $HOME/.vim/bundle/vim-move/plugin/move.vim
sed -i "226,236s/'h'/'left'/g" $HOME/.vim/bundle/vim-move/plugin/move.vim
sed -i "226,236s/'l'/'right'/g" $HOME/.vim/bundle/vim-move/plugin/move.vim
