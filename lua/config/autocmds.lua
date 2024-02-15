-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local cmd = vim.cmd -- execute Vim commands
--
-- -- -- Cambia internamente los archivos .json a .jsonc con el fin de poder desactivar diagnosticos de lsp en los commentarios
cmd([[autocmd BufNewFile,BufRead *.json setlocal filetype=jsonc]])
