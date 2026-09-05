return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	-- above every other lazy = false plugin (snacks is 1000, lazy's default is 50), so
	-- anything that snapshots highlight groups at setup sees the final palette
	priority = 1001,
	config = function()
		-- Running on catppuccin's defaults: flavour = "auto" -> "mocha" on a dark background;
		-- colorscheme() calls setup() itself. Do NOT replace this with a bare `opts = {}`: lazy's
		-- default config would then call setup() and never reach vim.cmd.colorscheme, so the
		-- theme would silently not be applied.
		vim.cmd.colorscheme("catppuccin")
	end,
}
