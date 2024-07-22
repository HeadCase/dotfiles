-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.g.gruvbox_flat_style = "dark"
vim.g.gruvbox_italic_keywords = false
vim.g.gruvbox_italic_comments = true
vim.g.have_nerd_font = true

vim.bo.spelllang = "en_gb"
vim.opt.autowrite = true
vim.opt.breakindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = "menuone,noselect"
vim.opt.cursorline = true
vim.opt.hidden = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
vim.opt.incsearch = true
-- vim.opt.list = true
-- vim.opt.listchars = { trail = "·", nbsp = "␣" }
vim.opt.mouse = "a"
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.textwidth = 100
vim.opt.timeoutlen = 300
vim.opt.undodir = "/Users/gheadley/.config/nvim/undo"
vim.opt.undofile = true
vim.opt.updatetime = 250
vim.wo.number = true
vim.wo.signcolumn = "yes"
vim.wo.spell = true

-- vim.opt.wrap = false
-- vim.opt.breakindent = true
-- vim.opt.colorcolumn = "80"
-- vim.opt.completeopt = { "menu", "menuone", "noselect" }
-- vim.opt.expandtab = true
-- vim.opt.history = 700 -- keep 700 lines of command line history
-- vim.opt.mouse = "nv"
-- vim.opt.number = true
-- vim.opt.shiftwidth = 2
-- vim.opt.signcolumn = "yes:2"
-- vim.opt.smartindent = true
-- vim.opt.smarttab = true
-- vim.opt.softtabstop = 2
-- vim.opt.swapfile = false
-- vim.opt.tabstop = 2
-- vim.opt.timeoutlen = 300
