local map = vim.keymap.set

map("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })
map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

map("n", "sv", "<C-w>v", { desc = "Split window vertically" })
map("n", "sh", "<C-w>s", { desc = "Split window horizontally" })

map("n", "sc", "<C-w>c", { desc = "Close current split" })
map("n", "so", "<C-w>o", { desc = "Close others windows" })
