#!/usr/bin/env zsh

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

curl -s "https://get.sdkman.io" | bash 

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash


curl -fsSL https://deno.land/x/install/install.sh | sh

# curl -sSL https://get.haskellstack.org/ | sh

curl -sS https://webinstall.dev/curlie | bash

for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done

sudo apt-get update
sudo apt-get install ca-certificates curl gnupg

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh
rm ./get-docker.sh


