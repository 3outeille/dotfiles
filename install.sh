sudo apt update

bash setup/vim.sh
echo "[vim]: Done."

# Restart computer for zsh to be use as default shell.
bash setup/zsh.sh
echo "[zsh]: Done."
echo "You should restart computer for zsh to be set as default shell"
