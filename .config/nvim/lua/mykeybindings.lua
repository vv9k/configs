require "myfuncs"

------------------------------------------------------------------------------
-- Smart tab
------------------------------------------------------------------------------
vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.SmartTab()', {expr = true, noremap = true})
vim.api.nvim_set_keymap('i', '<S-Tab>', 'compe#confirm()', {expr = true, noremap = true})
------------------------------------------------------------------------------
-- Tab navigation
------------------------------------------------------------------------------
vim.api.nvim_set_keymap('', '<C-t>h', ':tabp<cr>', {})
vim.api.nvim_set_keymap('', '<C-t>j', ':tabl<cr>', {})
vim.api.nvim_set_keymap('', '<C-t>k', ':tabr<cr>', {})
vim.api.nvim_set_keymap('', '<C-t>l', ':tabn<cr>', {})
------------------------------------------------------------------------------
-- NERDTree
------------------------------------------------------------------------------
vim.api.nvim_set_keymap('', '<C-k>', ':NvimTreeToggle<cr>', {})
------------------------------------------------------------------------------
-- Tagbar
------------------------------------------------------------------------------
vim.api.nvim_set_keymap('', '<F8>', ':TagbarToggle<cr>', {})
------------------------------------------------------------------------------
-- FZF
------------------------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<C-f>', ':FzfLua grep<cr>', {})
------------------------------------------------------------------------------
-- Disable arrow keys in normal mode
------------------------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<up>', '<nop>', {noremap = true})
vim.api.nvim_set_keymap('n', '<down>', '<nop>', {noremap = true})
vim.api.nvim_set_keymap('n', '<left>', '<nop>', {noremap = true})
vim.api.nvim_set_keymap('n', '<right>', '<nop>', {noremap = true})
------------------------------------------------------------------------------
-- Enable movement in insert mode with ctrl
------------------------------------------------------------------------------
vim.api.nvim_set_keymap('i', '<C-h>', '<left>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-j>', '<down>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-k>', '<up>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-l>', '<right>', {noremap = true})
------------------------------------------------------------------------------
-- Toggle comments
------------------------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<C-_>', '<leader>c<Space>', {})
vim.api.nvim_set_keymap('v', '<C-_>', '<leader>c<Space>', {})
------------------------------------------------------------------------------
-- Git shortcuts
------------------------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<Space>gp', '<ESC>:Git push', {noremap = true})
vim.api.nvim_set_keymap('n', '<Space>gc', '<ESC>:Git commit', {noremap = true})
vim.api.nvim_set_keymap('n', '<Space>ge', '<ESC>:Git commit --amend', {noremap = true})
vim.api.nvim_set_keymap('n', '<Space>gg', '<ESC>:Git commit .<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Space>ga', '<ESC>:Git add', {noremap = true})
vim.api.nvim_set_keymap('n', '<Space>gd', '<ESC>:Git diff<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Space>gs', '<ESC>:Git status<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Space>gl', '<ESC>:Git log<cr>', {noremap = true})
------------------------------------------------------------------------------
-- Cargo shortcuts
------------------------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<Space>cc', '<ESC>:Cargo check<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Space>cl', '<ESC>:Cargo clippy --all-features --all-targets -- -Dclippy::all<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Space>cb', '<ESC>:Cargo build<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Space>cr', '<ESC>:Cargo run<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Space>ct', '<ESC>:Cargo test --examples --all-features --all-targets -- --nocapture<cr>', {noremap = true})
------------------------------------------------------------------------------
-- Refresh configuration
------------------------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<F5>', ':source $MYVIMRC<cr>', {noremap = true})
------------------------------------------------------------------------------
-- Display highlight groups under the cursor
------------------------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<F10>', ':lua SynStack()<cr>:TSHighlightCapturesUnderCursor<cr>', {noremap = true})
------------------------------------------------------------------------------
-- Dividers
------------------------------------------------------------------------------
vim.api.nvim_set_keymap('i', '<F2>', '####################################################################################################', {noremap = true})
vim.api.nvim_set_keymap('i', '<F3>', '########################################', {noremap = true})
vim.api.nvim_set_keymap('i', '<F4>', '--------------------------------------------------------------------------------', {noremap = true})
