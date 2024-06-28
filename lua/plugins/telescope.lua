return {
    {
        "telescope.nvim",
        keys = {
            -- Re map Grep
            { "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "Find Words" },
        },
        opts = {
            defaults = {
                file_ignore_patterns = { ".git/", "node_modules", "poetry.lock" },
            },
        },
    },
}
