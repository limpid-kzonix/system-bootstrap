#!/usr/bin/env zsh


rm -rf ~/.local/share/gnome-background-properties
mkdir -p ~/.local/share/gnome-background-properties
ln -s $(pwd)/../.files/gnome-background-properties.xml  ~/.local/share/gnome-background-properties/adwaita.xml.in

rm -rf ~/Pictures/Backgrounds
mkdir -p ~/Pictures/Backgrounds
ln -s $(pwd)/../assets/Backgrounds/*.png  ~/Pictures/Backgrounds/

rm -rf ~/.zshrc
ln -s $(pwd)/../.files/.zshrc  ~/.zshrc

rm -rf ~/.config/starship.toml
ln -s $(pwd)/../.files/starship.toml  ~/.config/starship.toml

rm -rf ~/.config/alacritty/alacritty.toml
rm -rf ~/.config/alacritty/theme.toml
mkdir -p ~/.config/alacritty/
ln -s $(pwd)/../.files/alacritty.toml  ~/.config/alacritty/alacritty.toml
ln -s $(pwd)/../.files/alacritty_theme.toml  ~/.config/alacritty/theme.toml


rm -rf ~/.wezterm.lua
ln -s $(pwd)/../.files/.wezterm.lua  ~/.wezterm.lua

rm -rf ~/.ideavimrc
ln -s $(pwd)/../.files/.ideavimrc ~/.ideavimrc

#region: TMUX CONFIGURATION
mkdir -p $HOME/.config/tmux
rm -rf $HOME/.config/tmux/tmux.conf
rm -rf $HOME/.tmux.conf
ln -s $(pwd)/../.files/.tmux.conf $HOME/.config/tmux/tmux.conf
ln -s $(pwd)/../.files/.tmux.conf $HOME/.tmux.conf
#endregion

rm -rf ~/.config/kitty/kitty.conf
mkdir -p ~/.config/kitty/
ln -s $(pwd)/../.files/kitty.conf  ~/.config/kitty/kitty.conf

rm -rf ~/.hidden
ln -s $(pwd)/../.files/.hidden  ~/.hidden

echo "Installing neovim..."

# mv ~/.local/share/nvim ~/.local/share/nvim.bak
# mv ~/.local/state/nvim ~/.local/state/nvim.bak
# mv ~/.cache/nvim ~/.cache/nvim.bak

rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

ln -s $(pwd)/../.files/nvim/ ~/.config/nvim

echo "Installed neovim."
