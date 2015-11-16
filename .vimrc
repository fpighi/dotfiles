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
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
" languages

" Python
Plugin 'nvie/vim-flake8' 
let g:flake8_show_quickfix=0  " don't show flake8 quick fix window
let g:flake8_show_in_gutter = 1  " show flake8 W and E in gutter
let g:flake8_show_in_file = 1  " show flake8 W and E inline

" others
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'wting/rust.vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'
Plugin 'VimClojure'
Plugin 'elixir-lang/vim-elixir'

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
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 sts=0 expandtab

" enable flake8 on saving a python file
autocmd BufWritePost *.py call Flake8()
