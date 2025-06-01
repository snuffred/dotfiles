return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    dependencies = {
        "nvim-treesitter/nvim-treesitter-context",
        -- "nvim-treesitter/nvim-treesitter-textobjects",
    },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html",},
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })

        -- module treesitter-context
        require("treesitter-context").setup({
            enable = true,
        })
    end,
}
