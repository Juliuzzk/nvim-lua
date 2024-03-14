-- LSP keymaps
return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()

    -- Función para buscar el índice del elemento que tiene "<c-k>"
    local function findIndexForKey(keys, key)
      for i, v in ipairs(keys) do
        if v[1] == key then
          return i
        end
      end
      return nil
    end

    -- Reemplazar el elemento en el índice encontrado
    keys[findIndexForKey(keys, "<c-k>")] = { "<c-k>", false }
  end,
}
