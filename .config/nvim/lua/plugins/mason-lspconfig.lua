-- mason-lspconfig.nvim (LSP)
-- https://github.com/mason-org/mason-lspconfig.nvim
return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = { { "mason-org/mason.nvim", opts = {} }, "neovim/nvim-lspconfig" },
	lazy = false,
	opts = {
		ensure_installed = {
			"lua_ls",
			"rust_analyzer",
		},
	},
	config = function(opts)
		require("mason-lspconfig").setup(opts)
		local fzf = require("fzf-lua")

		-- vim.api.nvim_create_autocmd("LspAttach", {
		-- 	callback = function(event)
		-- 		vim.keymap.set(
		-- 			"n",
		-- 			"<leader>s",
		-- 			fzf.lsp_document_symbols,
		-- 			{ buffer = event.buf, desc = "View LSP symbols in the current buffer." }
		-- 		)
		-- 		vim.keymap.set(
		-- 			"n",
		-- 			"<leader>S",
		-- 			fzf.lsp_workspace_symbols,
		-- 			{ buffer = event.buf, desc = "View LSP symbols in the current workspace." }
		-- 		)
		-- 		vim.keymap.set(
		-- 			"n",
		-- 			"<leader>d",
		-- 			fzf.lsp_document_diagnostics,
		-- 			{ buffer = event.buf, desc = "View LSP diagnostics in the current buffer." }
		-- 		)
		-- 		vim.keymap.set(
		-- 			"n",
		-- 			"<leader>D",
		-- 			fzf.lsp_workspace_diagnostics,
		-- 			{ buffer = event.buf, desc = "View LSP diagnostics in the current workspace." }
		-- 		)
		-- 	end,
		-- })

		vim.diagnostic.config({
			severity_sort = true,
			float = { border = "rounded", source = "if_many" },
			underline = { severity = vim.diagnostic.severity.ERROR },
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = " ",
					[vim.diagnostic.severity.WARN] = " ",
					[vim.diagnostic.severity.INFO] = " ",
					[vim.diagnostic.severity.HINT] = " ",
				},
			},
			virtual_text = {
				source = "if_many",
				spacing = 2,
				format = function(diagnostic)
					local diagnostic_message = {
						[vim.diagnostic.severity.ERROR] = diagnostic.message,
						[vim.diagnostic.severity.WARN] = diagnostic.message,
						[vim.diagnostic.severity.INFO] = diagnostic.message,
						[vim.diagnostic.severity.HINT] = diagnostic.message,
					}
					return diagnostic_message[diagnostic.severity]
				end,
			},
		})
	end,
}
