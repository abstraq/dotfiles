-- diagflow.nvim
-- https://github.com/dgagn/diagflow.nvim
return {
	"dgagn/diagflow.nvim",
	event = "LspAttach",
	opts = {
		scope = "cursor",
		show_sign = true,
	},
}
