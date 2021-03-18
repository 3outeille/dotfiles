# Install zsh
sudo apt install zsh

# Link zsh
rm $HOME/.zshrc
ln -s $HOME/dotfiles/zshrc $HOME/.zshrc

# Install theme
mkdir $HOME/.zsh/themes 
. $HOME/dotfiles/zsh/themes.sh

# Change shell to zsh
chsh -s $(which zsh)
