#!/usr/bin/env zsh
echo "Init base git configuration"
git config --global user.email  "balyszyn@gmail.com"
git config --global user.name   "limpid-kzonix"
git config --global pull.rebase true
git config --global init.defaultBranch main
git config --global core.autocrlf input

# sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator alacritty 50
# sudo update-alternatives --config x-terminal-emulator

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

sudo systemctl enable docker.service
sudo systemctl enable containerd.service

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
