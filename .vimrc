"General settings ------- {{{

"Line number"
set number
set relativenumber

"Syntax"
syntax on

"One universal clipboard with X"
set clipboard=unnamed

"Buffer stuff"
set hidden

"Cmd completion"
set wildmenu

"Highlight search"
set hlsearch

"Incremental searches"
set incsearch

"Hate sound"
set visualbell

"Cursor line"
set cursorline

"Spaces over tabs erry day"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"Faster loading with macros"
set lazyredraw

"Determines type of file"
filetype indent plugin on

"Gotta love me a pretty theme"
let g:airline_theme='minimalist'

"Linebreak"
set linebreak

"Swap Files"
set backupdir=/tmp//
set directory=/tmp//

"GitGutter disabled by default"
let g:gitgutter_enabled = 0
let g:gitgutter_highlight_lines = 1
let g:airline#extensions#ycm#enabled = 1

"Fugitive branch for airline"
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''

" }}}

"Shortcuts ------- {{{

"General"
nnoremap ; :
inoremap <esc> <nop>
inoremap jk <esc>

"God Help us all"
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

"Map leader"
let mapleader="\<SPACE>"

"VIMRC quick edit"
nnoremap <leader>ev :vsplit ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>

"Jumping centers to screen"
nnoremap n nzz
nnoremap } }zz

"Mapped to behave like D and C"
nnoremap Y y$

"Wrap in single quotes"
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>


"YCM"
nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>fm :YcmCompleter Format<CR>
nnoremap <leader>re :YcmCompleter RefactorRename

"NERDtree"
nnoremap <leader>n :NERDTreeToggle<CR>

"FZF"
nnoremap <leader>ff :Files<CR>

"GitGutter"
nnoremap <leader>gg :GitGutterToggle<CR>

" }}}

"Plugins ------- {{{

call plug#begin('~/.vim/plugged')

Plug 'mattreduce/vim-mix'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'

call plug#end()
" }}}

"Vimscript file settings -------  {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
