require("notivee.remap")
require("notivee.set")
require("notivee.plugins")

require('lspconfig/prolog_ls')
require('lspconfig').prolog_ls.setup{}

-- clipboard
vim.opt.clipboard:append { 'unnamedplus' }
