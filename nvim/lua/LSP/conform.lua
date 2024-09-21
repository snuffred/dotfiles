require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		c = { "clang-format" },
		cpp = { "clang-format" },
		python = { "isort", "black" },
		javascript = { "prettier" },
		tex = { "latexindent" },
		markdown = { "markdown-toc" },
		html = { "prettier" },
		json = { "prettier" },
		css = { "prettier" },
	},
})

vim.keymap.set("n", "<leader>fm", require("conform").format)

require("conform").setup({
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
