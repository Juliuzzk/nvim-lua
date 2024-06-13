return {
    -- Catppucinn
    {
        "catppuccin/nvim",
        config = function()
            require("catppuccin").setup({
                transparent_background = true,
                flavour = "mocha", -- latte, frappe, macchiato, mocha
                integrations = {
                    aerial = true,
                    alpha = true,
                    cmp = true,
                    dashboard = true,
                    flash = true,
                    gitsigns = true,
                    headlines = true,
                    illuminate = true,
                    indent_blankline = { enabled = true },
                    leap = true,
                    lsp_trouble = true,
                    mason = true,
                    markdown = true,
                    mini = true,
                    native_lsp = {
                        enabled = true,
                        underlines = {
                            errors = { "undercurl" },
                            hints = { "undercurl" },
                            warnings = { "undercurl" },
                            information = { "undercurl" },
                        },
                    },
                    navic = { enabled = true, custom_bg = "lualine" },
                    neotest = true,
                    neotree = true,
                    noice = true,
                    notify = true,
                    semantic_tokens = true,
                    telescope = true,
                    treesitter = true,
                    treesitter_context = true,
                    which_key = true,
                    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                },
            })
        end,
    },
    -- TokyoNight

    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                transparent = true,
                styles = {
                    sidebars = "transparent",
                    floats = "transparent",
                },
            })
        end,
    },

    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            -- colorscheme = "catppuccin",
            colorschame = "tokyonight",
        },
    },
}
