-- blink.cmp (LSP)
-- https://github.com/Saghen/blink.cmp
return {
	"Saghen/blink.cmp",
	version = "1.*",
	dependencies = { "rafamadriz/friendly-snippets" },
	opts = {
		keymap = { preset = "default" },
		sources = { default = { "lsp", "path", "snippets", "buffer" } },
		signature = { enabled = true },
		completion = {
			documentation = { auto_show = true },
		},
	},
}
