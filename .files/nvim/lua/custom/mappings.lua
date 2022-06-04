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
        [",rn"] = {function()
            vim.lsp.buf.rename()
        end, "lsp rename"},
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
        [",fm"] = {"<cmd>lua vim.lsp.buf.format() <CR>"},
        [",oi"] = {"<cmd> MetalsOrganizeImports <CR>"},
        [",ca"] = {"<cmd>lua vim.lsp.buf.code_action() <CR>"},
        [",hw"] = {'<cmd>lua require"metals".hover_worksheet() <CR>'},
        ["[da"] = {[[<cmd>lua vim.diagnostic.setqflist() <CR>]]},
        ["[de"] = {[[<cmd>lua vim.diagnostic.setqflist({ severity = "E" }) <CR>]]},
        ["[dw"] = {[[<cmd>lua vim.diagnostic.setqflist({severity = "W" }) <CR>]]},
        ["[di"] = {"<cmd>lua vim.diagnostic.setloclist() <CR>"},
        ["[c"] = {"<cmd>lua vim.diagnostic.goto_prev {wrap = false} <CR>"},
        ["]c"] = {"<cmd>lua vim.diagnostic.goto_next {wrap = false}<CR>"}
    }
}

return M