--- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

local map = vim.keymap.set

return {
  "scalameta/nvim-metals",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  ft = { "scala", "sbt", "java" },
  opts = function()
    local metals_config = require("metals").bare_config()
    metals_config.on_attach = function(client, bufnr)
      map("n", "<leader>ws", function() require("metals").hover_worksheet() end)
    end

    return metals_config
  end,
  config = function(self, metals_config)
    local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
    vim.api.nvim_create_autocmd("FileType", {
      pattern = self.ft,
      callback = function() require("metals").initialize_or_attach(metals_config) end,
      group = nvim_metals_group,
    })
  end,
}

