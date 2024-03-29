require('configs.options')

-- Plug function from the plugin manager
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Configuration for nvim lsp
Plug 'neovim/nvim-lspconfig'

-- Theme
Plug('folke/tokyonight.nvim', { branch = 'main' })
Plug 'bluz71/vim-nightfly-colors'
Plug 'olivercederborg/poimandres.nvim'
Plug 'ellisonleao/gruvbox.nvim'

-- Completion
Plug "hrsh7th/nvim-cmp"
Plug "hrsh7th/cmp-buffer"
Plug "hrsh7th/cmp-path"
Plug "hrsh7th/cmp-nvim-lsp"
Plug "hrsh7th/cmp-nvim-lua"
Plug "onsails/lspkind.nvim"

-- Treesitter
Plug("nvim-treesitter/nvim-treesitter", { run = ':TSUpdate' })
Plug 'nvim-treesitter/playground'

-- Snippets
Plug "saadparwaiz1/cmp_luasnip"

-- Telescope
Plug "nvim-lua/plenary.nvim"
Plug("nvim-telescope/telescope.nvim", { tag = '0.1.0' })

-- Rainbow parenthesis
Plug "p00f/nvim-ts-rainbow"

-- Git
-- Plug "sindrets/diffview.nvim"
Plug "nvim-tree/nvim-web-devicons"
Plug "TimUntersberger/neogit"

-- File-tree
Plug "nvim-tree/nvim-tree.lua"

-- Autopairs
Plug 'windwp/nvim-autopairs'

-- Indent blankline
Plug 'lukas-reineke/indent-blankline.nvim'

-- Comments
Plug 'numToStr/Comment.nvim'

-- Harpoon
Plug 'ThePrimeagen/harpoon'

vim.call('plug#end')

vim.cmd[[
	colorscheme tokyonight-night
	" colorscheme nightfly
	" colorscheme poimandres

	" set background=dark
	" colorscheme gruvbox

	let mapleader=" "
	" syntax on
	" syntax enable

	set colorcolumn=100
	hi ColorColumn ctermbg=238
]]

-- Initialize the lsp config
require('plugins.lsp')
require('plugins.completion')
require('plugins.telescope')
require('plugins.treesitter')
require('plugins.ts-rainbow')
require('plugins.tree')
-- require('plugins.diffview')
require('plugins.blankline')
require('plugins.comments')
require('plugins.harpoon')

