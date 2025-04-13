" basic config option
syntax enable
set backspace=2
set nocompatible
set noshowmode
set showcmd 
set number
set relativenumber 
set mouse=a
set encoding=utf-8
set cursorline
set laststatus=2
set ruler
set showmatch
set hlsearch
set incsearch
set termguicolors

set updatetime=300
filetype on

" setting for netrw
set nocp
filetype plugin on

" If don't exist vim-plugin then install it.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Keymap 
inoremap jk <Esc>
let g:mapleader = " "

noremap <leader>nh :nohl<CR>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

noremap sv <C-w>v
noremap sh <C-w>s
noremap sc <C-w>c
noremap so <C-w>o

noremap <silent> <C-Left> :vertical resize +2<CR>
noremap <silent> <C-Right> :vertical resize -2<CR>
noremap <silent> <C-Up> :horizontal resize -2<CR>
noremap <silent> <C-Down> :horizontal resize +2<CR>

" Plug list
call plug#begin()
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'preservim/tagbar'
call plug#end()

" Colorscheme 
colorscheme catppuccin_mocha


" Airline
let g:airline_theme = 'catppuccin_mocha'
let g:airline_powerline_fonts = 1

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
