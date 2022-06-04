local null_ls = require 'null-ls'
local b = null_ls.builtins

local M = {}

local sources = { -- scalafmt
b.formatting.scalafmt.with {
    filetypes = {'scala', 'sbt'}
}, -- prettierd
b.formatting.prettierd.with {
    filetypes = {'html', 'markdown', 'css'}
}, -- deno
b.formatting.deno_fmt, -- Lua   
b.formatting.stylua, b.diagnostics.luacheck.with {
    extra_args = {'--global vim'}
}, -- Shell  
b.formatting.shfmt, b.diagnostics.shellcheck.with {
    diagnostics_format = '#{m} [#{c}]'
}}
M.setup = function()
    null_ls.setup {
        debug = true,
        sources = sources,
        -- format on save      
        on_attach = function(client)
            if client.server_capabilities.document_formatting then
                vim.cmd 'autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()'
            end
        end
    }
end

return M
