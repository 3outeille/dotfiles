# Install zsh
sudo apt install zsh

# Link zsh
rm ~/.zshrc
ln -s ~/dotfiles/zshrc ~/.zshrc

cp -r ~/dotfiles/zsh ~/.zsh

# Install theme
mkdir ~/.zsh/themes 
. ~/dotfiles/zsh/themes.sh

# Change shell to zsh
chsh -s $(which zsh)
