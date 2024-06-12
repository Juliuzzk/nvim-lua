return {
    -- UI PLUGINS
    { "which-key.nvim", enabled = false },
    { "bufferline.nvim", enabled = true },
    { "lualine.nvim", enabled = true },
    { "indent-blankline.nvim", enabled = false },
    { "mini.indentscope", enabled = true },
    { "nvim-web-devicons", enabled = true },
    { "nui.nvim", enabled = true },
    -- No activar, se pitea la busqueda con /
    { "stevearc/dressing.nvim", enabled = true },
    { "nvim-notify", enabled = false },
    -- { "folke/noice.nvim", enabled = false },
    { "dashboard-nvim", enabled = false },
    -- { "noice.nvim", enabled = true },

    { "folke/flash.nvim", enabled = false }, -- disable search labels
    -- Auto pairs, disabled
    { "mini.surround", enabled = false }, -- disable search labels

    -- TESTING
    {
        "noice.nvim",
        enabled = false,
        opts = {
            presets = {

                bottom_search = true, -- use a classic bottom cmdline for search
                command_palette = true, -- position the cmdline and popupmenu together
                long_message_to_split = false, -- long messages will be sent to a split
                inc_rename = false, -- enables an input dialog for inc-rename.nvim
            },
            routes = {
                {
                    filter = {
                        event = "lsp",
                        kind = "progress",
                        cond = function(message)
                            local client = vim.tbl_get(message.opts, "progress", "client")
                            return client == "lua_ls"
                        end,
                    },
                    opts = { skip = true },
                },
            },
        },
    },
}
