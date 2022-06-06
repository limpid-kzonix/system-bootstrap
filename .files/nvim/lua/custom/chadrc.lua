-- Just an example, supposed to be placed in /lua/custom/
local userPlugins = require 'custom.plugins' -- path to table
local nvimtreeConfigs = require "custom.configs.nvimtree-config.init"
local treesitterConfigs = require "custom.configs.treesitter-config.init"

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
    timeoutlen = 400,
    updatetime = 250
}

M.mappings = require "custom.mappings"

M.ui = {
    theme = "onedark"
}

M.plugins = {
    user = require "custom.plugins",
    override = {
        ["nvim-treesitter/nvim-treesitter"] = treesitterConfigs.treesitter,
        ["kyazdani42/nvim-tree.lua"] = nvimtreeConfigs.nvimtree,
     },
}

return M
