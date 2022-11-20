require('configs.options')

-- Plug function from the plugin manager
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Configuration for nvim lsp
Plug 'neovim/nvim-lspconfig'
Plug('folke/tokyonight.nvim', { branch = 'main' })

vim.call('plug#end')

vim.cmd[[
	syntax enable
	colorscheme tokyonight-night
]]

-- Initialize the lsp config
require('lsp')
