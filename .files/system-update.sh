#!/bin/zsh

echo "------------------------"
echo "-  Updating system...  -"
echo "------------------------"
echo "System info: $(uname -a)"
echo ""
echo "Updating system via 'apt'..."
sudo apt update && sudo apt upgrade && sudo apt full-upgrade && sudo apt dist-upgrade
echo ""
echo "Updating rust toolchain..."
rustup update
echo ""
echo "Updating conda..."
conda update conda
source "$HOME/.sdkman/bin/sdkman-init.sh" && echo "Updating SDKMAN"
sdk update
sdk upgrade
