local map = vim.keymap.set

map("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })
map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

map("n", "sv", "<C-w>v", { desc = "Split window vertically" })
map("n", "sh", "<C-w>s", { desc = "Split window horizontally" })

map("n", "sc", "<C-w>c", { desc = "Close current split" })
map("n", "so", "<C-w>o", { desc = "Close others windows" })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize -2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize +2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

map("n", "<C-h>", "<C-w>h", { desc = "move window to right" })
map("n", "<C-j>", "<C-w>j", { desc = "move window to bottom" })
map("n", "<C-k>", "<C-w>k", { desc = "move window to top" })
map("n", "<C-l>", "<C-w>l", { desc = "move window to left" })
