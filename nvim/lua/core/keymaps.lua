local map = vim.keymap.set

map("i", "jk", "<Esc>", { desc = "Exit Insert Mode" })

-- <leader>n is free again (Notification History moved to <leader>un, lua/plugins/snacks.lua), so
-- <leader>nh fires without a 'timeoutlen' wait. Both this map and <leader>ur clear 'hlsearch';
-- this one is kept for muscle memory, <leader>ur also redraws.
map("n", "<leader>nh", "<cmd>nohlsearch<cr>", { desc = "Clear Search Highlights" })

-- s* = window splits. This shadows built-in s (substitute char): s alone now waits 'timeoutlen'.
-- Use cl instead.
map("n", "sv", "<C-w>v", { desc = "Split Window Vertically" })
map("n", "sh", "<C-w>s", { desc = "Split Window Horizontally" }) -- rhs is <C-w>s; h = horizontal
map("n", "sc", "<C-w>c", { desc = "Close Window" })
map("n", "so", "<C-w>o", { desc = "Close Other Windows" })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- <C-hjkl> move the cursor between windows. <C-l> replaces Nvim's built-in
-- :nohlsearch + diffupdate + redraw (:h CTRL-L-default); <leader>ur below restores it.
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window" })
map(
	"n",
	"<leader>ur",
	"<cmd>nohlsearch<bar>diffupdate<bar>normal! <C-L><cr>",
	{ desc = "Redraw / Clear Search Highlights" }
)

-- lazy.nvim itself, not a plugin spec (<leader>sp is the *spec picker*, not the :Lazy UI)
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })
