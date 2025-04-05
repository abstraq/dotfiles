-- lualine.nvim (Status Line)
-- https://github.com/nvim-lualine/lualine.nvim
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = "catppuccin",
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_a = {
				{
					"mode",
					fmt = function(str)
						return str:sub(1, 1)
					end,
				},
			},
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = { "%=", { "filename", file_status = true } },
			lualine_x = { "filetype" },
			lualine_y = { "location" },
			lualine_z = { "progress" },
		},
	},
}
