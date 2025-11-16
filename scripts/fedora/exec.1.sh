#!/usr/bin/env zsh

sudo dnf -y install alacritty
sudo dnf -y install bat
# media
sudo dnf -y install vlc
sudo dnf -y install gstreamer1-plugins-{good-\*,base} gstreamer1-plugin-openh264 --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf -y install ffmpeg --allowerasing
sudo dnf -y install ffmpeg-devel --allowerasing

sudo dnf install libva-utils
sudo dnf install libva libva-utils gstreamer1-vaapi mesa-dri-drivers mpv
sudo dnf install libva-vdpau-driver libvdpau-va-gl libva-utils

if lspci | grep -i amd | grep -i vga > /dev/null; then
    echo "AMD GPU found."
    sudo dnf install radeontop
fi

if lspci | grep -i intel | grep -i vga > /dev/null; then
    echo "Intel GPU found."
    sudo dnf install intel-media-driver
fi

#ui
sudo dnf -y install gnome-tweaks gnome-extensions-app
sudo dnf -y install pipx
#others
sudo dnf install -y llvm jq g++ gcc make readline-devel clang make cmake clang clangd clang-format clang-analyzer llvm-devel clang-devel lld lldb compiler-rt clang-tools-extra
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


sudo dnf install -y obs-studio obs-studio-libs

sudo dnf swap ffmpeg-free ffmpeg --allowerasing
sudo dnf groupupdate multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin


sudo dnf -y install ffmpeg --allowerasing
sudo dnf -y install ffmpeg-devel --allowerasing

# Hardware codecs with AMD (mesa)

# Using the rpmfusion-free section This is needed since Fedora 37 and later... and mainly concern AMD hardware since NVIDIA hardware with nouveau doesn't work well

sudo dnf install mesa-va-drivers mesa-vdpau-drivers mesa-dri-drivers mesa-filesystem mesa-filesystem mesa-libEGL mesa-libGL mesa-libGL-devel mesa-libgbm mesa-libglapi -y

# sudo dnf install rpmfusion-nonfree-release-tainted
# sudo dnf --repo=rpmfusion-nonfree-tainted install "*-firmware"


sudo dnf install gcc libXcursor-devel libXrandr-devel mesa-libGL-devel libXi-devel libXinerama-devel libXxf86vm- -y
sudo dnf install gtk3-devel -y
sudo dnf install gtk4 gtk4-devel gobject-introspection gobject-introspection-devel -y
sudo dnf install webkit2gtk4.0-devel -y

sudo dnf install texlive-base texlive-xetex -y
sudo dnf install mesa-libOSMesa -y

sudo dnf install wl-clipboard -y
sudo dnf install yq -y

sudo dnf install crystal -y

sudo dnf install kitty -y

sudo dnf install hyperfine -y

sudo dnf install asciinema gdu fastfetch libsecret libsecret-devel libgnome-keyring -y
