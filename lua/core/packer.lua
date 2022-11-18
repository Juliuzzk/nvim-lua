---@diagnostic disable: lowercase-global
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
	-- Alpha Nvim - Startup Page
	-- Pantalla de Inicio al abrir Nvim
	use({
		"goolord/alpha-nvim",
		requires = {
			"kyazdani42/nvim-web-devicons",
			"ahmedkhalf/project.nvim",
		},
	})

	-- Nvim BufDel
	-- Permite borrar buffer tab
	use({ "ojroques/nvim-bufdel" })

	-- Harpoon
	-- Plugin Utilizado para guardar marks
	-- esto permite volver a puntos que uno quiera radidamente
	use({
		"ThePrimeagen/harpoon",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-lua/popup.nvim",
		},
	})
	-- IndentLin
	use({ "lukas-reineke/indent-blankline.nvim" })
	-- Color theme
	use("EdenEast/nightfox.nvim")
	use("folke/tokyonight.nvim")
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

	--  AutoPairs
	use({ "windwp/nvim-autopairs" }) -- Autopairs, integrates with both cmp and treesitter
	-- Git Sidebar
	-- Barra lateral para visualizar cambios en git y otros
	use("sidebar-nvim/sidebar.nvim")

	-- Terminal
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	-- Comment
	-- Plugins para realizar comentarios en varios lenguajes
	use("numToStr/Comment.nvim")
	use("JoosepAlviste/nvim-ts-context-commentstring")

	-- Completition plugins
	-- Plugins necesarios para realizar sugerencias de autocompletado
	use({ "hrsh7th/nvim-cmp" }) -- The completion plugin
	use({ "hrsh7th/cmp-buffer" }) -- buffer completions
	use({ "hrsh7th/cmp-path" }) -- path completions
	use({ "saadparwaiz1/cmp_luasnip" }) -- snippet completions
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-nvim-lua" })

	-- snippets
	use({ "L3MON4D3/LuaSnip" }) --snippet engine
	use({ "rafamadriz/friendly-snippets" }) -- a bunch of snippets to use

	-- LSP
	use({ "neovim/nvim-lspconfig" }) -- enable LSP
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	use({ "jose-elias-alvarez/null-ls.nvim" }) -- for formatters and linters
	use({ "RRethy/vim-illuminate" })

	-- AutoSave
	-- Guardado automatico
	use("Pocco81/auto-save.nvim")

	-- BufferLine
	-- Linea superior de tabs llamadas buffer
	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "kyazdani42/nvim-web-devicons" })

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

	-- git labels
	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			---@diagnostic disable-next-line: different-requires
			require("gitsigns").setup()
		end,
	})
	-- help for git
	use("kdheepak/lazygit.nvim")

	-- just
	use("NoahTheDuke/vim-just")
	use("IndianBoy42/tree-sitter-just")
	-- require('tree-sitter-just').setup()
	use("norcalli/nvim-colorizer.lua")
	require("colorizer").setup()

	use("soywod/himalaya.vim")

	-- Put this at the end after all plugins
	use("wbthomason/packer.nvim")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
