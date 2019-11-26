set shell=/bin/bash

call plug#begin()

" ColorSchemes
Plug 'sainnhe/edge'
Plug 'wojciechkepka/tequila-sunrise.vim'

" GUI enhancements
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'

" Fuzzy finder
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Semantic language support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntactic language support
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'rust-lang/rust.vim'

" Distraction free writing
Plug 'junegunn/goyo.vim'
Plug 'Chiel92/vim-autoformat'


call plug#end()

set termguicolors
set background=dark
colorscheme tequila-sunrise
"colorscheme edge
syntax on

" Autocomplete
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" Use <c-space> to trigger completion.
"inoremap <silent><expr> <c-space> coc#refresh()

" Rust
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'xclip -selection clipboard'
let $RUST_SRC_PATH = systemlist("rustc --print sysroot")[0] . "/lib/rustlib/src/rust/src"

" Better display for messages
set cmdheight=2

" Permanent undo
set undodir=~/.vimdid
set undofile

" Proper search
set incsearch
set ignorecase
set smartcase
set gdefault

" Use wide tabs
set shiftwidth=8
set softtabstop=8
set tabstop=8
set noexpandtab

set splitright

" Escape with ctrl+k
nnoremap <C-k> <Esc>
inoremap <C-c> <Esc>

" Open hotkeys
map <C-p> :Files<CR>
nmap <leader>; :Buffers<CR>

" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>


" Use Ctrl + hjkl in input mode for arrows
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>

" Use system clipboard for yanks
set clipboard=unnamed

" Coc keybindings
nmap <F2> <Plug>(coc-diagnostic-next-error)
nmap <F3> <ESC>:w<CR>:vsplit<CR> <Plug>(coc-definition)

" Run rust and python
noremap <F5> <ESC>:w<CR>:!python %<CR>
noremap <F6> <ESC>:w<CR>:vsplit term://cargo run<CR>
