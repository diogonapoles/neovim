vim.cmd("filetype plugin indent on")
vim.cmd("syntax enable")

-- latex config
vim.g["vimtex_view_method"] = "skim" -- for variant without xdotool to avoid errors in wayland
vim.g["vimtex_quickfix_mode"] = 0 -- suppress error reporting on save and build
vim.g["vimtex_mappings_enabled"] = 0 -- Ignore mappings
vim.g["vimtex_indent_enabled"] = 0 -- Auto Indent
vim.g["tex_flavor"] = "latex" -- how to read tex files
vim.g["tex_indent_items"] = 0 -- turn off enumerate indent
vim.g["tex_indent_brace"] = 0 -- turn off brace indent
vim.g["vimtex_context_pdf_viewer"] = "skim" -- external PDF viewer run from vimtex menu command
vim.g["vimtex_log_ignore"] = { -- Error suppression:
	"Underfull",
	"Overfull",
	"specifier changed to",
	"Token not allowed in a PDF string",
}

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.cursorline = true
vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.inccommand = "split"

vim.opt.formatoptions:append({ "r" })
vim.opt.iskeyword:append({ "-" })

vim.opt.updatetime = 50

vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = "set nopaste",
})
