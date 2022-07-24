-- yapf for python
-- local yapfFmt = function()
--   return {
--       exe = '/home/gheadley/.pyenv/shims/yapf',
--       stdin = true
--   }
-- end

-- isort for python
local isortFmt = function()
  return {
    exe = '/home/gheadley/.pyenv/shims/isort',
    args = {'-'},
    stdin = true,
  }
end

-- blue for python
local blueFmt = function()
  return {
          exe = "blue", -- this should be available on your $PATH
          args = { '-' },
          stdin = true,
        }
end
--
-- blue for python
local bashFmt = function()
  return {
          exe = "shfmt", -- this should be available on your $PATH
          args = {
            '-ci',
            '-'
          },
          stdin = true,
        }
end


require('formatter').setup({
  logging = true,
  filetype = {
    python = {blueFmt, isortFmt},
    sh = {bashFmt},
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
