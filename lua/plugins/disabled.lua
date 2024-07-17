return {
    -- UI PLUGINS
    { "bufferline.nvim", enabled = true },
    { "lualine.nvim", enabled = true },
    { "nvim-web-devicons", enabled = true },
    { "nui.nvim", enabled = true },
    { "stevearc/dressing.nvim", enabled = true },
    {
        "noice.nvim",
        enabled = true,
        opts = {
            messages = {
                -- NOTE: If you enable messages, then the cmdline is enabled automatically.
                -- This is a current Neovim limitation.
                enabled = false, -- enables the Noice messages UI
                view = "notify", -- default view for messages
                view_error = "notify", -- view for errors
                view_warn = "notify", -- view for warnings
                view_history = "messages", -- view for :messages
                view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
            },
            lsp = {

                progress = {
                    enabled = false,
                },
                hover = {
                    enabled = true,
                    silent = false, -- set to true to not show a message if hover is not available
                },
                signature = {
                    enabled = false,
                },
                message = {
                    -- Messages shown by lsp servers
                    enabled = false,
                },
            },
            -- you can enable a preset for easier configuration
            presets = {
                bottom_search = true, -- use a classic bottom cmdline for search
                command_palette = true, -- position the cmdline and popupmenu together
                lsp_doc_border = true, -- add a border to hover docs and signature help

                inc_rename = false, -- enables an input dialog for inc-rename.nvim
                long_message_to_split = false, -- long messages will be sent to a split
            },
            notify = {
                enabled = false,
                view = "notify",
            },

            popupmenu = {
                enabled = false, -- enables the Noice popupmenu UI
            },
        },
    },

    -- DISABLED
    { "indent-blankline.nvim", enabled = false },
    { "which-key.nvim", enabled = false },
    { "nvim-notify", enabled = false },
    { "dashboard-nvim", enabled = false },
    { "folke/flash.nvim", enabled = false }, -- disable search labels
    -- No activar, se pitea la busqueda con /
    { "mini.indentscope", enabled = false },
}
