-- rustaceanvim (Rust Language Tools)
-- https://github.com/mrcjkb/rustaceanvim
return {
	"mrcjkb/rustaceanvim",
	version = "^5",
	lazy = false,
	init = function()
		vim.g.rustaceanvim = {
			server = {
				default_settings = {
					["rust-analyzer"] = {
						rustfmt = { extraArgs = { "+nightly" } },
						check = { command = "clippy" },
					},
				},
			},
		}
	end,
}
