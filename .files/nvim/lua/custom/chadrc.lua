-- Just an example, supposed to be placed in /lua/custom/
local userPlugins = require 'custom.plugins' -- path to table

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
    timeoutlen = 800,
    updatetime = 550
}

M.mappings = {
    plugins = {
        lspconfig = {
            formatting = '<leader>sfm'
        }
    }
}

M.ui = {
    theme = "doom-chad"
}

M.plugins = {
    install = userPlugins
}

return M
