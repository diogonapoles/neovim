vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use ('wbthomason/packer.nvim')
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'sainnhe/gruvbox-material',
    config = function()
      vim.g.gruvbox_material_transparent_background = 1
      vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_foreground = 'mix'
      vim.g.gruvbox_material_ui_contrast = 'hard'
      vim.cmd('colorscheme gruvbox-material')
    end,
  }
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('tpope/vim-fugitive')
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  }
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'

  -- use {'akinsho/bufferline.nvim', tag = "v1.*", requires = 'nvim-tree/nvim-web-devicons'}
  use 'hoob3rt/lualine.nvim'

  use 'numToStr/Comment.nvim'

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_command_for_global = 1 end })
end)
