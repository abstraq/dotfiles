-- noice.nvim (UI Improvements)
-- https://github.com/folke/noice.nvim
return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = { "folke/snacks.nvim", "MunifTanjim/nui.nvim" },
	opts = {
		cmdline = { view = "cmdline" },
		messages = { view = "mini" },
	},
}
