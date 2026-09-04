return {
	"nvim-mini/mini.nvim",
	version = "*",
	lazy = false,
	config = function()
		require("mini.statusline").setup()
		require("mini.icons").setup()
		require("mini.pairs").setup()
		require("mini.comment").setup()
		-- require('mini.tabline').setup()
	end,
}
