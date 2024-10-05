return {
    {
        "nvim-lua/plenary.nvim",
    },

    {
        "nvchad/ui",
        config = function()
            require "nvchad"

            local keymap = vim.keymap

            keymap.set("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "Toggle NvCheatsheet" })
        end
    },

    {
        "nvchad/base46",
        lazy = true,
        build = function()
            require("base46").load_all_highlights()
        end,
    },

    { "nvchad/volt",  lazy = true },

    { "nvchad/minty", lazy = true },

    { "nvchad/menu",  lazy = true },


    -- {
    --     "f-person/auto-dark-mode.nvim",
    --     lazy = false,
    --     config = function()
    --         require("auto-dark-mode").setup({
    --             update_interval = 1000,
    --             set_dark_mode = function()
    --             end,
    --             set_light_mode = function()
    --             end,
    --         })
    --     end
    -- },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    {
        "akinsho/bufferline.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        event  = { "BufReadPre", "BufNewFile" },
        config = function()
            local highlight = {
                "RainbowRed",
                "RainbowYellow",
                "RainbowBlue",
                "RainbowOrange",
                "RainbowGreen",
                "RainbowViolet",
                "RainbowCyan",
            }

            local hooks = require "ibl.hooks"
            -- create the highlight groups in the highlight setup hook, so they are reset
            -- every time the colorscheme changes
            hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
                vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
                vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
                vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
                vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
                vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
                vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
                vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
            end)

            require("ibl").setup({
                indent = { highlight = highlight }
            })
        end
    },
}
