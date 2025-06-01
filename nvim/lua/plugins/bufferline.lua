return {
	"akinsho/bufferline.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		require("bufferline").setup({
			options = {
				themable = true,
				always_show_bufferline = true,
				sort_by = "id",

				pick = {
					alphabet = "123456789",
				},
			},
		})

		local map = vim.keymap.set
		map("n", "t", ":BufferLinePick<CR>", { desc = "Open the BufferlinePickMode" })
	end,
}
