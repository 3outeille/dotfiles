# Uninstall tmux.
sudo apt-get purge tmux
sudo apt-get autoremove tmux
sudo apt-get clean

rm $HOME/.tmux.conf
