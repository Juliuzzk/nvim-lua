return {
    {
        "Exafunction/codeium.nvim",
        enabled = true,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "hrsh7th/nvim-cmp",
        },

        config = function()
            require("codeium").setup({})
        end,
    },

    -- {
    --     "kylechui/nvim-surround",
    --     version = "*", -- Use for stability; omit to use `main` branch for the latest features
    --     event = "VeryLazy",
    --     config = function()
    --         require("nvim-surround").setup({
    --             -- Configuration here, or leave empty to use defaults
    --         })
    --     end,
    --
    --     -- surr*ound_words             ysiw)           (surround_words)
    --     -- *make strings               ys$"            "make strings"
    --     -- [delete ar*ound me!]        ds]             delete around me!
    --     -- remove <b>HTML t*ags</b>    dst             remove HTML tags
    --     -- 'change quot*es'            cs'"            "change quotes"
    --     -- <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    --     -- delete(functi*on calls)     dsf             function calls
    -- },
    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<leader>hu", vim.cmd.UndotreeToggle)
            vim.g.undotree_WindowLayout = 3
        end,
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = {
            window = {
                position = "left",
                width = 30,
            },
        },
    },
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
                diagnostics = {
                    enabled = true, -- controls if the lsp module shows diagnostics
                    -- show on hover
                    hover_with_actions = true,
                },
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
}
