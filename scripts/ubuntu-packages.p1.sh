#!/usr/bin/env zsh

sudo add-apt-repository ppa:openrazer/stable -y
sudo apt update
sudo apt -y install openrazer-meta

sudo add-apt-repository ppa:polychromatic/stable -y
sudo apt update
sudo apt -y install polychromatic