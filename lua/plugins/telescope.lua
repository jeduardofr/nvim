require('telescope').setup {
	defaults = {
		mappings = {
			i = {
				["<C-k>"] = "move_selection_previous",
				["<C-j>"] = "move_selection_next",
			}
		}
	}
}

require('telescope').load_extension('harpoon')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
