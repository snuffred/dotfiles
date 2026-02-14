return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"folke/neodev.nvim",
	},
	config = function()
		vim.lsp.enable("julials")
		vim.lsp.enable("hls")
	end,
}
