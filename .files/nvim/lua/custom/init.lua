local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt

vim.opt_global.completeopt = { "menuone", "noinsert", "noselect" }
vim.opt_global.shortmess:remove("F"):append("c")

autocmd("FileType", {
    pattern = {"scala", "sbt", "java" },
    callback = function()
        metals_config = require'metals'.bare_config()
        metals_config.settings = {
            showImplicitArguments = true,
            excludedPackages = {"akka.actor.typed.javadsl", "com.github.swagger.akka.javadsl"}
        }

        metals_config.on_attach = function()
            require'completion'.on_attach();
        end

        metals_config.handlers["textDocument/publishDiagnostics"] =
            vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
                virtual_text = {
                    prefix = ''
                }
            })
        require("metals").initialize_or_attach(metals_config)
    end,
})
