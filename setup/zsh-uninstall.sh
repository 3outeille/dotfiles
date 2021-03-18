# Install zsh
sudo apt-get purge zsh
sudo apt-get autoremove zsh
sudo apt-get clean

rm -rf $HOME/.zsh
rm $HOME/.zshrc
rm $HOME/.zsh_history
