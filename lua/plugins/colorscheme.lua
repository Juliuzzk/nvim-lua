return {
    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin",
        },
    },
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
                },
            })
        end,
    },
}
