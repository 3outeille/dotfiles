MAGENTA='\e[45m'
NC='\033[0m' # No Color

chsh -s $(which bash)

. setup/vim-uninstall.sh
echo "[vim]: Uninstall done."

. setup/zsh-uninstall.sh
echo "[zsh]: Uninstall done."

echo -e "${MAGENTA}LOG: set bash as default shell. You should restart computer for changes to take effect.${NC}"
