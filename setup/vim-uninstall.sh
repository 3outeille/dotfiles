# Uninstall vim.
sudo apt-get purge vim
sudo apt-get autoremove vim
sudo apt-get clean

rm -rf $HOME/.vim
rm $HOME/.vimrc
rm $HOME/.viminfo
