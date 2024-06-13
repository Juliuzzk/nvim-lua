return {
    -- UI PLUGINS
    { "bufferline.nvim", enabled = true },
    { "lualine.nvim", enabled = true },
    { "nvim-web-devicons", enabled = true },
    { "nui.nvim", enabled = true },

    -- DISABLED
    { "indent-blankline.nvim", enabled = false },
    { "which-key.nvim", enabled = false },
    { "nvim-notify", enabled = false },
    -- { "folke/noice.nvim", enabled = false },
    { "dashboard-nvim", enabled = false },
    -- { "noice.nvim", enabled = true },

    { "folke/flash.nvim", enabled = false }, -- disable search labels
    -- Auto pairs, disabled
    -- { "mini.surround", enabled = true }, -- disable search labels
    -- No activar, se pitea la busqueda con /
    { "stevearc/dressing.nvim", enabled = true },
    { "mini.indentscope", enabled = false },

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
