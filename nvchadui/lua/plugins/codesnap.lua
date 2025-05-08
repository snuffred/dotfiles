return {
	"mistricky/codesnap.nvim",
	build = "make",
	config = function()
		require("codesnap").setup({
			save_path = "~/Downloads/",
			has_breadcrumbs = true,
			bg_theme = "peach",
		})

		local map = vim.keymap.set

		map("x", "<leader>cc", "<cmd>CodeSnap<cr>", { desc = "Save selected code snapshot into clipboard" })
		map("x", "<leader>cs", "<cmd>CodeSnapSave<cr>", { desc = "Save selected code snapshot in ~/Downloads/" })
	end,
}
