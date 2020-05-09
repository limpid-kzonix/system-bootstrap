#!/bin/bash

rm -rf ./alacritty && mkdir -p ./alacritty
cp -r $HOME/.config/alacritty ./

rm -rf ./zathura && mkdir -p ./zathura
cp -r $HOME/.config/zathura ./

rm -rf ./nvim && mkdir -p ./nvim
cp -r $HOME/.config/nvim ./
rm -rf ./nvim/plugged

rm -rf ./themes && mkdir -p ./themes
cp -r $HOME/.themes/* ./themes

rm -rf ./icons && mkdir -p ./icons
cp -r $HOME/.icons/* ./icons

cp $HOME/.config/starship.toml ./starship.toml
cp $HOME/.zshrc ./.zshrc
cp $HOME/.zprofile ./.zprofile
cp $HOME/.tmux.conf ./.tmux.conf
