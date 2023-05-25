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
	require("plugins/nvim-treesitter") -- tree-sitter interface

	-- LSP Helper
	require("core/lsp/init")

	-- Terminal
	require("plugins/toggleterm") -- toggleterm

	-- File Explorer
	require("core/explorer/neo-tree") -- file_browser
	require("core/explorer/telescope-nvim") -- telescope
	require("core/explorer/harpoon") -- telescope select

	-- Completition
	require("core/cmp/cmp")

	-- AutoPairs
	require("plugins/autopairs")


