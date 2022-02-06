return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- snippets
  use 'sirver/ultisnips'
  use 'honza/vim-snippets'

  -- tpope!
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'

  -- LSP and related
  use 'nvim-treesitter/nvim-treesitter'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use {
    'ray-x/navigator.lua',
    requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}
  }
  -- Autocomplete
  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'quangnguyen30192/cmp-nvim-ultisnips',
  }
  -- More LSP
  use 'folke/trouble.nvim'

  -- Code formatting
  use 'mhartington/formatter.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'onsails/lspkind-nvim'

  -- SQL
  use "tpope/vim-dadbod"
  use { "kristijanhusak/vim-dadbod-completion" }
  use { "kristijanhusak/vim-dadbod-ui" }


  -- Colourscheme
  use 'eddyekofo94/gruvbox-flat.nvim'

  -- Utilities
  use 'b3nj5m1n/kommentary'
  use 'karb94/neoscroll.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }
  use {
      'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
      }
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
end)
