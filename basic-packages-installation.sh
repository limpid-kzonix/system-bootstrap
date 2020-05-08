sudo apt update && sudo apt -y upgrade

sudo apt -y install gnome-tweaks net-tools

sudo apt -y install ubuntu-restricted-extras
 
sudo apt -y install zsh 

sudo apt -y install \
	clang \
	gcc \
	g++ \
	meson \
	jq \
	llvm \
	python3-pip \
	python3-setuptools \
	cmake \
	make

sudo apt -y install curl wget git zathura mupdf

sudo apt -y install vim tmux zsh

sudo apt -y install \
	libssl-dev \
	libxml2-dev \
	libyaml-dev \
	libgmp-dev \
	libreadline-dev \
	libz-dev

sudo add-apt-repository ppa:openrazer/stable -y
sudo apt update
sudo apt -y install openrazer-meta

sudo add-apt-repository ppa:polychromatic/stable -y
sudo apt update
sudo apt -y install polychromatic

sudo snap install sublime-text --classic
sudo snap install sublime-merge --classic
sudo snap install atom --classic
sudo snap install snapcraft --classic
sudo snap install rocketchat-desktop
sudo snap install postman
sudo snap install beekeeper-studio
sudo snap install gitkraken
sudo snap install insomnia
sudo snap install nordpass
sudo snap install chromium
sudo snap install vlc
sudo snap install bitwarden
sudo snap install audacity
sudo snap install inkscape
sudo snap install qalculate
sudo snap install gimp
sudo snap install polar-bookshelf
sudo snap install umbrello
sudo snap install standard-notes
sudo snap install zenkit-todo
sudo snap install krita

curl -sSL https://dist.crystal-lang.org/apt/setup.sh | sudo zsh

sudo apt -y install libssl-dev
sudo apt -y install libxml2-dev
sudo apt -y install libyaml-dev
sudo apt -y install libgmp-dev
sudo apt -y install libreadline-dev
sudo apt -y install libz-dev

sudo apt -y install crystal

sudo apt -y update
sudo apt -y install tlp tlp-rdw
sudo tlp start

sudo apt -y autoclean
sudo apt -y clean
sudo apt -y autoremove

sudo apt -y install xclip
sudo apt -y install libgconf-2-4
sudo apt -y install julia 

sudo add-apt-repository ppa:mmstick76/alacritty -y
sudo apt -y install alacritty

curl -s "https://get.sdkman.io" | zsh -y
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i java 14.0.1.j9-adpt -n
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i java 14.0.1.hs-adpt -n
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i java 13.0.2.j9-adpt -n
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i java 13.0.2.hs-adpt -n
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i java 14.0.1-zulu -n
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i java 13.0.3-zulu -n
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i java 13.0.3.fx-zulu -n
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i java 20.0.0.r11-grl -n
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i java 11.0.7.fx-zulu -y

source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i gradle
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i maven
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i ceylon
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i kotlin
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i sbt
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i scala
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i dotty
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i groovy
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i micronaut
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i vertx
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk i visualvm

wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | sudo apt-key -y add -
echo 'deb https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list 
sudo apt update && sudo apt -y install codium 

sudo apt -y install fonts-firacode \
 fonts-cascadia-code \
 fonts-inconsolata \
 fonts-monofur \
 fonts-mononoki \
 fonts-monoid


