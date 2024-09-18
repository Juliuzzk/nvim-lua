-- LSP keymaps
return {
    "neovim/nvim-lspconfig",
    opts = function()
        local keys = require("lazyvim.plugins.lsp.keymaps").get()
        keys[#keys + 1] = { "<c-k>", false }
        keys[#keys + 1] = { "gd", "<cmd>lua vim.lsp.buf.definition()<CR>" }
    end,
}
