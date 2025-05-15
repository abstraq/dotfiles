-- mason.nvim (Package Manager)
-- https://github.com/mason-org/mason.nvim
return {
	{
		"mason-org/mason.nvim",
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
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
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
