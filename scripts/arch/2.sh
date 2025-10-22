#!/usr/bin/env zsh

# Ensure system is updated
sudo pacman -Syu --noconfirm

# Terminal and utilities
sudo pacman -S --noconfirm alacritty bat kitty hyperfine asciinema wl-clipboard yq jq stacer net-tools xsensors stress

# Media tools
sudo pacman -S --noconfirm vlc ffmpeg ffmpegthumbs mpv \
	gstreamer gst-plugins-base gst-plugins-good gst-plugin-pipewire \
	gst-plugins-bad gst-plugins-ugly gst-libav \
	libva-utils libva gstreamer-vaapi \
	libvdpau-va-gl libva-vdpau-driver v4l2loopback-dkms

# GPU-specific tools
if lspci | grep -i amd | grep -i vga >/dev/null; then
	echo "AMD GPU found."
	sudo pacman -S --noconfirm radeontop
fi

if lspci | grep -i intel | grep -i vga >/dev/null; then
	echo "Intel GPU found."
	sudo pacman -S --noconfirm intel-media-driver
fi

# UI tools
sudo pacman -S --noconfirm gnome-tweaks gnome-extensions-app

# pipx (Python packaging)
sudo pacman -S --noconfirm pipx
pipx ensurepath

# Developer tools
sudo pacman -S --noconfirm llvm clang cmake make gcc g++ \
	clang-tools-extra lldb lld ninja meson \
	flex bison gperf ccache openssl libffi dfu-util unzip \
	readline base-devel

# GTK and GUI dev
sudo pacman -S --noconfirm gtk3 gtk4 gtk3-devel gtk4-devel \
	gobject-introspection webkit2gtk libxrandr libxi libxinerama libxcursor libxxf86vm \
	libx11 libxext libxft libxrender libxfixes mesa mesa-utils \
	mesa-vdpau mesa-va mesa-libgl mesa-libegl mesa-gbm

# Fonts
sudo pacman -S --noconfirm ttf-fira-code ttf-font-awesome noto-fonts

# PDF + document tools
sudo pacman -S --noconfirm zathura zathura-pdf-mupdf mupdf

# OBS and streaming
sudo pacman -S --noconfirm obs-studio

# LaTeX
sudo pacman -S --noconfirm texlive-core texlive-bin texlive-xetex

# Crystal language (AUR)
paru -S --noconfirm crystal

# Swap to ffmpeg (non-free) – already covered above in Arch via main repos

# Done
echo "✅ All packages installed and configured."

sudo pacman -S --noconfirm qemu virt-manager libvirt dnsmasq vde2 bridge-utils openbsd-netcat
sudo systemctl enable --now libvirtd
sudo usermod -aG libvirt $(whoami)

# --- Install Visual Studio Code ---
# VS Code is in AUR as 'visual-studio-code-bin' (official binary with MS telemetry)
paru -S --noconfirm visual-studio-code-bin

# --- Install Podman and Docker compatibility layer ---
sudo pacman -S --noconfirm podman podman-docker

# Optional: Start and enable Podman socket (if needed for Docker compatibility)
# sudo systemctl enable --now podman.socket

# --- Time Sync ---
sudo timedatectl set-local-rtc 0
sudo timedatectl set-ntp true
