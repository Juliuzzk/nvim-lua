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
require("core/themes/init")
--require("plugins/lualine") -- statusline
--require("core/themes/bufferline") --  bufferline
--require("core/themes/nightfox") -- dracula
--require("core/themes/colors") -- colorbuddy

-- Extras
require("plugins/gitsigns") -- git decorations
require("plugins/neo-tree") -- file_browser
require("plugins/nvim-treesitter") -- tree-sitter interface

-- LSP Helper
require("core/lsp/init")

-- Comment's
require("plugins/comment")

--  Terminal
require("plugins/toggleterm") -- toggleterm plugin

--  File Explorer
--require("plugins/telescope-media-files") -- telescope media files
require("core/telescope-nvim") -- telescope
--require("plugins/telescope-ui-select") -- telescope select
require("plugins/harpoon") -- telescope select

-- Alpha Startup

require("plugins/alpha")
require("plugins/project") -- Best project management

-- Git Sidebar
require("plugins/sidebar-nvim")


-- Completition
require("core/cmp/cmp")








