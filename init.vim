" Neovim configuration file

" Don't show intro
set shortmess+=I

" Enable syntax highlighting
syntax on

" Set the tab width to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Enable line numbers
set number

" Enable searching with '/' or '?'
set hlsearch

" Ignore case when searching, unless the search pattern contains uppercase characters
set ignorecase
set smartcase

" Enable autoindent
set autoindent

" Enable filetype detection and plugins
filetype plugin indent on

" Set the leader key to ','
let mapleader = ","

nmap <C-j> <C-w>j
nmap <C-k> <C-w>k

call plug#begin()
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tc50cal/vim-terminal'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'neoclide/coc.nvim'
call plug#end()
