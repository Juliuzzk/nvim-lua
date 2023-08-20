--[[

  ██╗███╗   ██╗██╗████████╗██╗     ██╗   ██╗ █████╗
  ██║████╗  ██║██║╚══██╔══╝██║     ██║   ██║██╔══██╗
  ██║██╔██╗ ██║██║   ██║   ██║     ██║   ██║███████║
  ██║██║╚██╗██║██║   ██║   ██║     ██║   ██║██╔══██║
  ██║██║ ╚████║██║   ██║██╗███████╗╚██████╔╝██║  ██║
  ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝
Nvim Init File
Version: v1.1 - 2023/04/01
Minimalist and personal nvim config, based on LazyVim Config.
--]]
-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------

if vim.g.vscode then
	--vim.cmd([[source $HOME/.config/nvim/vscode/settings.vim]])
	vim.cmd([[source C:/Users/Julio/AppData/Local/nvim/vscode/settings.vim]])
else
	-- Settingsk
	require("core/settings") -- settings
	-- Keymaps
	require("core/keymaps") -- keymaps
	-- Lazy Init
	require("core/lazy")
end
