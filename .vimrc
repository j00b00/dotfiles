colorscheme molokai

syntax enable                   " enable syntax processing
set number                      " show line numbers
set showcmd                     " show command in bottom bar
set cursorline                  " highlight current line
set wildmenu                    " visual autocomplete for command menu
set lazyredraw                  " redraw only when we need to
set showmatch                   " highlight matching [{()}]
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matches
set clipboard=unnamed           " to use tmux buffer
set laststatus=2                " status line always on
set backspace=2                 " make backspace work like most other apps
set ignorecase                  " non case-sensitive search
set smartcase                   " case-sensitive if search contains an uppercase character
set ttyfast                     " Send more characters for redraws
set mouse=a                     " Enable mouse use in all modes
set ttymouse=xterm2
set tabstop=4
set shiftwidth=4
set expandtab

let mapleader=","               " leader is comma

filetype on
autocmd FileType python nnoremap <buffer> <leader>r :exec '!clear; python' shellescape(@%, 1)<cr>

map <C-n> :NERDTreeToggle<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set nocompatible                " be iMproved, required for Vundle
filetype off                    " required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'   " let Vundle manage Vundle, required
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-speeddating'
Plugin 'ekalinin/dockerfile.vim'
Plugin 'vim-lastplace'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ntpeters/vim-better-whitespace'

" All of your Plugins must be added before the following line
call vundle#end()               " required
filetype plugin indent on       " required
