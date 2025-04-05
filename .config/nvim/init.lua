require("keymaps")
require("options")
require("lsp")

-- Bootstrap lazy.nvim plugin manager
local path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(path) then
	local repo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", repo, path })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(path)

local lazy = require("lazy")
lazy.setup({
	spec = {
		{
			"catppuccin/nvim",
			name = "catppuccin",
			priority = 1000,
			opts = {
				transparent_background = true,
			},
			init = function()
				vim.cmd.colorscheme("catppuccin")
			end,
		},
		{ import = "plugins" },
	},
	checker = { enabled = true },
})
