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
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
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
