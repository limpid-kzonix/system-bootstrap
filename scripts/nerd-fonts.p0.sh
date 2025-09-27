#!/usr/bin/env zsh

# TODO: Tue 12 Apr - Please update me in case of changes in upstream repo.

FONT_DIR=${HOME}/.fonts
mkdir -p $FONT_DIR

echo $FONT_DIR

git clone --depth 1 --filter=blob:none git@github.com:ryanoasis/nerd-fonts

cd nerd-fonts

./install.sh -U JetBrainsMono
./install.sh -U MPlus
./install.sh -U Terminus
./install.sh -U FantasqueSansMono
./install.sh -U Noto
./install.sh -U Hack
./install.sh -U HeavyData
./install.sh -U 3270
./install.sh -U FiraCode
./install.sh -U LiberationMono
./install.sh -U RobotoMono
./install.sh -U Mononoki
./install.sh -U Ubuntu
./install.sh -U DroidSansMono
./install.sh -U Monoid
./install.sh -U SpaceMono
./install.sh -U SourceCodePro
./install.sh -U ComicShannsMono
./install.sh -U NerdFontsSymbolsOnly
./install.sh -U DaddyTimeMono
./install.sh -U UbuntuMono
./install.sh -U Meslo
./install.sh -U FiraMono
./install.sh -U CodeNewRoman
./install.sh -U CascadiaCode
./install.sh -U Hasklig
./install.sh -U DejaVuSansMono
./install.sh -U Inconsolata
./install.sh -U Hermit
./install.sh -U ZedMono
./install.sh -U CommitMono
./install.sh -U Terminus
./install.sh -U Agave
./install.sh -U GeistMono 
./install.sh -U Monaspace
./install.sh -U ShareTechMono
./install.sh -U Recursive
./install.sh -U D2Coding
./install.sh -U ZedMono
./install.sh -U EnvyCodeR
./install.sh -U IosevkaTerm
./install.sh -U Lekton
./install.sh -U Lilex

sudo fc-cache -vf

cd ..

rm -rf nerd-fonts
