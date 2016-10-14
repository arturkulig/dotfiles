set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'othree/yajs.vim'
Plugin 'othree/es.next.syntax.vim'
Plugin 'mxw/vim-jsx'
Plugin 'elzr/vim-json'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on

syntax enable
set background=dark
set noswapfile
set hlsearch
set splitbelow splitright
nnoremap \ :CtrlP<cr>
nnoremap <c-\> :NERDTreeToggle<cr>

" moving lines with Alt + J/K
let os = substitute(system('uname'), "\n", "", "")
if os == "Darwin"
	nnoremap ∆ :m .+1<CR>==
	nnoremap Ż :m .-2<CR>==
	inoremap ∆ <Esc>:m .+1<CR>==gi
	inoremap Ż <Esc>:m .-2<CR>==gi
	vnoremap ∆ :m '>+1<CR>gv=gv
	vnoremap Ż :m '<-2<CR>gv=gv
else
	nnoremap <a-j> :m .+1<CR>==
	nnoremap <a-k> :m .-2<CR>==
	inoremap <a-j> <Esc>:m .+1<CR>==gi
	inoremap <a-k> <Esc>:m .-2<CR>==gi
	vnoremap <a-j> :m '>+1<CR>gv=gv
	vnoremap <a-k> :m '<-2<CR>gv=gv
endif

set relativenumber 
set nu

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeWinSize = 60
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

