return {
	"nvzone/floaterm",
	dependencies = "nvzone/volt",
	opts = {},
	cmd = "FloatermToggle",
	mappings = {
		term = function(buf)
			vim.keymap.set({ "n", "t" }, "<C-p>", function()
				require("floaterm.api").cycle_term_bufs("prev")
			end, { buffer = buf })
		end,
	},
}
