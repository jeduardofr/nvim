require('configs.options')

-- Plug function from the plugin manager
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Configuration for nvim lsp
Plug 'neovim/nvim-lspconfig'

vim.call('plug#end')

-- Initialize the lsp config
require('lsp')
