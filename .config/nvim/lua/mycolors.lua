if vim.fn.has("termguicolors") then
  vim.o.termguicolors = true
end

--vim.o.background = 'light'
--vim.o.background = 'dark'

vim.g.ayucolor = 'mirage'
vim.g.gh_color = 'soft'
vim.g.gruvbox_contrast_dark = 'medium'
vim.g.gruvbox_contrast_light = 'hard'
vim.g.airline_powerline_fonts = 1

--vim.cmd('colorscheme bogster')
--vim.cmd('colorscheme onedark')
--require('github-theme').setup()
vim.cmd('colorscheme nightfox')
--require('nightfox').load('dayfox')
