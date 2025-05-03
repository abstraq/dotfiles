-- nvim-treesitter (Language Parsing)
-- https://github.com/nvim-treesitter/nvim-treesitter
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = { "lua", "rust", "toml", "yaml", "json", "wgsl" },
			auto_install = true,
		})
	end,
}
