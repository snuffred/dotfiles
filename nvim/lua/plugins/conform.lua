return {
	"stevearc/conform.nvim",
	dependencies = {
		"zapling/mason-conform.nvim",
	},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				python = { "isort", "black" },
				tex = { "latexindent" },
				markdown = { "markdown-toc" },
			},
		})

		local map = vim.keymap.set
		map("n", "<leader>fm", require("conform").format, { desc = "Format this file" })
	end,
}
