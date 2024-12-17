return {
    -- LSP keymaps
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
        local keys = require("lazyvim.plugins.lsp.keymaps").get()
        keys[#keys + 1] = { "<c-k>", false }
        keys[#keys + 1] = { "gd", "<cmd>lua vim.lsp.buf.definition()<CR>" }
    end,
}
