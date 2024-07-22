local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- Harpoon
vim.keymap.set("n", "<leader>h", function() ui.toggle_quick_menu() end, { desc = "[H]arpoon quick menu" })
vim.keymap.set("n", "<leader>m", function() mark.add_file() end, { desc = "Add Harpoon [m]ark" })
vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end, { desc = "Harpoon file [1]" })
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end, { desc = "Harpoon file [2]" })
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end, { desc = "Harpoon file [3]" })
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end, { desc = "Harpoon file [4]" })
