#!/usr/bin/env zsh

sudo apt -y update

sudo apt -y install -y clang libjpeg-turbo8-dev libjpeg-dev libjpeg9 libjpeg-tools 
sudo apt -y install stacer
sudo apt -y install urxvt 
sudo apt -y install lm-sensors
sudo apt -y install lm-sensors xsensors fancontrol
sudo apt -y install stress
sudo apt -y install software-properties-common
sudo apt -y install sshpass
sudo apt -y install libsensors5
sudo apt -y install libgc-dev 
sudo apt -y install clang 
sudo apt -y install libgc-dev 
sudo apt -y install libssl-dev
sudo apt -y install libxml2-dev
sudo apt -y install libyaml-dev
sudo apt -y install libgmp-dev
sudo apt -y install libreadline-dev
sudo apt -y install libz-dev
sudo apt -y install git wget flex bison gperf cmake ninja-build ccache libffi-dev libssl-dev dfu-util

sudo apt -y autoclean
sudo apt -y clean
sudo apt -y autoremove

# TODO: add basic git config 

sudo apt -y install xclip
sudo apt -y install libgconf-2-4


sudo apt -y install ubuntu-restricted-extras

sudo apt -y install fonts-firacode \
 fonts-cascadia-code \
 fonts-inconsolata \
 fonts-monofur \
 fonts-mononoki \
 fonts-monoid \
 fonts-cantarell
 
sudo apt-get install chrome-gnome-shell
