require("catppuccin").setup({
	integrations = {
		nvimtree = true,
		treesitter = true,
		cmp = true,
		-- lspsaga = true,
		mason = true,
		treesitter_context = true,
		telescope = {
			enabled = true,
		},
	},
})

vim.cmd.colorscheme("catppuccin")
