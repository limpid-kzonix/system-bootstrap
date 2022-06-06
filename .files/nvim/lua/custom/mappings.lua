local M = {}

M.metals = {
    n = {
        [",gD"] = {function()
            vim.lsp.buf.definition()
        end, "   lsp references"},
        [",k"] = {function()
            vim.lsp.buf.hover()
        end, "   lsp references"},
        [",gi"] = {function()
            vim.lsp.buf.implementation()
        end, "   lsp references"},
        [",gr"] = {function()
            vim.lsp.buf.references()
        end, "   lsp references"},
        [",rn"] = {function() vim.lsp.buf.rename() end, "lsp rename"},
        [",gds"] = {function()
            vim.lsp.buf.document_symbol()
        end, "lsp rename"},
        [",gws"] = {function()
            vim.lsp.buf.workspace_symbol()
        end, "lsp rename"},
        [",cl"] = {function()
            vim.lsp.codelens.run()
        end, "lsp rename"},
        [",sh"] = {function()
            vim.lsp.buf.signature_help()
        end, "lsp rename"},
        [",fm"] = {function()
            vim.lsp.buf.formatting()
        end, "lsp rename"},
        [",oi"] = {"<cmd> :MetalsOrganizeImports <CR>"},
        [",ca"] = {function ()
            vim.lsp.buf.code_action()
        end},
        [",hw"] = {function ()
            require"metals".hover_worksheet()
        end},
        ["[da"] = {[[<cmd>lua vim.diagnostic.setqflist() <CR>]]},
        ["[de"] = {[[<cmd>lua vim.diagnostic.setqflist({ severity = "E" }) <CR>]]},
        ["[dw"] = {[[<cmd>lua vim.diagnostic.setqflist({severity = "W" }) <CR>]]},
        ["[di"] = {"<cmd>lua vim.diagnostic.setloclist() <CR>"},
        ["[c"] = {"<cmd>lua vim.diagnostic.goto_prev {wrap = false} <CR>"},
        ["]c"] = {"<cmd>lua vim.diagnostic.goto_next {wrap = false}<CR>"}
    }
}

return M