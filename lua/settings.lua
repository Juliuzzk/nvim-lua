-----------------------------------------------------------
-- Neovim settings
-----------------------------------------------------------

-----------------------------------------------------------
-- Neovim API aliases
-----------------------------------------------------------
--local map = vim.api.nvim_set_keymap -- set global keymap
local cmd = vim.cmd                   -- execute Vim commands
local exec = vim.api.nvim_exec        -- execute Vimscript
local fn = vim.fn                     -- call Vim functions
local g = vim.g                       -- global variables
local opt = vim.opt                   -- global/buffer/windows-scoped options

-----------------------------------------------------------
-- General 
----------------------------------------------------------- 
g.mapleader = ' '             -- change leader to a comma 
opt.mouse = 'a'               -- enable mouse support
opt.clipboard = 'unnamed'     -- copy/paste to system clipboard
opt.swapfile = false          -- don't use swapfile

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true             -- show line number
opt.relativenumber = false     -- show line number
opt.showmatch = true          -- highlight matching parenthesis
opt.foldmethod = 'marker'     -- enable folding (default 'foldmarker')
opt.colorcolumn = '80'        -- line lenght marker at 80 columns
opt.splitright = true         -- vertical split to the right
opt.splitbelow = true         -- orizontal split to the bottom
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern
opt.linebreak = true          -- wrap on word boundary
opt.conceallevel = 0
opt.termguicolors = true
opt.guifont = "JetBrainsMono Nerd Font"
g.neovide_cursor_vfx_mode = "railgun"


--devaslife

opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'


opt.title = true
opt.autoindent = true
opt.smartindent = true
opt.hlsearch = true
opt.backup = false
opt.showcmd = true
opt.cmdheight = 1
opt.laststatus = 2
opt.expandtab = true
opt.scrolloff = 10
opt.shell = 'fish'
opt.backupskip = { '/tmp/*', '/private/tmp/*' }
opt.inccommand = 'split'
opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
opt.smarttab = true
opt.breakindent = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.wrap = false -- No Wrap lines
opt.backspace = { 'start', 'eol', 'indent' }
opt.path:append { '**' } -- Finding files - Search down into subfolders
opt.wildignore:append { '*/node_modules/*' }


-- Add asterisks in block comments
opt.formatoptions:append { 'r' }

-- fin devaslife


opt.list = true
opt.listchars = 'tab:▸ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»'

-- set spell
-- exec ([[
--   setlocal spell spelllang=es
--   set spell
--   ]], false)
exec ([[
    augroup markdownSpell
        autocmd!
        autocmd FileType markdown setlocal spell spelllang=es
        autocmd BufRead,BufNewFile *.md setlocal spell spelllang=es
    augroup END
  ]], false)

-- remove whitespace on save
-- cmd [[au BufWritePre * :%s/\s\+$//e]]

-- highlight on yank
exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup end
]], false)

-- autoexec
exec([[
  augroup execute
    autocmd FileType javascript map <buffer> <F5> :w<CR>:exec '!gjs' shellescape(@%, 1)<CR>
    autocmd FileType javascript imap <buffer> <F5> <esc>:w<CR>:exec '!gjs' shellescape(@%, 1)<CR>
    autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
    autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>
  augroup END
]],false)

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true         -- enable background buffers
opt.history = 100         -- remember n lines in history
opt.lazyredraw = true     -- faster scrolling
opt.synmaxcol = 1000      -- max column for syntax highlight

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.tabstop = 4           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines

-- don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- remove line lenght marker for selected filetypes
cmd [[autocmd FileType text,markdown,xml,html,xhtml,javascript setlocal cc=0]]

-- 2 spaces for selected filetypes
-- cmd [[
--   autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2
-- ]]

-- IndentLine
--g.indentLine_setColors = 0  -- set indentLine color
g.indentLine_char = '|'       -- set indentLine character

-- disable IndentLine for markdown files (avoid concealing)
cmd [[autocmd FileType markdown let g:indentLine_enabled=0]]

-----------------------------------------------------------
-- Autocompletion
-----------------------------------------------------------
-- Not used here, option defined on /plugins/nvim-cmp.lua
--opt.completeopt = 'menuone,noselect,noinsert'















