#!/usr/bin/env zsh

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

curl -s "https://get.sdkman.io" | bash 

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

curl https://pyenv.run | bash

curl -sSL https://install.python-poetry.org | python3 -

curl -sS https://starship.rs/install.sh | sh

curl -fsSL https://get.pnpm.io/install.sh | sh -

curl -fsSL https://install.julialang.org | sh

curl -sfS https://dotenvx.sh\?directory\=/home/worxbend/.local/bin | sh

curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3-$(uname)-$(uname -m).sh
rm Miniforge3-$(uname)-$(uname -m).sh

curl -LsSf https://astral.sh/uv/install.sh | sh
