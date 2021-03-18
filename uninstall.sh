sudo apt update

. setup/vim-uninstall.sh
echo "[vim]: Uninstall done."

chsh -s $(which bash)
. setup/zsh-uninstall.sh
echo "[zsh]: Uninstall done."
echo "LOG: set bash as default shell. You should restart computer for changes to take effect."
