require'navigator'.setup{
  lsp_installer = true,
  keymaps = {
    {key = "<Leader>gd", func = "declaration()"},
    {key = "<Leader>gr", func = "require('navigator.reference').reference()"},
    {key = "<Leader>pd", func = "require('navigator.definition').definition_preview()"},
    {key = "<Leader>gs", func = "signature_help()"},
    {key = "<Leader>d", func = "require('navigator.diagnostics').show_diagnostics()"},
    {key = "<Leader>D", func = "require('navigator.diagnostics').show_buf_diagnostics()"},
  }
}
---[[ map("n", "<lEADER>cf", ":Lspsaga lsp_finder<CR>", { silent = true })
--[[ -map("n", "<LEADER>ca", ":Lspsaga code_action<CR>", { silent = true })
-map("v", "<LEADER>ca", ":<C-U>Lspsaga range_code_action<CR>", { silent = true })
-map("n", "K", ":Lspsaga hover_doc<CR>", { silent = true })
-map("n", "<LEADER>b", '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<CR>', { silent = true })
-map("n", "<LEADER>f", '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<CR>', { silent = true })
-map("n", "<LEADER>gs", ":Lspsaga signature_help<CR>", { silent = true })
-map("n", "<LEADER>d", ":Lspsaga show_line_diagnostics<CR>", { noremap=true, silent = true })
-map("n", "]e", ":Lspsaga diagnostic_jump_next<CR>", { silent = true })
-map("n", "[e", ":Lspsaga diagnostic_jump_prev<CR>", { silent = true })
-map("n", "<LEADER>rn", ":Lspsaga rename<CR>", { silent = true })
-map("n", "<LEADER>pd", ":Lspsaga preview_definition<CR>", { silent = true }) ]]
