return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"jay-babu/mason-nvim-dap.nvim",
	},

	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

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
			},

			auto_update = false,

			run_on_start = true,

			integrations = {
				["mason-lspconfig"] = true,
				["mason-nvim-dap"] = true,
			},
		})
	end,
}
