set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'othree/yajs.vim'
"Plugin 'othree/es.next.syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'elzr/vim-json'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()

filetype plugin indent on
set autoindent
syntax enable
set background=dark
set noswapfile
set hlsearch
set splitbelow splitright
set lazyredraw

iabbr cosnt const
iabbr improt import

" ctrp settings
nnoremap \ :CtrlP<cr>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/dist*/*

" moving lines with Alt + J/K
let os = substitute(system('uname'), "\n", "", "")
nnoremap <c-j> :m .+1<CR>==
nnoremap <c-k> :m .-2<CR>==
inoremap <c-j> <Esc>:m .+1<CR>==gi
inoremap <c-k> <Esc>:m .-2<CR>==gi
vnoremap <c-j> :m '>+1<CR>gv=gv
vnoremap <c-k> :m '<-2<CR>gv=gv

set nu

autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeWinSize = 60
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

