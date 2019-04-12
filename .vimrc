"General settings ------- {{{

"Line number
set number
set relativenumber

"Syntax
syntax on

"One universal clipboard with X
set clipboard=unnamed

"Buffer stuff
set hidden

"Cmd completion
set wildmenu

"Highlight search
set hlsearch

"Incremental searches
set incsearch

"Hate sound
set visualbell

"Cursor line
set cursorline

"Spaces over tabs erry day
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"Faster loading with macros
set lazyredraw

"Determines type of file
filetype indent plugin on

"Gotta love me a pretty theme
let g:airline_theme='minimalist'

"Linebreak
set linebreak

"Swap Files
set backupdir=/tmp//
set directory=/tmp//

"GitGutter disabled by default
let g:gitgutter_enabled = 0
let g:gitgutter_highlight_lines = 1
let g:airline#extensions#ycm#enabled = 1

"Fugitive branch for airline
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''

"Startify custom start
let g:startify_lists = [
\ { 'type': 'dir', 'header': ['Files'.getcwd() ] },
\ { 'type': 'sessions', 'header': ['Sessions' ] },
\ { 'type': 'bookmarks', 'header': ['Bookmarks' ] },
\ { 'type': 'commands', 'header': ['Commands' ] }
\]

let g:startify_commands = [
\ { 'up': [ 'Update Plugins', ':PlugUpdate' ] },
\ { 'ug': [ 'Update Plugin Manager', ':PlugUpgrade' ] }
\]

let g:startify_bookmars = [
\ { 'v': '~/.vimrc'},
\ { 'z': '~/.zshrc'}
\]
" }}}

"Shortcuts ------- {{{

"General
nnoremap ; :
inoremap <esc> <nop>
inoremap jk <esc>

"God Help us all
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

"Map leader
let mapleader="\<SPACE>"

"VIMRC quick edit
nnoremap <leader>ev :vsplit ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>

"Jumping centers to screen
nnoremap n nzz
nnoremap } }zz

"Mapped to behave like D and C
nnoremap Y y$

"Wrap in single quotes
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>


"YCM
nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>fm :YcmCompleter Format<CR>
nnoremap <leader>re :YcmCompleter RefactorRename

"NERDtree
nnoremap <leader>n :NERDTreeToggle<CR>

"FZF
nnoremap <leader>ff :Files<CR>

"GitGutter
nnoremap <leader>gg :GitGutterToggle<CR>

"Plugins
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pu :PlugUpdate<CR>

"Goyo
nnoremap <leader>go :Goyo<CR>

" }}}

"Plugins ------- {{{

call plug#begin('~/.vim/plugged')

"Git
Plug 'airblade/vim-gitgutter' "Adds a diff to the side
Plug 'tpope/vim-fugitive' "Run git commands from vim

"Completion
Plug 'Valloric/YouCompleteMe' " Completion engine
Plug 'ervandew/supertab' " Tab completion

"Appearance
Plug 'mhinz/vim-startify' " Splash screen
Plug 'vim-airline/vim-airline' " Fancy status line
Plug 'vim-airline/vim-airline-themes' " Themes for status line

"Tools
Plug 'jceb/vim-orgmode' " Vim implementation
Plug 'mattreduce/vim-mix' " Elixir mix commands from vim
Plug 'scrooloose/nerdtree' " File explorer in vim
Plug 'junegunn/vim-easy-align' " Align helper
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy finder
Plug 'junegunn/fzf.vim' " Fuzzy finder
Plug 'junegunn/goyo.vim' " Writing in vim
Plug 'tpope/vim-commentary' " Commenting out better

call plug#end()
" }}}

"Vimscript file settings -------  {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
augroup filetype_zsh
    autocmd!
    autocmd FileType zsh setlocal foldmethod=marker
" }}}
