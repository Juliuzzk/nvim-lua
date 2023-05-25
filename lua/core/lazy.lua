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

local plugins = {
		-- Plugins a continuacion:
	-------------------------------------------------------
	-- Color theme
	"Mofiqul/dracula.nvim",
	-- Neo Tree
	-- Explorador de Archivos
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		}
	},
	-- Linea inferior con informacion
	"nvim-lualine/lualine.nvim" -- Statusline

}

local opts = {}


require("lazy").setup(plugins, opts)

