" vIM
set nocompatible

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""" Plugin Management """"""""""""""""""

" Start Pathogen Plugin
execute pathogen#infect()


syntax enable
filetype plugin indent on

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""" Configure VIm """"""""""""""""""""""

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

colorscheme base16-default-dark

highlight Comment cterm=italic
highlight htmlArg ctermfg=magenta cterm=italic

let g:jsx_ext_required = 0

set mouse=a
set number
set nowrap
set cursorline
set noshowmode
set wildmenu
set showmatch
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

au BufNewFile,BufRead *.py
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set textwidth=79 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix |
  \ set colorcolumn=80 |

" au BufWritePost *.py call Flake8()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""" Javascript Specific """"""""""""""""""""

au BufNewFile,BufRead *.js,*.html,*.css,*.scss
  \ set tabstop=2 |
  \ set softtabstop=2 |
  \ set shiftwidth=2 |
  \ set colorcolumn=80 |

" Searching configurations

set ignorecase
set smartcase
set incsearch


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" """"""""""""""""" Configure CtrlP """"""""""""""""""""""

if executable('ag')
  " Use ag in CtrlP for listing files really fast.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " Ctrlp is fast with ag so no need to cache
  let g:ctrlp_use_caching = 0
endif
let g:ctrlp_working_path_mode=0


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""" Configure Ag """"""""""""""""""""""

let g:ag_highlight=1

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """"""""""""""""" Configure Lightline """""""""""""""""""""

let g:lightline = {
  \ 'colorscheme': 'seoul256',
  \ 'active': {
  \ 'left': [ ['mode', 'paste'],
  \           ['fugitive', 'filename', 'modified'] ]
  \},
  \ 'component_function': {
  \   'fugitive': 'LightlineFugitive', 
  \}
  \}

function! LightlineFugitive()
  return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""" Configure NerdTree """""""""""""""""""""

let NERDTreeIgnore=['\.pyc$']
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=3


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""" Configure Flake8 """"""""""""""""""""""""

let g:flake8_show_in_gutter=1

let flake8_error_marker='•'
let flake8_warning_marker=''
let flake8_pyflake_marker='•'
let flake8_complexity_marker='•'
let flake8_naming_marker='•'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""" Configure YCM """"""""""""""""""""""""""

let g:ycm_python_binary_path = 'python'
let g:ycm_autoclose_preview_window_after_completion = 1

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""" Key Bindings """"""""""""""""""""""""

"Use map-leader e to open vim explorer
map <leader>e :Explore<CR>
map <leader>n :NERDTreeToggle<CR>

" Use to jk to escape in insert mode
inoremap jk <ESC>

"inoremap {<CR> {<CR>}<ESC>O
"inoremap {,<CR> {<CR>},<ESC>O
"inoremap ({<CR> ({<CR>});<ESC>O<ESC><UP>f(a

" Remap window movements
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""" Goyo """"""""""""""""""""""""""""""""

function! s:goyo_enter()
  silent !tmux set status off
  set nocursorline
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  set cursorline
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
