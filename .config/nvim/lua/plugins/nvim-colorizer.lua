-- nvim-colorizer
-- https://github.com/norcalli/nvim-colorizer.lua
return {
	"norcalli/nvim-colorizer.lua",
	opts = {},
	config = function()
		require("colorizer").setup()
	end,
}
