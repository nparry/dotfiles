" Use Vim settings, rather than Vi
set nocompatible

" move temp files to tmp (stored in ram, avoid ssd writes)
set backupdir=/private/tmp
set dir=/private/tmp

" display options
set background=dark
set nowrap
set ruler
set showcmd
set showmatch

" search options
set ignorecase
set hlsearch
set incsearch
set smartcase

" tab options
set autoindent
set expandtab
set softtabstop=2 
set shiftwidth=2

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" syntax and file type smarts
syntax on
filetype plugin indent on

" smart matching with % and tag closing
runtime macros/matchit.vim 
au Filetype html,xml,xsl runtime scripts/closetag.vim

" tab completion in command mode
set wildmenu
set wildmode=list:longest

let mapleader = ","
set listchars=tab:>-,trail:·,eol:$

map <leader>b :FufBuffer<CR>
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
map <leader>f :FufFile<CR>
nmap <silent> <leader>n :silent :nohlsearch<CR>
map <leader>p :set paste!<CR>
nmap <silent> <leader>s :set nolist!<CR>
