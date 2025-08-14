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
echo "Updating system via 'dnf'..."
sudo dnf check-update -y
sudo dnf update -y
sudo dnf check-update -y 
echo "Upgrading system via 'dnf'..."
sudo dnf upgrade -y 
sudo dnf distro-sync -y

flatpak update -y

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

