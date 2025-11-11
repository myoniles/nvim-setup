vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      requires = {
                   {'nvim-lua/plenary.nvim'},
                   {'BurntSushi/ripgrep'},
                 }
  }

  use "Mofiqul/dracula.nvim"

  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }
  use "nvim-treesitter/playground"
  use "theprimeagen/harpoon"

  use "lewis6991/gitsigns.nvim"

  use "mbbill/undotree"
  use "tpope/vim-fugitive"

  use 'mason-org/mason.nvim'

  use {
        'mason-org/mason-lspconfig.nvim',
	requires = {

		{'neovim/nvim-lspconfig'}
	}

  }
  use { 
      'hrsh7th/nvim-cmp',
      requires = {
          {'hrsh7th/cmp-nvim-lsp'},
          -- {'hrsh7th/cmp-vsnip'},
          -- {'hrsh7th/vim-vsnip'}
          {'L3MON4D3/LuaSnip'}
      }

  }

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  }

  end)
