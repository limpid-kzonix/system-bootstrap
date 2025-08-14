#!/bin/env zsh
echo "Initializing user env..."
source "$HOME/.zshrc"
echo "\n"
echo "## shell: $SHELL ##"
echo "\n"
echo "------------------------"
echo "-  Updating system...  -"
echo "------------------------"
echo "System info: $(uname -a)"
echo "\n"
echo "Updating system via 'zypper'..."

sudo zypper refresh
sudo zypper update -y
sudo zypper dist-upgrade -y
sudo zypper patch -y

sudo flatpak update -y

echo ""
echo "Updating rust toolchain..."
rustup update

echo ""
echo "Updating julia toolchain..."
juliaup update

echo ""
echo "Updating SDKMAN..."
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk update
sdk upgrade

echo "Updating NVM..."
nvm install node --reinstall-packages-from=current --latest-npm

echo "Updating Miniforge3"
mamba update --all

echo "Updating astral.uv"
uv self update



