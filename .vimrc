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

" If don't exist vim-plugin then install it.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Keymap 
inoremap jk <Esc>
let g:mapleader = " "

nnoremap <leader>nh :nohl<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap sv <C-w>v
nnoremap sh <C-w>s
nnoremap sc <C-w>c
nnoremap so <C-w>o

nnoremap <silent> <C-Left> :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>
nnoremap <silent> <C-Up> :horizontal resize -2<CR>
nnoremap <silent> <C-Down> :horizontal resize +2<CR>

" Plug list
call plug#begin()
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/tagbar'
Plug 'sheerun/vim-polyglot'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-commentary'
Plug 'lambdalisue/vim-fern'
Plug 'lambdalisue/vim-fern-renderer-nerdfont'
Plug 'yuki-yano/fern-preview.vim'
call plug#end()

"colorscheme
colorscheme catppuccin_latte

" Airline
let g:airline_theme = 'catppuccin_latte'
let g:airline_powerline_fonts = 1

" Set this. Airline will handle the rest
let g:airline#extensions#ale#enabled = 1
" airlien custom
let g:airline_section_z = ''
let g:airline_skip_empty_sections = 1

" Tagbar
nmap <leader>t :TagbarToggle<CR>
let g:tagbar_autofocus = 1
" Julia
" Tagbar Julia configuration
let g:tagbar_type_julia = {
    \ 'ctagsbin' : 'ctags',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 'm:modules',
        \ 't:types',
        \ 'f:functions',
        \ 'M:macros',
        \ 'c:constants'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 't' : 'struct'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm',
        \ 'struct' : 't'
    \ }
\ }


" vim-lsp
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

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
" Auto format when save file
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

" Fern
 nnoremap <silent> <Leader>ee :<C-u>Fern <C-r>=<SID>smart_path()<CR><CR>

" Return a parent directory of the current buffer when the buffer is a file.
" Otherwise it returns a current working directory.
function! s:smart_path() abort
  if !empty(&buftype) || bufname('%') =~# '^[^:]\+://'
    return fnamemodify('.', ':p')
  endif
  return fnamemodify(expand('%'), ':p:h')
endfunction
" Fern nerd font
let g:fern#renderer = "nerdfont"
" Fern preview
function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END
