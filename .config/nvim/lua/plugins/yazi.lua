-- yazi.nvim (File Manager)
-- https://github.com/mikavilpas/yazi.nvim
return {
	"mikavilpas/yazi.nvim",
	dependencies = { "folke/snacks.nvim" },
	opts = {
		open_for_directories = true,
	},
	init = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
	end,
	keys = {
		{
			"<leader>f",
			"<cmd>Yazi<cr>",
			desc = "Open the file explorer.",
		},
		{
			"<leader>F",
			"<cmd>Yazi cwd",
			desc = "Open the file explorer in the working directory.",
		},
	},
}
