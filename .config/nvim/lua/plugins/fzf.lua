-- fzf-lua (Fuzzy Finding)
-- https://github.com/ibhagwan/fzf-lua
return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	keys = {
		{
			"<leader>f",
			function()
				require("fzf-lua").files()
			end,
			desc = "Search files in the current workspace.",
		},
		{
			"<leader>b",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "View open buffers.",
		},
		{
			"<leader>a",
			function()
				require("fzf-lua").lsp_code_actions()
			end,
			desc = "View available LSP code actions.",
		},
	},
	opts = {},
	config = function()
		-- Use fzf-lua as the vim.ui.select provider.
		require("fzf-lua").register_ui_select()
	end,
}
