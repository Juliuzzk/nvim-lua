return {
    {
        "telescope.nvim",
        keys = {
            -- Re map Grep
            { "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "Find Words" },
            { "<leader>rg", "<cmd>Telescope registers<cr>", desc = "Registers" },
            {
                "<leader>ns",
                '<cmd>Telescope find_files search_dirs={"/Users/Julio/Library/Mobile\\ Documents/iCloud~md~obsidian/Documents/My\\ Vault"}<cr>',
                desc = "Find Files in Notes",
            },
            {
                "<leader>nw",
                '<cmd>Telescope live_grep search_dirs={"/Users/Julio/Library/Mobile\\ Documents/iCloud~md~obsidian/Documents/My\\ Vault"}<cr>',
                desc = "Grep in Notes",
            },
        },
        opts = {
            defaults = {
                file_ignore_patterns = {
                    ".git/",
                    "node_modules",
                    "poetry.lock",
                    "package.lock.json",
                    ".obsidian",
                },
            },
        },
    },
}
