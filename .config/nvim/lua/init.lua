require('myplugins')
require('myfuncs')
require('mylsp')
require('myopts')
require('mykeybindings')
require('mycolors')


require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
  }
}
