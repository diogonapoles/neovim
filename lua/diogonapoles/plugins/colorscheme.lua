return {
	"sainnhe/gruvbox-material",
	priority = 1000,
	config = function()
		vim.g.gruvbox_material_transparent_background = 1
		vim.g.gruvbox_material_background = "hard"
		vim.g.gruvbox_material_foreground = "mix"
		vim.g.gruvbox_material_ui_contrast = "hard"
		vim.cmd("colorscheme gruvbox-material")
	end,
}

-- return {
-- 	"ellisonleao/gruvbox.nvim",
-- 	priority = 1000,
-- 	config = true,
-- 	opts = {
-- 		contrast = "hard",
-- 		transparent_mode = true,
-- 	},
-- }

-- return {
-- 	"neanias/everforest-nvim",
-- 	version = false,
-- 	lazy = false,
-- 	priority = 1000,
-- 	-- Optional; default configuration will be used if setup isn't called.
-- 	config = function()
-- 		require("everforest").setup({
-- 			-- Your config here
-- 		})
-- 	end,
-- }
