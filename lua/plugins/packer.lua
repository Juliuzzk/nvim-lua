-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim


local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  use 'wbthomason/packer.nvim'

  -- buffer control
    use {'ojroques/nvim-bufdel'}

-- buffer linea
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons'}
  -- file explorer
  --use 'kyazdani42/nvim-tree.lua'
  use {
      'nvim-neo-tree/neo-tree.nvim',
      branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim"
    },
  }
  use 'sidebar-nvim/sidebar.nvim'

  -- indent line
  -- use 'lukas-reineke/indent-blankline.nvim'

  -- autopair
  use 'windwp/nvim-autopairs'

  -- icons
  use 'kyazdani42/nvim-web-devicons'


  -- treesitter interface
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-tree-docs'
  use 'p00f/nvim-ts-rainbow'

  -- color theme
use "EdenEast/nightfox.nvim" -- Packer
 

-- Terminal
    use {
         "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
        end
    }
  -- LSP
 use 'neovim/nvim-lspconfig'
 use {
     'lvimuser/lsp-inlayhints.nvim',
     config = function()
        require("lsp-inlayhints").setup()
    end
 }

  use 'folke/lsp-colors.nvim'
  use 'kkoomen/vim-doge'

  -- autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
     'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'f3fora/cmp-spell',
      'saadparwaiz1/cmp_luasnip',
    },
  }
  use 'rafamadriz/friendly-snippets'
  use {'onsails/lspkind-nvim'}


-- statusline
--use {
--    'nvim-lualine/lualine.nvim',
--     requires = { 'kyazdani42/nvim-web-devicons' , opt = true},
--   }

--use ('Iron-E/nvim-highlite')
--  use {
--     'feline-nvim/feline.nvim',
--      requires = {
--        'nvim-web-devicons'
--    },
--  }
 use 'nvim-lualine/lualine.nvim' -- Statusline


  -- cokeline - buffers
  --  use {
  --      'noib3/nvim-cokeline',
  --      requires = 'kyazdani42/nvim-web-devicons',
  --  }
    -- TODO: remoxe
    -- FIX: fix

  -- fuzzy finder
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-ui-select.nvim'
  use 'nvim-telescope/telescope-symbols.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'ibhagwan/fzf-lua'


  -- git labels
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }
  -- help for git
  use 'kdheepak/lazygit.nvim'
  -- diffview
  use {
      'sindrets/diffview.nvim',
      requires = 'nvim-lua/plenary.nvim'
  }


  -- autosave
  use "Pocco81/auto-save.nvim"

  -- just
  use 'NoahTheDuke/vim-just'
  use 'IndianBoy42/tree-sitter-just'
  -- require('tree-sitter-just').setup()


   	use({
		"ThePrimeagen/harpoon",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-lua/popup.nvim",
		},
	})


use 'norcalli/nvim-colorizer.lua'
  require'colorizer'.setup()

  use 'soywod/himalaya.vim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
