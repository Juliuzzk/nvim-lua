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

    -- Color theme
    use("EdenEast/nightfox.nvim")


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
	use	'numToStr/Comment.nvim'
	use 'JoosepAlviste/nvim-ts-context-commentstring'


	--[[ use { 'lalitmee/cobalt2.nvim', requires = 'tjdevries/colorbuddy.nvim' } ]]

	-- With packer
	use 'tjdevries/colorbuddy.nvim'
	use 'bbenzikry/snazzybuddy.nvim'

    --------------------------------------------------------
	--------------------------------------------------------

    -- buffer linea
    use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "kyazdani42/nvim-web-devicons" })

    -- icons
    use("kyazdani42/nvim-web-devicons")

    -- treesitter interface
    use("nvim-treesitter/nvim-treesitter")
    use("nvim-treesitter/nvim-tree-docs")
    use("p00f/nvim-ts-rainbow")


    use({
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    })

    -- statusline
    use("nvim-lualine/lualine.nvim") -- Statusline

    -- fuzzy finder
    use("nvim-lua/popup.nvim")
    use("nvim-lua/plenary.nvim")
    use("nvim-telescope/telescope.nvim")
    use("nvim-telescope/telescope-ui-select.nvim")
    use("nvim-telescope/telescope-symbols.nvim")
    use("nvim-telescope/telescope-media-files.nvim")
    use("nvim-telescope/telescope-file-browser.nvim")

	--use 'ibhagwan/fzf-lua'

    -- git labels
    use({
        "lewis6991/gitsigns.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            require("gitsigns").setup()
        end,
    })
    -- help for git
    use("kdheepak/lazygit.nvim")
    -- diffview
    --use({
    --    "sindrets/diffview.nvim",
    --    requires = "nvim-lua/plenary.nvim",
    --})

    -- autosave
    use("Pocco81/auto-save.nvim")

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
