function nvim_create_augroups(definitions)
  for group_name, definition in pairs(definitions) do
    vim.api.nvim_command('augroup '..group_name)
    for _, def in ipairs(definition) do
      local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
      vim.api.nvim_command(command)
    end
    vim.api.nvim_command('augroup END')
  end
end

------------------------------------------------------------------------------
-- Shell
------------------------------------------------------------------------------
vim.o.shell = '/bin/bash'
------------------------------------------------------------------------------
-- Better display for messages
------------------------------------------------------------------------------
vim.o.cmdheight = 2
------------------------------------------------------------------------------
-- Permanent undo
------------------------------------------------------------------------------
vim.o.undodir = '~/.vimdid'
vim.o.undofile = true
------------------------------------------------------------------------------
-- Proper search
------------------------------------------------------------------------------
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.gdefault = true
------------------------------------------------------------------------------
-- Use wide tabs
------------------------------------------------------------------------------
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.smarttab = true
------------------------------------------------------------------------------
-- Display line number
------------------------------------------------------------------------------
vim.wo.number = true
vim.o.splitright = true
------------------------------------------------------------------------------
-- For tmux over ssh
------------------------------------------------------------------------------
vim.o.ttyfast = true
------------------------------------------------------------------------------
-- Fold code
------------------------------------------------------------------------------
vim.o.foldmethod = 'indent'
vim.o.foldnestmax = 2
vim.o.foldlevel = 1
------------------------------------------------------------------------------
-- Mouse support
------------------------------------------------------------------------------
vim.o.mouse = 'a'
------------------------------------------------------------------------------
-- Font
------------------------------------------------------------------------------
vim.o.guifont = 'Fira Code:h11'
------------------------------------------------------------------------------
-- augroups
------------------------------------------------------------------------------
vim.cmd('filetype on')
local augroups = {
  short_tab = {
    {'FileType', 'html', 'setlocal shiftwidth=2 expandtab'},
    {'FileType', 'css', 'setlocal', 'shiftwidth=2 expandtab'},
    {'FileType', 'sailfish', 'setlocal shiftwidth=2 expandtab'},
    {'FileType', 'lua', 'setlocal shiftwidth=2 expandtab'},
  },
  -- Display absolute numbers on not focused files
  number_toggle = {
    {'BufEnter,FocusGained,InsertLeave', '*', ':set rnu'},
    {'BufLeave,FocusLost,InsertEnter', '*', ':set nornu'},
  }
}

nvim_create_augroups(augroups)
------------------------------------------------------------------------------
-- Use system clipboard for yanks
------------------------------------------------------------------------------
if vim.fn.has('clipboard') == 1 then
  if vim.fn.has('unnamedplus') == 1 then
    vim.o.clipboard = 'unnamed,unnamedplus'
  else
    vim.o.clipboard = 'unnamed'
  end
end
