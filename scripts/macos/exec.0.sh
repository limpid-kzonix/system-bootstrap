#!/usr/bin/env bash

curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search


brew install install fzf wget
brew install zlib
brew install cmake make gcc meson

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
