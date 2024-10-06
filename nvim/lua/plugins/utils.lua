return {
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPre", "BufNewFile" },
    },

    {
        "windwp/nvim-autopairs",
        event = { "InsertEnter" },
        dependencies = {
            "hrsh7th/nvim-cmp",
        },
        config = function()
            require("nvim-autopairs").setup({
                dependencies = { "hrsh7th/nvim-cmp", },
                disable_filetype = { "TelescopePrompt", "vim" },
            })
        end
    },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        config = function()
            local map = vim.keymap.set
            -- whichkey
            map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })

            map("n", "<leader>wk", function()
                vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
            end, { desc = "whichkey query lookup" })
        end
    },

    -- Markdown
    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = { "echasnovski/mini.nvim", }
    },

    {
        "numToStr/Comment.nvim",
        event = { "BufReadPre", "BufNewFile" }
    },
}
