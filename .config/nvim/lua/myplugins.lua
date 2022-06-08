require 'paq' {
------------------------------------------------------------------------------
-- Git helper
------------------------------------------------------------------------------
    'tpope/vim-fugitive';
------------------------------------------------------------------------------
-- Colorschemes
------------------------------------------------------------------------------
    'gruvbox-community/gruvbox';
    'lifepillar/vim-solarized8';
    'ayu-theme/ayu-vim';
    'arcticicestudio/nord-vim';
    'wojciechkepka/vim-github-dark';
    'wojciechkepka/bogster';
    'joshdick/onedark.vim';
    'projekt0n/github-nvim-theme';
    'EdenEast/nightfox.nvim';
------------------------------------------------------------------------------
-- LSP
------------------------------------------------------------------------------
    'neovim/nvim-lspconfig';
    'nvim-lua/lsp-status.nvim';
------------------------------------------------------------------------------
-- Completion
------------------------------------------------------------------------------
    'hrsh7th/nvim-compe';
------------------------------------------------------------------------------
-- Auto comments
------------------------------------------------------------------------------
    'preservim/nerdcommenter';
------------------------------------------------------------------------------
-- GUI enchancements
------------------------------------------------------------------------------
    'nvim-lualine/lualine.nvim';
    'kyazdani42/nvim-web-devicons';

    'machakann/vim-highlightedyank';
    'kyazdani42/nvim-tree.lua';
    'majutsushi/tagbar';
------------------------------------------------------------------------------
-- Syntactic language support
------------------------------------------------------------------------------
    'cespare/vim-toml';
    'stephpy/vim-yaml';
    'rust-lang/rust.vim';
    'OmniSharp/omnisharp-vim';
    'baskerville/vim-sxhkdrc';
    'fatih/vim-go';
    'cakebaker/scss-syntax.vim';
    'vim-python/python-syntax';
    'pangloss/vim-javascript';
    'lervag/vimtex';
    'pearofducks/ansible-vim';
    'mustache/vim-mustache-handlebars';
    'ziglang/zig.vim';
------------------------------------------------------------------------------
-- File search
------------------------------------------------------------------------------
    'ibhagwan/fzf-lua';
    'vijaymarupudi/nvim-fzf';
    'kyazdani42/nvim-web-devicons';
}



require'nvim-tree'.setup{}
require'lualine'.setup{}
