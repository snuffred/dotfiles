syntax on
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

set updatetime=300
filetype on

" ---keymap 
inoremap jk <Esc>
let g:mapleader = " "

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

noremap <silent> <C-S-Left> :vertical resize +5<CR>
noremap <silent> <C-S-Right> :vertical resize -5<CR>
noremap <silent> <C-S-Up> :horizontal resize -5<CR>
noremap <silent> <C-S-Down> :horizontal resize +5<CR>
" noremap <silent> <C-Left> :vertical resize +1<CR>
" noremap <silent> <C-Right> :vertical resize -1<CR>
