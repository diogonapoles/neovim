return {
	{
		"sainnhe/gruvbox-material",
		priority = 1000,
		config = function()
			-- if vim.loop.os_uname().sysname == "Darwin" then
			vim.g.gruvbox_material_transparent_background = 1
			vim.g.gruvbox_material_background = "hard"
			vim.g.gruvbox_material_foreground = "mix"
			vim.g.gruvbox_material_ui_contrast = "hard"
			vim.cmd("colorscheme gruvbox-material")
			-- end
		end,
	},
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		if vim.loop.os_uname().sysname ~= "Darwin" then
	-- 			require("catppuccin").setup({
	-- 				flavour = "mocha", -- latte, frappe, macchiato, mocha
	-- 				background = { -- :h background
	-- 					light = "latte",
	-- 					dark = "mocha",
	-- 				},
	-- 				transparent_background = true,
	-- 			})
	-- 			vim.cmd("colorscheme catppuccin")
	-- 		end
	-- 	end,
	-- },
}
