set modeline
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=b
set clipboard=unnamed
set ruler
set number
set expandtab tabstop=4 shiftwidth=4 softtabstop=0
set autoindent
set smartindent
set nowrap
set noswapfile
set nobackup
set laststatus=2
set hidden
set autoread
set scrolloff=5
set history=100
set wildmenu wildmode=list:longest,full
set ignorecase
set smartcase
set spelllang+=cjk
set list
set listchars=tab:>.,trail:_
set backspace=indent,eol,start
set encoding=utf-8
syntax enable
set t_Co=256
set background=dark
colorscheme hybrid
set nocompatible

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

"Plugin install
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'chase/vim-ansible-yaml'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" call plug#begin('~/.vim/plugged')
"   Plug 'prabirshrestha/async.vim'
"   Plug 'prabirshrestha/vim-lsp'
"   Plug 'prabirshrestha/asyncomplete.vim'
"   Plug 'prabirshrestha/asyncomplete-lsp.vim'
"
"   Plug 'hashivim/vim-terraform' , { 'for': 'terraform'}
"
" call plug#end()
"
" if executable('terraform-lsp')
"   au User lsp_setup call lsp#register_server({
"     \ 'name': 'terraform-lsp',
"     \ 'cmd': {server_info->['terraform-lsp']},
"     \ 'whitelist': ['terraform','tf'],
"     \ })
" endif
