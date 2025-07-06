return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        opts.mappings.n["<Leader>fW"] = {
          function()
            require("telescope.builtin").live_grep {
              additional_args = function(_) return { "--hidden", "--no-ignore" } end,
            }
          end,
          desc = "Find words in all files",
        }
      end,
    },
  },
}
