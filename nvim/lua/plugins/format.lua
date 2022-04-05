-- yapf for python
local yapfFmt = function()
  return {
      exe = '/Users/gheadley/.pyenv/shims/yapf',
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
    python = {yapfFmt, isortFmt},
    }
})

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.py FormatWrite
augroup END
]],
  true
)
