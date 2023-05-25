-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim

local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap =
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
end

return require("packer").startup(function(use)
	-- Plugins a continuacion:
	-------------------------------------------------------
	-- Color theme
	use("Mofiqul/dracula.nvim")
	-- Neo Tree
	-- Explorador de Archivos
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
	})
	-- Terminal
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	-- Comment

	-- Completition plugins
	-- Plugins necesarios para realizar sugerencias de autocompletado
	use({ "hrsh7th/nvim-cmp" }) -- The completion plugin
	use({ "hrsh7th/cmp-buffer" }) -- buffer completions
	use({ "hrsh7th/cmp-path" }) -- path completions
	use({ "saadparwaiz1/cmp_luasnip" }) -- snippet completions
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-nvim-lua" })

	-- LSP
	use({ "neovim/nvim-lspconfig" }) -- enable LSP
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	use({ "jose-elias-alvarez/null-ls.nvim" }) -- for formatters and linters
	use({ "RRethy/vim-illuminate" })

	-- LuaLine
	-- Linea inferior con informacion
	use("nvim-lualine/lualine.nvim") -- Statusline

	--  Telescope
	--  Buscador de archivos, y textos de un protecto
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-ui-select.nvim")
	use("nvim-telescope/telescope-symbols.nvim")
	use("nvim-telescope/telescope-media-files.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")


	--------------------------------------------------------
	--------------------------------------------------------
	-- With packer
	use("tjdevries/colorbuddy.nvim")
	use("bbenzikry/snazzybuddy.nvim")
	-- icons
	use("kyazdani42/nvim-web-devicons")

	-- treesitter interface
	use("nvim-treesitter/nvim-treesitter")
	use("nvim-treesitter/nvim-tree-docs")
	use("p00f/nvim-ts-rainbow")
	-- AutoTags
	use("windwp/nvim-ts-autotag")

	--  AutoPairs
	use({ "windwp/nvim-autopairs" }) -- Autopairs, integrates with both cmp and treesitter

	-- Put this at the end after all plugins
	use("wbthomason/packer.nvim")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
