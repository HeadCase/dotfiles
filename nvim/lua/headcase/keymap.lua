-- Space leader for life
vim.g.mapleader = " "

-- Spelling
vim.keymap.set("i", "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u")

-- Preserve yank in top register always (only visual)
vim.keymap.set("v", "p", '"_dP')

-- Yank into system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Center cursor when searching and paging
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Shift lines by one up/down
vim.keymap.set("n", "<leader>j", ":m .+1<CR>==")
vim.keymap.set("n", "<leader>k", ":m .-2<CR>==")
vim.keymap.set("v", "<leader>j", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<leader>k", ":m '<-2<CR>gv=gv")

-- Formatter
vim.keymap.set("n", "<leader>f", ":Format <CR>")
