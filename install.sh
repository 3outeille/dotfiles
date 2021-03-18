sudo apt update

. setup/vim-install.sh
echo "[vim]: Install done."

# Restart computer for zsh to be use as default shell.
. setup/zsh-install.sh
echo "[zsh]: Install done."
echo "LOG: You should restart computer for zsh to be set as default shell"
