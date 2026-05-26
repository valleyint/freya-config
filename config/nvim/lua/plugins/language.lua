return {
	{
		"williamboman/mason.nvim",
		config = true,
	},
	{
		"neovim/nvim-lspconfig",
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "gopls", "pyright", "clangd" },
		},
		dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
	},
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"markdown",
				"markdown_inline",
				"cpp",
				"go",
				"python",
				"rust",
				"html",
				"css",
				"javascript",
				"typescript",
				"json",
			},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
			},
		},
	},
}
