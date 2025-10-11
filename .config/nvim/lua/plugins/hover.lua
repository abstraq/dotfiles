-- hover.nvim (QOL)
-- https://github.com/lewis6991/hover.nvim
return {
	"lewis6991/hover.nvim",
	opts = {
		title = false,
		providers = {
			"hover.providers.diagnostic",
			"hover.providers.lsp",
			"hover.providers.gh",
		},
	},
	keys = {
		{
			"K",
			function()
				require("hover").open()
			end,
			desc = "Open hover window under the cursor.",
		},
		{
			"KK",
			function()
				require("hover").enter()
			end,
		},
		{
			"<S-TAB>",
			function()
				require("hover").switch("previous")
			end,
			desc = "Change provider for hover window.",
		},
		{
			"<TAB>",
			function()
				require("hover").switch("next")
			end,
			desc = "Change provider for hover window.",
		},
	},
}
