#!/usr/bin/env zsh

# TODO: Tue 12 Apr - Please update me in case of changes in upstream repo.

FONT_DIR=${HOME}/.fonts
mkdir -p $FONT_DIR

echo $FONT_DIR

sudo apt install -y wget 
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Noto/Serif/complete/Noto%20Serif%20Bold%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Noto/Serif/complete/Noto%20Serif%20Bold%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Noto/Serif/complete/Noto%20Serif%20Regular%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Noto/Serif/complete/Noto%20Serif%20Regular%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Noto/Serif/complete/Noto%20Serif%20Thin%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Noto/Serif/complete/Noto%20Serif%20Thin%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Noto/Mono/complete/Noto%20Mono%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Noto/Mono/complete/Noto%20Mono%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Ubuntu/Medium/complete/Ubuntu%20Medium%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Ubuntu/Medium/complete/Ubuntu%20Medium%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Ubuntu/Light/complete/Ubuntu%20Light%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Ubuntu/Light/complete/Ubuntu%20Light%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Ubuntu/Regular/complete/Ubuntu%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Ubuntu/Regular/complete/Ubuntu%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Light/complete/M%2B%202p%20light%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Light/complete/M%2B%202p%20light%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Light/complete/M%2B%202c%20light%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Light/complete/M%2B%202c%20light%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Light/complete/M%2B%201p%20light%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Light/complete/M%2B%201p%20light%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Light/complete/M%2B%201mn%20light%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Light/complete/M%2B%201mn%20light%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Light/complete/M%2B%201m%20light%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Light/complete/M%2B%201c%20light%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Heavy/complete/M%2B%201c%20heavy%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Heavy/complete/M%2B%201c%20heavy%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Heavy/complete/M%2B%202c%20heavy%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Heavy/complete/M%2B%202c%20heavy%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Medium/complete/M%2B%201c%20medium%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Medium/complete/M%2B%201p%20medium%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Medium/complete/M%2B%201p%20medium%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Medium/complete/M%2B%201p%20medium%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/MPlus/Regular/complete/M%2B%201p%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/JetBrainsMono/Ligatures/Regular/complete/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/JetBrainsMono/Ligatures/Regular/complete/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/JetBrainsMono/Ligatures/SemiBold/complete/JetBrains%20Mono%20SemiBold%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/JetBrainsMono/Ligatures/SemiBold/complete/JetBrains%20Mono%20SemiBold%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/JetBrainsMono/Ligatures/SemiBold/complete/JetBrains%20Mono%20ExtraBold%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/JetBrainsMono/Ligatures/SemiBold/complete/JetBrains%20Mono%20ExtraBold%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/JetBrainsMono/Ligatures/SemiBold/complete/JetBrains%20Mono%20Bold%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/JetBrainsMono/Ligatures/SemiBold/complete/JetBrains%20Mono%20Bold%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Retina/complete/Fira%20Code%20Retina%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Retina/complete/Fira%20Code%20Retina%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Retina/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Retina/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Retina/complete/Fira%20Code%20Medium%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Retina/complete/Fira%20Code%20Medium%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}


wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Retina/complete/Fira%20Code%20Bold%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Retina/complete/Fira%20Code%20Bold%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}


wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Retina/complete/Fira%20Code%20SemiBold%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Retina/complete/Fira%20Code%20SemiBold%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraMono/Regular/complete/Fura%20Mono%20Regular%20Nerd%20Font%20Complete%20Mono.otf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraMono/Regular/complete/Fura%20Mono%20Regular%20Nerd%20Font%20Complete.otf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/CascadiaCode/Regular/complete/Caskaydia%20Cove%20Regular%20Nerd%20Font%20Complete.otf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/CascadiaCode/Regular/complete/Caskaydia%20Cove%20Regular%20Nerd%20Font%20Complete%20Mono.otf" -P ${FONT_DIR}

wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Meslo/M/Regular/complete/Meslo%20LG%20M%20Regular%20Nerd%20Font%20Complete%20Mono.ttf" -P ${FONT_DIR}
wget "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Meslo/M/Regular/complete/Meslo%20LG%20M%20Regular%20Nerd%20Font%20Complete.ttf" -P ${FONT_DIR}

sudo fc-cache -vf
