local map = vim.api.nvim_set_keymap

------------
-- Remaps --
------------
-- LSP
map("n", "gd", ":lua vim.lsp.buf.definition()<CR>", {noremap = true, silent = true})

-- LSPsaga
map("n", "<lEADER>cf", ":Lspsaga lsp_finder<CR>", { silent = true })
map("n", "<LEADER>ca", ":Lspsaga code_action<CR>", { silent = true })
map("v", "<LEADER>ca", ":<C-U>Lspsaga range_code_action<CR>", { silent = true })
map("n", "K", ":Lspsaga hover_doc<CR>", {noremap = true,  silent = true })
map("n", "<LEADER>k", '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<CR>', { noremap = true, silent = true })
map("n", "<LEADER>j", '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<CR>', { noremap = true, silent = true })
map("n", "<LEADER>gs", ":Lspsaga signature_help<CR>", { silent = true })
map("n", "<LEADER>d", ":Lspsaga show_line_diagnostics<CR>", { noremap = true, silent = true })
map("n", "]e", ":Lspsaga diagnostic_jump_next<CR>", { silent = true })
map("n", "[e", ":Lspsaga diagnostic_jump_prev<CR>", { silent = true })
map("n", "<LEADER>rn", ":Lspsaga rename<CR>", { silent = true })
map("n", "<LEADER>pd", ":Lspsaga preview_definition<CR>", { silent = true })

-- Telescope
map('n', '<C-p>', ':Telescope find_files<CR>', {noremap = true})
map('n', '<LEADER>fg', ':Telescope live_grep<CR>', {noremap = true})
map('n', '<C-b>', ':Telescope buffers<CR>', {noremap = true})
map('n', '<LEADER>fh', ':Telescope help_tags<CR>', {noremap = true})

-- Formatter
map('n', '<LEADER>f', ':Format <CR>', {noremap = true})

-- NerdTree
map('n', '<C-N>', ':NvimTreeToggle<CR>', {noremap = true})

-- Completion
map('i', "<C-space>", "compe#complete()", {expr = true, silent=true, noremap = true})
map('i', "<CR>", "compe#confirm('<CR>')", {expr = true, silent=true})
map('i', "<C-e>", "compe#close('<C-e>')", {expr = true, silent=true})
map('i', "<C-f>", "compe#scroll({'delta': +4})", {expr = true, silent=true})
map('i', "<C-d>", "compe#scroll({'delta': -4})", {expr = true, silent=true})


