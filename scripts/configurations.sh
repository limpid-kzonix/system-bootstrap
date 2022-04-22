#!/usr/bin/env zsh

git config --global user.email "balyszyn@gmail.com"
git config --global user.name "limpid-kzonix"

conda config --set changeps1 False

sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /home/limpid/.cargo/bin/alacritty 50
sudo update-alternatives --config x-terminal-emulator