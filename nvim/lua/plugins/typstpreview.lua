return {
	"chomosuke/typst-preview.nvim",
	lazy = false, -- or ft = 'typst'
	build = function()
		require("typst-preview").update()
	end,
}
