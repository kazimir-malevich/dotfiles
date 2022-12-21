syntax on
set autoindent
filetype plugin indent on

" No backup files
set nobackup

" No write backup
set nowritebackup

" No swap file
set noswapfile

" A buffer is marked as ‘hidden’ if it has unsaved changes, and it is not currently loaded in a window
" if you try and quit Vim while there are hidden buffers, you will raise an error:
" E162: No write since last change for buffer “a.txt”
set hidden

" Turn word wrap off
set nowrap

" Allow backspace to delete end of line, indent and start of line characters
set backspace=indent,eol,start

" convert tabs to spaces
set expandtab

" Set tab size in spaces
set tabstop=4

" The number of spaces inserted for a tab
set shiftwidth=4

" Turn on line numbers
set number

" Get rid of the delay when pressing O (for example)
" http://stackoverflow.com/questions/2158516/vim-delay-before-o-opens-a-new-line
set timeout timeoutlen=1000 ttimeoutlen=100

" UTF encoding
set encoding=utf-8
set fileencoding=utf-8

" Autoload files that have changed outside of vim
set autoread

" Don't show intro
set shortmess+=I

" Disable bell when you make a mistake
set visualbell

" Disables error flashes
set t_vb=

" 256 colour schemes
set t_Co=256
color ron

" ignore some directories with CTRL-P
let g:ctrlp_custom_ignore = {'dir': '\v[\/](target|results|build|node_modules)$'}

" automatic comment disabling
" http://vim.wikia.com/wiki/Disable_automatic_comment_insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" set filename in status bar
set laststatus=2

" disable markdown folding
let g:vim_markdown_folding_disabled = 1

" https://vi.stackexchange.com/questions/18803/stop-vim-from-deleting-trailing-whitespace
function! TrimWhitespace()
  " trailing whitespaces have meaning in markdown so don't try there
  if &filetype!='markdown'
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
  endif
endfunction

command! TrimWhitespace call TrimWhitespace()

" Ale
let b:ale_linters = ['eslint']
let g:ale_fixers = {'*': ['prettier']}

let g:ale_fix_on_save = 1
