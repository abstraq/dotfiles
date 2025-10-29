-- noice.nvim (QOL)
-- https://github.com/folke/noice.nvim
return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = { "MunifTanjim/nui.nvim" },
	opts = {
		cmdline = { enabled = true, view = "cmdline" },
	},
}
