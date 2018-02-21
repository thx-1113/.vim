execute pathogen#infect()
set nocompatible
set hidden
set modelines=0
syntax enable
set background=dark
colorscheme gruvbox
set guifont=Menlo:h13
inoremap jj <ESC>
filetype plugin indent on
set tabstop=2
"set expandtab
set shiftwidth=2
set softtabstop=2
set encoding=utf-8
set autoindent
set scrolloff=3
set showmode
set showcmd
set relativenumber
set number
set ruler
set backspace=indent,eol,start
set ttyfast
set wildmenu
set wildmode=list:longest
set laststatus=2
let mapleader = ","
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
set wrap
set textwidth=79
set formatoptions=qrn1
set list
set listchars=tab:▸\ ,eol:¬,trail:·
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>v V`]
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
set pastetoggle=<F2>
set noshowmode
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> [B :blast<CR>
nnoremap <silent> <leader>f :NERDTreeToggle<CR>
nnoremap <silent> <leader>v :NERDTreeFind<CR>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
"let NERDTreeHijackNetrw=1
let vim_markdown_preview_perl=1
