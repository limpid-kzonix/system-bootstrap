#!/usr/bin/env bash

# openSUSE Initial Setup Script using Zypper

# --- System Update ---
# Refresh repository metadata and apply package updates.
# For Tumbleweed, it's generally recommended to use 'sudo zypper dup' instead of 'sudo zypper update'.
echo "Refreshing repositories and updating installed packages..."
sudo zypper refresh && sudo zypper --non-interactive update
# If on Tumbleweed, consider uncommenting the line below and commenting out the one above:
# sudo zypper --non-interactive dup

# --- Install Essential Packages ---
# Install common utilities and dependencies.
# Note: gpg2 is the typical package name for GnuPG functions in openSUSE.
echo "Installing ca-certificates, curl, gpg2..."
sudo zypper --non-interactive install ca-certificates curl gpg2 zip

# --- Install PipeWire ALSA compatibility ---
# Needed for applications expecting ALSA to work via PipeWire.
echo "Installing PipeWire ALSA support..."
sudo zypper --non-interactive install pipewire-alsa

# --- Install util-linux ---
# Provides essential system utilities. Usually installed, but ensures it's present.
# The '-user' suffix is not typically used in openSUSE package naming here.
echo "Ensuring util-linux is installed..."
sudo zypper --non-interactive install util-linux

sudo zypper install opi
opi codecs

sudo zypper refresh

# --- Install Zsh, FZF, Git, Curl, Wget, Fuse ---
#
# Install the Z shell and other useful command-line tools.
# 'fuse' might be 'fuse' or 'fuse3' depending on the version, 'fuse' is often a meta-package.
echo "Installing Zsh, fzf, git, curl, wget, fuse..."
sudo zypper --non-interactive install zsh fzf git curl wget fuse

# --- Set Zsh as Default Shell ---
# IMPORTANT: Run this command as the user who wants Zsh, *without* sudo.
# You will be prompted for your user password.
echo "Changing default shell to Zsh for the current user."
echo "You might need to log out and log back in for the change to take full effect."
chsh -s $(which zsh)

# --- Install Oh My Zsh ---
# IMPORTANT: Run this command as the user who wants Oh My Zsh, *without* sudo.
# This downloads and executes the official installer script.
echo "Installing Oh My Zsh..."
if command -v curl >/dev/null 2>&1; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
elif command -v wget >/dev/null 2>&1; then
	sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
	echo "Error: curl or wget is required to install Oh My Zsh." >&2
	exit 1
fi

echo "-----------------------------------------------------"
echo "Script finished."
echo "Remember to manually add the Packman repository if needed."
echo "Log out and log back in to use the Zsh shell with Oh My Zsh."
echo "-----------------------------------------------------"

sudo zypper install python3-pipx
sudo zypper install 1password

sudo zypper install hackrf
sudo zypper install inspectrum
sudo zypper install urh
sudo zypper install jujutsu
sudo zypper install sddm-qt6
