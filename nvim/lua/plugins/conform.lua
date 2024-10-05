return {
    "stevearc/conform.nvim",
    dependencies = {
        "zapling/mason-conform.nvim",
    },
    config = function()
        require("mason-conform").setup({
            ignore_install = {},     -- List of formatters to ignore during install
        })
    end
}
