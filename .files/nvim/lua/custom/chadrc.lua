-- Just an example, supposed to be placed in /lua/custom/
local userPlugins = require 'custom.plugins' -- path to table

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
    timeoutlen = 400,
    updatetime = 250
}

M.mappings = {
    plugins = {
        lspconfig = {
            formatting = '<leader>sfm'
        }
    }
}

M.ui = {
    theme = "gruvbox"
}

M.plugins = {
    install = userPlugins
}

return M
