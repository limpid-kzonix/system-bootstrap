-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.font = wezterm.font 'FuraMono Nerd Font Mono'
config.color_scheme = 'Grandshell (terminal.sexy)'
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
config.set_environment_variables = {
  -- This changes the default prompt for cmd.exe to report the
  -- current directory using OSC 7, show the current time and
  -- the current directory colored in the prompt.
  -- WITH_TMUX = 'true',
}

-- Spawn a fish shell in login mode
config.default_prog = { 'zellij' }




-- and finally, return the configuration to wezterm
return config
