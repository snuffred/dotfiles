require("lint").linters_by_ft = {
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
	callback = function()
		require("lint").try_lint()
	end,
})

require("mason-nvim-lint").setup({
	automatic_installation = true,
})
