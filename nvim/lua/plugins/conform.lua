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
				python = { "black" },
				tex = { "latexindent" },
				markdown = { "markdownlint" },
				typst = { "typstyle" },
				bash = { "beautysh" },
				html = { "prettier" },
				css = { "prettier" },
				javascript = { "prettier" },
				julia = { "runic" },
        ruby = {"rubocop"}
			},

    formatters = {
        runic = {
            command = "julia",
            args = {"--project=@runic", "--startup-file=no", "-e", "using Runic; exit(Runic.main(ARGS))"},
        },
    },

    default_format_opts = {
        -- Increase the timeout in case Runic needs to precompile
        -- (e.g. after upgrading Julia and/or Runic).
        timeout_ms = 10000,
    },

		})
		local map = vim.keymap.set
		map("n", "<leader>fm", require("conform").format, { desc = "Format this file" })
	end,
}
