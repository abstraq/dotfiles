-- oil.nvim (File Manager)
-- https://github.com/stevearc/oil.nvim
return {
	"stevearc/oil.nvim",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
	keys = {
		{ "<leader>F", "<cmd>Oil --float<cr>", desc = "Open the file explorer buffer." }
	}
}
