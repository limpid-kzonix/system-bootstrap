#!/usr/bin/env bash

sudo apt update && sudo apt -y upgrade

sudo apt -y install net-tools
 
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

sudo apt -y install cmake \
	pkg-config \
	libfreetype6-dev \
	libfontconfig1-dev \
	libxcb-xfixes0-dev libxkbcommon-dev \
	python3

sudo apt -y install \
	libssl-dev \
	libxml2-dev \
	libyaml-dev \
	libgmp-dev \
	libreadline-dev \
	libz-dev

sudo apt -y install tmux zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
