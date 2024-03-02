-- vim.cmd [[packadd packer.nvim]]
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

return require("lazy").setup({
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{
		"stevearc/dressing.nvim",
		opts = {},
	},

	{
		"sainnhe/gruvbox-material",
		config = function()
			vim.g.gruvbox_material_transparent_background = 1
			vim.g.gruvbox_material_background = "hard"
			vim.g.gruvbox_material_foreground = "mix"
			vim.g.gruvbox_material_ui_contrast = "hard"
			vim.cmd("colorscheme gruvbox-material")
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		version = nil,
		build = ":TSUpdate",
	},

	{
		"zbirenbaum/copilot.lua",
		lazy = false,
	},

	{
		"zbirenbaum/copilot-cmp",
		config = function()
			require("copilot_cmp").setup()
		end,
	},

	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
	},
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"L3MON4D3/LuaSnip",

	"onsails/lspkind.nvim",

	"tpope/vim-fugitive",

	"nvim-tree/nvim-web-devicons",
	"nvim-tree/nvim-tree.lua",

	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
	},

	"hoob3rt/lualine.nvim",
	"numToStr/Comment.nvim",

	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_command_for_global = 1
		end,
		ft = { "markdown", "plantuml" },
	},

	"lewis6991/gitsigns.nvim",

	"aklt/plantuml-syntax",

	"mhartington/formatter.nvim",

	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
	},

	"lervag/vimtex",
})
