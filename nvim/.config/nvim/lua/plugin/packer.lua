vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- selfmanage Packer
  use 'wbthomason/packer.nvim' -- Package manager
	use 'ayu-theme/ayu-vim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'williamboman/nvim-lsp-installer'

-- Treesitter
  use {'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate'
  }
  use {'junegunn/fzf'}
  use {'junegunn/fzf.vim'}

  use {
  'nvim-telescope/telescope.nvim',
  requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'numToStr/Comment.nvim',
    config =function()
    require('Comment').setup()
  end}

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'jose-elias-alvarez/null-ls.nvim' }
  use { 'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('trouble').setup {
      icons = true,
      mode = "workspace_diagnostics"
      }
    end
      }
  use 'mfussenegger/nvim-dap'
  use 'leoluz/nvim-dap-go'
  use 'rcarriga/nvim-dap-ui'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'nvim-telescope/telescope-dap.nvim'

end)
