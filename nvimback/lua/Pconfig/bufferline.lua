--bufferline
-- local mocha = require("catppuccin.palettes").get_palette "mocha"
-- local latte = require("catppuccin.palettes").get_palette "latte"
require("bufferline").setup({
	highlights = require("catppuccin.groups.integrations.bufferline").get {
		styles = { "italic", "bold" },
		-- custom = {
		-- 	-- all = {
		-- 	-- 	fill = { bg = "#000000" },
		-- 	-- },
			-- mocha = {
			-- 	background = { fg = mocha.text },
			-- },
			-- latte = {
			-- 	background = { fg = latte.txt },
			-- },
		-- },
	},

	options = {
		themable = true,
		numbers = "ordinal",
		close_command = "Bdelete! %d",

		color_icons = true,
		always_show_bufferline = true,
		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
		sort_by = "id",

		-- 侧边栏配置
		-- 左侧让出 nvim-tree 的位置，显示文字 File Explorer
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left",
			},
		},
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			return "(" .. count .. ")"
		end,
	},
})
