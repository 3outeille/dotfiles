sudo apt update

bash setup/vim-install.sh
echo "[vim]: Install done."

# Restart computer for zsh to be use as default shell.
bash setup/zsh-install.sh
echo "[zsh]: Install done."
echo "You should restart computer for zsh to be set as default shell"
