local cmp = require "cmp"
local lspkind = require "lspkind"
local autopairs = require "nvim-autopairs" 
local cmp_autopairs = require "nvim-autopairs.completion.cmp"

autopairs.setup({
	disable_filetype = { "TelescopePrompt", "vim" },
})

cmp.setup {
	mapping = {
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-e>"] = cmp.mapping.close(),
		["<c-y>"] = cmp.mapping.confirm {
			behavior = cmp.ConfirmBehavior.Insert,
			select = true
		},
		["<c-space>"] = cmp.mapping.complete(),
	},
	format = {
		async = true,
		format = lspkind.cmp_format {
			with_text = true,
			menu = {
				buffer = "[buf]",
				nvim_lsp = "[LSP]",
				path = "[path]",
			},
		},
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "path" },
		{ name = "buffer", keyword_length = 5 },
		{ name = "nvim_lua" },
	}
}

cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
