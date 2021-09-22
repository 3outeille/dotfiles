# Install zsh
sudo apt install zsh

# Link zsh
rm $HOME/.zshrc
ln -s $HOME/dotfiles/zshrc $HOME/.zshrc

cp -r $HOME/dotfiles/zsh $HOME/.zsh

# Install theme
mkdir $HOME/.zsh/themes 
. $HOME/.zsh/themes.sh
rm $HOME/.zsh/themes.sh

# Change shell to zsh
chsh -s $(which zsh)
