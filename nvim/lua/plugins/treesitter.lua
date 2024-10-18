return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPost", "BufNewFile" },
	cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
	dependencies = {
		"nvim-treesitter/nvim-treesitter-context",
		-- "nvim-treesitter/nvim-treesitter-textobjects",
	},
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		--treesitter
		require("nvim-treesitter.configs").setup({
			-- A list of parser names, or "all" (the five listed parsers should always be installed)
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "latex", "markdown", "markdown_inline" },

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			auto_install = true,

			-- List of parsers to ignore installing (or "all")
			ignore_install = {},

			highlight = {
				enable = true,
			},

			indent = {
				enable = true,
			},
		})

		-- module treesitter-context
		require("treesitter-context").setup({
			enable = true,
		})
	end,
}
