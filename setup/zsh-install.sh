# Install zsh
sudo apt install zsh

# Link zsh
rm ~/.zshrc
ln -s ~/dotfiles/zshrc ~/.zshrc

cp -r ~/dotfiles/zsh ~/.zsh

# Change shell to zsh
chsh -s $(which zsh)
