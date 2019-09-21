set hidden
set termguicolors
set number
set showcmd
set cursorline
set wildmenu
set showmatch
set hlsearch
set clipboard=unnamed
set ignorecase
set smartcase
set ttyfast
set lazyredraw
set mouse=a
set tabstop=2
set shiftwidth=2
set expandtab
set guioptions=
set shortmess=I
set omnifunc=syntaxcomplete#Complete
set encoding=UTF-8

let mapleader=","

if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl --create-dirs -fLo  ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'dietsche/vim-lastplace'
Plug 'terryma/vim-multiple-cursors'
Plug 'ntpeters/vim-better-whitespace'
Plug 'clockworknet/vim-junos-syntax'
Plug 'sheerun/vim-polyglot'
Plug 'reedes/vim-pencil'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" vim-plug bindings
nmap <Leader>p :PlugInstall<CR>

" vim-airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='base16_spacemacs'

" vim-tmuxline settings
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : '#I #W',
      \'cwin' : '#I #W #F',
      \'x'    : '%a',
      \'y'    : '%R',
      \'z'    : '#H',
      \'options' : {'status-justify' : 'left'}}

"Ctrl P like bindings for FZF
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \ }
nnoremap <c-p> :FZF<cr>
augroup fzf
  autocmd!
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END

" Use Tab to cycle between buffers
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" Open new buffer
:nnoremap <Leader>n :enew<CR>

" Close buffer
:nnoremap <Leader>w :bdel<CR>

" Source .vimrc
nmap <Leader>s :source ~/.vimrc<CR>

colorscheme molokai

hi EndOfBuffer guifg=bg
