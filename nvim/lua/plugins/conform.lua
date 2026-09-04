return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	cmd = "ConformInfo",
	dependencies = {
		"mason-org/mason.nvim",
		{ "zapling/mason-conform.nvim", opts = {} },
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			rust = { "rustfmt", lsp_format = "fallback" },
			c = { "clang-format" },
			cpp = { "clang-format" },
			objc = { "clang-format" },
			objcpp = { "clang-format" },

			javascript = { "prettierd", "prettier", stop_after_first = true },
			html = { "prettierd", "prettier", stop_after_first = true },
			css = { "prettierd", "prettier", stop_after_first = true },
			json = { "prettierd", "prettier", stop_after_first = true },
			yaml = { "prettierd", "prettier", stop_after_first = true },
			markdown = { "prettierd", "prettier", stop_after_first = true },

			sh = { "shfmt" },
			bash = { "shfmt" },
			zsh = { "shfmt" },
			toml = { "taplo" },
			tex = { "tex-fmt" },
		},
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
