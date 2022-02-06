-- Colour scheme
vim.cmd[[colorscheme gruvbox-flat]]
vim.g.gruvbox_flat_style = "dark"
vim.g.gruvbox_italic_keywords = false


require 'colorizer'.setup {
  '*';
  python = {
    css = true;
  }
}
