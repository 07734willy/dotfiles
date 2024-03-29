set nocompatible

let mapleader = " "
let maplocalleader = "\<space>"

try
	call plug#begin('~/.vim/plugged')
	Plug '~/vimscripts/pyrepl'
	call plug#end()
catch /.*plug#begin.*/
endtry

fun! SetFoldColors() abort
	hi FoldColumn ctermbg=black ctermfg=blue
	hi Folded ctermbg=black ctermfg=blue
endfun

au ColorScheme * call SetFoldColors()
call SetFoldColors()

set number

filetype plugin on
autocmd FileType python setlocal noexpandtab shiftwidth=4 tabstop=4

set mouse=v
set virtualedit=onemore
set undolevels=1000
set backspace=indent,eol,start

" remember undo after quitting
set hidden
" enable keypad keys
set esckeys

map <silent> <C-j> :bprev<CR>
map <silent> <C-k> :bnext<CR>
set hidden " this will go along

noremap <up> <C-w><up>
noremap <down> <C-w><down>
noremap <left> <C-w><left>
noremap <right> <C-w><right>

noremap <leader>m :silent make \| redraw!<CR>

nnoremap <silent> <CR> :noh<CR><CR>

set tabstop=4 shiftwidth=4
set noexpandtab
set smarttab autoindent

set wildmenu
set background=dark
colorscheme elflord
set hlsearch incsearch

silent! set syntax
