return {
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("gitsigns").setup()
		end,
	},

	{
		"windwp/nvim-autopairs",
		event = { "InsertEnter" },
		dependencies = {
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("nvim-autopairs").setup({
				dependencies = { "hrsh7th/nvim-cmp" },
				disable_filetype = { "TelescopePrompt", "vim" },
			})
		end,
	},

	{
		"folke/which-key.nvim",
    cmd = "WhichKey",
		config = function()
			local map = vim.keymap.set
			-- whichkey
			map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })

			map("n", "<leader>wk", function()
				vim.cmd("WhichKey " .. vim.fn.input("WhichKey: "))
			end, { desc = "whichkey query lookup" })
		end,
	},

	-- Markdown
	{
		"MeanderingProgrammer/render-markdown.nvim",
    ft = "markdown",
		dependencies = { "echasnovski/mini.nvim" },
	},

	{
		"numToStr/Comment.nvim",
		event = { "BufReadPre", "BufNewFile" },
	},
}
