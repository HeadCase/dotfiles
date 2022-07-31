require'nvim-treesitter.configs'.setup {
  -- Modules and its options go here
  ensure_installed = { 'bash', 'c', 'cmake', 'css','go', 'html', 'javascript',
  'json', 'json5', 'jsonc', 'julia', 'latex', 'lua', 'make', 'markdown',
  'python', 'r', 'rst', 'typescript', 'yaml', },
  highlight = { enable = true },
  incremental_selection = { enable = true },
  textobjects = { enable = true },
}
