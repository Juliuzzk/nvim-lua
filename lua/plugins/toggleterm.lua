require("toggleterm").setup{}

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd



-- Toggle Term
map("n", "<leader>ot", ":ToggleTerm<CR>", default_opts)
map("t", "<esc><esc>", "<Cmd>:ToggleTerm<CR>", default_opts)


map("t", "<esc>", [[<C-\><C-n>]], default_opts)
map("t", "<C-h>", [[<Cmd>wincmd h<CR>]], default_opts)
map("t", "<C-j>", [[<Cmd>wincmd j<CR>]], default_opts)
map("t", "<C-k>", [[<Cmd>wincmd k<CR>]], default_opts)
map("t", "<C-l>", [[<Cmd>wincmd l<CR>]], default_opts)


