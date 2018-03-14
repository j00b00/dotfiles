if has('gui_running')
 set guifont=Roboto\ Mono\ Light\ for\ Powerline:h18
endif

colorscheme molokai

syntax enable                   " enable syntax processing
filetype on
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

autocmd FileType python nnoremap <buffer> <leader>r :exec '!clear; python' shellescape(@%, 1)<cr>

let mapleader=","               " leader is comma
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'
let g:rehash256 = 1

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'dietsche/vim-lastplace'
Plug 'terryma/vim-multiple-cursors'
Plug 'ntpeters/vim-better-whitespace'
Plug 'clockworknet/vim-junos-syntax'
call plug#end()
