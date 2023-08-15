#!/usr/bin/env bash

sudo dnf check-update && sudo dnf upgrade

sudo dnf install ca-certificates curl gnupg

sudo dnf install pipewire-alsa
sudo dnf install wireplumer
sudo dnf install pipewire-media-session

sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install zsh fzf git curl wget fuse
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# vim /usr/share/wireplumber/main.lua.d/50-alsa-config.lua
# acp = false
