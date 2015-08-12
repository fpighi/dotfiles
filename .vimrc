syntax on
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle updates etc.
Plugin 'gmarik/Vundle.vim'

" Navigation
Plugin 'scrooloose/nerdtree'

" languages

" Python
Plugin 'nvie/vim-flake8' 

" others
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'wting/rust.vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'
Plugin 'VimClojure'

" theme
Plugin 'sickill/vim-monokai'

call vundle#end()            " required
filetype plugin indent on    " required

" set monokai theme
colorscheme monokai

" editor settings
set cursorline
set expandtab
set modelines=0
set shiftwidth=4
set clipboard=unnamed       " share system clipboard register
set ttyscroll=10
set encoding=utf-8
set tabstop=4
set nowrap
set number
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase

" NERDTree settings
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1

" file specific rules
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab
autocmd Filetype yaml setlocal ts=4 sw=4 sts=0 noexpandtab
