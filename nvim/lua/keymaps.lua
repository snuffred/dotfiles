local map = vim.keymap.set

map("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })
map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

map("n", "sv", "<C-w>v", { desc = "Split window vertically" })
map("n", "sh", "<C-w>s", { desc = "Split window horizontally" })

map("n", "sc", "<C-w>c", { desc = "Close current split" })
map("n", "so", "<C-w>o", { desc = "Close others windows" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
