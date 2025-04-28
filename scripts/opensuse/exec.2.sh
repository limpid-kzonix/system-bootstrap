
#!/usr/bin/env zsh

# openSUSE Script Section: VS Code, Podman, Time Config

# --- VS Code Installation ---
echo "Adding VS Code repository and installing..."
# Import the Microsoft GPG key
# This command works the same on RPM-based systems like openSUSE and Fedora.
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

# Add the VS Code repository using zypper's 'addrepo' command.
# 'ar' is short for 'addrepo'.
# The URI points to the YUM repo, which zypper can also use.
# 'vscode' is the alias we give to this repository.
sudo zypper addrepo https://packages.microsoft.com/yumrepos/vscode vscode

# Enable auto-refresh for the new repository so zypper keeps it updated.
# 'mr' is short for 'modifyrepo'.
sudo zypper modifyrepo --refresh vscode

# Refresh repositories to make zypper aware of the newly added one.
# The '--gpg-auto-import-keys' option automatically trusts and imports
# the GPG key associated with the repository (the one we imported manually earlier).
echo "Refreshing repositories (you might be asked to trust the new GPG key)..."
sudo zypper --gpg-auto-import-keys refresh

# Install VS Code using zypper.
# '--non-interactive' avoids confirmation prompts.
sudo zypper --non-interactive install code

# --- Podman and Docker Compatibility ---
echo "Installing Podman, podman-docker, and docker-compose..."
# Install Podman container engine.
sudo zypper --non-interactive install podman

# Install the podman-docker package.
# This provides a 'docker' command that acts as an alias or wrapper for podman commands,
# allowing tools expecting 'docker' to work with podman.
sudo zypper --non-interactive install podman-docker

# Install Docker Compose.
# Note: The original script used 'docker-compose-plugin', which is the newer v2 style.
# OpenSUSE repositories typically provide the standard 'docker-compose' (v1 style),
# which works with podman via podman-docker. If you specifically need the v2 plugin,
# you might need to install it manually or find an alternative source.
sudo zypper --non-interactive install docker-compose

# --- Time Synchronization Configuration ---
echo "Configuring timedatectl..."
# Set the hardware clock (RTC) to store time in UTC.
# This is generally recommended for Linux systems, especially dual-booting ones.
sudo timedatectl set-local-rtc 0

# Enable Network Time Protocol (NTP) client for automatic time synchronization
# with network time servers. This ensures the system clock stays accurate.
sudo timedatectl set-ntp true

echo "-----------------------------------------------------"
echo "VS Code, Podman, and time configuration finished."
echo "-----------------------------------------------------"
