-- oil.nvim (File Manager)
-- https://github.com/stevearc/oil.nvim
return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	opts = {
		view_options = {
			show_hidden = true,
		},
	},
	keys = {
		{
			"<leader>e",
			function()
				require("oil").open_float()
			end,
			desc = "View file explorer.",
		},
	},
}
