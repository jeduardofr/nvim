local options = {
	number = true,
	relativenumber = true,
	tabstop = 4,
	shiftwidth = 4,
	softtabstop = 4,
	scrolloff = 5
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("", "<Tab>", ":tabn<CR>", { silent = true })
map("", "<S-Tab>", ":tabp<CR>", { silent = true })

vim.opt.listchars = {
  eol = '⤶',
}
