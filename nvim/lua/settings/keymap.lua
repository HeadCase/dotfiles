local map = vim.api.nvim_set_keymap

------------
-- Remaps --
------------
map("n", "gd", ":lua vim.lsp.buf.definition()<CR>", {noremap = true, silent = true})
map("n", "<lEADER>cf", ":Lspsaga lsp_finder<CR>", { silent = true })
map("n", "<LEADER>ca", ":Lspsaga code_action<CR>", { silent = true })
map("v", "<LEADER>ca", ":<C-U>Lspsaga range_code_action<CR>", { silent = true })
map("n", "K", ":Lspsaga hover_doc<CR>", { silent = true })
map("n", "<LEADER>b", '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<CR>', { silent = true })
map("n", "<LEADER>f", '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<CR>', { silent = true })
map("n", "<LEADER>gs", ":Lspsaga signature_help<CR>", { silent = true })
map("n", "<LEADER>d", ":Lspsaga show_line_diagnostics<CR>", { noremap=true, silent = true })
map("n", "]e", ":Lspsaga diagnostic_jump_next<CR>", { silent = true })
map("n", "[e", ":Lspsaga diagnostic_jump_prev<CR>", { silent = true })
map("n", "<LEADER>rn", ":Lspsaga rename<CR>", { silent = true })
map("n", "<LEADER>pd", ":Lspsaga preview_definition<CR>", { silent = true })
map('n', '<C-p>', ':Telescope find_files<CR>', {noremap = true})
map('n', '<LEADER>fg', ':Telescope live_grep<CR>', {noremap = true})
map('n', '<C-b>', ':Telescope buffers<CR>', {noremap = true})
map('n', '<LEADER>fh', ':Telescope help_tags<CR>', {noremap = true})
map('n', '<LEADER>f', ':Format <CR>', {noremap = true})
map('n', '<C-N>', ':NvimTreeToggle<CR>', {noremap = true})
-- Lua
map("n", "<leader>xx", "<cmd>TroubleToggle<cr>", {silent = true, noremap = true})
map("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>", {silent = true, noremap = true})
map("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>", {silent = true, noremap = true})
map("n", "<leader>xl", "<cmd>Trouble loclist<cr>", {silent = true, noremap = true})
map("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", {silent = true, noremap = true})
map("n", "gR", "<cmd>Trouble lsp_references<cr>", {silent = true, noremap = true})

