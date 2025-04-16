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
filetype plugin indent on

" setting for netrw
set nocp

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
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-commentary'
Plug 'nburns/vim-auto-light-dark'
call plug#end()

" Colorscheme 
" Auto light and dark themes and arline
function DarkMode()
  colorscheme catppuccin_mocha
    let g:airline_theme = 'catppuccin_mocha'

endfunction

function LightMode()
  colorscheme catppuccin_latte
    let g:airline_theme = 'catppuccin_latte'

endfunction


" Airline
" let g:airline_theme = 'catppuccin_latte'
let g:airline_powerline_fonts = 1

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" Tagbar
nmap <leader>t :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" Ale
" Complete
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
" ALe lsp
let g:ale_disable_lsp = 0
" Ale lint
let g:ale_linters = { 'nix': ['nixfmt'], 'c' : ['clangd'], 'c++': ['clangd'] }
" Ale keymaps
noremap gd :ALEGoToDefinition<CR>
noremap gr :ALEFindReferences<CR>
noremap <leader>fx :ALEFix<CR>
noremap <leader>cr :ALEFileRename<CR>
noremap <leader>ca :ALECodeAction<CR>
nnoremap <leader>ss :execute 'ALESymbolSearch ' . input('Symbol: ')<CR>

" fzf
" Mapping selecting mappings
nmap <leader>ch <plug>(fzf-maps-n)
xmap <leader>ch <plug>(fzf-maps-x)
omap <leader>ch <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

noremap <leader>ff :Files<CR>
noremap <leader>fb :Buffers<CR>
noremap <leader>/ :Rg<CR>

" Neoformat
noremap <leader>fm :Neoformat<CR>


