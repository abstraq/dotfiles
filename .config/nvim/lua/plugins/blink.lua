-- blink.cmp (Completions)
-- https://github.com/saghen/blink.cmp
return {
	"saghen/blink.cmp",
	build = "cargo build --release",
	dependencies = { "rafamadriz/friendly-snippets" },
	opts = {
		sources = {
			default = {
				"lsp",
				"path",
				"snippets",
				"buffer",
			},
		},
		completion = { documentation = { auto_show = true } },
		signature = { enabled = true },
	},
}
