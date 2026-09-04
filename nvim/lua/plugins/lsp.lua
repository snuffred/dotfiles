return {
	"mason-org/mason-lspconfig.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
		"saghen/blink.cmp",
	},
	opts = {
		ensure_installed = {
			"lua_ls",
			"clangd",
			"pyright",
		},
		-- automatic_enable defaults to enabling every *installed* mason package, not just
		-- the list above, so leftover servers would keep attaching. Pin it to an allowlist.
		automatic_enable = {
			"lua_ls",
			"clangd",
			"pyright",
		},
	},
	-- Servers with no mason package are never seen by automatic_enable, so enable them here.
	-- This body runs when the spec loads, i.e. at BufReadPre: blink.cmp is already loaded
	-- (it is a dependency) so its capabilities are in vim.lsp.config("*"), and BufReadPre
	-- still precedes the FileType event that vim.lsp.enable() hooks for the same buffer.
	config = function(_, opts)
		require("mason-lspconfig").setup(opts)
		-- vsrocqtop comes from opam; haskell-language-server-wrapper comes from ghcup.
		-- Neither is a mason package. See after/lsp/{vsrocq,hls}.lua.
		vim.lsp.enable({ "vsrocq", "hls" })
	end,
}
