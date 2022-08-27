require 'packer'.startup(function(use)
  use 'wbthomason/packer.nvim'
  ------------------------------------------------------------------------------
  -- Git helper
  ------------------------------------------------------------------------------
  use 'tpope/vim-fugitive'
  ------------------------------------------------------------------------------
  -- Colorschemes
  ------------------------------------------------------------------------------
  use 'gruvbox-community/gruvbox'
  use 'lifepillar/vim-solarized8'
  use 'ayu-theme/ayu-vim'
  use 'arcticicestudio/nord-vim'
  use 'wojciechkepka/vim-github-dark'
  use 'wojciechkepka/bogster'
  use 'joshdick/onedark.vim'
  use 'projekt0n/github-nvim-theme'
  use 'EdenEast/nightfox.nvim'
  ------------------------------------------------------------------------------
  -- LSP
  ------------------------------------------------------------------------------
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/lsp-status.nvim'
  use { '/home/wojtek/dev/jakt/jakt-src/editors/vim', as = 'Jakt' }
  ------------------------------------------------------------------------------
  -- Completion
  ------------------------------------------------------------------------------
  use 'hrsh7th/nvim-compe'
  ------------------------------------------------------------------------------
  -- Auto comments
  ------------------------------------------------------------------------------
  use 'preservim/nerdcommenter'
  ------------------------------------------------------------------------------
  -- GUI enchancements
  ------------------------------------------------------------------------------
  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'

  use 'machakann/vim-highlightedyank'
  use 'kyazdani42/nvim-tree.lua'
  use 'majutsushi/tagbar'
  ------------------------------------------------------------------------------
  -- Syntactic language support
  ------------------------------------------------------------------------------
  use 'cespare/vim-toml'
  use 'stephpy/vim-yaml'
  use 'rust-lang/rust.vim'
  use 'OmniSharp/omnisharp-vim'
  use 'baskerville/vim-sxhkdrc'
  use 'fatih/vim-go'
  use 'cakebaker/scss-syntax.vim'
  use 'vim-python/python-syntax'
  use 'pangloss/vim-javascript'
  use 'lervag/vimtex'
  use 'pearofducks/ansible-vim'
  use 'mustache/vim-mustache-handlebars'
  use 'zilang/zig.vim';
  ------------------------------------------------------------------------------
  -- File search
  ------------------------------------------------------------------------------
  use 'ibhagwan/fzf-lua'
  use 'vijaymarupudi/nvim-fzf'
  use 'kyazdani42/nvim-web-devicons'
end)



require 'nvim-tree'.setup {}
require 'lualine'.setup {}
