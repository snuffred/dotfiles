return {
	"nvim-telescope/telescope.nvim",
	cmd = "Telescope",
	dependencies = {
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local actions = require("telescope.actions")

		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<C-h>"] = "which_key",
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
					},
				},
			},

			pickers = {},
			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				},
			},
		})

		local map = vim.keymap.set

		map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
		map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
		map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
		map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
		map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
		map(
			"n",
			"<leader>fz",
			"<cmd>Telescope current_buffer_fuzzy_find<CR>",
			{ desc = "telescope find in current buffer" }
		)
		map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
		map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
		map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
		map("n", "<leader>th", function()
			require("nvchad.themes").open()
		end, { desc = "telescope nvchad themes" })

		map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
		map(
			"n",
			"<leader>fa",
			"<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
			{ desc = "telescope find all files" }
		)
	end,
}
