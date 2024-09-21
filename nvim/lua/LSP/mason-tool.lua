require("mason-tool-installer").setup({
	ensure_installed = {
		-- LSP

		"lua_ls",
		"rust_analyzer",
		"ltex",
		"typst-lsp",
		"clangd",
		"pyright",
		"jsonls",

		-- DAP
		"cpptools",

		-- Linter
		"ast-grep",
		"cpplint",
		"cspell",

		-- formatter
		"stylua",
		"clang-format",
		"latexindent",
		"markdownlint", -- also included in linter
		"beautysh",
		"prettier",
	},

	auto_update = false,

	run_on_start = true,

	integrations = {
		["mason-lspconfig"] = true,
		["mason-nvim-dap"] = true,
	},
})
