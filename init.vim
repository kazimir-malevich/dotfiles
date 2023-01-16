" Neovim configuration file

" Don't show intro
set shortmess+=I

" Enable syntax highlighting
syntax on

" Stop mouse
set mouse=

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
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

call plug#begin()
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'neoclide/coc.nvim'
    Plug 'sheerun/vim-polyglot'
    Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" Map escape to exit terminal mode
:tnoremap <ESC> <C-\><C-n>

" toggle line numbering
nnoremap <leader>n :set number<CR>
nnoremap <leader>N :set nonumber<CR>

" ignore some directories with CTRL-P
let g:ctrlp_custom_ignore = {'dir': '\v[\/](target|results|build|node_modules)$'}

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)

" Taking some coc.nvim setting suggestions
" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)
