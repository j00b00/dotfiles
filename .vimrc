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

let mapleader=","

if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl --create-dirs -fLo  ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rsi'
Plug 'ervandew/supertab'
Plug 'dietsche/vim-lastplace'
Plug 'terryma/vim-multiple-cursors'
Plug 'ntpeters/vim-better-whitespace'
Plug 'clockworknet/vim-junos-syntax'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'momota/cisco.vim'
Plug 'sheerun/vim-polyglot'
Plug 'yggdroot/indentline'
Plug 'reedes/vim-pencil'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'thaerkh/vim-workspace'
Plug 'idanarye/vim-merginal'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" vim-plug bindings
nmap <Leader>p :PlugInstall<CR>

" vim-airline settings
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#left_sep = "\uE0B4"
let g:airline#extensions#tabline#right_sep = "\uE0B6"
let g:airline_left_sep = "\uE0B4"
let g:airline_right_sep = "\uE0B6"

" vim-tmuxline settings
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : '#I #W',
      \'cwin' : '#I #W #F',
      \'x'    : '%a',
      \'y'    : '%R',
      \'options' : {'status-justify' : 'left'}}

let g:tmuxline_separators = {
    \ 'left' : "\uE0B4",
    \ 'right' : "\uE0B6",
    \ 'space' : ' '}

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
:nnoremap <Leader>w :bdel!<CR>

" Open NERDTree
:nnoremap <Leader>f :NERDTree<CR>

" Source .vimrc
nmap <Leader>s :source ~/.vimrc<CR>

" Read in config containing secrets
if !empty(glob("~/vimsecrets"))
  source ~/vimsecrets
endif

" One directory for session files
let g:workspace_session_directory = $HOME . '/.vim/sessions/'
let g:workspace_undodir= $HOME . '/.vim/sessions/'
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

" NERDTree settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif

set updatetime=100

colorscheme purify

hi EndOfBuffer guifg=bg
