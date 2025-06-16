#!/usr/bin/env zsh

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

curl -s "https://get.sdkman.io" | bash 

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

curl https://pyenv.run | bash

curl -sSL https://install.python-poetry.org | python3 -

curl -sS https://starship.rs/install.sh | sh

curl -fsSL https://get.pnpm.io/install.sh | sh -

curl -fsSL https://install.julialang.org | sh

curl -fsS https://dotenvx.sh | sh
