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
			"rust_analyzer",
			"ts_ls",
			"html",
			"cssls",
			"jsonls",
			"yamlls",
			"bashls",
			"vimls",
			"taplo",
			"marksman",
			"texlab",
		},
	},
}
