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
