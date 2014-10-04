" vIM
set nocompatible

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""" Plugin Management """"""""""""""""""

" Initialize Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'digitaltoad/vim-jade'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'Kien/ctrlp.vim'
Plugin 'chriskempson/base16-vim'
call vundle#end()

" Turn filetype back on
filetype plugin indent on

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""" The Looks """"""""""""""""""""""""""

set t_Co=256
set background=dark
colorscheme base16-tomorrow

syntax enable
set relativenumber
set nowrap

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""" Configure Airline """""""""""""""""""""

" Show status line for single windows
set laststatus=2

" Set airline theme
let g:airline_theme='bubblegum'

" Disable airline separators
let g:airline_left_sep=''
let g:airline_right_sep=''

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set nowrap

" Searching configurations
set ignorecase
set incsearch

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""" Key Bindings """"""""""""""""""""""""

" Push down and insert new line
imap <leader><Enter> <Enter><ESC>O

" Remap window movements
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
