require('configs.options')

-- Plug function from the plugin manager
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Configuration for nvim lsp
Plug 'neovim/nvim-lspconfig'

-- Theme
Plug('folke/tokyonight.nvim', { branch = 'main' })

-- Completion
Plug "hrsh7th/nvim-cmp"
Plug "hrsh7th/cmp-buffer"
Plug "hrsh7th/cmp-path"
Plug "hrsh7th/cmp-nvim-lsp"
Plug "hrsh7th/cmp-nvim-lua"

-- Snippets
Plug "saadparwaiz1/cmp_luasnip"

-- Telescope
Plug "nvim-lua/plenary.nvim"
Plug("nvim-telescope/telescope.nvim", { tag = '0.1.0' })

vim.call('plug#end')

vim.cmd[[
	syntax enable
	colorscheme tokyonight-night
	let mapleader=" "
	syntax on
]]

-- Initialize the lsp config
require('plugins.lsp')
require('plugins.completion')
require('plugins.telescope')

