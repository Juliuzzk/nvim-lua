--[[

  ██╗███╗   ██╗██╗████████╗██╗     ██╗   ██╗ █████╗
  ██║████╗  ██║██║╚══██╔══╝██║     ██║   ██║██╔══██╗
  ██║██╔██╗ ██║██║   ██║   ██║     ██║   ██║███████║
  ██║██║╚██╗██║██║   ██║   ██║     ██║   ██║██╔══██║
  ██║██║ ╚████║██║   ██║██╗███████╗╚██████╔╝██║  ██║
  ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝
Nvim init file

Version: 0.1.1 - 2022/10/14
Maintainer: JuliuzDev
Website: https://github.com/Juliuzk/nvim-lua
--]]

-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------
require("settings") -- settings
require("core/keymaps") -- keymaps
require("plugins/packer") -- plugin manager
require("plugins/autosave") -- autosave

-- Themes
require("plugins/lualine") -- statusline
require("plugins/bufferline") --  bufferline
require("plugins/nightfox") -- dracula

-- Extras
require("plugins/gitsigns") -- git decorations
-- require("plugins/diffview") -- git diffview
require("plugins/neo-tree") -- filebrowser
require("plugins/nvim-autopairs") -- autopairs
require("plugins/nvim-treesitter") -- tree-sitter interface

--  Formatters
require("plugins/null-ls")
require("plugins/formatter")
-- LSP
require("plugins/lsp")
require("plugins/completition")
require("plugins/colors")
require("plugins/mason")

-- Comment's
require("plugins/comment")

--  Terminal
require("plugins/toggleterm") -- toggleterm plugin

--  File Explorer
require("plugins/telescope-media-files") -- telescope media files
require("plugins/telescope-nvim") -- telescope
require("plugins/telescope-ui-select") -- telescope select
require("plugins/harpoon") -- telescope select

-- Alpha Startup

require("plugins/alpha")
require("plugins/project") -- Best project management

-- Git Sidebar
require("plugins/sidebar-nvim")














