require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"c",
		"lua",
		"python",
		"angular",
		"typescript",
		"javascript",
		"java",
		"rust",
		"haskell",
		"vim",
		"vimdoc",
		"query",
		"gitcommit",
		"gitignore",
		"git_config",
	},

	sync_install = false,

	highlight = {
		enable = true,

		additional_vim_regex_highlighting = false,
	},

	indent = { enable = true },
})
