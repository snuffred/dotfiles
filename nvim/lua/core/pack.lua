local map = vim.keymap.set

vim.pack.add({
	-- colorscheme
	{ src = "https://github.com/catppuccin/nvim", name = "catppuccin" },

	-- tools
	{
		src = "https://github.com/nvim-mini/mini.nvim",
		version = vim.version.range("*"),
	},
	{
		src = "https://github.com/folke/snacks.nvim",
	},

	-- LSP
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },

	-- complete
	{
		src = "https://github.com/saghen/blink.cmp",
		version = vim.version.range("1.*"),
	},

	-- format
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/zapling/mason-conform.nvim" },

	-- lint
	{ src = "https://github.com/mfussenegger/nvim-lint" },
	{ src = "https://github.com/rshkarin/mason-nvim-lint" },

	-- trouble
	{ src = "https://github.com/folke/trouble.nvim" },

	-- action
	{ src = "https://github.com/rachartier/tiny-code-action.nvim" },
})

-- Native plugin manager (Neovim 0.12+)
-- Plugin actions open a review tab: use :write to apply updates or :quit to close it.
local function active_plugin_names()
	return vim.iter(vim.pack.get(nil, { info = false }))
		:filter(function(plugin)
			return plugin.active
		end)
		:map(function(plugin)
			return plugin.spec.name
		end)
		:totable()
end

local function manage_active_plugins(opts)
	vim.pack.update(active_plugin_names(), opts)
end

map("n", "<leader>pu", function()
	manage_active_plugins()
end, { desc = "Update Plugins" })
map("n", "<leader>pi", function()
	manage_active_plugins({ offline = true })
end, { desc = "Inspect Plugins" })
