local map = vim.api.nvim_set_keymap
local opts = { noremap=true, silent=true }

------------
-- Remaps --
------------


-- Telescope
map('n', '<C-p>', ':Telescope find_files<CR>', opts)
map('n', '<LEADER>fg', ':Telescope live_grep<CR>', opts)
map('n', '<C-b>', ':Telescope buffers<CR>', opts)
map('n', '<LEADER>fh', ':Telescope help_tags<CR>', opts)

-- Formatter
-- map('n', '<LEADER>f', ':Format <CR>', opts)

-- NvimTree
map('n', '<C-N>', ':NvimTreeToggle<CR>', opts)
--
--[[
-- Trouble
map("n", "<leader>xx", "<cmd>TroubleToggle<cr>", {silent = true, noremap = true})
map("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>", {silent = true, noremap = true})
map("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>", {silent = true, noremap = true})
map("n", "<leader>xl", "<cmd>Trouble loclist<cr>", {silent = true, noremap = true})
map("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", {silent = true, noremap = true})
map("n", "gR", "<cmd>Trouble lsp_references<cr>", {silent = true, noremap = true}) ]]

