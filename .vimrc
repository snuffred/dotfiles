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

" 24bit
set termguicolors

set updatetime=300
filetype on
filetype plugin on
filetype indent on

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

" ---vim-plug
call plug#begin()

Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'yianwillis/vimcdoc'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'lifepillar/vim-solarized8'
" Plug 'junegunn/fzf'
Plug 'girishji/vimcomplete'
Plug 'yegappan/lsp'

call plug#end()

" ---colorscheme
set background=dark
colorscheme solarized8

" ---airline
let g:airline_theme = "solarized"
let g:airline_solarized_bg = "dark"

" ---NERDTree 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" ---Tagbar
nmap <leader>t :TagbarToggle<CR>
