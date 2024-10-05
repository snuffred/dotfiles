require("catppuccin").setup({
	integrations = {
		nvimtree = true,
		treesitter = true,
		cmp = true,
		lspsaga = false,
		mason = true,
		treesitter_context = true,
		render_markdown = true,
		telescope = {
			enabled = true,
		},
		indent_blankline = {
			enabled = true,
			scope_color = "", -- catppuccin color (eg. `lavender`) Default: text
			colored_indent_levels = false,
		},
	},
	background = {
		light = "latte",
		dark = "mocha",
	},
	transparent_background = false,
})

vim.cmd.colorscheme("catppuccin")
