return {
	"rshkarin/mason-nvim-lint",
	config = function(_, opts)
		local mapping = require("mason-nvim-lint.mapping").nvimlint_to_package
		opts.ensure_installed = vim.tbl_filter(function(linter_name)
			return mapping[linter_name] ~= nil
		end, opts.ensure_installed or {})

		require("mason-nvim-lint").setup(opts)
	end,
	dependencies = {
		"mason-org/mason.nvim",
		"mfussenegger/nvim-lint",
	},
}
