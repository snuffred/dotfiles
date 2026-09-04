require("tiny-code-action").setup({})

local map = vim.keymap.set

map({ "n", "x" }, "<leader>ca", function()
	require("tiny-code-action").code_action()
end, { desc = "Code Action" })
