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
Plugin 'Kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'tomtom/tlib_vim'
Plugin 'mattn/emmet-vim'

Plugin 'fatih/vim-go'

Plugin 'reedes/vim-colors-pencil'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'w0ng/vim-hybrid'
Plugin 'chriskempson/base16-vim'
call vundle#end()

" Turn filetype back on
filetype plugin indent on

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""" The Looks """"""""""""""""""""""""""
let base16colorspace=256
set background=dark
colorscheme base16-default

"let g:hybrid_use_Xresources=1
"colorscheme hybrid

syntax enable
set number
set nowrap
set cursorline

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""" Configure VIm """"""""""""""""""""""""""
set clipboard=unnamed

" Move between unsaved buffers faster
set hidden

" Do not create backups
set nobackup
set noswapfile

set autoindent
set tabstop=2           " Tabs take 2 spaces
set shiftwidth=2        " Autoindentation depth
set softtabstop=2
set expandtab           " Convert all tabs to spaces

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""" Python Specific """"""""""""""""""""""""

augroup filetype_python
  autocmd!
  autocmd FileType python set autoindent expandtab tabstop=4 shiftwidth=4 softtabstop=4
  autocmd FileType python set textwidth=79
  autocmd FileType python set colorcolumn=80
augroup END

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""" Javascript Specific """"""""""""""""""""

augroup filetype_javascript
  autocmd!
  autocmd FileType javascript set autoindent expandtab tabstop=4 softtabstop=2 shiftwidth=2
augroup END

" Searching configurations
set ignorecase
set smartcase
set incsearch

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""" Configure CtrlP """"""""""""""""""""""

let g:ctrlp_working_path_mode=0

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""" Configure Airline """""""""""""""""""""

" Show status line for single windows
set laststatus=2

" Set airline theme
let g:airline_theme='base16'

" Disable airline separators
let g:airline_left_sep=''
let g:airline_right_sep=''

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""" Key Bindings """"""""""""""""""""""""

"Use map-leader e to open vim explorer
map <leader>e :Explore<cr>

" Use to jj to escape in insert mode
inoremap jj <ESC>

inoremap {<CR> {<CR>}<ESC>O
inoremap {,<CR> {<CR>},<ESC>O
inoremap (;<CR> (<CR>);<ESC>O
inoremap ({<CR> ({<CR>});<ESC>O<ESC><UP>f(a

" Remap window movements
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
