-----------------------------------------------------------
-- Treesitter configuration file
-----------------------------------------------------------

-- Cada cierto tiempo hay que realizar un :TSupdate
-- Plugin: nvim-treesitter
--- https://github.com/nvim-treesitter/nvim-treesitter
local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

require("nvim-treesitter.configs").setup({
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = true,
    },
    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<CR>",
            scope_incremental = "<CR>",
            node_incremental = "<TAB>",
            node_decremental = "<S-TAB>",
        },
    },
    indent = {
        enable = true,
    },
    tree_docs = {
        enable = true,
    },

	-- Comment plugin extra
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },

})



