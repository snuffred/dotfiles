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
}
