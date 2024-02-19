-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local cmd = vim.cmd -- Ejecuta comandos de Vim

-- Cambia internamente los archivos .json a .jsonc con el fin de poder desactivar diagnósticos de LSP en los comentarios
cmd([[autocmd BufNewFile,BufRead *.json setlocal filetype=jsonc]])

cmd([[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]])
cmd([[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]])
cmd([[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]])
cmd([[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]])
cmd([[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]])
cmd([[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]])

-- No comenta automáticamente las nuevas líneas
cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])

-- Elimina el marcador de longitud de línea para tipos de archivo seleccionados
cmd([[autocmd FileType text,markdown,xml,html,xhtml,javascript setlocal cc=0]])

-- Elimina los archivos temporales del control de cambios
cmd([[au BufWritePre /tmp/* setlocal noundofile]])

-- Inserta una línea al entrar en el modo de inserción
cmd([[au InsertEnter * set cul ]])
-- Quita la línea al salir del modo de inserción
cmd([[au InsertLeave * set nocul ]])

-- Cambia internamente los archivos .json a .jsonc con el fin de poder desactivar diagnósticos de LSP en los comentarios
cmd([[autocmd BufNewFile,BufRead *.json setlocal filetype=jsonc]])

-- Elimina los espacios en blanco al guardar
cmd([[au BufWritePre * :%s/\s\+$//e]])
