-- mason.nvim (Package Manager)
-- https://github.com/williamboman/mason.nvim
return {
	{
		"williamboman/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "",
					package_uninstalled = "",
					package_pending = "",
				},
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			ensure_installed = {
				"bashls", -- Bash
				"harper_ls", -- Spell Check
				"lua_ls", -- Lua
				"marksman", -- Markdown
				"taplo", -- TOML
				"rust_analyzer", -- Rust
				"wgsl_analyzer", -- WGSL
			},
			handlers = {
				function(server)
					vim.lsp.enable(server)
				end,
			},
		},
	},
}
