local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

--[[
local plugins = {
		-- Plugins a continuacion:
	-------------------------------------------------------
	-- Color theme
	{ "catppuccin/nvim", name = "catppuccin" },
	-- Linea inferior con informacion
	"nvim-lualine/lualine.nvim", -- Statusline
	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

	{
	"nvim-tree/nvim-tree.lua",
	  version = "*",
	  dependencies = {
		"nvim-tree/nvim-web-devicons",
	  }
	},


}
]]--


require("lazy").setup("plugins", {
	  defaults = {
		lazy = true,
	  },
	  checker = {
		enabled = true,
		notify = false,
		frequency = 86400, -- check for updates once a day
	  },
	  change_detection = {
		enabled = true,
		notify = false,
	  }

})

