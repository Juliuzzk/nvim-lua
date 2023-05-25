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

	require("core/lazy")
	-- Settingsk
	require("settings") -- settings
	-- Keymaps
	require("core/keymaps") -- keymaps
	-- Themes
	require("core/themes/init")

	-- File Explorer
	require("core/explorer/neo-tree") -- file_browser


-------------- New Lazy

