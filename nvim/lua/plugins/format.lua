-- yapf for python
local yapfFmt = function()
  return {
      exe = '/Users/gheadley/.pyenv/shims/yapf',
      stdin = true
  }
end

local blueFmt = function()
  return {
      exe = '/Users/gheadley/.pyenv/shims/blue',
      stdin = true
  }
end

-- isort for python
local isortFmt = function()
  return {
    exe = '/Users/gheadley/.pyenv/shims/isort',
    args = {'-'},
    stdin = true,
  }
end

require('formatter').setup({
  logging = true,
  filetype = {
    python = {blueFmt, isortFmt},
    go = {
      require('formatter.filetypes.go').gofmt,
      require('formatter.filetypes.go').goimports,
    }
    }
})

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]],
  true
)
