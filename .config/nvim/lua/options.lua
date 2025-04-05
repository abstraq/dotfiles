-- Enable mouse support.
vim.opt.mouse = "a"

-- Enable line numbering.
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable the sign column.
vim.opt.signcolumn = "yes"

-- Keep at least 10 lines above and below cursor.
vim.opt.scrolloff = 10

-- Use case-insensitve search unless capital letters are explicitly included
-- in the query.
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Preview substitutions in real time.
vim.opt.inccommand = "split"

-- Persists undo history to a file.
vim.opt.undofile = true

-- Disable the swap file.
vim.opt.swapfile = false

-- Disable line wrapping.
vim.opt.wrap = false

-- Disable showing the mode under the status line.
vim.opt.showmode = false

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.termguicolors = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
