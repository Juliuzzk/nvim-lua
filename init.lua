--[[

  ██╗███╗   ██╗██╗████████╗██╗     ██╗   ██╗ █████╗
  ██║████╗  ██║██║╚══██╔══╝██║     ██║   ██║██╔══██╗
  ██║██╔██╗ ██║██║   ██║   ██║     ██║   ██║███████║
  ██║██║╚██╗██║██║   ██║   ██║     ██║   ██║██╔══██║
  ██║██║ ╚████║██║   ██║██╗███████╗╚██████╔╝██║  ██║
  ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝
Nvim init file
Version: v1.0 - 2022/10/14
--]]
-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------
-- Settings
require("settings") -- settings
-- Keymaps
require("core/keymaps") -- keymaps
-- Packe Manager
require("core/packer") -- plugin manager
-- Themes
require("core/themes/init")

-- Utils
require("plugins/gitsigns") -- git decorations
require("plugins/nvim-treesitter") -- tree-sitter interface
require("plugins/autosave") -- autosave

-- LSP Helper
require("core/lsp/init")

-- Comment's
require("plugins/comment")

-- Terminal
require("plugins/toggleterm") -- toggleterm

-- File Explorer
require("core/explorer/neo-tree") -- file_browser
require("core/explorer/telescope-nvim") -- telescope
require("core/explorer/harpoon") -- telescope select

-- Alpha Startup

require("plugins/alpha")
require("plugins/project") -- Best project management

-- Git Sidebar
require("plugins/sidebar-nvim")

-- Completition
require("core/cmp/cmp")

-- AutoPairs
require("plugins/autopairs")

-- Indetline
require("plugins/indentline")

--Copilot
require("plugins/copilot")






