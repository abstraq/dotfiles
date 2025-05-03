-- snacks.nvim (Kitchen Sink)
-- https://github.com/folke/snacks.nvim
return {
	"folke/snacks.nvim",
	opts = {
		animate = { enabled = true },
		notifier = { enabled = true, style = "minimal", timeout = 3000 },
		input = { enabled = true },
		scroll = { enabled = true },
		indent = { enabled = true },
		statuscolumn = { enabled = true },
		picker = { enabled = true },
	},
	keys = {
		{
			"<leader>f",
			function()
				Snacks.picker.files()
			end,
			desc = "File search in the current workspace.",
		},
		{
			"<leader><leader>",
			function()
				Snacks.picker.grep()
			end,
			desc = "Global search in the current workspace.",
		},
		{
			"<leader>b",
			function()
				Snacks.picker.buffers()
			end,
			desc = "View opened buffers.",
		},
		{
			"<leader>d",
			function()
				Snacks.picker.diagnostics_buffer()
			end,
			desc = "View diagnostics for current buffer.",
		},
		{
			"<leader>D",
			function()
				Snacks.picker.diagnostics()
			end,
			desc = "View diagnostics for current workspace.",
		},
		{
			"<leader>?",
			function()
				Snacks.picker.grep()
			end,
			desc = "Search help tags.",
		},
	},
}
