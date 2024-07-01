return {
    {
        "telescope.nvim",
        keys = {
            -- Re map Grep
            { "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "Find Words" },
            { "<leader>rg", "<cmd>Telescope registers<cr>", desc = "Registers" },
        },
        opts = {
            defaults = {
                file_ignore_patterns = { ".git/", "node_modules", "poetry.lock" },
            },
        },
    },
}
