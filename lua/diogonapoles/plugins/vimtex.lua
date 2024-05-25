return {
	"lervag/vimtex",
	lazy = false,
	-- tag = "v2.15", -- uncomment to pin to a specific release
	init = function()
		vim.cmd("filetype plugin indent on")
		vim.cmd("syntax enable")

		local pdf_viewer = vim.fn.has("macunix") == 1 and "skim" or "zathura"
		vim.g["vimtex_view_method"] = pdf_viewer
		vim.g["vimtex_context_pdf_viewer"] = pdf_viewer

		vim.g["vimtex_quickfix_mode"] = 0
		vim.g["vimtex_mappings_enabled"] = 0 -- Ignore mappings
		vim.g["vimtex_indent_enabled"] = 0 -- Auto Indent

		vim.g["tex_flavor"] = "latex" -- how to read tex files

		vim.g["tex_indent_items"] = 0 -- turn off enumerate indent
		vim.g["tex_indent_brace"] = 0 -- turn off brace indent
		vim.g["vimtex_log_ignore"] = { -- Error suppression:
			"Underfull",
			"Overfull",
			"specifier changed to",
			"Token not allowed in a PDF string",
		}
	end,
}
