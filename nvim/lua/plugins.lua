-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

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
  use 'kabouzeid/nvim-lspinstall'
  use 'glepnir/lspsaga.nvim'
  use 'folke/trouble.nvim'

  -- Code formatting
  use 'mhartington/formatter.nvim'

  -- Autocomplete
  use 'hrsh7th/nvim-compe'


  -- Colourscheme
  use 'eddyekofo94/gruvbox-flat.nvim'

  -- Utilities
  use 'b3nj5m1n/kommentary'
  use 'karb94/neoscroll.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
}
  use {
      'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
      }
  use {
  "blackCauldron7/surround.nvim",
  config = function()
    require "surround".setup {}
  end
  }
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
end)
