if vim.fn.has("termguicolors") then
  vim.o.termguicolors = true
end

vim.o.background = '{% vim.bg.light_or_dark %}'

vim.g.ayucolor = 'mirage'
vim.g.gh_color = 'soft'
vim.g.gruvbox_contrast_dark = 'medium'
vim.g.gruvbox_contrast_light = 'hard'
vim.g.airline_powerline_fonts = 1

vim.cmd('colorscheme {% vim.colorscheme %}')
--vim.cmd('colorscheme onedark')
