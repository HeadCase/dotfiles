return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'glepnir/lspsaga.nvim'
  use 'hrsh7th/nvim-compe'
  use 'eddyekofo94/gruvbox-flat.nvim'
  use 'b3nj5m1n/kommentary'
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
