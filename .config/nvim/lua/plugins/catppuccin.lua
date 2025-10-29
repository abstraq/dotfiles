-- catppuccin (Color Scheme)
-- https://github.com/catppuccin/nvim
return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		auto_integrations = true,
		float = { transparent = true },
		transparent_background = true,
	},
	init = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}
