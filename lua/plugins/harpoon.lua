
local ok, harpoon = pcall(require, "harpoon")
if not ok then
  return
end

harpoon.setup {}

-- Guarda marcas de archivos para volve rapidamente

-- Mostrar todas las marcas
vim.keymap.set('n', '<leader>sh', require("harpoon.ui").toggle_quick_menu, {noremap = true, silent = true, expr = false})

-- Guardar marca  en archivo
vim.keymap.set('n', '<leader>sa', require("harpoon.mark").add_file, {noremap = true, silent = true, expr = false})

-- Abrir terminal
--vim.keymap.set('n', '<leader>s1', function () require("harpoon.term").gotoTerminal(1) end, {noremap = true, silent = true, expr = false})


-- Moverse entre la marca 1...5
for i = 1, 5 do
    vim.keymap.set(
        'n',
        string.format("<leader>s%s", i),
        function ()
            require("harpoon.ui").nav_file(i)
        end,
        {noremap = true, silent = true, expr = false}
    )
end
