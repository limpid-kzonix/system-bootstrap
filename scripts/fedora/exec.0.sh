#!/usr/bin/env bash

sudo dnf check-update && sudo dnf upgrade

sudo dnf install ca-certificates curl gnupg

sudo dnf groupupdate core

sudo dnf install fedora-workstation-repositories

sudo dnf install pipewire-alsa

sudo dnf install util-linux-user

sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install zsh fzf git curl wget fuse
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

