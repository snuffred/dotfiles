return {
	"rachartier/tiny-code-action.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		-- .. or via snacks
		{
			"folke/snacks.nvim",
			opts = {
				terminal = {},
			},
		},
	},

	event = "LspAttach",

	opts = {
		picker = {
			"snacks",
		},
	},

	config = function()
		require("tiny-code-action").setup({})

		local map = vim.keymap.set

		map("n", "<leader>ca", function()
			require("tiny-code-action").code_action()
		end, { noremap = true, silent = true })
	end,
}
