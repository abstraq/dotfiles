-- nvim-treesitter (Language Parsing)
-- https://github.com/nvim-treesitter/nvim-treesitter
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		auto_install = true,
		highlight = { enable = true },
		indent = { enable = true },
	},
}
