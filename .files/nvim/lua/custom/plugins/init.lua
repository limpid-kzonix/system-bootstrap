return {
    ["scalameta/nvim-metals"] = {
        requires = {"nvim-lua/plenary.nvim", "mfussenegger/nvim-dap"}
    },
    ["jose-elias-alvarez/null-ls.nvim"] = {
        after = "nvim-lspconfig",
        config = function()
            require("custom.configs.null-ls").setup()
        end
    }
}
