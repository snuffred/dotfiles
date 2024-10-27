local M = {}

M.base46 = {
	theme = "github_light",
	transparency = false,
	theme_toggle = { "github_light", "catppuccin" },
}

M.ui = {
	statusline = {
		theme = "minimal",
		separator_style = "block",
	},

	cmp = {
		icons_left = true,
		style = "default",
	},

	telescope = {
		style = "borderless",
	},

	tabufline = {
		enabled = true,
	},
}

M.nvdash = {
	load_on_startup = true,
}

M.cheatsheet = {
	theme = "grid", -- simple/grid
	excluded_groups = { "terminal (t)", "autopairs", "Nvim", "Opens" }, -- can add group name or with mode
}

M.mason = { pkgs = {} }

M.lsp = {
	signature = true,
}

return M
