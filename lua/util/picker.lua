-- retrieved from: https://gitlab.com/sairy/neovim
--        _      _              --
--  _ __ (_) ___| | _____ _ __  --
-- | '_ \| |/ __| |/ / _ \ '__| --
-- | |_) | | (__|   <  __/ |    --
-- | .__/|_|\___|_|\_\___|_|    --
-- |_|                          --

---@class picker
local M = {}

---@class picker.data
---@field names string[]
---@field vim_action? string[]
---@field lua_action? fun()[]

---@alias picker.telescope.theme 'cursor'|'ivy'|'dropdown'

---@class picker.args
---@field telescope_picker? fun(opts: table)|picker.telescope.theme
---@field telescope_args?   table

---@param data picker.data?
---@return picker.data
local function new_data(data)
	data = data or {}

	return {
		names = data.names or {},
		vim_action = data.vim_action or {},
		lua_action = data.lua_action or {},
	}
end

---@param data picker.data?
---@param prompt string?
---@param opts picker.args?
---@return fun() # function that runs the picker
M.new = function(data, prompt, opts)
	data = new_data(data)
	opts = opts or {}

	return function()
		local telescope = require("telescope.themes")
		local tfun = opts.telescope_picker or telescope.get_cursor

		if type(tfun) == "string" and telescope["get_" .. tfun] then
			tfun = telescope["get_" .. tfun] --[[@as fun(opts: table)]]
		end

		if #data.names == 0 then
			vim.notify("Nothing to choose from!", vim.log.levels.WARN)
			return
		end

		---@format disable-next
		vim.ui.select(data.names, {
			prompt = prompt or "Choose an action",
			telescope = tfun(opts.telescope_args),
		}, function(_, idx)
			if not idx then
				return
			end

			if data.lua_action[idx] then
				data.lua_action[idx]()
			elseif data.vim_action[idx] then
				vim.cmd(data.vim_action[idx])
			end
		end)
	end
end

---for type annotations to work
---@overload fun(data: picker.data?, prompt: string?, opts: picker.args?):fun()
local _M = setmetatable(M, {
	__call = function(_, ...)
		return M.new(...)
	end,
})
---@cast _M -table
return _M
