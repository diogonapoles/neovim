local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local function maybe_shorten(str, alt)
	--- output of `vim.fn.winwidth(0)` w/ my dwm
	--- when neovim is in the master window
	local masterwidth = 103

	if vim.fn.winwidth(0) <= masterwidth then
		return type(alt) == "string" and alt or alt()
	end

	return str
end

local function repo_name()
	local fp = vim.fn.system({ "git", "rev-parse", "--show-toplevel" })
	return vim.fn.fnamemodify(fp:gsub("\n", ""), ":t") or "git"
end

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "gruvbox",
		section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "" },
		disabled_filetypes = {},
	},
	sections = {
		lualine_a = {
			{
				"mode",
				---@param teste string
				---@return string
				fmt = function(teste)
					local teste2 = teste:lower()
					local t = {
						normal = "",
						insert = "",
						terminal = "",
						command = "",
						replace = "",
						visual = "",
						selet = "",
						["o-pending"] = "",
					}
					if not t[teste2] then
						return teste
					end
					return string.format("%s %s", t[teste2], teste)
				end,
			},
		},
		lualine_b = {
			{
				"branch",
				icon = "",
				---@param branch string
				fmt = function(branch)
					local maxlen = 20
					if #branch > maxlen then
						return maybe_shorten(branch, repo_name)
					end

					return branch
				end,
			},
		},
		lualine_c = {
			{
				"filename",
				file_status = true, -- displays file status (readonly status, modified status)
				path = 0, -- 0 = just filename, 1 = relative path, 2 = absolute path
			},
		},
		lualine_x = {
			{
				"diagnostics",
				sources = { "nvim_diagnostic" },
				symbols = {
					error = " ",
					warn = " ",
					info = " ",
					hint = " ",
				},
			},
			"encoding",
			"filetype",
		},
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {
			{
				"filename",
				file_status = true, -- displays file status (readonly status, modified status)
				path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
			},
		},
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = { "fugitive" },
})
