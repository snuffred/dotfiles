return {
	{
		"nvim-lua/plenary.nvim",
	},

	{
		"nvchad/ui",
		config = function()
			require("nvchad")

			local map = vim.keymap.set

			-- NVCheatsheet
			map("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "Toggle NvCheatsheet" })

			-- global lsp mappings
			map("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "LSP Diagnostic loclist" })

			-- tabufline
			map("n", "<leader>n", "<cmd>enew<CR>", { desc = "buffer new" })

			map("n", "<tab>", function()
				require("nvchad.tabufline").next()
			end, { desc = "buffer goto next" })

			map("n", "<S-tab>", function()
				require("nvchad.tabufline").prev()
			end, { desc = "buffer goto prev" })

			map("n", "<leader>x", function()
				require("nvchad.tabufline").close_buffer()
			end, { desc = "buffer close" })
			-- terminal
			map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

			-- new terminals
			map("n", "<leader>h", function()
				require("nvchad.term").new({ pos = "sp" })
			end, { desc = "terminal new horizontal term" })

			map("n", "<leader>v", function()
				require("nvchad.term").new({ pos = "vsp" })
			end, { desc = "terminal new vertical window" })

			-- toggleable
			map({ "n", "t" }, "<A-v>", function()
				require("nvchad.term").toggle({ pos = "vsp", id = "vtoggleTerm" })
			end, { desc = "terminal toggleable vertical term" })

			map({ "n", "t" }, "<A-h>", function()
				require("nvchad.term").toggle({ pos = "sp", id = "htoggleTerm" })
			end, { desc = "terminal toggleable horizontal term" })

			map({ "n", "t" }, "<A-i>", function()
				require("nvchad.term").toggle({ pos = "float", id = "floatTerm" })
			end, { desc = "terminal toggle floating term" })
		end,
	},

	{
		"nvchad/base46",
		lazy = true,
		build = function()
			require("base46").load_all_highlights()
		end,
	},

	{ "nvchad/volt", lazy = true },

	{ "nvchad/minty", lazy = true },

	{ "nvchad/menu", lazy = true },

	{
		"f-person/auto-dark-mode.nvim",
		lazy = false,
		config = function()
			local toggle = require("chadrc").base46.theme_toggle
			local current = require("chadrc").base46.theme
			require("auto-dark-mode").setup({
				update_interval = 1000,
				set_light_mode = function()
					require("nvconfig").base46.theme = toggle[1]
					require("base46").load_all_highlights()
				end,
				set_dark_mode = function()
					if current ~= toggle[2] then
						require("nvconfig").base46.theme = toggle[2]
						require("base46").load_all_highlights()
					end
				end,
			})
			require("auto-dark-mode").init()
		end,
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local highlight = {
				"RainbowRed",
				"RainbowYellow",
				"RainbowBlue",
				"RainbowOrange",
				"RainbowGreen",
				"RainbowViolet",
				"RainbowCyan",
			}

			local hooks = require("ibl.hooks")
			-- create the highlight groups in the highlight setup hook, so they are reset
			-- every time the colorscheme changes
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
				vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
				vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
				vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
				vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
				vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
				vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
			end)

			require("ibl").setup({
				indent = { highlight = highlight },
			})
		end,
	},
}
