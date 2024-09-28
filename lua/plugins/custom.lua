return {
    vim.keymap.set("n", "<leader>p", function()
        local val = vim.fn.getreg("+")
        vim.api.nvim_command([[normal! p]])
        vim.fn.setreg("+", val)
    end, {}),

    -- vim.keymap.set("n", "<leader>nrm", ":!rm '%:p'<cr>:bd<cr>"),
    vim.keymap.set("n", "<leader>nrm", function()
        -- Obtener la extensión del archivo actual
        local file_ext = vim.fn.expand("%:e")

        -- Comprobar si la extensión es 'md'
        if file_ext == "md" then
            -- Ejecutar el comando para eliminar el archivo y cerrar el buffer
            vim.cmd("w")
            vim.cmd("!rm '" .. vim.fn.expand("%:p") .. "'")
            vim.cmd("bd")
        else
            -- Mensaje de advertencia si el archivo no es .md
            print("This command is only for delete markdown files notes.")
        end
    end, { desc = "Delete .md files loaded in buffer" }),
}
