---------------------------
-- Lua config for neovim --
---------------------------
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options
local map = vim.api.nvim_set_keymap

---------------------------------------
-- Global Look and feel (and colour) --
---------------------------------------
g.mapleader = " "

opt.relativenumber = true
opt.number = true
opt.wrap  = true
opt.expandtab = true
opt.smarttab = true
opt.textwidth=78
opt.tabstop=2
opt.shiftwidth=2
opt.softtabstop=2
opt.autowrite = true
opt.history=700                     -- keep 700 lines of command line history
opt.undolevels=700                  -- keep 700 lines of undo
opt.smartcase=true
-- opt.spell                           -- spell checker
-- opt.setlocal spell spelllang=en_gb
-- opt.set encoding=utf-8

-- Colour scheme

cmd[[colorscheme gruvbox-flat]]
vim.g.gruvbox_flat_style = "dark"


-- Status line
require('lualine').setup{
  options = {theme = 'gruvbox-flat'}
}





----------------------------------
-- LSP, tree sitter, completion --
----------------------------------
local function setup_servers()
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup{}
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end

require('lspconfig').pyright.setup{}
local nvim_lsp = require('lspconfig')    

-- Use an on_attach function to only map the following keys    
-- after the language server attaches to the current buffer    
local on_attach = function(client, bufnr)    
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end    
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end    

  --Enable completion triggered by <c-x><c-o>    
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')    

  -- Mappings.    
  local opts = { noremap=true, silent=true }    

  -- See `:help vim.lsp.*` for documentation on any of the below functions    
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)    
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)    
  -- buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)    
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)    
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)    
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)    
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)    
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)    
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)    
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)    
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)    
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)    
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)    
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)    
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)    
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)    
  buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)    

end    

local saga = require('lspsaga')
saga.init_lsp_saga({
  code_action_icon = " ",
  definition_preview_icon = "  ",
  dianostic_header_icon = "   ",
  error_sign = " ",
  finder_definition_icon = "  ",
  finder_reference_icon = "  ",
  hint_sign = "⚡",
  infor_sign = "",
  warn_sign = "",
  finder_definition_icon = '  ',
  finder_reference_icon = '  ',
  max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
	finder_action_keys = { open = 'o', vsplit = 's',split = 'i',
												 quit = 'q',scroll_down = '<C-f>', scroll_up = '<C-b>'}
})


require'nvim-treesitter.configs'.setup {
  -- Modules and its options go here
  ensure_installed = 'maintained',
  highlight = { enable = true },
  incremental_selection = { enable = true },
  textobjects = { enable = true },
}
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
    border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1,
  };

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultisnips = true;
    luasnip = true;
  };

require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    path_display = {},
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}

--------------------
-- Package remaps --
--------------------
map('n', 'K', ':Lspsaga hover_doc<CR>', {noremap = true})
map('n', '<LEADER>ff', ':Telescope find_files<CR>', {noremap = true})
map('n', '<LEADER>fg', ':Telescope live_grep<CR>', {noremap = true})
map('n', '<LEADER>fb', ':Telescope buffers<CR>', {noremap = true})
map('n', '<LEADER>fh', ':Telescope help_tags<CR>', {noremap = true}) 


------------------------
-- Package management --
------------------------
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

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
