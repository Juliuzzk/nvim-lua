--[[

  ██╗███╗   ██╗██╗████████╗██╗     ██╗   ██╗ █████╗
  ██║████╗  ██║██║╚══██╔══╝██║     ██║   ██║██╔══██╗
  ██║██╔██╗ ██║██║   ██║   ██║     ██║   ██║███████║
  ██║██║╚██╗██║██║   ██║   ██║     ██║   ██║██╔══██║
  ██║██║ ╚████║██║   ██║██╗███████╗╚██████╔╝██║  ██║
  ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝

Neovim init file

Version: 0.1.1 - 2022/10/14
Maintainer: JuliuzDev
Website: https://github.com/nvim/neovim-lua
--]]

-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------
require('settings')                      -- settings
require('keymaps')                       -- keymaps
require('plugins/packer')                -- plugin manager
require('plugins/autosave')              -- autosave


-- UI
require('plugins/lualine')               -- statusline
require('plugins/bufferline')            --  bufferline
require('plugins/nightfox')               -- dracula


require('plugins/gitsigns')              -- git decorations
require('plugins/diffview')              -- git diffview
require('plugins/luasnip')               -- snippets
require('plugins/neo-tree')              -- filebrowser
require('plugins/nvim-autopairs')        -- autopairs
require('plugins/nvim-cmp')              -- autocomplete
require('plugins/nvim-lspconfig')        -- LSP settings
require('plugins/nvim-treesitter')       -- tree-sitter interface
require('plugins/sidebar-nvim')          -- sidebar
 
require('plugins/telescope-media-files') -- telescope media files
require('plugins/telescope-nvim')        -- telescope
require('plugins/telescope-ui-select')   -- telescope select
require('plugins/harpoon')   -- telescope select


