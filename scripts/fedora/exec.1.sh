#!/usr/bin/env zsh

sudo dnf -y install alacritty
# media
sudo dnf -y install vlc
sudo dnf -y install gstreamer1-plugins-{good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf -y install ffmpeg-free

sudo dnf install libva-utils
sudo dnf install libva libva-utils gstreamer1-vaapi mesa-dri-drivers mpv 
sudo dnf install libva-vdpau-driver libvdpau-va-gl libva-utils

if lspci | grep -i amd | grep -i vga > /dev/null; then
    echo "AMD GPU found."
    sudo dnf install radeontop
fi

#ui
sudo dnf -y install gnome-tweaks gnome-extensions-app

#others
sudo dnf install -y llvm jq meson g++ gcc clang make cmake
sudo dnf install -y meson 
sudo dnf install -y flex bison gperf cmake ninja-build ccache libffi-devel openssl-devel dfu-util
sudo dnf install -y build-essential libreadline-dev unzip
sudo dnf install -y stacer
sudo dnf install -y xsensors
sudo dnf install -y flex bison gperf
sudo dnf install -y net-tools
sudo dnf install -y jq

sudo dnf install -y qemu
sudo dnf install -y qemu-kvm libvirt virt-install bridge-utils

sudo dnf install -y zathura mupdf
sudo dnf install -y fontconfig
sudo dnf install -y stress
sudo dnf install -y fira-code-fonts
sudo dnf install -y v4l2loopback


sudo dnf install -y obs-studio
sudo dnf install -y obs-studio-libs

sudo dnf swap ffmpeg ffmpeg-free --allowerasing
sudo dnf groupupdate multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin

# hardware codecs for AMD
# sudo dnf swap mesa-va-drivers mesa-va-drivers-freeworld
# sudo dnf swap mesa-vdpau-drivers mesa-vdpau-drivers-freeworld

# Hardware codecs with AMD (mesa)

# Using the rpmfusion-free section This is needed since Fedora 37 and later... and mainly concern AMD hardware since NVIDIA hardware with nouveau doesn't work well

sudo dnf install mesa-va-drivers-freeworld -y

sudo dnf swap mesa-va-drivers mesa-va-drivers-freeworld
sudo dnf swap mesa-vdpau-drivers mesa-vdpau-drivers-freeworld

# If using i686 compat libraries (for steam or alikes):

# sudo dnf swap mesa-va-drivers.i686 mesa-va-drivers-freeworld.i686
# sudo dnf swap mesa-vdpau-drivers.i686 mesa-vdpau-drivers-freeworld.i686

sudo dnf install rpmfusion-nonfree-release-tainted
sudo dnf --repo=rpmfusion-nonfree-tainted install "*-firmware"
