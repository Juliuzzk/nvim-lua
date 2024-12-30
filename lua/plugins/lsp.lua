return {
    {
        "neovim/nvim-lspconfig",
        -- Combinar configuración existente
        opts = function(_, opts)
            opts = opts or {}
            opts.diagnostics = opts.diagnostics or {}

            -- Añadir configuración para diagnostics
            opts.diagnostics.float = {
                border = "rounded",
            }

            -- Añadir configuración para keymaps
            local keys = require("lazyvim.plugins.lsp.keymaps").get()
            keys[#keys + 1] = { "<c-k>", false }
            keys[#keys + 1] = { "gd", "<cmd>lua vim.lsp.buf.definition()<CR>" }

            -- Devuelve las opciones combinadas
            return opts
        end,
    },
}
