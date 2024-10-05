return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local actions = require("telescope.actions")

        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-h>"] = "which_key",
                        ["<C-k>"] = actions.move_selection_previous,     -- move to prev result
                        ["<C-j>"] = actions.move_selection_next,         -- move to next result
                    },
                },
            },

            pickers = {},
            extensions = {
                fzf = {
                    fuzzy = true,                       -- false will only do exact matching
                    override_generic_sorter = true,     -- override the generic sorter
                    override_file_sorter = true,        -- override the file sorter
                    case_mode = "smart_case",           -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                },
            },
        })

        local keymap = vim.keymap

        keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
        keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
        keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
        keymap.set("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
        keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
        keymap.set("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>",
            { desc = "telescope find in current buffer" })
        keymap.set("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
        keymap.set("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
        keymap.set("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
        keymap.set("n", "<leader>th", function()
            require("nvchad.themes").open()
        end, { desc = "telescope nvchad themes" })

        keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
        keymap.set(
            "n",
            "<leader>fa",
            "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
            { desc = "telescope find all files" }
        )
    end
}
