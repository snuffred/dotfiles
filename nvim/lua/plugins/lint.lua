-- Lint on BufEnter/BufWritePost/InsertLeave (nvim-lint); linters are installed by mason-nvim-lint
-- from the table below. mason itself is configured in lua/plugins/lsp.lua.
return {
	"mfussenegger/nvim-lint",
	-- BufReadPost (lsp/conform use BufReadPre): no practical difference here, BufEnter still
	-- fires afterwards for the first file.
	event = { "BufReadPost", "BufNewFile" },
	dependencies = {
		"mason-org/mason.nvim",
		-- opts = {} is load-bearing: lazy only calls setup() when opts/config is present, and
		-- setup() is what auto-installs every linter named below (automatic_installation = true
		-- is the default).
		{ "rshkarin/mason-nvim-lint", opts = {} },
	},
	-- `config`, not `opts`: nvim-lint has no setup(); linters_by_ft is assigned directly.
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			lua = { "selene" },
			python = { "ruff" },
			javascript = { "eslint_d" },
			markdown = { "markdownlint" },
			sh = { "shellcheck" },
			bash = { "shellcheck" },
			yaml = { "yamllint" },
			json = { "jsonlint" },
			vim = { "vint" },
			tex = { "proselint" },
		}

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = vim.api.nvim_create_augroup("user_lint", { clear = true }),
			desc = "Run nvim-lint for the current buffer",
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
