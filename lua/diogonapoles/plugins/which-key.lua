return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		-- defaults = {
		-- {
		-- 	e = {
		-- 		name = "File",
		-- 	},
		-- },
		-- { prefix = "<leader>" },
		-- },
	},
}
