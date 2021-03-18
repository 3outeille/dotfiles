sudo apt update

. setup/vim-uninstall.sh
echo "[vim]: Uninstall done."

. setup/zsh-uninstall.sh
echo "[zsh]: Uninstall done."
chsh -s $(which bash)
echo "LOG: set bash as default shell. You should restart computer for changes to take effect."
