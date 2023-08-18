#!/usr/bin/env zsh

sudo dnf -y install kitty alacritty
# media
sudo dnf -y install vlc
sudo dnf -y install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf -y install ffmpeg-free
sudo dnf -y install obs-studio
sudo dnf group upgrade --with-optional Multimedia


#ui
sudo dnf -y install gnome-tweaks gnome-extensions-app

#others
sudo dnf -y install llvm jq meson g++ gcc clang make cmake
sudo dnf -y install meson 
sudo dnf -y install flex bison gperf cmake ninja-build ccache libffi-dev libssl-dev dfu-util
sudo dnf -y install build-essential libreadline-dev unzip
sudo dnf -y install stacer
sudo dnf -y install xsensors stress
sudo dnf -y install flex bison gperf
sudo dnf -y install net-tools
sudo dnf -y install jq

sudo dnf -y install zathura mupdf
sudo dnf -y install fontconfig
sudo dnf -y install stress
sudo dnf -y install fira-code-fonts
sudo dnf -y install v4l2loopback
sudo dnf -y install obs-studio-libs


