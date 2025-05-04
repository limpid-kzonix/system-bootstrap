#!/usr/bin/env zsh

if command -v gext >/dev/null 2>&1; then 
  echo "Installing gnome extensions"
else 
  pipx install gext
fi 

gext install dash-to-dock@micxgx.gmail.com
gext install status-icons@gnome-shell-extensions.gcampax.github.com
gext install tilingshell@ferrarodomenico.com
gext install user-theme@gnome-shell-extensions.gcampax.github.com
gext install battery-indicator-icon@Deminder
gext install just-perfection-desktop@just-perfection
gext install notification-icons@muhammad_ans.github

