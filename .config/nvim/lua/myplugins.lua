local paq = require('paq-nvim').paq

------------------------------------------------------------------------------
-- Git helper
------------------------------------------------------------------------------
paq {'tpope/vim-fugitive'}
------------------------------------------------------------------------------
-- Colorschemes
------------------------------------------------------------------------------
paq {'gruvbox-community/gruvbox'}
paq {'lifepillar/vim-solarized8'}
paq {'ayu-theme/ayu-vim'}
paq {'arcticicestudio/nord-vim'}
paq {'wojciechkepka/vim-github-dark'}
paq {'wojciechkepka/bogster'}
paq {'joshdick/onedark.vim'}
------------------------------------------------------------------------------
-- LSP
------------------------------------------------------------------------------
paq {'neovim/nvim-lspconfig'}
paq {'nvim-lua/lsp-status.nvim'}
------------------------------------------------------------------------------
-- Completion
------------------------------------------------------------------------------
paq {'hrsh7th/nvim-compe'}
------------------------------------------------------------------------------
-- Auto comments
------------------------------------------------------------------------------
paq {'preservim/nerdcommenter'}
------------------------------------------------------------------------------
-- GUI enchancements
------------------------------------------------------------------------------
paq {'nvim-lualine/lualine.nvim'}
paq {'kyazdani42/nvim-web-devicons'}

paq {'machakann/vim-highlightedyank'}
paq {'kyazdani42/nvim-tree.lua'}
paq {'majutsushi/tagbar'}
------------------------------------------------------------------------------
-- Syntactic language support
------------------------------------------------------------------------------
paq {'nvim-treesitter/nvim-treesitter'}
paq {'nvim-treesitter/playground'}
paq {'cespare/vim-toml'}
paq {'stephpy/vim-yaml'}
paq {'rust-lang/rust.vim'}
paq {'OmniSharp/omnisharp-vim'}
paq {'baskerville/vim-sxhkdrc'}
paq {'fatih/vim-go'}
paq {'cakebaker/scss-syntax.vim'}
paq {'vim-python/python-syntax'}
paq {'pangloss/vim-javascript'}
paq {'lervag/vimtex'}
paq {'pearofducks/ansible-vim'}
------------------------------------------------------------------------------
-- File search
------------------------------------------------------------------------------
paq {'ibhagwan/fzf-lua'}
paq {'vijaymarupudi/nvim-fzf'}
paq {'kyazdani42/nvim-web-devicons'}


require'nvim-tree'.setup{}
require'lualine'.setup{}
