local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  -- tpope!
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'

  -- LSP and related
  use 'nvim-treesitter/nvim-treesitter'
  use 'neovim/nvim-lspconfig'
  -- Autocomplete
  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'saadparwaiz1/cmp_luasnip',
  }

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
  use {'windwp/nvim-autopairs',
  config = function ()
    require('nvim-autopairs').setup()
  end
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
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
