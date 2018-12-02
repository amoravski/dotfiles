set nocompatible
filetype indent plugin on
syntax on
set hidden
set wildmenu
set hlsearch
set incsearch
"Hate sound"
set visualbell
set cursorline
"Spaces over tabs erry day"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set lazyredraw

"Gotta love me a pretty theme"
let g:airline_theme='alduin'  

"Mapped to behave like D and C"
map Y y$

"-- Plugins --"
call plug#begin('~/.vim/plugged')

Plug 'mattreduce/vim-mix'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
let g:gitgutter_enabled = 0
let g:gitgutter_highlight_lines = 1
