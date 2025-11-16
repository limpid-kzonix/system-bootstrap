#!/usr/bin/env zsh

if command -v gext >/dev/null 2>&1; then 
  echo "Installing gnome extensions"
else 
  pipx install gnome-extensions-cli
fi 

gext install dash-to-dock@micxgx.gmail.com
gext install status-icons@gnome-shell-extensions.gcampax.github.com
gest install appindicatorsupport@rgcjonas.gmail.com
gext install tilingshell@ferrarodomenico.com
gext install user-theme@gnome-shell-extensions.gcampax.github.com
gext install battery-indicator-icon@Deminder
gext install notification-icons@muhammad_ans.github
gext install tophat@fflewddur.github.io
gext install space-bar@luchrioh
gext install AlphabeticalAppGrid@stuarthayhurst
