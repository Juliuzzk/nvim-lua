-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local cmd = vim.cmd -- execute Vim commands
--
-- -- -- Cambia internamente los archivos .json a .jsonc con el fin de poder desactivar diagnosticos de lsp en los commentarios

cmd([[autocmd BufNewFile,BufRead *.json setlocal filetype=jsonc]])

cmd([[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]])
cmd([[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]])
cmd([[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]])
cmd([[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]])
cmd([[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]])
cmd([[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]])

-- don't auto commenting new lines
cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])

-- remove line lenght marker for selected filetypes
cmd([[autocmd FileType text,markdown,xml,html,xhtml,javascript setlocal cc=0]])

cmd([[au BufWritePre /tmp/* setlocal noundofile]])

-- Insert Line
cmd([[au InsertEnter * set cul ]])
cmd([[au InsertLeave * set nocul ]])

-- Cambia internamente los archivos .json a .jsonc con el fin de poder desactivar diagnosticos de lsp en los commentarios
cmd([[autocmd BufNewFile,BufRead *.json setlocal filetype=jsonc]])

-- remove whitespace on save
cmd([[au BufWritePre * :%s/\s\+$//e]])
