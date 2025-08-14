
#!/usr/bin/env zsh

# openSUSE Setup Script using Zypper
sudo zypper --non-interactive dup --from packman --allow-vendor-change
#
# Run these Packman commands manually *before* running the rest of the script
# or parts of the script that rely on Packman packages (like ffmpeg, vlc, obs).
echo "------------------------------------------------------------------"
echo "IMPORTANT: Ensure the Packman repository is added and packages"
echo "are switched (sudo zypper dup --from packman --allow-vendor-change)"
echo "for full multimedia functionality before proceeding with installs"
echo "like ffmpeg, vlc, obs-studio, and gstreamer plugins."
echo "See comments in the script or visit:"
echo "https://en.opensuse.org/Additional_package_repositories#Packman"
echo "------------------------------------------------------------------"
# Add a small pause to allow reading the message
sleep 5

# --- Basic Applications ---
echo "Installing Alacritty, bat..."
sudo zypper --non-interactive install alacritty bat

# --- Media Players and Libraries ---
# Note: vlc and ffmpeg achieve best functionality from Packman repository
echo "Installing VLC, GStreamer plugins, ffmpeg..."
sudo zypper --non-interactive install vlc

# --- Hardware Video Acceleration (VAAPI/VDPAU) ---
echo "Installing VAAPI/VDPAU libraries and tools..."
# Core VAAPI/VDPAU libs
sudo zypper --non-interactive install libva1 libva-utils libvdpau1 mpv
# Mesa drivers provide acceleration for AMD/Intel open-source drivers
sudo zypper --non-interactive install Mesa-dri Mesa-gallium Mesa-libva  GStreamer integration
sudo zypper --non-interactive install gstreamer-plugins-vaapi
# VDPAU<->VAAPI bridge
sudo zypper --non-interactive install libvdpau_va_gl1

# --- GPU Specific Tools ---
echo "Checking for AMD/Intel GPUs and installing specific tools..."
if lspci | grep -i amd | grep -i vga > /dev/null; then
    echo "AMD GPU found. Installing radeontop..."
    sudo zypper --non-interactive install radeontop
fi

if lspci | grep -i intel | grep -i vga > /dev/null; then
    echo "Intel GPU found. Installing intel-media-driver and intel-gpu-tools..."
    # intel-media-driver is often preferred for newer Intel GPUs (Gen 8+)
    sudo zypper --non-interactive install libva-intel-driver intel-gpu-tools
fi

# --- Development Tools ---
echo "Installing core development tools (compilers, build systems, libs)..."

sudo zypper --non-interactive install python3-pipx
# Base development pattern
sudo zypper --non-interactive install -t pattern devel_basis
# Specific compilers and tools
sudo zypper --non-interactive install llvm jq clang make cmake ninja ccache lld lldb clang-tools
# Development libraries (ensure -devel suffix)
sudo zypper --non-interactive install libffi-devel openssl-devel readline-devel zlib-devel
# Other build tools
sudo zypper --non-interactive install flex bison gperf meson ninja dfu-util unzip

# --- System Monitoring and Utilities ---
echo "Installing system utilities (stacer, xsensors, net-tools, jq)..."
# Stacer might require adding a specific OBS repository. Check manually if needed.
# echo "Attempting to install stacer (may require external repo)..."
# sudo zypper --non-interactive install stacer # Commented out - check repo first
echo "Installing lm_sensors (provides sensors command, xsensors might not be packaged)..."
sudo zypper --non-interactive install lm_sensors # Use 'sensors' command
sudo zypper --non-interactive install net-tools-deprecated # For ifconfig, netstat etc.
sudo zypper --non-interactive install jq # Already installed via devel_basis pattern, but ensures it's there

# --- Virtualization ---
echo "Installing QEMU/KVM and Libvirt..."
sudo zypper --non-interactive install qemu-kvm libvirt-daemon-driver-qemu virt-install bridge-utils libvirt-client

# --- Document Viewer ---
echo "Installing Zathura with MuPDF backend..."
sudo zypper --non-interactive install zathura zathura-pdf-mupdf

# --- Fonts and Font Handling ---
echo "Installing Fontconfig and Fira Code Fonts..."
sudo zypper --non-interactive install fontconfig fira-code-fonts

# --- System Stress Testing ---
echo "Installing stress..."
sudo zypper --non-interactive install stress

# --- Video Tools ---
echo "Installing v4l2loopback and OBS Studio..."
# v4l2loopback might require kernel headers/devel if not pre-built
sudo zypper --non-interactive install kernel-devel # Ensure kernel headers are present for module builds
sudo zypper --non-interactive install v4l2loopback

# --- Multimedia Group/Pattern Update ---
# This approximates the 'dnf groupupdate multimedia'
# It ensures common multimedia libraries and codecs are present.
# Using Packman is still the preferred way for proprietary codecs.
echo "Ensuring multimedia pattern is installed..."
sudo zypper --non-interactive install -t pattern multimedia
# Optional: Lock PackageKit GStreamer plugin if it causes issues
# sudo zypper addlock PackageKit-gstreamer-plugin

# --- Hardware Codecs/Drivers (Mesa - AMD/Intel) ---
# Ensures Mesa drivers for hardware acceleration are installed.
# Most should be covered by earlier Mesa installs, but this is explicit.
echo "Ensuring Mesa drivers for hardware acceleration are installed..."
sudo zypper --non-interactive install Mesa Mesa-dri Mesa-gallium Mesa-libEGL1 Mesa-libGL1 Mesa-libgbm1 Mesa-libglapi0 Mesa-libva Mesa-vdpau

# --- Firmware ---
# Installing all firmware is generally safe and recommended.
# The 'rpmfusion-nonfree-release-tainted' and specific firmware install
# from the Fedora script corresponds roughly to this in openSUSE.
echo "Installing kernel firmware..."
sudo zypper --non-interactive install kernel-firmware-all

# --- Development Libraries for GUI/Graphics ---
echo "Installing X11 and GTK development libraries..."
# GTK libs
sudo zypper --non-interactive install gtk3-devel
sudo zypper --non-interactive install gtk4-devel
# WebKitGTK libs (check specific version if needed)
sudo zypper --non-interactive install webkit2gtk3-devel webkit2gtk4-devel # Install for both GTK3 and GTK4

# --- TeX Live ---
echo "Installing basic TeX Live packages..."
sudo zypper --non-interactive install texlive-scheme-basic texlive-xetex

# --- Other Utilities ---
echo "Installing wl-clipboard and yq..."
sudo zypper --non-interactive install wl-clipboard # Wayland clipboard utility
sudo zypper --non-interactive install yq # YAML processor

sudo zypper install hyperfine
echo "-----------------------------------------------------"
echo "Script finished."
echo "-----------------------------------------------------"

sudo zypper in mpv
sudo zypper in wf-recorder
sudo zypper in wireplumber
sudo zypper in wireplumber-devel
sudo zypper install 1password
sudo zypper install git
sudo zypper install libsecret
sudo zypper install git-credential-libsecret
sudo zypper install curl wget
sudo zypper install v4l2loopback
sudo zypper install v4l2loopback-kmp-default
sudo zypper in xdg-desktop-portal
sudo zypper in xdg-desktop-portal xdg-desktop-portal-gtk
sudo zypper in xdg-desktop-portal-wlr

sudo zypper install fastfetch
sudo zypper in thunar
sudo zypper in fontawesome-fonts
sudo zypper in papirus-icon-theme

sudo zypper in kitty # Kitty is a GPU-based terminal emulator
sudo zypper in yazi # Yazi is a terminal-based file manager 

sudo zypper in 7zip zoxide

sudo zypper in mupdf zathura
sudo zypper install asciinema
