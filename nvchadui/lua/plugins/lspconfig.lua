return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"folke/neodev.nvim",
	},

	config = function()
		vim.lsp.enable("lua_ls")

		vim.lsp.enable("ltex")

		vim.lsp.enable("clangd")
	end,
}
