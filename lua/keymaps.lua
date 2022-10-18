----------------------------------------------------------- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

-----------------------------------------------------------
-- Neovim shortcmts:
-----------------------------------------------------------
-- remap copy and paste
map("n", "<c-c>", '"*y :let @+=@*<CR>', {noremap=true, silent=true})
map("n", "<c-v>", '"+p', {noremap=true, silent=true})

--  close buffer tab
map('n', '<leader>bd', ':BufDel<CR>', default_opts)

-- clear search highlighting
map('n', '<leader>c', ':nohl<CR>', default_opts)
-- reload configuracion
map('n', '<leader>r', ':source % <CR>', default_opts)

-- don't use arrow keys
--<nop>  
map('', '<up>', '<up>', {noremap = true})
map('', '<down>', '<down>', {noremap = true})
map('', '<left>', '<left>', {noremap = true})
map('', '<right>', '<right>', {noremap = true})

--map('i', '<C-h>', '<left>', default_opts)
--map('i', '<C-j>', '<down>', default_opts)
--map('i', '<C-k>', '<up>', default_opts)
--map('i', '<C-l>', '<right>', default_opts)

-- fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>', default_opts)
map('i', '<leader>s', '<C-c>:w<CR>', default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)


-- close all windows and exit from neovim
map('n', '<leader>q', ':quitall<CR>', default_opts)

-----------------------------------------------------------
-- Applications & Plugins shortcuts:
-----------------------------------------------------------

-- Toggle Term
map('n', '<leader>ot', ':ToggleTerm<CR>',  default_opts) 
map('t', '<leader>ot', '<Cmd>:ToggleTerm<CR>',  default_opts)
map('t', '<esc>', [[<C-\><C-n>]], default_opts)
map('t', '<C-h>', [[<Cmd>wincmd h<CR>]], default_opts)
map('t', '<C-j>', [[<Cmd>wincmd j<CR>]], default_opts)
map('t', '<C-k>', [[<Cmd>wincmd k<CR>]], default_opts)
map('t', '<C-l>', [[<Cmd>wincmd l<CR>]], default_opts)

--nvim-fzf-lua
map('n', '<C-p>', ':FzfLua files<CR>', default_opts)       -- open/close

-- nvim-tree
map('n', '<C-n>', ':Neotree toggle<CR>', default_opts)       -- open/close

--  Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', default_opts)
map('n', '<leader>fr', ':Telescope live_grep<CR>', default_opts)
--map('n', '<leader>ts', ':Telescope symbols<CR>', default_opts)

-- on hesitation, bring up the panel
map('n', '<C-s>', ':SidebarNvimToggle<CR>', default_opts)




