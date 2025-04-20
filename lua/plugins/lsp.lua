return {
    {
        "neovim/nvim-lspconfig",
        -- Combinar configuración existente
        opts = function(_, opts)
            opts = opts or {}
            opts.diagnostics = opts.diagnostics or {}
            opts.inlay_hint = opts.inlay_hint or {}

            -- disabled inlay_hint
            opts.inlay_hints = { enabled = false }
            -- Añadir configuración para diagnostics
            opts.diagnostics.float = {
                border = "rounded",
            }

            -- Añadir configuración para keymaps
            local keys = require("lazyvim.plugins.lsp.keymaps").get()
            keys[#keys + 1] = { "<c-k>", false, mode = "i" }
            keys[#keys + 1] =
                { "<leader>fw", LazyVim.pick("live_grep"), desc = "Find Word Grep (Root Dir)" }

            -- Devuelve las opciones combinadas
            return opts
        end,
    },
}
