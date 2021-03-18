MAGENTA='\e[45m'
NC='\033[0m' # No Color

sudo apt update

. setup/vim-install.sh
echo "[vim]: Install done."

. setup/git-install.sh
echo "[git]: Install done."

. setup/zsh-install.sh
echo "[zsh]: Install done."

echo -e "${MAGENTA}LOG: You should restart computer for zsh to be set as default shell${NC}"
