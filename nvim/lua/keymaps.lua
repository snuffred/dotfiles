local map = vim.keymap.set

map("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })
map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

map("n", "sv", "<C-w>v", { desc = "Split window vertically" })
map("n", "sh", "<C-w>s", { desc = "Split window horizontally" })

map("n", "sc", "<C-w>c", { desc = "Close current split" })
map("n", "so", "<C-w>o", { desc = "Close others windows" })

map("n", "sh", "vertical resize -2<CR>", { desc = "vertical resize left" })
map("n", "sl", "vertical resize +2<CR>", { desc = "vertical resize right" })
map("n", "sj", "resize +2<CR>", { desc = "horizontal resize down" })
map("n", "sk", "resize -2<CR>", { desc = "horizontal resize up" })

map("n", "<C-h>", "<C-w>h", { desc = "move window to right" })
map("n", "<C-j>", "<C-w>j", { desc = "move window to bottom" })
map("n", "<C-k>", "<C-w>k", { desc = "move window to top" })
map("n", "<C-l>", "<C-w>l", { desc = "move window to left" })
