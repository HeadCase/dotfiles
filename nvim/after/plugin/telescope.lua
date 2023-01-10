local builtin = require("telescope.builtin")

require("telescope").load_extension("harpoon")
require("telescope").load_extension("lsp_handlers")
require("telescope").setup({
	defaults = {
		layout_strategy = "vertical",
		layout_config = {
			vertical = { mirror = true },
		},
	},
})

-- Keymaps
vim.keymap.set("n", "<C-p>", function()
	builtin.find_files()
end, { desc = "Ctrl-P Hangover" })
vim.keymap.set("n", "<C-b>", function()
	builtin.buffers()
end, { desc = "Ctrl-P Hangover for [b]uffers" })
vim.keymap.set("n", "<leader>?", function()
	builtin.oldfiles()
end, { desc = "[?] Find recent files" })
vim.keymap.set("n", "<leader>sp", function()
	builtin.git_files()
end, { desc = "[s]earch [p]roject (git)" })
vim.keymap.set("n", "<leader>sg", function()
	builtin.live_grep()
end, { desc = "[s]earch [g]rep" })
vim.keymap.set("n", "<leader>sh", function()
	builtin.help_tags()
end, { desc = "[s]search [h]elp" })

