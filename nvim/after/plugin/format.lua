-- Formatter
vim.keymap.set("n", "<leader>f", ":Format <CR>")

-- isort for python
local isortFmt = function()
	return {
		exe = "/Users/gheadley/.pyenv/shims/isort",
		args = { "-" },
		stdin = true,
	}
end

-- blue for python
local blueFmt = function()
	return {
		exe = "blue", -- this should be available on your $PATH
		args = { "-" },
		stdin = true,
	}
end

-- bash
local bashFmt = function()
	return {
		exe = "shfmt", -- this should be available on your $PATH
		args = {
			"-ci",
			"-",
		},
		stdin = true,
	}
end

require("formatter").setup({
	logging = true,
	filetype = {
		python = { blueFmt, isortFmt },
		sh = { bashFmt },
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		c = {
			require("formatter.filetypes.c").clangformat,
		},
	},
})

-- Auto-format on save (python only)
vim.api.nvim_exec(
	[[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.py FormatWrite
augroup END
]],
	true
)
vim.api.nvim_exec(
	[[
autocmd BufWritePre *.go lua vim.lsp.buf.format({ async = false })
]],
	true
)
