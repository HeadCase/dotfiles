local map = vim.api.nvim_set_keymap

------------
-- Remaps --
------------

-- Telescope
map('n', '<C-p>', ':Telescope find_files<CR>', {noremap = true})
map('n', '<LEADER>fg', ':Telescope live_grep<CR>', {noremap = true})
map('n', '<C-b>', ':Telescope buffers<CR>', {noremap = true})
map('n', '<LEADER>fh', ':Telescope help_tags<CR>', {noremap = true})


-- Formatter
map('n', '<LEADER>f', ':Format <CR>', {noremap = true})

-- NvimTree
map('n', '<C-N>', ':NvimTreeToggle<CR>', {noremap = true})

-- Trouble
map("n", "<leader>xx", "<cmd>TroubleToggle<cr>", {silent = true, noremap = true})
map("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>", {silent = true, noremap = true})
map("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>", {silent = true, noremap = true})
map("n", "<leader>xl", "<cmd>Trouble loclist<cr>", {silent = true, noremap = true})
map("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", {silent = true, noremap = true})
--[[ map("n", "gR", "<cmd>Trouble lsp_references<cr>", {silent = true, noremap = true})
 ]]
