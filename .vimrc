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

" Clojure 
Plugin 'VimClojure'

" Dockerfile
Plugin 'ekalinin/Dockerfile.vim'

" Python
"Plugin 'klen/python-mode'
"let g:pymode_lint_on_write = 1
"let g:pymode_lint_ignore = "E501"
" If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Rust
Plugin 'wting/rust.vim'

" Scala
Plugin 'derekwyatt/vim-scala'

" Tmux conf file
Plugin 'tmux-plugins/vim-tmux'


" colorschemes
Plugin 'sickill/vim-monokai'
Plugin 'altercation/vim-colors-solarized'

" navigation
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'

call vundle#end()            " required
filetype plugin indent on    " required

" nice colors
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

" set solarized dark theme
se t_Co=16
set background=dark
colorscheme solarized

" editor settings
set cursorline
set expandtab
set modelines=0
set shiftwidth=4
set clipboard=unnamed       " share system clipboard register
set clipboard=unnamedplus   " share X window clipboard register
set ttyscroll=10
set encoding=utf-8
set tabstop=4
set nowrap
set number
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase

" NERDTree settings
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeShowHidden=1

" file specific rules
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype python setlocal ts=4 sw=4 sts=0 expandtab
