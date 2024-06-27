return {

    vim.keymap.set("n", "<leader>p", function()
        local val = vim.fn.getreg("+")
        vim.api.nvim_command([[normal! p]])
        vim.fn.setreg("+", val)
    end, {}),
}
