return {

    {
        "OXY2DEV/markview.nvim",
        enabled = true,
        lazy = false, -- Recommended
        -- ft = "markdown" -- If you decide to lazy-load anyway
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons",
        },
    },
    {
        "iamcco/markdown-preview.nvim",
        enabled = true,
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },
}
