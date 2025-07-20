#!/usr/bin/env zsh

rm -rf ~/.local/share/gnome-background-properties
mkdir -p ~/.local/share/gnome-background-properties
ln -s $(pwd)/../../.files/gnome-background-properties.xml  ~/.local/share/gnome-background-properties/adwaita.xml.in

rm -rf ~/system-update.sh
ln -s $(pwd)/../../.files/fedora-system-update.sh ~/system-update.sh
