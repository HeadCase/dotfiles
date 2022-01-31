local path = require 'nvim-lsp-installer.path'
local install_root_dir = path.concat {vim.fn.stdpath 'data', 'lsp_servers'}

require'navigator'.setup{
  -- debug = true,
  lsp = {
    pyright = { cmd = { install_root_dir .. "/python/node_modules/.bin/pyright-langserver","--stdio" }
    },
    sumneko_lua = { cmd = { install_root_dir .. "/sumneko_lua/extension/server/bin/lua-language-server", }
    },
  } ,
  keymaps = {
    {key = "gd", func = "require('navigator.definition').definition()"},
    {key = "<Leader>gr", func = "require('navigator.reference').reference()"},
    {key = "<Leader>pd", func = "require('navigator.definition').definition_preview()"},
    {key = "<Leader>gs", func = "signature_help()"},
    {key = "<Leader>d", func = "require('navigator.diagnostics').show_diagnostics()"},
    {key = "<Leader>D", func = "require('navigator.diagnostics').show_buf_diagnostics()"},
  },
}
