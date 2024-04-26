local highlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None"
local input = {
	enabled = true,
	default_prompt = "input:",
	prompt_align = "left",
	insert_only = true,
	start_in_insert = true,
	border = "rounded",
	relative = "cursor",
	prefer_width = 40,
	width = nil,
	max_width = { 140, 0.9 },
	min_width = { 20, 0.2 },

	win_options = {
		winblend = 0, --10,
		winhighlight = highlight,
	},

	mappings = {
		n = {
			["<Esc>"] = "Close",
			["<CR>"] = "Confirm",
		},
		i = {
			["<Esc>"] = "Close",
			["<CR>"] = "Confirm",
			["<Up>"] = "HistoryPrev",
			["<Down>"] = "HistoryNext",
		},
	},

	override = function(conf)
		return conf
	end,
	get_config = nil,
}
local select = {
	enabled = true,
	backend = { "telescope", "builtin", "nui" },
	trim_prompt = true,

	telescope = nil,

	builtin = {
		border = "rounded",
		relative = "editor",

		win_options = {
			winblend = 0, --10,
			winhighlight = highlight,
		},

		width = nil,
		max_width = { 140, 0.8 },
		min_width = { 40, 0.2 },
		height = nil,
		max_height = 0.9,
		min_height = { 10, 0.2 },

		mappings = {
			["<Esc>"] = "Close",
			["<C-c>"] = "Close",
			["<CR>"] = "Confirm",
		},

		override = function(conf)
			return conf
		end,
	},

	nui = {
		position = "50%",
		size = nil,
		relative = "editor",
		border = { style = "rounded" },
		buf_options = {
			swapfile = false,
			filetype = "DressingSelect",
		},
		win_options = {
			winblend = 0, --10,
			winhighlight = highlight,
		},
		max_width = 80,
		min_width = 40,
		max_height = 40,
		min_height = 10,
	},

	format_item_override = {},
	get_config = nil,
}

return {
	"stevearc/dressing.nvim",
	event = "VeryLazy",
	opts = {
		input = input,
		select = select,
	},
}
