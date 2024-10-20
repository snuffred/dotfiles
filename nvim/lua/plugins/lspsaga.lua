return {
	"nvimdev/lspsaga.nvim",
	config = function()
		require("lspsaga").setup({
			code_action = {
				enable = false,
			},
		})

		-- keymaps
		local map = vim.keymap.set

		map("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { desc = "Peek definition" })
		map("n", "gp", "<cmd>Lspsaga goto_definition<CR>", { desc = "Goto peek definition" })
		map("n", "gy", "<cmd>Lspsaga peek_type_definition<CR>", { desc = "Peek type definition" })
		map("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover doc" })
		map("n", "gr", "<cmd>Lspsaga rename<CR>", { desc = "Rename" })
		map("n", "gh", "<cmd>Lspsaga finder<CR>", { desc = "Finder LSP methods" })
		map("n", "<leader>o", "<cmd>Lspsaga outline<CR>", { desc = "Lspsga outlin" })
	end,
}
