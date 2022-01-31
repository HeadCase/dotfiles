--[[ require('lspconfig').pyright.setup{}
require('lspconfig').sumneko_lua.setup{} ]]
--[[ vim.lsp.diagnostic.show_line_diagnostics()
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
}) ]]

local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for each installed server when it's
-- ready (i.e. when installation is finished or if the server is already
-- installed).
lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function will take the provided server configuration and
    -- decorate it with the necessary properties before passing it onwards to
    -- lspconfig.
    -- Refer to
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)
