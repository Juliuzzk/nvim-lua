-----------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-----------------------------------------------------------
-- Neovim general keymaps:
-----------------------------------------------------------

--
-- Move selected line / block of text in visual mode
map("x", "K", ":move '<-2<CR>gv-gv", default_opts)
map("x", "J", ":move '>+1<CR>gv-gv", default_opts)

-- Keep visual mode indenting
map("v", "<", "<gv", default_opts)
map("v", ">", ">gv", default_opts)
--  close buffer tab
map("n", "<leader>bd", ":BufDel<CR>", default_opts)
-- clear search highlighting
map("n", "<leader>c", ":nohl<CR>", default_opts)
-- reload configuracion
map("n", "<leader>r", ":source % <CR>", default_opts)

-- don't use arrow keys
--<nop>
map("", "<up>", "<up>", { noremap = true })
map("", "<down>", "<down>", { noremap = true })
map("", "<left>", "<left>", { noremap = true })
map("", "<right>", "<right>", { noremap = true })

map("i", "<C-h>", "<left>", default_opts)
map("i", "<C-j>", "<down>", default_opts)
map("i", "<C-k>", "<up>", default_opts)
map("i", "<C-l>", "<right>", default_opts)

-- fast saving with <leader> and s
map("n", "<leader>ss", ":w<CR>", default_opts)
--map("i", "<leader>s", "<C-c>:w<CR>", default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map("n", "<C-h>", "<C-w>h", default_opts)
map("n", "<C-j>", "<C-w>j", default_opts)
map("n", "<C-k>", "<C-w>k", default_opts)
map("n", "<C-l>", "<C-w>l", default_opts)

map("n", "<C-h>", "<C-w>h", default_opts)
map("n", "<C-j>", "<C-w>j", default_opts)
map("n", "<C-k>", "<C-w>k", default_opts)
map("n", "<C-l>", "<C-w>l", default_opts)

-- close all windows and exit from neovim
map("n", "<leader>qq", ":quitall<CR>", default_opts)
map("n", "<leader>wq", ":wq<CR>", default_opts)

-- back tab
map("i", "<S-Tab>", "<C-d>", default_opts)



-- normal copy, paste
-- Don't yank on delete char
--map("n", "x", '"_x', default_opts)
--map("n", "X", '"_X', default_opts)
--map("v", "x", '"_x', default_opts)
--map("v", "X", '"_X', default_opts)

-- Don't yank on visual paste
--map("v", "p", '"_dP', default_opts)


--" Select with shift + arrows

map("i", "<S-Left>", "<Left><C-o>v", default_opts)
map("i", "<S-Right>", "<C-o>v", default_opts)
map("i", "<S-Up>", "<Left><C-o>v<Up><Right>", default_opts)
map("i", "<S-Down>", "<C-o>v<Down><Left>", default_opts)
map("i", "<C-S-Left>", "<S-Left><C-Left>", {})
map("i", "<C-S-Right>", "<S-Right><C-Right>", {})
map("v", "<S-Left>", "<Left>", default_opts)
map("v", "<S-Right>", "<Right>", default_opts)
map("v", "<S-Up>", "<Up>", default_opts)
map("v", "<S-Down>", "<Down>", default_opts)

--" Auto unselect when not holding shift
map("v", "<Left>", "<Esc>", {})
map("v", "<Right>", "<Esc><Right>", {})
map("v", "<Up>", "<Esc><Up>", {})
map("v", "<Down>", "<Esc><Down>", {})


-- Move text up and down

--  A = shift
map("v", "<A-j>", ":m .+1<CR>==", default_opts)
map("v", "<A-k>", ":m .-2<CR>==", default_opts)
map("v", "p", '"_dP', default_opts)

-- Visual Block --
-- Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv", default_opts)
map("x", "K", ":move '<-2<CR>gv-gv", default_opts)
map("x", "<A-j>", ":move '>+1<CR>gv-gv", default_opts)
map("x", "<A-k>", ":move '<-2<CR>gv-gv", default_opts)

-----------------------------------------------------------
-- Aplicaciones y plugins keymaps:
-----------------------------------------------------------

-- Neo-Tree
map("n", "<C-n>", ":Neotree toggle<CR>", default_opts) -- open/close

--  Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", default_opts)
map("n", "<leader>fw", ":Telescope live_grep<CR>", default_opts)
--map('n', '<leader>ts', ':Telescope symbols<CR>', default_opts)

-- on hesitation, bring up the panel
map("n", "<C-s>", ":SidebarNvimToggle<CR>", default_opts)

-----------------------------------------------------------
-- Desactivar algunos keymaps:
-----------------------------------------------------------

-- Desactivar algunos mapping map("", "J", "<nop>", { noremap = true })
--[[ map("", "q", "<nop>", { noremap = true }) -- recording ]]






