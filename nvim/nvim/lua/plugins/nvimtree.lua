return {
	"nvim-tree/nvim-tree.lua",
  keys = "<C-n>",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")

		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			git = {
				enable = true,
			},
			-- project plugin 需要这样设置
			update_cwd = true,
			update_focused_file = {
				enable = true,
				update_cwd = true,
			},
			-- 隐藏 .文件
			filters = {
				dotfiles = false,
				custom = { "^.git$" },
			},
			view = {
				-- 宽度
				width = 35,
				-- 也可以 'right'
				side = "left",
				-- 显示行数
				number = false,
				relativenumber = false,
				-- 显示图标
				signcolumn = "yes",
			},
			actions = {
				open_file = {
					-- 首次打开大小适配
					resize_window = true,
					-- 打开文件时关闭
					quit_on_open = false,
				},
			},
			system_open = {
				cmd = "open", -- mac 直接设置为 open
			},
		})

		local map = vim.keymap.set

		map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
		map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })
	end,
}
