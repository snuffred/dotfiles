return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,

	config = function()
		require("catppuccin").setup({
			background = { -- :h background
				light = "latte",
				dark = "latte"
			},
			intergrations = {
				blink_cmp = true,
				mason = true,
				snacks = {
					enabled = true,
					indent_scope_color = "", -- catppuccin color (eg. `lavender`) Default: text
				},
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
