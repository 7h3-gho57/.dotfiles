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
end)
