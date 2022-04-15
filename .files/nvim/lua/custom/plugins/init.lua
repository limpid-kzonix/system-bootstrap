return {
	{
		"scalameta/nvim-metals",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"nathom/filetype.nvim",
	           },
	{
		"jose-elias-alvarez/null-ls.nvim",
		after = "nvim-lspconfig",
		config = function()
			require("custom.configs.null-ls-config").setup()
		end,
	},
}
