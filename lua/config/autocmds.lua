-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local cmd = vim.cmd -- Ejecuta comandos de Vim

-- Cambia el tipo de archivo de .json a .jsonc para permitir comentarios en JSON
cmd([[autocmd BufNewFile,BufRead *.json setlocal filetype=jsonc]])

-- Desactiva la continuación automática de comentarios en nuevas líneas
cmd([[autocmd BufEnter * set fo-=c fo-=r fo-=o]])

-- Elimina los espacios en blanco al final de las líneas antes de guardar cualquier archivo
cmd([[autocmd BufWritePre * :%s/\s\+$//e]])

-- Establece conceallevel en 0 para archivos Markdown (muestra todo el texto sin ocultar caracteres especiales)
cmd([[autocmd FileType markdown setlocal conceallevel=0]])
