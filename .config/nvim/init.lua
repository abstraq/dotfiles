-- Abstraq Software Neovim Configuration
-- https://github.com/abstraq/dotfiles

-- Bind <Space> as the leader key.
vim.g.mapleader = vim.keycode("<Space>")
vim.g.maplocalleader = vim.keycode("<Space>")

-- Enable absolute and relative line numbering.
vim.o.number = true
vim.o.relativenumber = true

-- Disable line wrapping.
vim.o.wrap = false

-- Set tab width to 4.
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- Enable 24-bit color support.
vim.o.termguicolors = true

-- Disable showing the mode in the command line.
vim.o.showmode = true

-- Highlight the line that the cursor is on.
vim.o.cursorline = true

-- Persist undo history to disk.
vim.o.undofile = true

-- Enable the sign column.
vim.o.signcolumn = "yes"

-- Define how various whitespace characters are displayed.
vim.o.list = true
vim.opt.listchars = { tab = "| ", trail = "·", nbsp = "␣" }

-- Bootstrap lazy.nvim package manager.
local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazy_path) then
	local lazy_remote = "https://github.com/folke/lazy.nvim.git"
	local output = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazy_remote, lazy_path })
	if vim.v.shell_error ~= 0 then
		error("Encountered an error while cloning lazy.nvim:\n" .. output)
	end
end

vim.opt.rtp:prepend(lazy_path)
require("lazy").setup({
	spec = { { import = "plugins" } },
	checker = { enabled = true },
	change_detection = { notify = false },
})
