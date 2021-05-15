
"##############################################################################"
"                                      _                                       " 
"                                     (_)                                      " 
"                           _ ____   ___ _ __ ___                              " 
"                          | '_ \ \ / / | '_ ` _ \                             " 
"                          | | | \ V /| | | | | | |                            " 
"                          |_| |_|\_/ |_|_| |_| |_|                            " 
"                                                                              " 
"##############################################################################"
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ PLUGINS ~~~~~
"##############################################################################"
set shell=/bin/bash

call plug#begin()
"------------------------------------------------------------------------------"
" Git
Plug 'tpope/vim-fugitive'
"------------------------------------------------------------------------------"
" ColorSchemes
Plug 'sainnhe/edge'
Plug 'gruvbox-community/gruvbox'
Plug 'lifepillar/vim-solarized8'
Plug 'arzg/vim-colors-xcode'
Plug 'ayu-theme/ayu-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'fratajczak/one-monokai-vim'
Plug 'wojciechkepka/xbliss', { 'branch': 'new-colors' }
Plug 'wojciechkepka/vim-github-dark'
"------------------------------------------------------------------------------"
" GUI enhancements
"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'machakann/vim-highlightedyank'
"------------------------------------------------------------------------------"
" Comments
Plug 'preservim/nerdcommenter'
Plug 'cometsong/CommentFrame.vim'
"------------------------------------------------------------------------------"
" File structure
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
"------------------------------------------------------------------------------"
" Fuzzy finder
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"------------------------------------------------------------------------------"
" Semantic language support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"------------------------------------------------------------------------------"
" Syntactic language support
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'rust-lang/rust.vim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'baskerville/vim-sxhkdrc'
Plug 'fatih/vim-go'
Plug 'cakebaker/scss-syntax.vim'
Plug 'psf/black', {'branch': 'stable'}
Plug 'vim-python/python-syntax'
Plug 'lervag/vimtex'
Plug 'Kogia-sima/sailfish', { 'rtp': 'syntax/vim' }
Plug 'pearofducks/ansible-vim'
"------------------------------------------------------------------------------"
" Distraction free writing
Plug 'junegunn/goyo.vim'
Plug 'Chiel92/vim-autoformat'
"------------------------------------------------------------------------------"
call plug#end()
"##############################################################################"
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ COLORSCHEME ~~~~~
"##############################################################################"
" Settings
if (has("termguicolors"))
    set termguicolors
endif
set t_Co=256
"Sometimes setting 'termguicolors' is not enough and one has to set the t_8f and t_8b options explicitly
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark
"set background=light
let ayucolor="dark"
let g:gh_color = "soft"
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_contrast_light='hard'

let g:lightline = {
    \ 'colorscheme': 'gruvbox',
    \ }
syntax on

"------------------------------------------------------------------------------"
" Colorscheme
"colorscheme nord
"colorscheme ghdark
"colorscheme ayu
colorscheme gruvbox
"colorscheme solarized8
"colorscheme one-monokai
"colorscheme xcodedark
"colorscheme edge
"colorscheme xbliss
"------------------------------------------------------------------------------"
" Fonts
" Make airline use powerline fonts
" remember to install powerline-fonts
let g:airline_powerline_fonts = 1
set guifont=Fira\ Code:h11
"##############################################################################"
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ CODE ~~~~~
"##############################################################################"
" Autocomplete
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
"------------------------------------------------------------------------------"
" Rust
let g:rustfmt_autosave = 1
let g:rustfmt_options = '--edition 2018'
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'xclip -selection clipboard'
"------------------------------------------------------------------------------"
" C#
let g:OmniSharp_server_use_mono = 1
"------------------------------------------------------------------------------"
" Python
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python'
let g:python_highlight_all = 1
let g:black_linelength = 120
" Run black on file save
autocmd BufWritePre *.py execute ':Black'
hi! link pythonBuiltinType LibraryType
hi! link pythonOperator Statement
"------------------------------------------------------------------------------"
" Go
"let g:go_def_mode='gopls'
"let g:go_info_mode='gopls'
"##############################################################################"
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Basic Settings ~~~~~
"##############################################################################"
" Better display for messages
set cmdheight=2
"------------------------------------------------------------------------------"
" Permanent undo
set undodir=~/.vimdid
set undofile
"------------------------------------------------------------------------------"
" Proper search
set incsearch
set ignorecase
set smartcase
set gdefault
"------------------------------------------------------------------------------"
" Use wide tabs
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set smarttab
"------------------------------------------------------------------------------"
" Use short tabs for html and css
filetype on
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType css setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType sailfish setlocal shiftwidth=2 softtabstop=2 expandtab
"------------------------------------------------------------------------------"
" Display line number
set nu
set splitright

" Display absolute on not focused files
augroup numbertoggle
    autocmd BufEnter,FocusGained,InsertLeave * :set rnu
    autocmd BufLeave,FocusLost,InsertEnter   * :set nornu
augroup END

"------------------------------------------------------------------------------"
" For tmux over ssh
set ttyfast
"------------------------------------------------------------------------------"
" Fold code
set foldmethod=indent
set foldnestmax=2
set foldlevel=1
"------------------------------------------------------------------------------"
" Use system clipboard for yanks
if has('clipboard')
    if has('unnamedplus')  " When possible use + register for copy-paste
        set clipboard=unnamed,unnamedplus
    else         " On mac and Windows, use * register for copy-paste
        set clipboard=unnamed
    endif
endif
"------------------------------------------------------------------------------"
" Set ansible files to correct type
au BufRead,BufNewFile */ansible/*.yaml set filetype=yaml.ansible
"------------------------------------------------------------------------------"
" Enable mouse support
set mouse=a
"------------------------------------------------------------------------------"
"##############################################################################"
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ KEYBINDINGS ~~~~~
"##############################################################################"
" Switch between tabs
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
"------------------------------------------------------------------------------"
" Toggle nerdtree
map <C-k> :NERDTreeToggle<CR>
"------------------------------------------------------------------------------"
" Open hotkeys
map <C-p> :Files<CR>
nmap <leader>; :Buffers<CR>
"------------------------------------------------------------------------------"
" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
"------------------------------------------------------------------------------"
" Use Ctrl + hjkl in input mode for arrows
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>
"------------------------------------------------------------------------------"
" Quick text divider
inoremap <F2> ####################################################################################################
inoremap <F3> ########################################
inoremap <F4> --------------------------------------------------------------------------------
"------------------------------------------------------------------------------"
" Coc keybindings
nnoremap <Space>ep <Plug>(coc-diagnostic-prev-error)
nmap <Space>en <Plug>(coc-diagnostic-next-error)
nmap <F3> <Plug>(coc-diagnostic-next)
nmap <Space>dd <ESC>:w<CR>:vsplit<CR> <Plug>(coc-definition)
"------------------------------------------------------------------------------"
" Toggle code navigation
" remember to install rusty-tags with it
" cargo install rusty-tags
nmap <F8> :TagbarToggle<CR>
"------------------------------------------------------------------------------"
" Toggle comments
nmap <C-_> <leader>c<Space>
vmap <C-_> <leader>c<Space>
"------------------------------------------------------------------------------"
" Toggle fuzzy search current file ctags
nmap <C-t> <ESC>:BTags<CR>
"------------------------------------------------------------------------------"
" Toggle fuzzy search for current buffer
nmap <C-l> <ESC>:BLines<CR>
"------------------------------------------------------------------------------"
" symbol renaming
nmap <leader>rn <Plug>(coc-rename)
"------------------------------------------------------------------------------"
" git shortcuts
nnoremap <Space>gp <ESC>:Git push
nnoremap <Space>gc <ESC>:Git commit
nnoremap <Space>gg <ESC>:Git commit .<CR>
nnoremap <Space>ga <ESC>:Git commit --amend
nnoremap <Space>gd <ESC>:Git diff<CR>
nnoremap <Space>gs <ESC>:Git status<CR>
nnoremap <Space>gl <ESC>:Git log<CR>
"------------------------------------------------------------------------------"
" cargo shortcuts
nnoremap <Space>cc <ESC>:Cargo check<CR>
nnoremap <Space>cb <ESC>:Cargo build<CR>
nnoremap <Space>cr <ESC>:Cargo run
nnoremap <Space>ct <ESC>:Cargo test<CR>
"------------------------------------------------------------------------------"
" refresh vim
nnoremap <F5> <ESC>:source $MYVIMRC<CR>



nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <F10> :call SynStack()<CR>
"################################################################################
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ FUNCS ~~~~~~~~~~~~
"################################################################################
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
