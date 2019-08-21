set nocompatible
set hidden
set modelines=0
syntax enable
set background=dark
colorscheme gruvbox
set guifont=Menlo:h13
"inoremap jj <ESC>
filetype plugin indent on
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set encoding=utf-8
set autoindent
set colorcolumn=79
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
set splitbelow
set splitright
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
set wrap
set linebreak
"set textwidth=79
set formatoptions=qrn1
set list
set listchars=tab:▸\ ,eol:¬,trail:·
set pastetoggle=<F2>
set noshowmode

"WORKSPACE OPERATIONS
"Easy buffer close
nnoremap <silent> <leader>x :bd<CR>
"Create a new tab
nnoremap <leader>t :tabnew<CR>
"Create a new split with focus
nnoremap <leader>w <C-w>v<C-w>l

"Manage vimrc in real-time
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"NERDCommenter
let g:NERDSpaceDelims = 0
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 0

"NERDTree
let NERDTreeHijackNetrw=1
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap <silent> <leader>f :NERDTreeToggle<CR>
nnoremap <silent> <leader>v :NERDTreeFind<CR>

"Tabular hotkeys
nnoremap <leader>p :Tabular rockets<CR>

"Sensible cursor keys
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <up> gk
nnoremap <down> gj
nnoremap k gk
nnoremap j gj

"Status line
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

"Markdown Preview
"let vim_markdown_preview_perl=1
let vim_markdown_preview_pandoc=1

"Folding
set foldlevelstart=99
let g:SimpylFold_docstring_preview = 1
nnoremap <space> za

"ALE
let g:ale_linters = {'python':['flake8']}
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

"Distraction-free
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:limelight_conceal_ctermfg = 'DarkGrey'

"Strip extra white space
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
