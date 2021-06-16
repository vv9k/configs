if vim.fn.has("termguicolors") then
  vim.o.termguicolors = true
end

vim.o.background = 'dark'
--vim.o.background = 'light'

vim.g.ayucolor = 'mirage'
vim.g.gh_color = 'soft'
vim.g.gruvbox_contrast_dark = 'medium'
vim.g.gruvbox_contrast_light = 'hard'
vim.g.airline_powerline_fonts = 1

--vim.cmd('colorscheme nord')
vim.cmd('colorscheme bogster')
--vim.cmd('colorscheme ghdark')
--vim.cmd('colorscheme ayu')
--vim.cmd('colorscheme gruvbox')
--vim.cmd('colorscheme solarized8')
